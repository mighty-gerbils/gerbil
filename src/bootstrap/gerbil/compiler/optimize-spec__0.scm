(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1707840759)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl251043_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp256739 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl251043_ __tmp256739))
           (let ()
             (declare (not safe))
             (table-set! _tbl251043_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl251043_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl251043_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl251043_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl251043_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx251026_ . _args251028_)
        (let ((__tmp256741
               (lambda ()
                 (declare (not safe))
                 (if (null? _args251028_)
                     (gxc#compile-e__0 _stx251026_)
                     (let ((_arg1251033_ (car _args251028_))
                           (_rest251035_ (cdr _args251028_)))
                       (if (null? _rest251035_)
                           (gxc#compile-e__1 _stx251026_ _arg1251033_)
                           (let ((_arg2251038_ (car _rest251035_))
                                 (_rest251040_ (cdr _rest251035_)))
                             (if (null? _rest251040_)
                                 (gxc#compile-e__2
                                  _stx251026_
                                  _arg1251033_
                                  _arg2251038_)
                                 (apply gxc#compile-e
                                        _stx251026_
                                        _arg1251033_
                                        _arg2251038_
                                        _rest251040_))))))))
              (__tmp256740 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp256741
           gxc#current-compile-methods
           __tmp256740))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl251023_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp256742 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl251023_ __tmp256742))
           (let ()
             (declare (not safe))
             (table-set! _tbl251023_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl251023_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl251023_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl251023_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl251023_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl251023_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl251023_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl251023_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl251023_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl251023_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl251023_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl251023_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl251023_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl251023_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl251023_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl251023_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl251023_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx251006_ . _args251008_)
        (let ((__tmp256744
               (lambda ()
                 (declare (not safe))
                 (if (null? _args251008_)
                     (gxc#compile-e__0 _stx251006_)
                     (let ((_arg1251013_ (car _args251008_))
                           (_rest251015_ (cdr _args251008_)))
                       (if (null? _rest251015_)
                           (gxc#compile-e__1 _stx251006_ _arg1251013_)
                           (let ((_arg2251018_ (car _rest251015_))
                                 (_rest251020_ (cdr _rest251015_)))
                             (if (null? _rest251020_)
                                 (gxc#compile-e__2
                                  _stx251006_
                                  _arg1251013_
                                  _arg2251018_)
                                 (apply gxc#compile-e
                                        _stx251006_
                                        _arg1251013_
                                        _arg2251018_
                                        _rest251020_))))))))
              (__tmp256743 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp256744
           gxc#current-compile-methods
           __tmp256743))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl251003_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp256745 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl251003_ __tmp256745))
           (let ()
             (declare (not safe))
             (table-set! _tbl251003_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl251003_ '%#call gxc#subst-object-refs-call%))
           _tbl251003_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx250986_ . _args250988_)
        (let ((__tmp256747
               (lambda ()
                 (declare (not safe))
                 (if (null? _args250988_)
                     (gxc#compile-e__0 _stx250986_)
                     (let ((_arg1250993_ (car _args250988_))
                           (_rest250995_ (cdr _args250988_)))
                       (if (null? _rest250995_)
                           (gxc#compile-e__1 _stx250986_ _arg1250993_)
                           (let ((_arg2250998_ (car _rest250995_))
                                 (_rest251000_ (cdr _rest250995_)))
                             (if (null? _rest251000_)
                                 (gxc#compile-e__2
                                  _stx250986_
                                  _arg1250993_
                                  _arg2250998_)
                                 (apply gxc#compile-e
                                        _stx250986_
                                        _arg1250993_
                                        _arg2250998_
                                        _rest251000_))))))))
              (__tmp256746 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp256747
           gxc#current-compile-methods
           __tmp256746))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx247656_)
        (letrec ((_generate-method-bind247658_
                  (lambda (_$t250980_ _id250981_ _$id250982_)
                    (let ((_$tmp250984_
                           (let ((__tmp256748 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp256748))))
                      (let ((__tmp256796
                             (let ()
                               (declare (not safe))
                               (cons _$id250982_ '())))
                            (__tmp256749
                             (let ((__tmp256750
                                    (let ((__tmp256751
                                           (let ((__tmp256794
                                                  (let ((__tmp256795
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp256795)))
                                                 (__tmp256752
                                                  (let ((__tmp256753
                                                         (let ((__tmp256754
                                                                (let ((__tmp256755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp256756
                                      (let ((__tmp256757
                                             (let ((__tmp256777
                                                    (let ((__tmp256778
                                                           (let ((__tmp256793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp250984_ '())))
                         (__tmp256779
                          (let ((__tmp256780
                                 (let ((__tmp256781
                                        (let ((__tmp256791
                                               (let ((__tmp256792
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp256792)))
                                              (__tmp256782
                                               (let ((__tmp256789
                                                      (let ((__tmp256790
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t250980_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp256790)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp256783
                                                      (let ((__tmp256787
                                                             (let ((__tmp256788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp256788)))
                    (__tmp256784
                     (let ((__tmp256785
                            (let ((__tmp256786
                                   (let ()
                                     (declare (not safe))
                                     (cons _id250981_ '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp256786))))
                       (declare (not safe))
                       (cons __tmp256785 '()))))
                (declare (not safe))
                (cons __tmp256787 __tmp256784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp256789
                                                       __tmp256783))))
                                          (declare (not safe))
                                          (cons __tmp256791 __tmp256782))))
                                   (declare (not safe))
                                   (cons '%#call __tmp256781))))
                            (declare (not safe))
                            (cons __tmp256780 '()))))
                     (declare (not safe))
                     (cons __tmp256793 __tmp256779))))
              (declare (not safe))
              (cons __tmp256778 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp256758
                                                    (let ((__tmp256759
                                                           (let ((__tmp256760
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256775
                                 (let ((__tmp256776
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp250984_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp256776)))
                                (__tmp256761
                                 (let ((__tmp256773
                                        (let ((__tmp256774
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp250984_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp256774)))
                                       (__tmp256762
                                        (let ((__tmp256763
                                               (let ((__tmp256764
                                                      (let ((__tmp256771
                                                             (let ((__tmp256772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp256772)))
                    (__tmp256765
                     (let ((__tmp256769
                            (let ((__tmp256770
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp256770)))
                           (__tmp256766
                            (let ((__tmp256767
                                   (let ((__tmp256768
                                          (let ()
                                            (declare (not safe))
                                            (cons _id250981_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp256768))))
                              (declare (not safe))
                              (cons __tmp256767 '()))))
                       (declare (not safe))
                       (cons __tmp256769 __tmp256766))))
                (declare (not safe))
                (cons __tmp256771 __tmp256765))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp256764))))
                                          (declare (not safe))
                                          (cons __tmp256763 '()))))
                                   (declare (not safe))
                                   (cons __tmp256773 __tmp256762))))
                            (declare (not safe))
                            (cons __tmp256775 __tmp256761))))
                     (declare (not safe))
                     (cons '%#if __tmp256760))))
              (declare (not safe))
              (cons __tmp256759 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp256777
                                                     __tmp256758))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp256757))))
                                 (declare (not safe))
                                 (cons __tmp256756 '()))))
                          (declare (not safe))
                          (cons '() __tmp256755))))
                   (declare (not safe))
                   (cons '%#lambda __tmp256754))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256753 '()))))
                                             (declare (not safe))
                                             (cons __tmp256794 __tmp256752))))
                                      (declare (not safe))
                                      (cons '%#call __tmp256751))))
                               (declare (not safe))
                               (cons __tmp256750 '()))))
                        (declare (not safe))
                        (cons __tmp256796 __tmp256749)))))
                 (_generate-slot-bind247659_
                  (lambda (_$t250974_ _id250975_ _$id250976_)
                    (let ((_$tmp250978_
                           (let ((__tmp256797 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp256797))))
                      (let ((__tmp256834
                             (let ()
                               (declare (not safe))
                               (cons _$id250976_ '())))
                            (__tmp256798
                             (let ((__tmp256799
                                    (let ((__tmp256800
                                           (let ((__tmp256820
                                                  (let ((__tmp256821
                                                         (let ((__tmp256833
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp250978_ '())))
                       (__tmp256822
                        (let ((__tmp256823
                               (let ((__tmp256824
                                      (let ((__tmp256831
                                             (let ((__tmp256832
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp256832)))
                                            (__tmp256825
                                             (let ((__tmp256829
                                                    (let ((__tmp256830
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t250974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp256830)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp256826
                                                    (let ((__tmp256827
                                                           (let ((__tmp256828
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id250975_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp256828))))
              (declare (not safe))
              (cons __tmp256827 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp256829
                                                     __tmp256826))))
                                        (declare (not safe))
                                        (cons __tmp256831 __tmp256825))))
                                 (declare (not safe))
                                 (cons '%#call __tmp256824))))
                          (declare (not safe))
                          (cons __tmp256823 '()))))
                   (declare (not safe))
                   (cons __tmp256833 __tmp256822))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256821 '())))
                                                 (__tmp256801
                                                  (let ((__tmp256802
                                                         (let ((__tmp256803
                                                                (let ((__tmp256818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp256819
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp250978_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp256819)))
                              (__tmp256804
                               (let ((__tmp256816
                                      (let ((__tmp256817
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp250978_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp256817)))
                                     (__tmp256805
                                      (let ((__tmp256806
                                             (let ((__tmp256807
                                                    (let ((__tmp256814
                                                           (let ((__tmp256815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp256815)))
                  (__tmp256808
                   (let ((__tmp256812
                          (let ((__tmp256813
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp256813)))
                         (__tmp256809
                          (let ((__tmp256810
                                 (let ((__tmp256811
                                        (let ()
                                          (declare (not safe))
                                          (cons _id250975_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp256811))))
                            (declare (not safe))
                            (cons __tmp256810 '()))))
                     (declare (not safe))
                     (cons __tmp256812 __tmp256809))))
              (declare (not safe))
              (cons __tmp256814 __tmp256808))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp256807))))
                                        (declare (not safe))
                                        (cons __tmp256806 '()))))
                                 (declare (not safe))
                                 (cons __tmp256816 __tmp256805))))
                          (declare (not safe))
                          (cons __tmp256818 __tmp256804))))
                   (declare (not safe))
                   (cons '%#if __tmp256803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256802 '()))))
                                             (declare (not safe))
                                             (cons __tmp256820 __tmp256801))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp256800))))
                               (declare (not safe))
                               (cons __tmp256799 '()))))
                        (declare (not safe))
                        (cons __tmp256834 __tmp256798)))))
                 (_generate-class-check-bind247660_
                  (lambda (_$t250970_ _class-type250971_ _$class-type250972_)
                    (let ((__tmp256846
                           (let ()
                             (declare (not safe))
                             (cons _$class-type250972_ '())))
                          (__tmp256835
                           (let ((__tmp256836
                                  (let ((__tmp256837
                                         (let ((__tmp256844
                                                (let ((__tmp256845
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp256845)))
                                               (__tmp256838
                                                (let ((__tmp256842
                                                       (let ((__tmp256843
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t250970_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp256843)))
              (__tmp256839
               (let ((__tmp256840
                      (let ((__tmp256841
                             (let ()
                               (declare (not safe))
                               (cons _class-type250971_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp256841))))
                 (declare (not safe))
                 (cons __tmp256840 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256842
                                                        __tmp256839))))
                                           (declare (not safe))
                                           (cons __tmp256844 __tmp256838))))
                                    (declare (not safe))
                                    (cons '%#call __tmp256837))))
                             (declare (not safe))
                             (cons __tmp256836 '()))))
                      (declare (not safe))
                      (cons __tmp256846 __tmp256835))))
                 (_generate-struct-check-bind247661_
                  (lambda (_$t250966_ _class-type250967_ _$class-type250968_)
                    (let ((__tmp256858
                           (let ()
                             (declare (not safe))
                             (cons _$class-type250968_ '())))
                          (__tmp256847
                           (let ((__tmp256848
                                  (let ((__tmp256849
                                         (let ((__tmp256856
                                                (let ((__tmp256857
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp256857)))
                                               (__tmp256850
                                                (let ((__tmp256854
                                                       (let ((__tmp256855
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t250966_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp256855)))
              (__tmp256851
               (let ((__tmp256852
                      (let ((__tmp256853
                             (let ()
                               (declare (not safe))
                               (cons _class-type250967_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp256853))))
                 (declare (not safe))
                 (cons __tmp256852 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256854
                                                        __tmp256851))))
                                           (declare (not safe))
                                           (cons __tmp256856 __tmp256850))))
                                    (declare (not safe))
                                    (cons '%#call __tmp256849))))
                             (declare (not safe))
                             (cons __tmp256848 '()))))
                      (declare (not safe))
                      (cons __tmp256858 __tmp256847))))
                 (_generate-specializer-impl247662_
                  (lambda (_$t250915_
                           _methods-bind250916_
                           _slots-bind250917_
                           _class-check-bind250918_
                           _struct-check-bind250919_
                           _specializer-impl250920_
                           _lifted-specializer-id250921_
                           _unchecked-specializer-impl250922_)
                    (let ((__tmp256859
                           (let ((__tmp256860
                                  (let ((__tmp256886
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t250915_ '())))
                                        (__tmp256861
                                         (let ((__tmp256862
                                                (let ((__tmp256863
                                                       (let ((__tmp256883
                                                              (let ((__tmp256884
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp256885
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind250919_
                                              _class-check-bind250918_))))
                               (declare (not safe))
                               (foldr1 cons __tmp256885 _slots-bind250917_))))
                        (declare (not safe))
                        (foldr1 cons __tmp256884 _methods-bind250916_)))
                     (__tmp256864
                      (let ((__tmp256865
                             (if (or _lifted-specializer-id250921_
                                     _unchecked-specializer-impl250922_)
                                 (let* ((_$specializer250927_
                                         (let ((__tmp256866
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp256866)))
                                        (__tmp256867
                                         (let ((__tmp256879
                                                (let ((__tmp256880
                                                       (let ((__tmp256882
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer250927_ '())))
                     (__tmp256881
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl250920_ '()))))
                 (declare (not safe))
                 (cons __tmp256882 __tmp256881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256880 '())))
                                               (__tmp256868
                                                (let ((__tmp256869
                                                       (let _recur250929_ ((_rest250931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind250919_)))
                 (let* ((_rest250932250940_ _rest250931_)
                        (_else250934250948_
                         (lambda ()
                           (if _lifted-specializer-id250921_
                               (let ((__tmp256870
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id250921_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp256870))
                               _unchecked-specializer-impl250922_)))
                        (_K250936250954_
                         (lambda (_rest250951_ _checkq250952_)
                           (let ((__tmp256871
                                  (let ((__tmp256877
                                         (let ((__tmp256878
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq250952_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp256878)))
                                        (__tmp256872
                                         (let ((__tmp256876
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur250929_
                                                   _rest250951_)))
                                               (__tmp256873
                                                (let ((__tmp256874
                                                       (let ((__tmp256875
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer250927_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp256875))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256874 '()))))
                                           (declare (not safe))
                                           (cons __tmp256876 __tmp256873))))
                                    (declare (not safe))
                                    (cons __tmp256877 __tmp256872))))
                             (declare (not safe))
                             (cons '%#if __tmp256871)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest250932250940_))
                       (let ((_hd250937250957_
                              (let ()
                                (declare (not safe))
                                (##car _rest250932250940_)))
                             (_tl250938250959_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest250932250940_))))
                         (let* ((_checkq250962_ _hd250937250957_)
                                (_rest250964_ _tl250938250959_))
                           (declare (not safe))
                           (_K250936250954_ _rest250964_ _checkq250962_)))
                       (let () (declare (not safe)) (_else250934250948_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256869 '()))))
                                           (declare (not safe))
                                           (cons __tmp256879 __tmp256868))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp256867))
                                 _specializer-impl250920_)))
                        (declare (not safe))
                        (cons __tmp256865 '()))))
                 (declare (not safe))
                 (cons __tmp256883 __tmp256864))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp256863))))
                                           (declare (not safe))
                                           (cons __tmp256862 '()))))
                                    (declare (not safe))
                                    (cons __tmp256886 __tmp256861))))
                             (declare (not safe))
                             (cons '%#lambda __tmp256860))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp256859 _stx247656_))))
                 (_generate-specializer-def247663_
                  (lambda (_id250909_
                           _specializer-id250910_
                           _specializer-impl250911_
                           _lifted-specializer-id250912_
                           _unchecked-specializer-impl250913_)
                    (let ((__tmp256887
                           (let ((__tmp256888
                                  (let ((__tmp256889
                                         (let ((__tmp256909
                                                (let ((__tmp256910
                                                       (let ((__tmp256911
                                                              (let ((__tmp256913
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id250910_ '())))
                            (__tmp256912
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl250911_ '()))))
                        (declare (not safe))
                        (cons __tmp256913 __tmp256912))))
                 (declare (not safe))
                 (cons '%#define-values __tmp256911))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp256910
                                                   _stx247656_)))
                                               (__tmp256890
                                                (let ((__tmp256897
                                                       (let ((__tmp256898
                                                              (let ((__tmp256899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp256900
                                    (let ((__tmp256907
                                           (let ((__tmp256908
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp256908)))
                                          (__tmp256901
                                           (let ((__tmp256905
                                                  (let ((__tmp256906
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id250909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp256906)))
                                                 (__tmp256902
                                                  (let ((__tmp256903
                                                         (let ((__tmp256904
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id250910_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp256904))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256903 '()))))
                                             (declare (not safe))
                                             (cons __tmp256905 __tmp256902))))
                                      (declare (not safe))
                                      (cons __tmp256907 __tmp256901))))
                               (declare (not safe))
                               (cons '%#call __tmp256900))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp256899 _stx247656_))))
                 (declare (not safe))
                 (cons __tmp256898 '())))
              (__tmp256891
               (if _lifted-specializer-id250912_
                   (let ((__tmp256892
                          (let ((__tmp256893
                                 (let ((__tmp256894
                                        (let ((__tmp256896
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id250912_
                                                       '())))
                                              (__tmp256895
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl250913_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp256896 __tmp256895))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp256894))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp256893 _stx247656_))))
                     (declare (not safe))
                     (cons __tmp256892 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp256897
                                                          __tmp256891))))
                                           (declare (not safe))
                                           (cons __tmp256909 __tmp256890))))
                                    (declare (not safe))
                                    (cons _stx247656_ __tmp256889))))
                             (declare (not safe))
                             (cons '%#begin __tmp256888))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp256887 _stx247656_)))))
          (let* ((___stx255700255701_ _stx247656_)
                 (_g247666247686_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx255700255701_)))))
            (let ((___kont255702255703_
                   (lambda (_L247730_ _L247731_)
                     (let ((_method-calls247750_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs247751_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check247752_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check247753_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert247754_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty247755_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?247757_
                                 (lambda ()
                                   (if (let ((__tmp256918
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls247750_))))
                                         (declare (not safe))
                                         (fxzero? __tmp256918))
                                       (if (let ((__tmp256917
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs247751_))))
                                             (declare (not safe))
                                             (fxzero? __tmp256917))
                                           (if (let ((__tmp256916
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check247752_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp256916))
                                               (if (let ((__tmp256915
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check247753_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp256915))
                                                   (let ((__tmp256914
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert247754_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp256914))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?247758_
                                 (lambda ()
                                   (let ((_$e250902_
                                          (let ((__tmp256919
                                                 (let ((__tmp256920
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check247753_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp256920))))
                                            (declare (not safe))
                                            (not __tmp256919))))
                                     (if _$e250902_
                                         _$e250902_
                                         (let ((__tmp256921
                                                (let ((__tmp256922
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert247754_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp256922))))
                                           (declare (not safe))
                                           (not __tmp256921))))))
                                (_lift-unchecked-specializer?247759_
                                 (lambda ()
                                   (if (let ((__tmp256925
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls247750_))))
                                         (declare (not safe))
                                         (fxzero? __tmp256925))
                                       (if (let ((__tmp256924
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs247751_))))
                                             (declare (not safe))
                                             (fxzero? __tmp256924))
                                           (let ((__tmp256923
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check247752_))))
                                             (declare (not safe))
                                             (fxzero? __tmp256923))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L247730_))
                             (let* ((___stx255614255615_ _L247730_)
                                    (_g248272248290_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx255614255615_)))))
                               (let ((___kont255616255617_
                                      (lambda (_L248326_ _L248327_ _L248328_)
                                        (for-each
                                         (lambda (_g248343248345_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g248343248345_
                                              _L248328_
                                              _method-calls247750_
                                              _slot-refs247751_
                                              _class-type-check247752_
                                              _struct-type-check247753_
                                              _struct-type-assert247754_)))
                                         _L248326_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?247757_))
                                            _stx247656_
                                            (let* ((_specializer-id248354_
                                                    (let* ((_id248348_
                                                            (let ((__tmp257075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L247731_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp257075 '"::specialize")))
                   (_specializer-id248351_
                    (let ((__tmp257076
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx247656_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id248348_ __tmp257076))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id248351_))
              _specializer-id248351_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id248361_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?247759_))
                                                        (let* ((_id248356_
                                                                (let ((__tmp257077
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L247731_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp257077
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id248358_
                        (let ((__tmp257078
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx247656_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id248356_ __tmp257078))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id248358_))
                  _lifted-specializer-id248358_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t248363_
                                                    (let ((__tmp257079
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp257079)))
                                                   (_methods248365_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls247750_)))
                                                   (_$methods248369_
                                                    (map (lambda (_id248367_)
                                                           (let ((__tmp257080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id248367_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp257080)))
                 _methods248365_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g257081_
                                                    (for-each
                                                     (lambda (_g248370248373_
                                                              _g248371248375_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls247750_
                                                          _g248370248373_
                                                          _g248371248375_)))
                                                     _methods248365_
                                                     _$methods248369_))
                                                   (_methods-bind248386_
                                                    (map (lambda (_g248378248381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g248379248383_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind247658_
                      _$t248363_
                      _g248378248381_
                      _g248379248383_)))
                 _methods248365_
                 _$methods248369_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots248388_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs247751_)))
                                                   (_$slots248392_
                                                    (map (lambda (_id248390_)
                                                           (let ((__tmp257082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id248390_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp257082)))
                 _slots248388_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g257083_
                                                    (for-each
                                                     (lambda (_g248393248396_
                                                              _g248394248398_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs247751_
                                                          _g248393248396_
                                                          _g248394248398_)))
                                                     _slots248388_
                                                     _$slots248392_))
                                                   (_slots-bind248409_
                                                    (map (lambda (_g248401248404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g248402248406_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind247659_
                      _$t248363_
                      _g248401248404_
                      _g248402248406_)))
                 _slots248388_
                 _$slots248392_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check248411_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check247752_)))
                                                   (_$class-check248414_
                                                    (map (lambda (_g257084_)
                                                           (let ((__tmp257085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp257085)))
                 _class-check248411_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g257086_
                                                    (for-each
                                                     (lambda (_g248415248418_
                                                              _g248416248420_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check247752_
                                                          _g248415248418_
                                                          _g248416248420_)))
                                                     _class-check248411_
                                                     _$class-check248414_))
                                                   (_class-check-bind248431_
                                                    (map (lambda (_g248423248426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g248424248428_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind247660_
                      _$t248363_
                      _g248423248426_
                      _g248424248428_)))
                 _class-check248411_
                 _$class-check248414_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all248433_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check247753_
                                                       _struct-type-assert247754_)))
                                                   (_struct-check248435_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all248433_)))
                                                   (_$struct-check248438_
                                                    (map (lambda (_g257087_)
                                                           (let ((__tmp257088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp257088)))
                 _struct-check248435_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g257089_
                                                    (for-each
                                                     (lambda (_g248439248442_
                                                              _g248440248444_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all248433_
                                                          _g248439248442_
                                                          _g248440248444_)))
                                                     _struct-check248435_
                                                     _$struct-check248438_))
                                                   (_struct-check-bind248455_
                                                    (map (lambda (_g248447248450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g248448248452_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind247661_
                      _$t248363_
                      _g248447248450_
                      _g248448248452_)))
                 _struct-check248435_
                 _$struct-check248438_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl248466_
                                                    (lambda (_struct-type-check1248457_
                                                             _struct-type-check2248458_)
                                                      (let* ((_specializer-body248464_
                                                              (map (lambda (_g248459248461_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g248459248461_
                                _L248328_
                                _$t248363_
                                _method-calls247750_
                                _slot-refs247751_
                                _class-type-check247752_
                                _struct-type-check1248457_
                                _struct-type-check2248458_)))
                           _L248326_))
                     (__tmp257090
                      (let ((__tmp257091
                             (let ((__tmp257092
                                    (let ()
                                      (declare (not safe))
                                      (cons _L248328_ _L248327_))))
                               (declare (not safe))
                               (cons __tmp257092 _specializer-body248464_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp257091))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp257090 _stx247656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl248468_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl248466_
                                                       _struct-check-all248433_
                                                       _empty247755_)))
                                                   (_unchecked-specializer-impl248470_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?247758_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl248466_
                                                           _empty247755_
                                                           _struct-check-all248433_))
                                                        '#f))
                                                   (_specializer-impl248472_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl247662_
                                                       _$t248363_
                                                       _methods-bind248386_
                                                       _slots-bind248409_
                                                       _class-check-bind248431_
                                                       _struct-check-bind248455_
                                                       _specializer-impl248468_
                                                       _lifted-specializer-id248361_
                                                       _unchecked-specializer-impl248470_))))
                                              (let ((__tmp257094
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L247731_)))
                                                    (__tmp257093
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id248354_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp257094
                                                 '" => "
                                                 __tmp257093))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def247663_
                                                 _L247731_
                                                 _specializer-id248354_
                                                 _specializer-impl248472_
                                                 _lifted-specializer-id248361_
                                                 _unchecked-specializer-impl248470_))))))
                                     (___kont255618255619_
                                      (lambda () _stx247656_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx255614255615_))
                                     (let ((_e248279248302_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx255614255615_))))
                                       (let ((_tl248277248307_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e248279248302_)))
                                             (_hd248278248305_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e248279248302_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl248277248307_))
                                             (let ((_e248282248310_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl248277248307_))))
                                               (let ((_tl248280248315_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e248282248310_)))
                                                     (_hd248281248313_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e248282248310_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd248281248313_))
                                                     (let ((_e248285248318_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd248281248313_))))
                                                       (let ((_tl248283248323_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e248285248318_)))
                     (_hd248284248321_
                      (let () (declare (not safe)) (##car _e248285248318_))))
                 (___kont255616255617_
                  _tl248280248315_
                  _tl248283248323_
                  _hd248284248321_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont255618255619_))))
                                             (___kont255618255619_))))
                                     (___kont255618255619_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L247730_))
                                 (let* ((_g248478248497_
                                         (lambda (_g248479248494_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g248479248494_))))
                                        (_g248477248848_
                                         (lambda (_g248479248500_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g248479248500_))
                                               (let ((_e248483248502_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g248479248500_))))
                                                 (let ((_hd248482248505_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e248483248502_)))
                                                       (_tl248481248507_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e248483248502_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl248481248507_))
                                                       (let ((_g257051_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl248481248507_ '0))))
                 (begin
                   (let ((_g257052_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g257051_)
                                (##vector-length _g257051_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g257052_ 2)))
                         (error "Context expects 2 values" _g257052_)))
                   (let ((_target248484248510_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g257051_ 0)))
                         (_tl248486248512_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g257051_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl248486248512_))
                         (letrec ((_loop248487248515_
                                   (lambda (_hd248485248518_
                                            _clause248491248520_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd248485248518_))
                                         (let ((_e248488248523_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd248485248518_))))
                                           (let ((_lp-hd248489248526_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e248488248523_)))
                                                 (_lp-tl248490248528_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e248488248523_))))
                                             (let ((__tmp257074
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd248489248526_
                                                            _clause248491248520_))))
                                               (declare (not safe))
                                               (_loop248487248515_
                                                _lp-tl248490248528_
                                                __tmp257074))))
                                         (let ((_clause248492248531_
                                                (reverse _clause248491248520_)))
                                           ((lambda (_L248534_)
                                              (for-each
                                               (lambda (_clause248547_)
                                                 (let* ((___stx255640255641_
                                                         _clause248547_)
                                                        (_g248550248565_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx255640255641_)))))
                                                   (let ((___kont255642255643_
                                                          (lambda (_L248593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L248594_
                           _L248595_)
                    (for-each
                     (lambda (_g248610248612_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g248610248612_
                          _L248595_
                          _method-calls247750_
                          _slot-refs247751_
                          _class-type-check247752_
                          _struct-type-check247753_
                          _struct-type-assert247754_)))
                     _L248593_)))
                 (___kont255644255645_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx255640255641_))
                                                         (let ((_e248557248577_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx255640255641_))))
                   (let ((_tl248555248582_
                          (let ()
                            (declare (not safe))
                            (##cdr _e248557248577_)))
                         (_hd248556248580_
                          (let ()
                            (declare (not safe))
                            (##car _e248557248577_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd248556248580_))
                         (let ((_e248560248585_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd248556248580_))))
                           (let ((_tl248558248590_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e248560248585_)))
                                 (_hd248559248588_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e248560248585_))))
                             (___kont255642255643_
                              _tl248555248582_
                              _tl248558248590_
                              _hd248559248588_)))
                         (___kont255644255645_))))
                 (___kont255644255645_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp257053
                                                      (lambda (_g248617248620_
                                                               _g248618248622_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g248617248620_
                                                                _g248618248622_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp257053
                                                         '()
                                                         _L248534_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?247757_))
                                                  _stx247656_
                                                  (let* ((_specializer-id248631_
                                                          (let* ((_id248625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp257054
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L247731_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp257054 '"::specialize")))
                         (_specializer-id248628_
                          (let ((__tmp257055
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx247656_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id248625_ __tmp257055))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id248628_))
                    _specializer-id248628_))
                 (_lifted-specializer-id248638_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?247759_))
                      (let* ((_id248633_
                              (let ((__tmp257056
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L247731_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp257056
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id248635_
                              (let ((__tmp257057
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx247656_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id248633_
                                 __tmp257057))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id248635_))
                        _lifted-specializer-id248635_)
                      '#f))
                 (_$t248640_
                  (let ((__tmp257058 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp257058)))
                 (_methods248642_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls247750_)))
                 (_$methods248646_
                  (map (lambda (_id248644_)
                         (let ((__tmp257059 (gensym _id248644_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp257059)))
                       _methods248642_))
                 (_g257060_
                  (for-each
                   (lambda (_g248647248650_ _g248648248652_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls247750_
                        _g248647248650_
                        _g248648248652_)))
                   _methods248642_
                   _$methods248646_))
                 (_methods-bind248663_
                  (map (lambda (_g248655248658_ _g248656248660_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind247658_
                            _$t248640_
                            _g248655248658_
                            _g248656248660_)))
                       _methods248642_
                       _$methods248646_))
                 (_slots248665_
                  (let () (declare (not safe)) (hash-keys _slot-refs247751_)))
                 (_$slots248669_
                  (map (lambda (_id248667_)
                         (let ((__tmp257061 (gensym _id248667_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp257061)))
                       _slots248665_))
                 (_g257062_
                  (for-each
                   (lambda (_g248670248673_ _g248671248675_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs247751_
                        _g248670248673_
                        _g248671248675_)))
                   _slots248665_
                   _$slots248669_))
                 (_slots-bind248686_
                  (map (lambda (_g248678248681_ _g248679248683_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind247659_
                            _$t248640_
                            _g248678248681_
                            _g248679248683_)))
                       _slots248665_
                       _$slots248669_))
                 (_class-check248688_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check247752_)))
                 (_$class-check248691_
                  (map (lambda (_g257063_)
                         (let ((__tmp257064 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp257064)))
                       _class-check248688_))
                 (_g257065_
                  (for-each
                   (lambda (_g248692248695_ _g248693248697_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check247752_
                        _g248692248695_
                        _g248693248697_)))
                   _class-check248688_
                   _$class-check248691_))
                 (_class-check-bind248708_
                  (map (lambda (_g248700248703_ _g248701248705_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind247660_
                            _$t248640_
                            _g248700248703_
                            _g248701248705_)))
                       _class-check248688_
                       _$class-check248691_))
                 (_struct-check-all248710_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check247753_
                     _struct-type-assert247754_)))
                 (_struct-check248712_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all248710_)))
                 (_$struct-check248715_
                  (map (lambda (_g257066_)
                         (let ((__tmp257067 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp257067)))
                       _struct-check248712_))
                 (_g257068_
                  (for-each
                   (lambda (_g248716248719_ _g248717248721_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all248710_
                        _g248716248719_
                        _g248717248721_)))
                   _struct-check248712_
                   _$struct-check248715_))
                 (_struct-check-bind248732_
                  (map (lambda (_g248724248727_ _g248725248729_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind247661_
                            _$t248640_
                            _g248724248727_
                            _g248725248729_)))
                       _struct-check248712_
                       _$struct-check248715_))
                 (_make-specializer-impl248839_
                  (lambda (_struct-type-check1248734_
                           _struct-type-check2248735_)
                    (let* ((_specializer-clauses248837_
                            (map (lambda (_clause248737_)
                                   (let* ((___stx255660255661_ _clause248737_)
                                          (_g248740248755_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx255660255661_)))))
                                     (let ((___kont255662255663_
                                            (lambda (_L248783_
                                                     _L248784_
                                                     _L248785_)
                                              (let* ((_body248825_
                                                      (map (lambda (_g248820248822_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g248820248822_
                        _L248785_
                        _$t248640_
                        _method-calls247750_
                        _slot-refs247751_
                        _class-type-check247752_
                        _struct-type-check1248734_
                        _struct-type-check2248735_)))
                   _L248783_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp257069
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L248785_
                                                              _L248784_))))
                                                (declare (not safe))
                                                (cons __tmp257069
                                                      _body248825_))))
                                           (___kont255664255665_
                                            (lambda () _clause248737_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx255660255661_))
                                           (let ((_e248747248767_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx255660255661_))))
                                             (let ((_tl248745248772_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e248747248767_)))
                                                   (_hd248746248770_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e248747248767_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd248746248770_))
                                                   (let ((_e248750248775_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd248746248770_))))
                                                     (let ((_tl248748248780_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e248750248775_)))
                                                           (_hd248749248778_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e248750248775_))))
                                                       (___kont255662255663_
                                                        _tl248745248772_
                                                        _tl248748248780_
                                                        _hd248749248778_)))
                                                   (___kont255664255665_))))
                                           (___kont255664255665_)))))
                                 (let ((__tmp257070
                                        (lambda (_g248829248832_
                                                 _g248830248834_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g248829248832_
                                                  _g248830248834_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp257070 '() _L248534_))))
                           (__tmp257071
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses248837_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp257071 _stx247656_))))
                 (_specializer-impl248841_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl248839_
                     _struct-check-all248710_
                     _empty247755_)))
                 (_unchecked-specializer-impl248843_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?247758_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl248839_
                         _empty247755_
                         _struct-check-all248710_))
                      '#f))
                 (_specializer-impl248845_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl247662_
                     _$t248640_
                     _methods-bind248663_
                     _slots-bind248686_
                     _class-check-bind248708_
                     _struct-check-bind248732_
                     _specializer-impl248841_
                     _lifted-specializer-id248638_
                     _unchecked-specializer-impl248843_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp257073
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L247731_)))
                                                          (__tmp257072
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id248631_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp257073
                                                       '" => "
                                                       __tmp257072))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def247663_
                                                       _L247731_
                                                       _specializer-id248631_
                                                       _specializer-impl248845_
                                                       _lifted-specializer-id248638_
                                                       _unchecked-specializer-impl248843_)))))
                                            _clause248492248531_))))))
                           (let ()
                             (declare (not safe))
                             (_loop248487248515_ _target248484248510_ '())))
                         (let ()
                           (declare (not safe))
                           (_g248478248497_ _g248479248500_))))))
               (let ()
                 (declare (not safe))
                 (_g248478248497_ _g248479248500_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248478248497_
                                                  _g248479248500_))))))
                                   (declare (not safe))
                                   (_g248477248848_ _L247730_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L247730_))
                                     (let* ((_g248851248881_
                                             (lambda (_g248852248878_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g248852248878_))))
                                            (_g248850249569_
                                             (lambda (_g248852248884_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g248852248884_))
                                                   (let ((_e248858248886_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g248852248884_))))
                                                     (let ((_hd248857248889_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e248858248886_)))
                                                           (_tl248856248891_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e248858248886_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl248856248891_))
                                                           (let ((_e248861248894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl248856248891_))))
                     (let ((_hd248860248897_
                            (let ()
                              (declare (not safe))
                              (##car _e248861248894_)))
                           (_tl248859248899_
                            (let ()
                              (declare (not safe))
                              (##cdr _e248861248894_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd248860248897_))
                           (let ((_e248864248902_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd248860248897_))))
                             (let ((_hd248863248905_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e248864248902_)))
                                   (_tl248862248907_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e248864248902_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd248863248905_))
                                   (let ((_e248867248910_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd248863248905_))))
                                     (let ((_hd248866248913_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e248867248910_)))
                                           (_tl248865248915_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e248867248910_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd248866248913_))
                                           (let ((_e248870248918_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd248866248913_))))
                                             (let ((_hd248869248921_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e248870248918_)))
                                                   (_tl248868248923_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e248870248918_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl248868248923_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl248865248915_))
                                                       (let ((_e248873248926_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl248865248915_))))
                 (let ((_hd248872248929_
                        (let () (declare (not safe)) (##car _e248873248926_)))
                       (_tl248871248931_
                        (let () (declare (not safe)) (##cdr _e248873248926_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl248871248931_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl248862248907_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl248859248899_))
                               (let ((_e248876248934_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl248859248899_))))
                                 (let ((_hd248875248937_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e248876248934_)))
                                       (_tl248874248939_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e248876248934_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl248874248939_))
                                       ((lambda (_L248942_ _L248943_ _L248944_)
                                          (let* ((_g248967248985_
                                                  (lambda (_g248968248982_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g248968248982_))))
                                                 (_g248966249036_
                                                  (lambda (_g248968248988_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g248968248988_))
                                                        (let ((_e248974248990_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g248968248988_))))
                  (let ((_hd248973248993_
                         (let () (declare (not safe)) (##car _e248974248990_)))
                        (_tl248972248995_
                         (let ()
                           (declare (not safe))
                           (##cdr _e248974248990_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl248972248995_))
                        (let ((_e248977248998_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl248972248995_))))
                          (let ((_hd248976249001_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e248977248998_)))
                                (_tl248975249003_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e248977248998_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd248976249001_))
                                (let ((_e248980249006_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd248976249001_))))
                                  (let ((_hd248979249009_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e248980249006_)))
                                        (_tl248978249011_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e248980249006_))))
                                    ((lambda (_L249014_ _L249015_ _L249016_)
                                       (for-each
                                        (lambda (_g249031249033_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g249031249033_
                                             _L249016_
                                             _method-calls247750_
                                             _slot-refs247751_
                                             _class-type-check247752_
                                             _struct-type-check247753_
                                             _struct-type-assert247754_)))
                                        _L249014_))
                                     _tl248975249003_
                                     _tl248978249011_
                                     _hd248979249009_)))
                                (let ()
                                  (declare (not safe))
                                  (_g248967248985_ _g248968248988_)))))
                        (let ()
                          (declare (not safe))
                          (_g248967248985_ _g248968248988_)))))
                (let ()
                  (declare (not safe))
                  (_g248967248985_ _g248968248988_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g248966249036_ _L248943_))
                                          (let* ((_g249039249058_
                                                  (lambda (_g249040249055_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g249040249055_))))
                                                 (_g249038249177_
                                                  (lambda (_g249040249061_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g249040249061_))
                                                        (let ((_e249044249063_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g249040249061_))))
                  (let ((_hd249043249066_
                         (let () (declare (not safe)) (##car _e249044249063_)))
                        (_tl249042249068_
                         (let ()
                           (declare (not safe))
                           (##cdr _e249044249063_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl249042249068_))
                        (let ((_g257014_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl249042249068_
                                  '0))))
                          (begin
                            (let ((_g257015_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g257014_)
                                         (##vector-length _g257014_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g257015_ 2)))
                                  (error "Context expects 2 values"
                                         _g257015_)))
                            (let ((_target249045249071_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g257014_ 0)))
                                  (_tl249047249073_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g257014_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl249047249073_))
                                  (letrec ((_loop249048249076_
                                            (lambda (_hd249046249079_
                                                     _clause249052249081_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd249046249079_))
                                                  (let ((_e249049249084_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd249046249079_))))
                                                    (let ((_lp-hd249050249087_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e249049249084_)))
                                                          (_lp-tl249051249089_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e249049249084_))))
                                                      (let ((__tmp257017
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd249050249087_ _clause249052249081_))))
                (declare (not safe))
                (_loop249048249076_ _lp-tl249051249089_ __tmp257017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause249053249092_
                                                         (reverse _clause249052249081_)))
                                                    ((lambda (_L249095_)
                                                       (for-each
                                                        (lambda (_clause249108_)
                                                          (let* ((_g249110249125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g249111249122_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g249111249122_))))
                         (_g249109249167_
                          (lambda (_g249111249128_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g249111249128_))
                                (let ((_e249117249130_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g249111249128_))))
                                  (let ((_hd249116249133_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e249117249130_)))
                                        (_tl249115249135_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e249117249130_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd249116249133_))
                                        (let ((_e249120249138_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd249116249133_))))
                                          (let ((_hd249119249141_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e249120249138_)))
                                                (_tl249118249143_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e249120249138_))))
                                            ((lambda (_L249146_
                                                      _L249147_
                                                      _L249148_)
                                               (for-each
                                                (lambda (_g249162249164_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g249162249164_
                                                     _L249148_
                                                     _method-calls247750_
                                                     _slot-refs247751_
                                                     _class-type-check247752_
                                                     _struct-type-check247753_
                                                     _struct-type-assert247754_)))
                                                _L249146_))
                                             _tl249115249135_
                                             _tl249118249143_
                                             _hd249119249141_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g249110249125_ _g249111249128_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g249110249125_ _g249111249128_))))))
                    (declare (not safe))
                    (_g249109249167_ _clause249108_)))
                (let ((__tmp257016
                       (lambda (_g249169249172_ _g249170249174_)
                         (let ()
                           (declare (not safe))
                           (cons _g249169249172_ _g249170249174_)))))
                  (declare (not safe))
                  (foldr1 __tmp257016 '() _L249095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause249053249092_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop249048249076_
                                       _target249045249071_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g249039249058_ _g249040249061_))))))
                        (let ()
                          (declare (not safe))
                          (_g249039249058_ _g249040249061_)))))
                (let ()
                  (declare (not safe))
                  (_g249039249058_ _g249040249061_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g249038249177_ _L248942_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?247757_))
                                              _stx247656_
                                              (let* ((_specializer-id249186_
                                                      (let* ((_id249180_
                                                              (let ((__tmp257018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L247731_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp257018 '"::specialize")))
                     (_specializer-id249183_
                      (let ((__tmp257019
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx247656_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id249180_ __tmp257019))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id249183_))
                _specializer-id249183_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id249193_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?247759_))
                                                          (let* ((_id249188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp257020
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L247731_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp257020
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id249190_
                          (let ((__tmp257021
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx247656_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id249188_ __tmp257021))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id249190_))
                    _lifted-specializer-id249190_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t249195_
                                                      (let ((__tmp257022
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp257022)))
                                                     (_methods249197_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls247750_)))
                                                     (_$methods249201_
                                                      (map (lambda (_id249199_)
                                                             (let ((__tmp257023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id249199_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp257023)))
                   _methods249197_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g257024_
                                                      (for-each
                                                       (lambda (_g249202249205_
                                                                _g249203249207_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls247750_
                                                            _g249202249205_
                                                            _g249203249207_)))
                                                       _methods249197_
                                                       _$methods249201_))
                                                     (_methods-bind249218_
                                                      (map (lambda (_g249210249213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g249211249215_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind247658_
                        _$t249195_
                        _g249210249213_
                        _g249211249215_)))
                   _methods249197_
                   _$methods249201_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots249220_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs247751_)))
                                                     (_$slots249224_
                                                      (map (lambda (_id249222_)
                                                             (let ((__tmp257025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id249222_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp257025)))
                   _slots249220_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g257026_
                                                      (for-each
                                                       (lambda (_g249225249228_
                                                                _g249226249230_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs247751_
                                                            _g249225249228_
                                                            _g249226249230_)))
                                                       _slots249220_
                                                       _$slots249224_))
                                                     (_slots-bind249241_
                                                      (map (lambda (_g249233249236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g249234249238_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind247659_
                        _$t249195_
                        _g249233249236_
                        _g249234249238_)))
                   _slots249220_
                   _$slots249224_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check249243_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check247752_)))
                                                     (_$class-check249246_
                                                      (map (lambda (_g257027_)
                                                             (let ((__tmp257028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp257028)))
                   _class-check249243_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g257029_
                                                      (for-each
                                                       (lambda (_g249247249250_
                                                                _g249248249252_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check247752_
                                                            _g249247249250_
                                                            _g249248249252_)))
                                                       _class-check249243_
                                                       _$class-check249246_))
                                                     (_class-check-bind249263_
                                                      (map (lambda (_g249255249258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g249256249260_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind247660_
                        _$t249195_
                        _g249255249258_
                        _g249256249260_)))
                   _class-check249243_
                   _$class-check249246_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all249265_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check247753_
                                                         _struct-type-assert247754_)))
                                                     (_struct-check249267_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all249265_)))
                                                     (_$struct-check249270_
                                                      (map (lambda (_g257030_)
                                                             (let ((__tmp257031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp257031)))
                   _struct-check249267_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g257032_
                                                      (for-each
                                                       (lambda (_g249271249274_
                                                                _g249272249276_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all249265_
                                                            _g249271249274_
                                                            _g249272249276_)))
                                                       _struct-check249267_
                                                       _$struct-check249270_))
                                                     (_struct-check-bind249287_
                                                      (map (lambda (_g249279249282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g249280249284_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind247661_
                        _$t249195_
                        _g249279249282_
                        _g249280249284_)))
                   _struct-check249267_
                   _$struct-check249270_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr249386_
                                                      (lambda (_struct-type-check1249289_
                                                               _struct-type-check2249290_)
                                                        (let* ((_g249292249310_
                                                                (lambda (_g249293249307_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g249293249307_))))
                       (_g249291249383_
                        (lambda (_g249293249313_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g249293249313_))
                              (let ((_e249299249315_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g249293249313_))))
                                (let ((_hd249298249318_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e249299249315_)))
                                      (_tl249297249320_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e249299249315_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl249297249320_))
                                      (let ((_e249302249323_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl249297249320_))))
                                        (let ((_hd249301249326_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e249302249323_)))
                                              (_tl249300249328_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e249302249323_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd249301249326_))
                                              (let ((_e249305249331_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd249301249326_))))
                                                (let ((_hd249304249334_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e249305249331_)))
                                                      (_tl249303249336_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e249305249331_))))
                                                  ((lambda (_L249339_
                                                            _L249340_
                                                            _L249341_)
                                                     (let* ((_body249381_
                                                             (map (lambda (_g249376249378_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g249376249378_
                               _L249341_
                               _$t249195_
                               _method-calls247750_
                               _slot-refs247751_
                               _class-type-check247752_
                               _struct-type-check1249289_
                               _struct-type-check2249290_)))
                          _L249339_))
                    (__tmp257033
                     (let ((__tmp257034
                            (let ((__tmp257035
                                   (let ()
                                     (declare (not safe))
                                     (cons _L249341_ _L249340_))))
                              (declare (not safe))
                              (cons __tmp257035 _body249381_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp257034))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp257033 _L248943_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl249300249328_
                                                   _tl249303249336_
                                                   _hd249304249334_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g249292249310_
                                                 _g249293249313_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g249292249310_ _g249293249313_)))))
                              (let ()
                                (declare (not safe))
                                (_g249292249310_ _g249293249313_))))))
                  (declare (not safe))
                  (_g249291249383_ _L248943_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr249547_
                                                      (lambda (_struct-type-check1249388_
                                                               _struct-type-check2249389_)
                                                        (let* ((_g249391249410_
                                                                (lambda (_g249392249407_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g249392249407_))))
                       (_g249390249544_
                        (lambda (_g249392249413_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g249392249413_))
                              (let ((_e249396249415_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g249392249413_))))
                                (let ((_hd249395249418_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e249396249415_)))
                                      (_tl249394249420_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e249396249415_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl249394249420_))
                                      (let ((_g257036_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl249394249420_
                                                '0))))
                                        (begin
                                          (let ((_g257037_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g257036_)
                                                       (##vector-length
                                                        _g257036_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g257037_ 2)))
                                                (error "Context expects 2 values"
                                                       _g257037_)))
                                          (let ((_target249397249423_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g257036_ 0)))
                                                (_tl249399249425_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g257036_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl249399249425_))
                                                (letrec ((_loop249400249428_
                                                          (lambda (_hd249398249431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause249404249433_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd249398249431_))
                        (let ((_e249401249436_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd249398249431_))))
                          (let ((_lp-hd249402249439_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e249401249436_)))
                                (_lp-tl249403249441_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e249401249436_))))
                            (let ((__tmp257041
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd249402249439_
                                           _clause249404249433_))))
                              (declare (not safe))
                              (_loop249400249428_
                               _lp-tl249403249441_
                               __tmp257041))))
                        (let ((_clause249405249444_
                               (reverse _clause249404249433_)))
                          ((lambda (_L249447_)
                             (let* ((_clauses249542_
                                     (map (lambda (_clause249462_)
                                            (let* ((___stx255680255681_
                                                    _clause249462_)
                                                   (_g249465249480_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx255680255681_)))))
                                              (let ((___kont255682255683_
                                                     (lambda (_L249508_
                                                              _L249509_
                                                              _L249510_)
                                                       (let* ((_body249530_
                                                               (map (lambda (_g249525249527_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g249525249527_
                                 _L249510_
                                 _$t249195_
                                 _method-calls247750_
                                 _slot-refs247751_
                                 _class-type-check247752_
                                 _struct-type-check1249388_
                                 _struct-type-check2249389_)))
                            _L249508_))
                      (__tmp257038
                       (let ()
                         (declare (not safe))
                         (cons _L249510_ _L249509_))))
                 (declare (not safe))
                 (cons __tmp257038 _body249530_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont255684255685_
                                                     (lambda ()
                                                       _clause249462_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx255680255681_))
                                                    (let ((_e249472249492_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx255680255681_))))
                                                      (let ((_tl249470249497_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e249472249492_)))
                    (_hd249471249495_
                     (let () (declare (not safe)) (##car _e249472249492_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd249471249495_))
                    (let ((_e249475249500_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd249471249495_))))
                      (let ((_tl249473249505_
                             (let ()
                               (declare (not safe))
                               (##cdr _e249475249500_)))
                            (_hd249474249503_
                             (let ()
                               (declare (not safe))
                               (##car _e249475249500_))))
                        (___kont255682255683_
                         _tl249470249497_
                         _tl249473249505_
                         _hd249474249503_)))
                    (___kont255684255685_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont255684255685_)))))
                                          (let ((__tmp257039
                                                 (lambda (_g249534249537_
                                                          _g249535249539_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g249534249537_
                                                           _g249535249539_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp257039
                                                    '()
                                                    _L249447_))))
                                    (__tmp257040
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses249542_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp257040 _L248942_)))
                           _clause249405249444_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop249400249428_
                                                     _target249397249423_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g249391249410_
                                                   _g249392249413_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g249391249410_ _g249392249413_)))))
                              (let ()
                                (declare (not safe))
                                (_g249391249410_ _g249392249413_))))))
                  (declare (not safe))
                  (_g249390249544_ _L248942_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl249552_
                                                      (lambda (_specializer-lambda-expr249549_
                                                               _specializer-case-lambda-expr249550_)
                                                        (let ((__tmp257042
                                                               (let ((__tmp257043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp257045
                                     (let ((__tmp257046
                                            (let ((__tmp257048
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L248944_ '())))
                                                  (__tmp257047
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr249549_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp257048 __tmp257047))))
                                       (declare (not safe))
                                       (cons __tmp257046 '())))
                                    (__tmp257044
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr249550_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp257045 __tmp257044))))
                         (declare (not safe))
                         (cons '%#let-values __tmp257043))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp257042 _stx247656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr249554_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr249386_
                                                         _struct-check-all249265_
                                                         _empty247755_)))
                                                     (_specializer-case-lambda-expr249556_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr249547_
                                                         _struct-check-all249265_
                                                         _empty247755_)))
                                                     (_specializer-impl249558_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl249552_
                                                         _specializer-lambda-expr249554_
                                                         _specializer-case-lambda-expr249556_)))
                                                     (_unchecked-specializer-lambda-expr249560_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?247758_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr249386_
                                                             _empty247755_
                                                             _struct-check-all249265_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr249562_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?247758_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr249547_
                                                             _empty247755_
                                                             _struct-check-all249265_))
                                                          '#f))
                                                     (_unchecked-specializer-impl249564_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?247758_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl249552_
                                                             _unchecked-specializer-lambda-expr249560_
                                                             _unchecked-specializer-case-lambda-expr249562_))
                                                          '#f))
                                                     (_specializer-impl249566_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl247662_
                                                         _$t249195_
                                                         _methods-bind249218_
                                                         _slots-bind249241_
                                                         _class-check-bind249263_
                                                         _struct-check-bind249287_
                                                         _specializer-impl249558_
                                                         _lifted-specializer-id249193_
                                                         _unchecked-specializer-impl249564_))))
                                                (let ((__tmp257050
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L247731_)))
                                                      (__tmp257049
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id249186_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp257050
                                                   '" => "
                                                   __tmp257049))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def247663_
                                                   _L247731_
                                                   _specializer-id249186_
                                                   _specializer-impl249566_
                                                   _lifted-specializer-id249193_
                                                   _unchecked-specializer-impl249564_)))))
                                        _hd248875248937_
                                        _hd248872248929_
                                        _hd248869248921_)
                                       (let ()
                                         (declare (not safe))
                                         (_g248851248881_ _g248852248884_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g248851248881_ _g248852248884_)))
                           (let ()
                             (declare (not safe))
                             (_g248851248881_ _g248852248884_)))
                       (let ()
                         (declare (not safe))
                         (_g248851248881_ _g248852248884_)))))
               (let () (declare (not safe)) (_g248851248881_ _g248852248884_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248851248881_
                                                      _g248852248884_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g248851248881_
                                              _g248852248884_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g248851248881_ _g248852248884_)))))
                           (let ()
                             (declare (not safe))
                             (_g248851248881_ _g248852248884_)))))
                   (let ()
                     (declare (not safe))
                     (_g248851248881_ _g248852248884_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248851248881_
                                                      _g248852248884_))))))
                                       (declare (not safe))
                                       (_g248850249569_ _L247730_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L247730_))
                                         (let* ((_g249572249625_
                                                 (lambda (_g249573249622_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g249573249622_))))
                                                (_g249571250897_
                                                 (lambda (_g249573249628_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g249573249628_))
                                                       (let ((_e249581249630_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g249573249628_))))
                 (let ((_hd249580249633_
                        (let () (declare (not safe)) (##car _e249581249630_)))
                       (_tl249579249635_
                        (let () (declare (not safe)) (##cdr _e249581249630_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd249580249633_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd249580249633_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl249579249635_))
                               (let ((_e249584249638_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl249579249635_))))
                                 (let ((_hd249583249641_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e249584249638_)))
                                       (_tl249582249643_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e249584249638_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd249583249641_))
                                       (let ((_e249587249646_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd249583249641_))))
                                         (let ((_hd249586249649_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e249587249646_)))
                                               (_tl249585249651_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e249587249646_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd249586249649_))
                                               (let ((_e249590249654_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd249586249649_))))
                                                 (let ((_hd249589249657_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e249590249654_)))
                                                       (_tl249588249659_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e249590249654_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd249589249657_))
                                                       (let ((_e249593249662_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd249589249657_))))
                 (let ((_hd249592249665_
                        (let () (declare (not safe)) (##car _e249593249662_)))
                       (_tl249591249667_
                        (let () (declare (not safe)) (##cdr _e249593249662_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl249591249667_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl249588249659_))
                           (let ((_e249596249670_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl249588249659_))))
                             (let ((_hd249595249673_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e249596249670_)))
                                   (_tl249594249675_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e249596249670_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd249595249673_))
                                   (let ((_e249599249678_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd249595249673_))))
                                     (let ((_hd249598249681_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e249599249678_)))
                                           (_tl249597249683_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e249599249678_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd249598249681_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd249598249681_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl249597249683_))
                                                   (let ((_e249602249686_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl249597249683_))))
                                                     (let ((_hd249601249689_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e249602249686_)))
                                                           (_tl249600249691_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e249602249686_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd249601249689_))
                                                           (let ((_e249605249694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd249601249689_))))
                     (let ((_hd249604249697_
                            (let ()
                              (declare (not safe))
                              (##car _e249605249694_)))
                           (_tl249603249699_
                            (let ()
                              (declare (not safe))
                              (##cdr _e249605249694_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd249604249697_))
                           (let ((_e249608249702_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd249604249697_))))
                             (let ((_hd249607249705_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e249608249702_)))
                                   (_tl249606249707_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e249608249702_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd249607249705_))
                                   (let ((_e249611249710_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd249607249705_))))
                                     (let ((_hd249610249713_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e249611249710_)))
                                           (_tl249609249715_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e249611249710_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl249609249715_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl249606249707_))
                                               (let ((_e249614249718_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl249606249707_))))
                                                 (let ((_hd249613249721_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e249614249718_)))
                                                       (_tl249612249723_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e249614249718_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl249612249723_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl249603249699_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl249600249691_))
                       (let ((_e249617249726_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl249600249691_))))
                         (let ((_hd249616249729_
                                (let ()
                                  (declare (not safe))
                                  (##car _e249617249726_)))
                               (_tl249615249731_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e249617249726_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl249615249731_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl249594249675_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl249585249651_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl249582249643_))
                                           (let ((_e249620249734_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl249582249643_))))
                                             (let ((_hd249619249737_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e249620249734_)))
                                                   (_tl249618249739_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e249620249734_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl249618249739_))
                                                   ((lambda (_L249742_
                                                             _L249743_
                                                             _L249744_
                                                             _L249745_
                                                             _L249746_)
                                                      (let* ((_g249785249847_
                                                              (lambda (_g249786249844_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g249786249844_))))
                     (_g249784250894_
                      (lambda (_g249786249850_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g249786249850_))
                            (let ((_e249794249852_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g249786249850_))))
                              (let ((_hd249793249855_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249794249852_)))
                                    (_tl249792249857_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249794249852_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd249793249855_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd249793249855_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl249792249857_))
                                            (let ((_e249797249860_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl249792249857_))))
                                              (let ((_hd249796249863_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e249797249860_)))
                                                    (_tl249795249865_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e249797249860_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl249795249865_))
                                                    (let ((_e249800249868_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl249795249865_))))
                                                      (let ((_hd249799249871_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e249800249868_)))
                    (_tl249798249873_
                     (let () (declare (not safe)) (##cdr _e249800249868_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd249799249871_))
                    (let ((_e249803249876_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd249799249871_))))
                      (let ((_hd249802249879_
                             (let ()
                               (declare (not safe))
                               (##car _e249803249876_)))
                            (_tl249801249881_
                             (let ()
                               (declare (not safe))
                               (##cdr _e249803249876_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd249802249879_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd249802249879_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl249801249881_))
                                    (let ((_e249806249884_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl249801249881_))))
                                      (let ((_hd249805249887_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e249806249884_)))
                                            (_tl249804249889_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e249806249884_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd249805249887_))
                                            (let ((_e249809249892_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd249805249887_))))
                                              (let ((_hd249808249895_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e249809249892_)))
                                                    (_tl249807249897_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e249809249892_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd249808249895_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd249808249895_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl249807249897_))
                                                            (let ((_e249812249900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl249807249897_))))
                      (let ((_hd249811249903_
                             (let ()
                               (declare (not safe))
                               (##car _e249812249900_)))
                            (_tl249810249905_
                             (let ()
                               (declare (not safe))
                               (##cdr _e249812249900_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl249810249905_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl249804249889_))
                                (let ((_e249815249908_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl249804249889_))))
                                  (let ((_hd249814249911_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e249815249908_)))
                                        (_tl249813249913_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e249815249908_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd249814249911_))
                                        (let ((_e249818249916_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd249814249911_))))
                                          (let ((_hd249817249919_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e249818249916_)))
                                                (_tl249816249921_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e249818249916_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd249817249919_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd249817249919_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl249816249921_))
                                                        (let ((_e249821249924_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl249816249921_))))
                  (let ((_hd249820249927_
                         (let () (declare (not safe)) (##car _e249821249924_)))
                        (_tl249819249929_
                         (let ()
                           (declare (not safe))
                           (##cdr _e249821249924_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl249819249929_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl249813249913_))
                            (let ((_e249824249932_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl249813249913_))))
                              (let ((_hd249823249935_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249824249932_)))
                                    (_tl249822249937_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249824249932_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd249823249935_))
                                    (let ((_e249827249940_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd249823249935_))))
                                      (let ((_hd249826249943_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e249827249940_)))
                                            (_tl249825249945_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e249827249940_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd249826249943_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd249826249943_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl249825249945_))
                                                    (let ((_e249830249948_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl249825249945_))))
                                                      (let ((_hd249829249951_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e249830249948_)))
                    (_tl249828249953_
                     (let () (declare (not safe)) (##cdr _e249830249948_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl249828249953_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl249822249937_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl249822249937_))
                                  '1)
                            (let ((_g256926_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl249822249937_
                                      '1))))
                              (begin
                                (let ((_g256927_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g256926_)
                                             (##vector-length _g256926_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g256927_ 2)))
                                      (error "Context expects 2 values"
                                             _g256927_)))
                                (let ((_target249831249956_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g256926_ 0)))
                                      (_tl249833249958_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g256926_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl249833249958_))
                                      (let ((_e249842249961_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl249833249958_))))
                                        (let ((_hd249841249964_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e249842249961_)))
                                              (_tl249840249966_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e249842249961_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl249840249966_))
                                              (letrec ((_loop249834249969_
                                                        (lambda (_hd249832249972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref249838249974_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd249832249972_))
                      (let ((_e249835249977_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd249832249972_))))
                        (let ((_lp-hd249836249980_
                               (let ()
                                 (declare (not safe))
                                 (##car _e249835249977_)))
                              (_lp-tl249837249982_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e249835249977_))))
                          (let ((__tmp257013
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd249836249980_
                                         _kw-ref249838249974_))))
                            (declare (not safe))
                            (_loop249834249969_
                             _lp-tl249837249982_
                             __tmp257013))))
                      (let ((_kw-ref249839249985_
                             (reverse _kw-ref249838249974_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl249798249873_))
                            ((lambda (_L249988_
                                      _L249989_
                                      _L249990_
                                      _L249991_
                                      _L249992_)
                               (let* ((_kw-count250043_
                                       (length (let ((__tmp256928
                                                      (lambda (_g250035250038_
                                                               _g250036250040_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g250035250038_
                                                                _g250036250040_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp256928
                                                         '()
                                                         _L249989_))))
                                      (_self-index250045_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count250043_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L249744_))
                                     (let* ((_g250048250062_
                                             (lambda (_g250049250059_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g250049250059_))))
                                            (_g250047250233_
                                             (lambda (_g250049250065_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g250049250065_))
                                                   (let ((_e250054250067_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g250049250065_))))
                                                     (let ((_hd250053250070_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e250054250067_)))
                                                           (_tl250052250072_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e250054250067_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl250052250072_))
                                                           (let ((_e250057250075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl250052250072_))))
                     (let ((_hd250056250078_
                            (let ()
                              (declare (not safe))
                              (##car _e250057250075_)))
                           (_tl250055250080_
                            (let ()
                              (declare (not safe))
                              (##cdr _e250057250075_))))
                       ((lambda (_L250083_ _L250084_)
                          (let ((_self250100_
                                 (list-ref _L250084_ _self-index250045_)))
                            (for-each
                             (lambda (_g250101250103_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g250101250103_
                                  _self250100_
                                  _method-calls247750_
                                  _slot-refs247751_
                                  _class-type-check247752_
                                  _struct-type-check247753_
                                  _struct-type-assert247754_)))
                             _L250083_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?247757_))
                                _stx247656_
                                (let* ((_specializer-id250112_
                                        (let* ((_id250106_
                                                (let ((__tmp256979
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L247731_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp256979
                                                   '"::specialize")))
                                               (_specializer-id250109_
                                                (let ((__tmp256980
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx247656_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id250106_
                                                   __tmp256980))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id250109_))
                                          _specializer-id250109_))
                                       (_lifted-specializer-id250119_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?247759_))
                                            (let* ((_id250114_
                                                    (let ((__tmp256981
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L247731_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp256981
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id250116_
                                                    (let ((__tmp256982
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx247656_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id250114_
                                                       __tmp256982))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id250116_))
                                              _lifted-specializer-id250116_)
                                            '#f))
                                       (_$t250121_
                                        (let ((__tmp256983 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp256983)))
                                       (_methods250123_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls247750_)))
                                       (_$methods250127_
                                        (map (lambda (_id250125_)
                                               (let ((__tmp256984
                                                      (gensym _id250125_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp256984)))
                                             _methods250123_))
                                       (_g256985_
                                        (for-each
                                         (lambda (_g250128250131_
                                                  _g250129250133_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls247750_
                                              _g250128250131_
                                              _g250129250133_)))
                                         _methods250123_
                                         _$methods250127_))
                                       (_methods-bind250144_
                                        (map (lambda (_g250136250139_
                                                      _g250137250141_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind247658_
                                                  _$t250121_
                                                  _g250136250139_
                                                  _g250137250141_)))
                                             _methods250123_
                                             _$methods250127_))
                                       (_slots250146_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs247751_)))
                                       (_$slots250150_
                                        (map (lambda (_id250148_)
                                               (let ((__tmp256986
                                                      (gensym _id250148_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp256986)))
                                             _slots250146_))
                                       (_g256987_
                                        (for-each
                                         (lambda (_g250151250154_
                                                  _g250152250156_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs247751_
                                              _g250151250154_
                                              _g250152250156_)))
                                         _slots250146_
                                         _$slots250150_))
                                       (_slots-bind250167_
                                        (map (lambda (_g250159250162_
                                                      _g250160250164_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind247659_
                                                  _$t250121_
                                                  _g250159250162_
                                                  _g250160250164_)))
                                             _slots250146_
                                             _$slots250150_))
                                       (_class-check250169_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check247752_)))
                                       (_$class-check250172_
                                        (map (lambda (_g256988_)
                                               (let ((__tmp256989
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp256989)))
                                             _class-check250169_))
                                       (_g256990_
                                        (for-each
                                         (lambda (_g250173250176_
                                                  _g250174250178_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check247752_
                                              _g250173250176_
                                              _g250174250178_)))
                                         _class-check250169_
                                         _$class-check250172_))
                                       (_class-check-bind250189_
                                        (map (lambda (_g250181250184_
                                                      _g250182250186_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind247660_
                                                  _$t250121_
                                                  _g250181250184_
                                                  _g250182250186_)))
                                             _class-check250169_
                                             _$class-check250172_))
                                       (_struct-check-all250191_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check247753_
                                           _struct-type-assert247754_)))
                                       (_struct-check250193_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all250191_)))
                                       (_$struct-check250196_
                                        (map (lambda (_g256991_)
                                               (let ((__tmp256992
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp256992)))
                                             _struct-check250193_))
                                       (_g256993_
                                        (for-each
                                         (lambda (_g250197250200_
                                                  _g250198250202_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all250191_
                                              _g250197250200_
                                              _g250198250202_)))
                                         _struct-check250193_
                                         _$struct-check250196_))
                                       (_struct-check-bind250213_
                                        (map (lambda (_g250205250208_
                                                      _g250206250210_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind247661_
                                                  _$t250121_
                                                  _g250205250208_
                                                  _g250206250210_)))
                                             _struct-check250193_
                                             _$struct-check250196_))
                                       (_make-specializer-impl250224_
                                        (lambda (_struct-type-check1250215_
                                                 _struct-type-check2250216_)
                                          (let* ((_specializer-body250222_
                                                  (map (lambda (_g250217250219_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g250217250219_
                                                            _self250100_
                                                            _$t250121_
                                                            _method-calls247750_
                                                            _slot-refs247751_
                                                            _class-type-check247752_
                                                            _struct-type-check1250215_
                                                            _struct-type-check2250216_)))
                                                       _L250083_))
                                                 (__tmp256994
                                                  (let ((__tmp256995
                                                         (let ((__tmp256997
                                                                (let ((__tmp256998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp257010
                                      (let ()
                                        (declare (not safe))
                                        (cons _L249746_ '())))
                                     (__tmp256999
                                      (let ((__tmp257000
                                             (let ((__tmp257001
                                                    (let ((__tmp257003
                                                           (let ((__tmp257004
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp257009
                                 (let ()
                                   (declare (not safe))
                                   (cons _L249745_ '())))
                                (__tmp257005
                                 (let ((__tmp257006
                                        (let ((__tmp257007
                                               (let ((__tmp257008
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L250084_
                                                              _specializer-body250222_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp257008))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp257007
                                           _L249744_))))
                                   (declare (not safe))
                                   (cons __tmp257006 '()))))
                            (declare (not safe))
                            (cons __tmp257009 __tmp257005))))
                     (declare (not safe))
                     (cons __tmp257004 '())))
                  (__tmp257002
                   (let () (declare (not safe)) (cons _L249743_ '()))))
              (declare (not safe))
              (cons __tmp257003 __tmp257002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp257001))))
                                        (declare (not safe))
                                        (cons __tmp257000 '()))))
                                 (declare (not safe))
                                 (cons __tmp257010 __tmp256999))))
                          (declare (not safe))
                          (cons __tmp256998 '())))
                       (__tmp256996
                        (let () (declare (not safe)) (cons _L249742_ '()))))
                   (declare (not safe))
                   (cons __tmp256997 __tmp256996))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp256995))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp256994
                                             _stx247656_))))
                                       (_specializer-impl250226_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl250224_
                                           _struct-check-all250191_
                                           _empty247755_)))
                                       (_unchecked-specializer-impl250228_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?247758_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl250224_
                                               _empty247755_
                                               _struct-check-all250191_))
                                            '#f))
                                       (_specializer-impl250230_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl247662_
                                           _$t250121_
                                           _methods-bind250144_
                                           _slots-bind250167_
                                           _class-check-bind250189_
                                           _struct-check-bind250213_
                                           _specializer-impl250226_
                                           _lifted-specializer-id250119_
                                           _unchecked-specializer-impl250228_))))
                                  (let ((__tmp257012
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L247731_)))
                                        (__tmp257011
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id250112_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp257012
                                     '" => "
                                     __tmp257011))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def247663_
                                     _L247731_
                                     _specializer-id250112_
                                     _specializer-impl250230_
                                     _lifted-specializer-id250119_
                                     _unchecked-specializer-impl250228_))))))
                        _tl250055250080_
                        _hd250056250078_)))
                   (let ()
                     (declare (not safe))
                     (_g250048250062_ _g250049250065_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g250048250062_
                                                      _g250049250065_))))))
                                       (declare (not safe))
                                       (_g250047250233_ _L249744_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L249744_))
                                         (let* ((_g250236250266_
                                                 (lambda (_g250237250263_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g250237250263_))))
                                                (_g250235250891_
                                                 (lambda (_g250237250269_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g250237250269_))
                                                       (let ((_e250243250271_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g250237250269_))))
                 (let ((_hd250242250274_
                        (let () (declare (not safe)) (##car _e250243250271_)))
                       (_tl250241250276_
                        (let () (declare (not safe)) (##cdr _e250243250271_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl250241250276_))
                       (let ((_e250246250279_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl250241250276_))))
                         (let ((_hd250245250282_
                                (let ()
                                  (declare (not safe))
                                  (##car _e250246250279_)))
                               (_tl250244250284_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e250246250279_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd250245250282_))
                               (let ((_e250249250287_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd250245250282_))))
                                 (let ((_hd250248250290_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e250249250287_)))
                                       (_tl250247250292_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e250249250287_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd250248250290_))
                                       (let ((_e250252250295_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd250248250290_))))
                                         (let ((_hd250251250298_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e250252250295_)))
                                               (_tl250250250300_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e250252250295_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd250251250298_))
                                               (let ((_e250255250303_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd250251250298_))))
                                                 (let ((_hd250254250306_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e250255250303_)))
                                                       (_tl250253250308_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e250255250303_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl250253250308_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl250250250300_))
                                                           (let ((_e250258250311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl250250250300_))))
                     (let ((_hd250257250314_
                            (let ()
                              (declare (not safe))
                              (##car _e250258250311_)))
                           (_tl250256250316_
                            (let ()
                              (declare (not safe))
                              (##cdr _e250258250311_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl250256250316_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl250247250292_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl250244250284_))
                                   (let ((_e250261250319_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl250244250284_))))
                                     (let ((_hd250260250322_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e250261250319_)))
                                           (_tl250259250324_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e250261250319_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl250259250324_))
                                           ((lambda (_L250327_
                                                     _L250328_
                                                     _L250329_)
                                              (let* ((_g250352250366_
                                                      (lambda (_g250353250363_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g250353250363_))))
                                                     (_g250351250407_
                                                      (lambda (_g250353250369_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g250353250369_))
                                                            (let ((_e250358250371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g250353250369_))))
                      (let ((_hd250357250374_
                             (let ()
                               (declare (not safe))
                               (##car _e250358250371_)))
                            (_tl250356250376_
                             (let ()
                               (declare (not safe))
                               (##cdr _e250358250371_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl250356250376_))
                            (let ((_e250361250379_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl250356250376_))))
                              (let ((_hd250360250382_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e250361250379_)))
                                    (_tl250359250384_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e250361250379_))))
                                ((lambda (_L250387_ _L250388_)
                                   (let ((_self250401_
                                          (list-ref
                                           _L250388_
                                           _self-index250045_)))
                                     (for-each
                                      (lambda (_g250402250404_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g250402250404_
                                           _self250401_
                                           _method-calls247750_
                                           _slot-refs247751_
                                           _class-type-check247752_
                                           _struct-type-check247753_
                                           _struct-type-assert247754_)))
                                      _L250387_)))
                                 _tl250359250384_
                                 _hd250360250382_)))
                            (let ()
                              (declare (not safe))
                              (_g250352250366_ _g250353250369_)))))
                    (let ()
                      (declare (not safe))
                      (_g250352250366_ _g250353250369_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g250351250407_ _L250328_))
                                              (let* ((_g250410250429_
                                                      (lambda (_g250411250426_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g250411250426_))))
                                                     (_g250409250534_
                                                      (lambda (_g250411250432_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g250411250432_))
                                                            (let ((_e250415250434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g250411250432_))))
                      (let ((_hd250414250437_
                             (let ()
                               (declare (not safe))
                               (##car _e250415250434_)))
                            (_tl250413250439_
                             (let ()
                               (declare (not safe))
                               (##cdr _e250415250434_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl250413250439_))
                            (let ((_g256929_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl250413250439_
                                      '0))))
                              (begin
                                (let ((_g256930_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g256929_)
                                             (##vector-length _g256929_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g256930_ 2)))
                                      (error "Context expects 2 values"
                                             _g256930_)))
                                (let ((_target250416250442_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g256929_ 0)))
                                      (_tl250418250444_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g256929_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl250418250444_))
                                      (letrec ((_loop250419250447_
                                                (lambda (_hd250417250450_
                                                         _clause250423250452_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd250417250450_))
                                                      (let ((_e250420250455_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd250417250450_))))
                (let ((_lp-hd250421250458_
                       (let () (declare (not safe)) (##car _e250420250455_)))
                      (_lp-tl250422250460_
                       (let () (declare (not safe)) (##cdr _e250420250455_))))
                  (let ((__tmp256932
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd250421250458_ _clause250423250452_))))
                    (declare (not safe))
                    (_loop250419250447_ _lp-tl250422250460_ __tmp256932))))
              (let ((_clause250424250463_ (reverse _clause250423250452_)))
                ((lambda (_L250466_)
                   (for-each
                    (lambda (_clause250479_)
                      (let* ((_g250481250492_
                              (lambda (_g250482250489_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g250482250489_))))
                             (_g250480250524_
                              (lambda (_g250482250495_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g250482250495_))
                                    (let ((_e250487250497_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g250482250495_))))
                                      (let ((_hd250486250500_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e250487250497_)))
                                            (_tl250485250502_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e250487250497_))))
                                        ((lambda (_L250505_ _L250506_)
                                           (let ((_self250518_
                                                  (list-ref
                                                   _L250506_
                                                   _self-index250045_)))
                                             (for-each
                                              (lambda (_g250519250521_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g250519250521_
                                                   _self250518_
                                                   _method-calls247750_
                                                   _slot-refs247751_
                                                   _class-type-check247752_
                                                   _struct-type-check247753_
                                                   _struct-type-assert247754_)))
                                              _L250505_)))
                                         _tl250485250502_
                                         _hd250486250500_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g250481250492_ _g250482250495_))))))
                        (declare (not safe))
                        (_g250480250524_ _clause250479_)))
                    (let ((__tmp256931
                           (lambda (_g250526250529_ _g250527250531_)
                             (let ()
                               (declare (not safe))
                               (cons _g250526250529_ _g250527250531_)))))
                      (declare (not safe))
                      (foldr1 __tmp256931 '() _L250466_))))
                 _clause250424250463_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop250419250447_
                                           _target250416250442_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g250410250429_ _g250411250432_))))))
                            (let ()
                              (declare (not safe))
                              (_g250410250429_ _g250411250432_)))))
                    (let ()
                      (declare (not safe))
                      (_g250410250429_ _g250411250432_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g250409250534_ _L250327_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?247757_))
                                                  _stx247656_
                                                  (let* ((_specializer-id250543_
                                                          (let* ((_id250537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256933
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L247731_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp256933 '"::specialize")))
                         (_specializer-id250540_
                          (let ((__tmp256934
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx247656_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id250537_ __tmp256934))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id250540_))
                    _specializer-id250540_))
                 (_lifted-specializer-id250550_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?247759_))
                      (let* ((_id250545_
                              (let ((__tmp256935
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L247731_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp256935
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id250547_
                              (let ((__tmp256936
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx247656_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id250545_
                                 __tmp256936))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id250547_))
                        _lifted-specializer-id250547_)
                      '#f))
                 (_$t250552_
                  (let ((__tmp256937 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp256937)))
                 (_methods250554_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls247750_)))
                 (_$methods250558_
                  (map (lambda (_id250556_)
                         (let ((__tmp256938 (gensym _id250556_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp256938)))
                       _methods250554_))
                 (_g256939_
                  (for-each
                   (lambda (_g250559250562_ _g250560250564_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls247750_
                        _g250559250562_
                        _g250560250564_)))
                   _methods250554_
                   _$methods250558_))
                 (_methods-bind250575_
                  (map (lambda (_g250567250570_ _g250568250572_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind247658_
                            _$t250552_
                            _g250567250570_
                            _g250568250572_)))
                       _methods250554_
                       _$methods250558_))
                 (_slots250577_
                  (let () (declare (not safe)) (hash-keys _slot-refs247751_)))
                 (_$slots250581_
                  (map (lambda (_id250579_)
                         (let ((__tmp256940 (gensym _id250579_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp256940)))
                       _slots250577_))
                 (_g256941_
                  (for-each
                   (lambda (_g250582250585_ _g250583250587_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs247751_
                        _g250582250585_
                        _g250583250587_)))
                   _slots250577_
                   _$slots250581_))
                 (_slots-bind250598_
                  (map (lambda (_g250590250593_ _g250591250595_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind247659_
                            _$t250552_
                            _g250590250593_
                            _g250591250595_)))
                       _slots250577_
                       _$slots250581_))
                 (_class-check250600_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check247752_)))
                 (_$class-check250603_
                  (map (lambda (_g256942_)
                         (let ((__tmp256943 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp256943)))
                       _class-check250600_))
                 (_g256944_
                  (for-each
                   (lambda (_g250604250607_ _g250605250609_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check247752_
                        _g250604250607_
                        _g250605250609_)))
                   _class-check250600_
                   _$class-check250603_))
                 (_class-check-bind250620_
                  (map (lambda (_g250612250615_ _g250613250617_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind247660_
                            _$t250552_
                            _g250612250615_
                            _g250613250617_)))
                       _class-check250600_
                       _$class-check250603_))
                 (_struct-check-all250622_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check247753_
                     _struct-type-assert247754_)))
                 (_struct-check250624_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all250622_)))
                 (_$struct-check250627_
                  (map (lambda (_g256945_)
                         (let ((__tmp256946 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp256946)))
                       _struct-check250624_))
                 (_g256947_
                  (for-each
                   (lambda (_g250628250631_ _g250629250633_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all250622_
                        _g250628250631_
                        _g250629250633_)))
                   _struct-check250624_
                   _$struct-check250627_))
                 (_struct-check-bind250644_
                  (map (lambda (_g250636250639_ _g250637250641_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind247661_
                            _$t250552_
                            _g250636250639_
                            _g250637250641_)))
                       _struct-check250624_
                       _$struct-check250627_))
                 (_make-specializer-lambda-expr250730_
                  (lambda (_struct-type-check1250646_
                           _struct-type-check2250647_)
                    (let* ((_g250649250663_
                            (lambda (_g250650250660_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g250650250660_))))
                           (_g250648250727_
                            (lambda (_g250650250666_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g250650250666_))
                                  (let ((_e250655250668_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g250650250666_))))
                                    (let ((_hd250654250671_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e250655250668_)))
                                          (_tl250653250673_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e250655250668_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl250653250673_))
                                          (let ((_e250658250676_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl250653250673_))))
                                            (let ((_hd250657250679_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e250658250676_)))
                                                  (_tl250656250681_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e250658250676_))))
                                              ((lambda (_L250684_ _L250685_)
                                                 (let* ((_self250718_
                                                         (list-ref
                                                          _L250685_
                                                          _self-index250045_))
                                                        (_body250724_
                                                         (map (lambda (_g250719250721_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g250719250721_
                           _self250718_
                           _$t250552_
                           _method-calls247750_
                           _slot-refs247751_
                           _class-type-check247752_
                           _struct-type-check1250646_
                           _struct-type-check2250647_)))
                      _L250684_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp256948
                                                          (let ((__tmp256949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L250685_ _body250724_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp256949))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp256948
                                                      _L250328_))))
                                               _tl250656250681_
                                               _hd250657250679_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g250649250663_
                                             _g250650250666_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g250649250663_ _g250650250666_))))))
                      (declare (not safe))
                      (_g250648250727_ _L250328_))))
                 (_make-specializer-case-lambda-expr250869_
                  (lambda (_struct-type-check1250732_
                           _struct-type-check2250733_)
                    (let* ((_g250735250754_
                            (lambda (_g250736250751_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g250736250751_))))
                           (_g250734250866_
                            (lambda (_g250736250757_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g250736250757_))
                                  (let ((_e250740250759_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g250736250757_))))
                                    (let ((_hd250739250762_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e250740250759_)))
                                          (_tl250738250764_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e250740250759_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl250738250764_))
                                          (let ((_g256950_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl250738250764_
                                                    '0))))
                                            (begin
                                              (let ((_g256951_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g256950_)
                                                           (##vector-length
                                                            _g256950_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g256951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g256951_)))
                                              (let ((_target250741250767_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g256950_
                                                        0)))
                                                    (_tl250743250769_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g256950_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl250743250769_))
                                                    (letrec ((_loop250744250772_
                                                              (lambda (_hd250742250775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause250748250777_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd250742250775_))
                            (let ((_e250745250780_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd250742250775_))))
                              (let ((_lp-hd250746250783_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e250745250780_)))
                                    (_lp-tl250747250785_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e250745250780_))))
                                (let ((__tmp256954
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd250746250783_
                                               _clause250748250777_))))
                                  (declare (not safe))
                                  (_loop250744250772_
                                   _lp-tl250747250785_
                                   __tmp256954))))
                            (let ((_clause250749250788_
                                   (reverse _clause250748250777_)))
                              ((lambda (_L250791_)
                                 (let* ((_clauses250864_
                                         (map (lambda (_clause250806_)
                                                (let* ((_g250808250819_
                                                        (lambda (_g250809250816_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g250809250816_))))
                                                       (_g250807250854_
                                                        (lambda (_g250809250822_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g250809250822_))
                      (let ((_e250814250824_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g250809250822_))))
                        (let ((_hd250813250827_
                               (let ()
                                 (declare (not safe))
                                 (##car _e250814250824_)))
                              (_tl250812250829_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e250814250824_))))
                          ((lambda (_L250832_ _L250833_)
                             (let* ((_self250845_
                                     (list-ref _L250833_ _self-index250045_))
                                    (_body250851_
                                     (map (lambda (_g250846250848_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g250846250848_
                                               _self250845_
                                               _$t250552_
                                               _method-calls247750_
                                               _slot-refs247751_
                                               _class-type-check247752_
                                               _struct-type-check1250732_
                                               _struct-type-check2250733_)))
                                          _L250832_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L250833_ _body250851_))))
                           _tl250812250829_
                           _hd250813250827_)))
                      (let ()
                        (declare (not safe))
                        (_g250808250819_ _g250809250822_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g250807250854_
                                                   _clause250806_)))
                                              (let ((__tmp256952
                                                     (lambda (_g250856250859_
                                                              _g250857250861_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g250856250859_
                                                               _g250857250861_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp256952
                                                        '()
                                                        _L250791_))))
                                        (__tmp256953
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses250864_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp256953
                                    _L250327_)))
                               _clause250749250788_))))))
              (let ()
                (declare (not safe))
                (_loop250744250772_ _target250741250767_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g250735250754_
                                                       _g250736250757_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g250735250754_
                                             _g250736250757_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g250735250754_ _g250736250757_))))))
                      (declare (not safe))
                      (_g250734250866_ _L250327_))))
                 (_make-specializer-impl250874_
                  (lambda (_specializer-lambda-expr250871_
                           _specializer-case-lambda-expr250872_)
                    (let ((__tmp256955
                           (let ((__tmp256956
                                  (let ((__tmp256958
                                         (let ((__tmp256959
                                                (let ((__tmp256976
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L249746_ '())))
                                                      (__tmp256960
                                                       (let ((__tmp256961
                                                              (let ((__tmp256962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp256964
                                    (let ((__tmp256965
                                           (let ((__tmp256975
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L249745_ '())))
                                                 (__tmp256966
                                                  (let ((__tmp256967
                                                         (let ((__tmp256968
                                                                (let ((__tmp256969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp256971
                                      (let ((__tmp256972
                                             (let ((__tmp256974
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L250329_ '())))
                                                   (__tmp256973
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr250871_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp256974
                                                     __tmp256973))))
                                        (declare (not safe))
                                        (cons __tmp256972 '())))
                                     (__tmp256970
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr250872_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp256971 __tmp256970))))
                          (declare (not safe))
                          (cons '%#let-values __tmp256969))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp256968 _stx247656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256967 '()))))
                                             (declare (not safe))
                                             (cons __tmp256975 __tmp256966))))
                                      (declare (not safe))
                                      (cons __tmp256965 '())))
                                   (__tmp256963
                                    (let ()
                                      (declare (not safe))
                                      (cons _L249743_ '()))))
                               (declare (not safe))
                               (cons __tmp256964 __tmp256963))))
                        (declare (not safe))
                        (cons '%#let-values __tmp256962))))
                 (declare (not safe))
                 (cons __tmp256961 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256976
                                                        __tmp256960))))
                                           (declare (not safe))
                                           (cons __tmp256959 '())))
                                        (__tmp256957
                                         (let ()
                                           (declare (not safe))
                                           (cons _L249742_ '()))))
                                    (declare (not safe))
                                    (cons __tmp256958 __tmp256957))))
                             (declare (not safe))
                             (cons '%#let-values __tmp256956))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp256955 _stx247656_))))
                 (_specializer-lambda-expr250876_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr250730_
                     _struct-check-all250622_
                     _empty247755_)))
                 (_specializer-case-lambda-expr250878_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr250869_
                     _struct-check-all250622_
                     _empty247755_)))
                 (_specializer-impl250880_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl250874_
                     _specializer-lambda-expr250876_
                     _specializer-case-lambda-expr250878_)))
                 (_unchecked-specializer-lambda-expr250882_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?247758_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr250730_
                         _empty247755_
                         _struct-check-all250622_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr250884_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?247758_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr250869_
                         _empty247755_
                         _struct-check-all250622_))
                      '#f))
                 (_unchecked-specializer-impl250886_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?247758_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl250874_
                         _unchecked-specializer-lambda-expr250882_
                         _unchecked-specializer-case-lambda-expr250884_))
                      '#f))
                 (_specializer-impl250888_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl247662_
                     _$t250552_
                     _methods-bind250575_
                     _slots-bind250598_
                     _class-check-bind250620_
                     _struct-check-bind250644_
                     _specializer-impl250880_
                     _lifted-specializer-id250550_
                     _unchecked-specializer-impl250886_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp256978
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L247731_)))
                                                          (__tmp256977
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id250543_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp256978
                                                       '" => "
                                                       __tmp256977))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def247663_
                                                       _L247731_
                                                       _specializer-id250543_
                                                       _specializer-impl250888_
                                                       _lifted-specializer-id250550_
                                                       _unchecked-specializer-impl250886_)))))
                                            _hd250260250322_
                                            _hd250257250314_
                                            _hd250254250306_)
                                           (let ()
                                             (declare (not safe))
                                             (_g250236250266_
                                              _g250237250269_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g250236250266_ _g250237250269_)))
                               (let ()
                                 (declare (not safe))
                                 (_g250236250266_ _g250237250269_)))
                           (let ()
                             (declare (not safe))
                             (_g250236250266_ _g250237250269_)))))
                   (let ()
                     (declare (not safe))
                     (_g250236250266_ _g250237250269_)))
               (let ()
                 (declare (not safe))
                 (_g250236250266_ _g250237250269_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g250236250266_
                                                  _g250237250269_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g250236250266_ _g250237250269_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g250236250266_ _g250237250269_)))))
                       (let ()
                         (declare (not safe))
                         (_g250236250266_ _g250237250269_)))))
               (let ()
                 (declare (not safe))
                 (_g250236250266_ _g250237250269_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g250235250891_ _L249744_))
                                         _stx247656_))))
                             _hd249841249964_
                             _kw-ref249839249985_
                             _hd249829249951_
                             _hd249820249927_
                             _hd249811249903_)
                            (let ()
                              (declare (not safe))
                              (_g249785249847_ _g249786249850_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop249834249969_
                                                   _target249831249956_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g249785249847_
                                                 _g249786249850_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g249785249847_ _g249786249850_))))))
                            (let ()
                              (declare (not safe))
                              (_g249785249847_ _g249786249850_)))
                        (let ()
                          (declare (not safe))
                          (_g249785249847_ _g249786249850_)))
                    (let ()
                      (declare (not safe))
                      (_g249785249847_ _g249786249850_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249785249847_
                                                       _g249786249850_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g249785249847_
                                                   _g249786249850_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g249785249847_
                                               _g249786249850_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g249785249847_ _g249786249850_)))))
                            (let ()
                              (declare (not safe))
                              (_g249785249847_ _g249786249850_)))
                        (let ()
                          (declare (not safe))
                          (_g249785249847_ _g249786249850_)))))
                (let ()
                  (declare (not safe))
                  (_g249785249847_ _g249786249850_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249785249847_
                                                       _g249786249850_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g249785249847_
                                                   _g249786249850_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g249785249847_ _g249786249850_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g249785249847_ _g249786249850_)))
                            (let ()
                              (declare (not safe))
                              (_g249785249847_ _g249786249850_)))))
                    (let ()
                      (declare (not safe))
                      (_g249785249847_ _g249786249850_)))
                (let ()
                  (declare (not safe))
                  (_g249785249847_ _g249786249850_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249785249847_
                                                       _g249786249850_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g249785249847_
                                               _g249786249850_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g249785249847_ _g249786249850_)))
                                (let ()
                                  (declare (not safe))
                                  (_g249785249847_ _g249786249850_)))
                            (let ()
                              (declare (not safe))
                              (_g249785249847_ _g249786249850_)))))
                    (let ()
                      (declare (not safe))
                      (_g249785249847_ _g249786249850_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249785249847_
                                                       _g249786249850_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g249785249847_
                                               _g249786249850_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g249785249847_ _g249786249850_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g249785249847_ _g249786249850_)))))
                            (let ()
                              (declare (not safe))
                              (_g249785249847_ _g249786249850_))))))
                (declare (not safe))
                (_g249784250894_ _L249743_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd249619249737_
                                                    _hd249616249729_
                                                    _hd249613249721_
                                                    _hd249610249713_
                                                    _hd249592249665_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g249572249625_
                                                      _g249573249628_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g249572249625_
                                              _g249573249628_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g249572249625_ _g249573249628_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g249572249625_ _g249573249628_)))
                               (let ()
                                 (declare (not safe))
                                 (_g249572249625_ _g249573249628_)))))
                       (let ()
                         (declare (not safe))
                         (_g249572249625_ _g249573249628_)))
                   (let ()
                     (declare (not safe))
                     (_g249572249625_ _g249573249628_)))
               (let ()
                 (declare (not safe))
                 (_g249572249625_ _g249573249628_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g249572249625_
                                                  _g249573249628_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g249572249625_
                                              _g249573249628_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g249572249625_ _g249573249628_)))))
                           (let ()
                             (declare (not safe))
                             (_g249572249625_ _g249573249628_)))))
                   (let ()
                     (declare (not safe))
                     (_g249572249625_ _g249573249628_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g249572249625_
                                                      _g249573249628_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g249572249625_
                                                  _g249573249628_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g249572249625_
                                              _g249573249628_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g249572249625_ _g249573249628_)))))
                           (let ()
                             (declare (not safe))
                             (_g249572249625_ _g249573249628_)))
                       (let ()
                         (declare (not safe))
                         (_g249572249625_ _g249573249628_)))))
               (let ()
                 (declare (not safe))
                 (_g249572249625_ _g249573249628_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g249572249625_
                                                  _g249573249628_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g249572249625_ _g249573249628_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g249572249625_ _g249573249628_)))
                           (let ()
                             (declare (not safe))
                             (_g249572249625_ _g249573249628_)))
                       (let ()
                         (declare (not safe))
                         (_g249572249625_ _g249573249628_)))))
               (let ()
                 (declare (not safe))
                 (_g249572249625_ _g249573249628_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g249571250897_ _L247730_))
                                         _stx247656_))))))))
                  (___kont255704255705_ (lambda () _stx247656_)))
              (let ((___match255733255734_
                     (lambda (_e247672247698_
                              _hd247671247701_
                              _tl247670247703_
                              _e247675247706_
                              _hd247674247709_
                              _tl247673247711_
                              _e247678247714_
                              _hd247677247717_
                              _tl247676247719_
                              _e247681247722_
                              _hd247680247725_
                              _tl247679247727_)
                       (let ((_L247730_ _hd247680247725_)
                             (_L247731_ _hd247677247717_))
                         (if (let ((__tmp257095
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L247731_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp257095))
                             (___kont255702255703_ _L247730_ _L247731_)
                             (___kont255704255705_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx255700255701_))
                    (let ((_e247672247698_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx255700255701_))))
                      (let ((_tl247670247703_
                             (let ()
                               (declare (not safe))
                               (##cdr _e247672247698_)))
                            (_hd247671247701_
                             (let ()
                               (declare (not safe))
                               (##car _e247672247698_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl247670247703_))
                            (let ((_e247675247706_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl247670247703_))))
                              (let ((_tl247673247711_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e247675247706_)))
                                    (_hd247674247709_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e247675247706_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd247674247709_))
                                    (let ((_e247678247714_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd247674247709_))))
                                      (let ((_tl247676247719_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e247678247714_)))
                                            (_hd247677247717_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e247678247714_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl247676247719_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl247673247711_))
                                                (let ((_e247681247722_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl247673247711_))))
                                                  (let ((_tl247679247727_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e247681247722_)))
                                                        (_hd247680247725_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e247681247722_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl247679247727_))
                                                        (___match255733255734_
                                                         _e247672247698_
                                                         _hd247671247701_
                                                         _tl247670247703_
                                                         _e247675247706_
                                                         _hd247674247709_
                                                         _tl247673247711_
                                                         _e247678247714_
                                                         _hd247677247717_
                                                         _tl247676247719_
                                                         _e247681247722_
                                                         _hd247680247725_
                                                         _tl247679247727_)
                                                        (___kont255704255705_))))
                                                (___kont255704255705_))
                                            (___kont255704255705_))))
                                    (___kont255704255705_))))
                            (___kont255704255705_))))
                    (___kont255704255705_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx246632_
               _self246633_
               _methods246634_
               _slots246635_
               _class-check246636_
               _struct-check246637_
               _struct-assert246638_)
        (let* ((___stx255736255737_ _stx246632_)
               (_g246646246868_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx255736255737_)))))
          (let ((___kont255738255739_
                 (lambda (_L247605_ _L247606_ _L247607_ _L247608_)
                   (let ((__tmp257096
                          (let () (declare (not safe)) (gx#stx-e _L247606_))))
                     (declare (not safe))
                     (table-set! _methods246634_ __tmp257096 '#t))
                   (for-each
                    (lambda (_g247641247643_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g247641247643_
                         _self246633_
                         _methods246634_
                         _slots246635_
                         _class-check246636_
                         _struct-check246637_
                         _struct-assert246638_)))
                    (let ((__tmp257097
                           (lambda (_g247645247648_ _g247646247650_)
                             (let ()
                               (declare (not safe))
                               (cons _g247645247648_ _g247646247650_)))))
                      (declare (not safe))
                      (foldr1 __tmp257097 '() _L247605_)))))
                (___kont255742255743_
                 (lambda (_L247440_ _L247441_ _L247442_ _L247443_ _L247444_)
                   (let ((__tmp257098
                          (let () (declare (not safe)) (gx#stx-e _L247441_))))
                     (declare (not safe))
                     (table-set! _methods246634_ __tmp257098 '#t))
                   (for-each
                    (lambda (_g247484247486_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g247484247486_
                         _self246633_
                         _methods246634_
                         _slots246635_
                         _class-check246636_
                         _struct-check246637_
                         _struct-assert246638_)))
                    (let ((__tmp257099
                           (lambda (_g247488247491_ _g247489247493_)
                             (let ()
                               (declare (not safe))
                               (cons _g247488247491_ _g247489247493_)))))
                      (declare (not safe))
                      (foldr1 __tmp257099 '() _L247440_)))))
                (___kont255746255747_
                 (lambda (_L247273_ _L247274_ _L247275_)
                   (let ((__tmp257100
                          (let () (declare (not safe)) (gx#stx-e _L247273_))))
                     (declare (not safe))
                     (table-set! _slots246635_ __tmp257100 '#t))))
                (___kont255748255749_
                 (lambda (_L247150_ _L247151_ _L247152_ _L247153_)
                   (let ((__tmp257101
                          (let () (declare (not safe)) (gx#stx-e _L247151_))))
                     (declare (not safe))
                     (table-set! _slots246635_ __tmp257101 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L247150_
                      _self246633_
                      _methods246634_
                      _slots246635_
                      _class-check246636_
                      _struct-check246637_
                      _struct-assert246638_))))
                (___kont255750255751_
                 (lambda (_L247034_ _L247035_)
                   (let ((__tmp257102
                          (##structure-ref
                           (let ((__tmp257103
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L247035_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp257103))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots246635_ __tmp257102 '#t))))
                (___kont255752255753_
                 (lambda (_L246944_ _L246945_ _L246946_)
                   (let ((__tmp257104
                          (##structure-ref
                           (let ((__tmp257105
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L246946_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp257105))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots246635_ __tmp257104 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L246944_
                      _self246633_
                      _methods246634_
                      _slots246635_
                      _class-check246636_
                      _struct-check246637_
                      _struct-assert246638_))))
                (___kont255754255755_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx246632_
                      _self246633_
                      _methods246634_
                      _slots246635_
                      _class-check246636_
                      _struct-check246637_
                      _struct-assert246638_)))))
            (let* ((___match256235256236_
                    (lambda (_e246842246880_
                             _hd246841246883_
                             _tl246840246885_
                             _e246845246888_
                             _hd246844246891_
                             _tl246843246893_
                             _e246848246896_
                             _hd246847246899_
                             _tl246846246901_
                             _e246851246904_
                             _hd246850246907_
                             _tl246849246909_
                             _e246854246912_
                             _hd246853246915_
                             _tl246852246917_
                             _e246857246920_
                             _hd246856246923_
                             _tl246855246925_
                             _e246860246928_
                             _hd246859246931_
                             _tl246858246933_
                             _e246863246936_
                             _hd246862246939_
                             _tl246861246941_)
                      (let ((_L246944_ _hd246862246939_)
                            (_L246945_ _hd246859246931_)
                            (_L246946_ _hd246850246907_))
                        (if (and (let ((__tmp257106
                                        (let ((__tmp257107
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L246946_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp257107))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp257106
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L246945_
                                    _self246633_)))
                            (___kont255752255753_
                             _L246944_
                             _L246945_
                             _L246946_)
                            (___kont255754255755_)))))
                   (___match256233256234_
                    (lambda (_e246842246880_
                             _hd246841246883_
                             _tl246840246885_
                             _e246845246888_
                             _hd246844246891_
                             _tl246843246893_
                             _e246848246896_
                             _hd246847246899_
                             _tl246846246901_
                             _e246851246904_
                             _hd246850246907_
                             _tl246849246909_
                             _e246854246912_
                             _hd246853246915_
                             _tl246852246917_
                             _e246857246920_
                             _hd246856246923_
                             _tl246855246925_
                             _e246860246928_
                             _hd246859246931_
                             _tl246858246933_
                             _e246863246936_
                             _hd246862246939_
                             _tl246861246941_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl246861246941_))
                          (___match256235256236_
                           _e246842246880_
                           _hd246841246883_
                           _tl246840246885_
                           _e246845246888_
                           _hd246844246891_
                           _tl246843246893_
                           _e246848246896_
                           _hd246847246899_
                           _tl246846246901_
                           _e246851246904_
                           _hd246850246907_
                           _tl246849246909_
                           _e246854246912_
                           _hd246853246915_
                           _tl246852246917_
                           _e246857246920_
                           _hd246856246923_
                           _tl246855246925_
                           _e246860246928_
                           _hd246859246931_
                           _tl246858246933_
                           _e246863246936_
                           _hd246862246939_
                           _tl246861246941_)
                          (___kont255754255755_))))
                   (___match256227256228_
                    (lambda (_e246842246880_
                             _hd246841246883_
                             _tl246840246885_
                             _e246845246888_
                             _hd246844246891_
                             _tl246843246893_
                             _e246848246896_
                             _hd246847246899_
                             _tl246846246901_
                             _e246851246904_
                             _hd246850246907_
                             _tl246849246909_
                             _e246854246912_
                             _hd246853246915_
                             _tl246852246917_
                             _e246857246920_
                             _hd246856246923_
                             _tl246855246925_
                             _e246860246928_
                             _hd246859246931_
                             _tl246858246933_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl246852246917_))
                          (let ((_e246863246936_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl246852246917_))))
                            (let ((_tl246861246941_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e246863246936_)))
                                  (_hd246862246939_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e246863246936_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl246861246941_))
                                  (___match256235256236_
                                   _e246842246880_
                                   _hd246841246883_
                                   _tl246840246885_
                                   _e246845246888_
                                   _hd246844246891_
                                   _tl246843246893_
                                   _e246848246896_
                                   _hd246847246899_
                                   _tl246846246901_
                                   _e246851246904_
                                   _hd246850246907_
                                   _tl246849246909_
                                   _e246854246912_
                                   _hd246853246915_
                                   _tl246852246917_
                                   _e246857246920_
                                   _hd246856246923_
                                   _tl246855246925_
                                   _e246860246928_
                                   _hd246859246931_
                                   _tl246858246933_
                                   _e246863246936_
                                   _hd246862246939_
                                   _tl246861246941_)
                                  (___kont255754255755_))))
                          (___kont255754255755_))))
                   (___match256173256174_
                    (lambda (_e246818246978_
                             _hd246817246981_
                             _tl246816246983_
                             _e246821246986_
                             _hd246820246989_
                             _tl246819246991_
                             _e246824246994_
                             _hd246823246997_
                             _tl246822246999_
                             _e246827247002_
                             _hd246826247005_
                             _tl246825247007_
                             _e246830247010_
                             _hd246829247013_
                             _tl246828247015_
                             _e246833247018_
                             _hd246832247021_
                             _tl246831247023_
                             _e246836247026_
                             _hd246835247029_
                             _tl246834247031_)
                      (let ((_L247034_ _hd246835247029_)
                            (_L247035_ _hd246826247005_))
                        (if (and (let ((__tmp257108
                                        (let ((__tmp257109
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L247035_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp257109))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp257108
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L247034_
                                    _self246633_)))
                            (___kont255750255751_ _L247034_ _L247035_)
                            (___kont255754255755_)))))
                   (___match256171256172_
                    (lambda (_e246818246978_
                             _hd246817246981_
                             _tl246816246983_
                             _e246821246986_
                             _hd246820246989_
                             _tl246819246991_
                             _e246824246994_
                             _hd246823246997_
                             _tl246822246999_
                             _e246827247002_
                             _hd246826247005_
                             _tl246825247007_
                             _e246830247010_
                             _hd246829247013_
                             _tl246828247015_
                             _e246833247018_
                             _hd246832247021_
                             _tl246831247023_
                             _e246836247026_
                             _hd246835247029_
                             _tl246834247031_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl246828247015_))
                          (___match256173256174_
                           _e246818246978_
                           _hd246817246981_
                           _tl246816246983_
                           _e246821246986_
                           _hd246820246989_
                           _tl246819246991_
                           _e246824246994_
                           _hd246823246997_
                           _tl246822246999_
                           _e246827247002_
                           _hd246826247005_
                           _tl246825247007_
                           _e246830247010_
                           _hd246829247013_
                           _tl246828247015_
                           _e246833247018_
                           _hd246832247021_
                           _tl246831247023_
                           _e246836247026_
                           _hd246835247029_
                           _tl246834247031_)
                          (___match256227256228_
                           _e246818246978_
                           _hd246817246981_
                           _tl246816246983_
                           _e246821246986_
                           _hd246820246989_
                           _tl246819246991_
                           _e246824246994_
                           _hd246823246997_
                           _tl246822246999_
                           _e246827247002_
                           _hd246826247005_
                           _tl246825247007_
                           _e246830247010_
                           _hd246829247013_
                           _tl246828247015_
                           _e246833247018_
                           _hd246832247021_
                           _tl246831247023_
                           _e246836247026_
                           _hd246835247029_
                           _tl246834247031_))))
                   (___match256117256118_
                    (lambda (_e246783247062_
                             _hd246782247065_
                             _tl246781247067_
                             _e246786247070_
                             _hd246785247073_
                             _tl246784247075_
                             _e246789247078_
                             _hd246788247081_
                             _tl246787247083_
                             _e246792247086_
                             _hd246791247089_
                             _tl246790247091_
                             _e246795247094_
                             _hd246794247097_
                             _tl246793247099_
                             _e246798247102_
                             _hd246797247105_
                             _tl246796247107_
                             _e246801247110_
                             _hd246800247113_
                             _tl246799247115_
                             _e246804247118_
                             _hd246803247121_
                             _tl246802247123_
                             _e246807247126_
                             _hd246806247129_
                             _tl246805247131_
                             _e246810247134_
                             _hd246809247137_
                             _tl246808247139_
                             _e246813247142_
                             _hd246812247145_
                             _tl246811247147_)
                      (let ((_L247150_ _hd246812247145_)
                            (_L247151_ _hd246809247137_)
                            (_L247152_ _hd246800247113_)
                            (_L247153_ _hd246791247089_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L247153_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L247153_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L247152_
                                    _self246633_)))
                            (___kont255748255749_
                             _L247150_
                             _L247151_
                             _L247152_
                             _L247153_)
                            (___kont255754255755_)))))
                   (___match256109256110_
                    (lambda (_e246783247062_
                             _hd246782247065_
                             _tl246781247067_
                             _e246786247070_
                             _hd246785247073_
                             _tl246784247075_
                             _e246789247078_
                             _hd246788247081_
                             _tl246787247083_
                             _e246792247086_
                             _hd246791247089_
                             _tl246790247091_
                             _e246795247094_
                             _hd246794247097_
                             _tl246793247099_
                             _e246798247102_
                             _hd246797247105_
                             _tl246796247107_
                             _e246801247110_
                             _hd246800247113_
                             _tl246799247115_
                             _e246804247118_
                             _hd246803247121_
                             _tl246802247123_
                             _e246807247126_
                             _hd246806247129_
                             _tl246805247131_
                             _e246810247134_
                             _hd246809247137_
                             _tl246808247139_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl246802247123_))
                          (let ((_e246813247142_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl246802247123_))))
                            (let ((_tl246811247147_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e246813247142_)))
                                  (_hd246812247145_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e246813247142_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl246811247147_))
                                  (___match256117256118_
                                   _e246783247062_
                                   _hd246782247065_
                                   _tl246781247067_
                                   _e246786247070_
                                   _hd246785247073_
                                   _tl246784247075_
                                   _e246789247078_
                                   _hd246788247081_
                                   _tl246787247083_
                                   _e246792247086_
                                   _hd246791247089_
                                   _tl246790247091_
                                   _e246795247094_
                                   _hd246794247097_
                                   _tl246793247099_
                                   _e246798247102_
                                   _hd246797247105_
                                   _tl246796247107_
                                   _e246801247110_
                                   _hd246800247113_
                                   _tl246799247115_
                                   _e246804247118_
                                   _hd246803247121_
                                   _tl246802247123_
                                   _e246807247126_
                                   _hd246806247129_
                                   _tl246805247131_
                                   _e246810247134_
                                   _hd246809247137_
                                   _tl246808247139_
                                   _e246813247142_
                                   _hd246812247145_
                                   _tl246811247147_)
                                  (___kont255754255755_))))
                          (___match256233256234_
                           _e246783247062_
                           _hd246782247065_
                           _tl246781247067_
                           _e246786247070_
                           _hd246785247073_
                           _tl246784247075_
                           _e246789247078_
                           _hd246788247081_
                           _tl246787247083_
                           _e246792247086_
                           _hd246791247089_
                           _tl246790247091_
                           _e246795247094_
                           _hd246794247097_
                           _tl246793247099_
                           _e246798247102_
                           _hd246797247105_
                           _tl246796247107_
                           _e246801247110_
                           _hd246800247113_
                           _tl246799247115_
                           _e246804247118_
                           _hd246803247121_
                           _tl246802247123_))))
                   (___match256031256032_
                    (lambda (_e246749247193_
                             _hd246748247196_
                             _tl246747247198_
                             _e246752247201_
                             _hd246751247204_
                             _tl246750247206_
                             _e246755247209_
                             _hd246754247212_
                             _tl246753247214_
                             _e246758247217_
                             _hd246757247220_
                             _tl246756247222_
                             _e246761247225_
                             _hd246760247228_
                             _tl246759247230_
                             _e246764247233_
                             _hd246763247236_
                             _tl246762247238_
                             _e246767247241_
                             _hd246766247244_
                             _tl246765247246_
                             _e246770247249_
                             _hd246769247252_
                             _tl246768247254_
                             _e246773247257_
                             _hd246772247260_
                             _tl246771247262_
                             _e246776247265_
                             _hd246775247268_
                             _tl246774247270_)
                      (let ((_L247273_ _hd246775247268_)
                            (_L247274_ _hd246766247244_)
                            (_L247275_ _hd246757247220_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L247275_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L247275_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L247274_
                                    _self246633_)))
                            (___kont255746255747_
                             _L247273_
                             _L247274_
                             _L247275_)
                            (___match256235256236_
                             _e246749247193_
                             _hd246748247196_
                             _tl246747247198_
                             _e246752247201_
                             _hd246751247204_
                             _tl246750247206_
                             _e246755247209_
                             _hd246754247212_
                             _tl246753247214_
                             _e246758247217_
                             _hd246757247220_
                             _tl246756247222_
                             _e246761247225_
                             _hd246760247228_
                             _tl246759247230_
                             _e246764247233_
                             _hd246763247236_
                             _tl246762247238_
                             _e246767247241_
                             _hd246766247244_
                             _tl246765247246_
                             _e246770247249_
                             _hd246769247252_
                             _tl246768247254_)))))
                   (___match256029256030_
                    (lambda (_e246749247193_
                             _hd246748247196_
                             _tl246747247198_
                             _e246752247201_
                             _hd246751247204_
                             _tl246750247206_
                             _e246755247209_
                             _hd246754247212_
                             _tl246753247214_
                             _e246758247217_
                             _hd246757247220_
                             _tl246756247222_
                             _e246761247225_
                             _hd246760247228_
                             _tl246759247230_
                             _e246764247233_
                             _hd246763247236_
                             _tl246762247238_
                             _e246767247241_
                             _hd246766247244_
                             _tl246765247246_
                             _e246770247249_
                             _hd246769247252_
                             _tl246768247254_
                             _e246773247257_
                             _hd246772247260_
                             _tl246771247262_
                             _e246776247265_
                             _hd246775247268_
                             _tl246774247270_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl246768247254_))
                          (___match256031256032_
                           _e246749247193_
                           _hd246748247196_
                           _tl246747247198_
                           _e246752247201_
                           _hd246751247204_
                           _tl246750247206_
                           _e246755247209_
                           _hd246754247212_
                           _tl246753247214_
                           _e246758247217_
                           _hd246757247220_
                           _tl246756247222_
                           _e246761247225_
                           _hd246760247228_
                           _tl246759247230_
                           _e246764247233_
                           _hd246763247236_
                           _tl246762247238_
                           _e246767247241_
                           _hd246766247244_
                           _tl246765247246_
                           _e246770247249_
                           _hd246769247252_
                           _tl246768247254_
                           _e246773247257_
                           _hd246772247260_
                           _tl246771247262_
                           _e246776247265_
                           _hd246775247268_
                           _tl246774247270_)
                          (___match256109256110_
                           _e246749247193_
                           _hd246748247196_
                           _tl246747247198_
                           _e246752247201_
                           _hd246751247204_
                           _tl246750247206_
                           _e246755247209_
                           _hd246754247212_
                           _tl246753247214_
                           _e246758247217_
                           _hd246757247220_
                           _tl246756247222_
                           _e246761247225_
                           _hd246760247228_
                           _tl246759247230_
                           _e246764247233_
                           _hd246763247236_
                           _tl246762247238_
                           _e246767247241_
                           _hd246766247244_
                           _tl246765247246_
                           _e246770247249_
                           _hd246769247252_
                           _tl246768247254_
                           _e246773247257_
                           _hd246772247260_
                           _tl246771247262_
                           _e246776247265_
                           _hd246775247268_
                           _tl246774247270_))))
                   (___match256019256020_
                    (lambda (_e246749247193_
                             _hd246748247196_
                             _tl246747247198_
                             _e246752247201_
                             _hd246751247204_
                             _tl246750247206_
                             _e246755247209_
                             _hd246754247212_
                             _tl246753247214_
                             _e246758247217_
                             _hd246757247220_
                             _tl246756247222_
                             _e246761247225_
                             _hd246760247228_
                             _tl246759247230_
                             _e246764247233_
                             _hd246763247236_
                             _tl246762247238_
                             _e246767247241_
                             _hd246766247244_
                             _tl246765247246_
                             _e246770247249_
                             _hd246769247252_
                             _tl246768247254_
                             _e246773247257_
                             _hd246772247260_
                             _tl246771247262_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd246772247260_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl246771247262_))
                              (let ((_e246776247265_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl246771247262_))))
                                (let ((_tl246774247270_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e246776247265_)))
                                      (_hd246775247268_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e246776247265_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl246774247270_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl246768247254_))
                                          (___match256031256032_
                                           _e246749247193_
                                           _hd246748247196_
                                           _tl246747247198_
                                           _e246752247201_
                                           _hd246751247204_
                                           _tl246750247206_
                                           _e246755247209_
                                           _hd246754247212_
                                           _tl246753247214_
                                           _e246758247217_
                                           _hd246757247220_
                                           _tl246756247222_
                                           _e246761247225_
                                           _hd246760247228_
                                           _tl246759247230_
                                           _e246764247233_
                                           _hd246763247236_
                                           _tl246762247238_
                                           _e246767247241_
                                           _hd246766247244_
                                           _tl246765247246_
                                           _e246770247249_
                                           _hd246769247252_
                                           _tl246768247254_
                                           _e246773247257_
                                           _hd246772247260_
                                           _tl246771247262_
                                           _e246776247265_
                                           _hd246775247268_
                                           _tl246774247270_)
                                          (___match256109256110_
                                           _e246749247193_
                                           _hd246748247196_
                                           _tl246747247198_
                                           _e246752247201_
                                           _hd246751247204_
                                           _tl246750247206_
                                           _e246755247209_
                                           _hd246754247212_
                                           _tl246753247214_
                                           _e246758247217_
                                           _hd246757247220_
                                           _tl246756247222_
                                           _e246761247225_
                                           _hd246760247228_
                                           _tl246759247230_
                                           _e246764247233_
                                           _hd246763247236_
                                           _tl246762247238_
                                           _e246767247241_
                                           _hd246766247244_
                                           _tl246765247246_
                                           _e246770247249_
                                           _hd246769247252_
                                           _tl246768247254_
                                           _e246773247257_
                                           _hd246772247260_
                                           _tl246771247262_
                                           _e246776247265_
                                           _hd246775247268_
                                           _tl246774247270_))
                                      (___match256233256234_
                                       _e246749247193_
                                       _hd246748247196_
                                       _tl246747247198_
                                       _e246752247201_
                                       _hd246751247204_
                                       _tl246750247206_
                                       _e246755247209_
                                       _hd246754247212_
                                       _tl246753247214_
                                       _e246758247217_
                                       _hd246757247220_
                                       _tl246756247222_
                                       _e246761247225_
                                       _hd246760247228_
                                       _tl246759247230_
                                       _e246764247233_
                                       _hd246763247236_
                                       _tl246762247238_
                                       _e246767247241_
                                       _hd246766247244_
                                       _tl246765247246_
                                       _e246770247249_
                                       _hd246769247252_
                                       _tl246768247254_))))
                              (___match256233256234_
                               _e246749247193_
                               _hd246748247196_
                               _tl246747247198_
                               _e246752247201_
                               _hd246751247204_
                               _tl246750247206_
                               _e246755247209_
                               _hd246754247212_
                               _tl246753247214_
                               _e246758247217_
                               _hd246757247220_
                               _tl246756247222_
                               _e246761247225_
                               _hd246760247228_
                               _tl246759247230_
                               _e246764247233_
                               _hd246763247236_
                               _tl246762247238_
                               _e246767247241_
                               _hd246766247244_
                               _tl246765247246_
                               _e246770247249_
                               _hd246769247252_
                               _tl246768247254_))
                          (___match256233256234_
                           _e246749247193_
                           _hd246748247196_
                           _tl246747247198_
                           _e246752247201_
                           _hd246751247204_
                           _tl246750247206_
                           _e246755247209_
                           _hd246754247212_
                           _tl246753247214_
                           _e246758247217_
                           _hd246757247220_
                           _tl246756247222_
                           _e246761247225_
                           _hd246760247228_
                           _tl246759247230_
                           _e246764247233_
                           _hd246763247236_
                           _tl246762247238_
                           _e246767247241_
                           _hd246766247244_
                           _tl246765247246_
                           _e246770247249_
                           _hd246769247252_
                           _tl246768247254_))))
                   (___match255951255952_
                    (lambda (_e246698247312_
                             _hd246697247315_
                             _tl246696247317_
                             _e246701247320_
                             _hd246700247323_
                             _tl246699247325_
                             _e246704247328_
                             _hd246703247331_
                             _tl246702247333_
                             _e246707247336_
                             _hd246706247339_
                             _tl246705247341_
                             _e246710247344_
                             _hd246709247347_
                             _tl246708247349_
                             _e246713247352_
                             _hd246712247355_
                             _tl246711247357_
                             _e246716247360_
                             _hd246715247363_
                             _tl246714247365_
                             _e246719247368_
                             _hd246718247371_
                             _tl246717247373_
                             _e246722247376_
                             _hd246721247379_
                             _tl246720247381_
                             _e246725247384_
                             _hd246724247387_
                             _tl246723247389_
                             _e246728247392_
                             _hd246727247395_
                             _tl246726247397_
                             _e246731247400_
                             _hd246730247403_
                             _tl246729247405_
                             _e246734247408_
                             _hd246733247411_
                             _tl246732247413_
                             ___splice255744255745_
                             _target246735247416_
                             _tl246737247418_)
                      (letrec ((_loop246738247421_
                                (lambda (_hd246736247424_ _args246742247426_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd246736247424_))
                                      (let ((_e246739247429_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd246736247424_))))
                                        (let ((_lp-tl246741247434_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e246739247429_)))
                                              (_lp-hd246740247432_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e246739247429_))))
                                          (let ((__tmp257110
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd246740247432_
                                                         _args246742247426_))))
                                            (declare (not safe))
                                            (_loop246738247421_
                                             _lp-tl246741247434_
                                             __tmp257110))))
                                      (let ((_args246743247437_
                                             (reverse _args246742247426_)))
                                        (let ((_L247440_ _args246743247437_)
                                              (_L247441_ _hd246733247411_)
                                              (_L247442_ _hd246724247387_)
                                              (_L247443_ _hd246715247363_)
                                              (_L247444_ _hd246706247339_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L247444_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L247443_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L247442_
                                                      _self246633_)))
                                              (___kont255742255743_
                                               _L247440_
                                               _L247441_
                                               _L247442_
                                               _L247443_
                                               _L247444_)
                                              (___kont255754255755_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop246738247421_ _target246735247416_ '())))))
                   (___match255909255910_
                    (lambda (_e246698247312_
                             _hd246697247315_
                             _tl246696247317_
                             _e246701247320_
                             _hd246700247323_
                             _tl246699247325_
                             _e246704247328_
                             _hd246703247331_
                             _tl246702247333_
                             _e246707247336_
                             _hd246706247339_
                             _tl246705247341_
                             _e246710247344_
                             _hd246709247347_
                             _tl246708247349_
                             _e246713247352_
                             _hd246712247355_
                             _tl246711247357_
                             _e246716247360_
                             _hd246715247363_
                             _tl246714247365_
                             _e246719247368_
                             _hd246718247371_
                             _tl246717247373_
                             _e246722247376_
                             _hd246721247379_
                             _tl246720247381_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd246721247379_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl246720247381_))
                              (let ((_e246725247384_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl246720247381_))))
                                (let ((_tl246723247389_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e246725247384_)))
                                      (_hd246724247387_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e246725247384_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl246723247389_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl246717247373_))
                                          (let ((_e246728247392_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl246717247373_))))
                                            (let ((_tl246726247397_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e246728247392_)))
                                                  (_hd246727247395_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e246728247392_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd246727247395_))
                                                  (let ((_e246731247400_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd246727247395_))))
                                                    (let ((_tl246729247405_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e246731247400_)))
                                                          (_hd246730247403_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e246731247400_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd246730247403_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd246730247403_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl246729247405_))
                          (let ((_e246734247408_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl246729247405_))))
                            (let ((_tl246732247413_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e246734247408_)))
                                  (_hd246733247411_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e246734247408_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl246732247413_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl246726247397_))
                                      (let ((___splice255744255745_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl246726247397_
                                                '0))))
                                        (let ((_tl246737247418_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice255744255745_
                                                  '1)))
                                              (_target246735247416_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice255744255745_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl246737247418_))
                                              (___match255951255952_
                                               _e246698247312_
                                               _hd246697247315_
                                               _tl246696247317_
                                               _e246701247320_
                                               _hd246700247323_
                                               _tl246699247325_
                                               _e246704247328_
                                               _hd246703247331_
                                               _tl246702247333_
                                               _e246707247336_
                                               _hd246706247339_
                                               _tl246705247341_
                                               _e246710247344_
                                               _hd246709247347_
                                               _tl246708247349_
                                               _e246713247352_
                                               _hd246712247355_
                                               _tl246711247357_
                                               _e246716247360_
                                               _hd246715247363_
                                               _tl246714247365_
                                               _e246719247368_
                                               _hd246718247371_
                                               _tl246717247373_
                                               _e246722247376_
                                               _hd246721247379_
                                               _tl246720247381_
                                               _e246725247384_
                                               _hd246724247387_
                                               _tl246723247389_
                                               _e246728247392_
                                               _hd246727247395_
                                               _tl246726247397_
                                               _e246731247400_
                                               _hd246730247403_
                                               _tl246729247405_
                                               _e246734247408_
                                               _hd246733247411_
                                               _tl246732247413_
                                               ___splice255744255745_
                                               _target246735247416_
                                               _tl246737247418_)
                                              (___kont255754255755_))))
                                      (___kont255754255755_))
                                  (___kont255754255755_))))
                          (___kont255754255755_))
                      (___kont255754255755_))
                  (___kont255754255755_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont255754255755_))))
                                          (___match256233256234_
                                           _e246698247312_
                                           _hd246697247315_
                                           _tl246696247317_
                                           _e246701247320_
                                           _hd246700247323_
                                           _tl246699247325_
                                           _e246704247328_
                                           _hd246703247331_
                                           _tl246702247333_
                                           _e246707247336_
                                           _hd246706247339_
                                           _tl246705247341_
                                           _e246710247344_
                                           _hd246709247347_
                                           _tl246708247349_
                                           _e246713247352_
                                           _hd246712247355_
                                           _tl246711247357_
                                           _e246716247360_
                                           _hd246715247363_
                                           _tl246714247365_
                                           _e246719247368_
                                           _hd246718247371_
                                           _tl246717247373_))
                                      (___match256233256234_
                                       _e246698247312_
                                       _hd246697247315_
                                       _tl246696247317_
                                       _e246701247320_
                                       _hd246700247323_
                                       _tl246699247325_
                                       _e246704247328_
                                       _hd246703247331_
                                       _tl246702247333_
                                       _e246707247336_
                                       _hd246706247339_
                                       _tl246705247341_
                                       _e246710247344_
                                       _hd246709247347_
                                       _tl246708247349_
                                       _e246713247352_
                                       _hd246712247355_
                                       _tl246711247357_
                                       _e246716247360_
                                       _hd246715247363_
                                       _tl246714247365_
                                       _e246719247368_
                                       _hd246718247371_
                                       _tl246717247373_))))
                              (___match256233256234_
                               _e246698247312_
                               _hd246697247315_
                               _tl246696247317_
                               _e246701247320_
                               _hd246700247323_
                               _tl246699247325_
                               _e246704247328_
                               _hd246703247331_
                               _tl246702247333_
                               _e246707247336_
                               _hd246706247339_
                               _tl246705247341_
                               _e246710247344_
                               _hd246709247347_
                               _tl246708247349_
                               _e246713247352_
                               _hd246712247355_
                               _tl246711247357_
                               _e246716247360_
                               _hd246715247363_
                               _tl246714247365_
                               _e246719247368_
                               _hd246718247371_
                               _tl246717247373_))
                          (___match256019256020_
                           _e246698247312_
                           _hd246697247315_
                           _tl246696247317_
                           _e246701247320_
                           _hd246700247323_
                           _tl246699247325_
                           _e246704247328_
                           _hd246703247331_
                           _tl246702247333_
                           _e246707247336_
                           _hd246706247339_
                           _tl246705247341_
                           _e246710247344_
                           _hd246709247347_
                           _tl246708247349_
                           _e246713247352_
                           _hd246712247355_
                           _tl246711247357_
                           _e246716247360_
                           _hd246715247363_
                           _tl246714247365_
                           _e246719247368_
                           _hd246718247371_
                           _tl246717247373_
                           _e246722247376_
                           _hd246721247379_
                           _tl246720247381_))))
                   (___match255841255842_
                    (lambda (_e246654247501_
                             _hd246653247504_
                             _tl246652247506_
                             _e246657247509_
                             _hd246656247512_
                             _tl246655247514_
                             _e246660247517_
                             _hd246659247520_
                             _tl246658247522_
                             _e246663247525_
                             _hd246662247528_
                             _tl246661247530_
                             _e246666247533_
                             _hd246665247536_
                             _tl246664247538_
                             _e246669247541_
                             _hd246668247544_
                             _tl246667247546_
                             _e246672247549_
                             _hd246671247552_
                             _tl246670247554_
                             _e246675247557_
                             _hd246674247560_
                             _tl246673247562_
                             _e246678247565_
                             _hd246677247568_
                             _tl246676247570_
                             _e246681247573_
                             _hd246680247576_
                             _tl246679247578_
                             ___splice255740255741_
                             _target246682247581_
                             _tl246684247583_)
                      (letrec ((_loop246685247586_
                                (lambda (_hd246683247589_ _args246689247591_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd246683247589_))
                                      (let ((_e246686247594_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd246683247589_))))
                                        (let ((_lp-tl246688247599_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e246686247594_)))
                                              (_lp-hd246687247597_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e246686247594_))))
                                          (let ((__tmp257111
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd246687247597_
                                                         _args246689247591_))))
                                            (declare (not safe))
                                            (_loop246685247586_
                                             _lp-tl246688247599_
                                             __tmp257111))))
                                      (let ((_args246690247602_
                                             (reverse _args246689247591_)))
                                        (let ((_L247605_ _args246690247602_)
                                              (_L247606_ _hd246680247576_)
                                              (_L247607_ _hd246671247552_)
                                              (_L247608_ _hd246662247528_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L247608_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L247607_
                                                      _self246633_)))
                                              (___kont255738255739_
                                               _L247605_
                                               _L247606_
                                               _L247607_
                                               _L247608_)
                                              (___match256029256030_
                                               _e246654247501_
                                               _hd246653247504_
                                               _tl246652247506_
                                               _e246657247509_
                                               _hd246656247512_
                                               _tl246655247514_
                                               _e246660247517_
                                               _hd246659247520_
                                               _tl246658247522_
                                               _e246663247525_
                                               _hd246662247528_
                                               _tl246661247530_
                                               _e246666247533_
                                               _hd246665247536_
                                               _tl246664247538_
                                               _e246669247541_
                                               _hd246668247544_
                                               _tl246667247546_
                                               _e246672247549_
                                               _hd246671247552_
                                               _tl246670247554_
                                               _e246675247557_
                                               _hd246674247560_
                                               _tl246673247562_
                                               _e246678247565_
                                               _hd246677247568_
                                               _tl246676247570_
                                               _e246681247573_
                                               _hd246680247576_
                                               _tl246679247578_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop246685247586_ _target246682247581_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx255736255737_))
                  (let ((_e246654247501_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx255736255737_))))
                    (let ((_tl246652247506_
                           (let ()
                             (declare (not safe))
                             (##cdr _e246654247501_)))
                          (_hd246653247504_
                           (let ()
                             (declare (not safe))
                             (##car _e246654247501_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl246652247506_))
                          (let ((_e246657247509_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl246652247506_))))
                            (let ((_tl246655247514_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e246657247509_)))
                                  (_hd246656247512_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e246657247509_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd246656247512_))
                                  (let ((_e246660247517_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd246656247512_))))
                                    (let ((_tl246658247522_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e246660247517_)))
                                          (_hd246659247520_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e246660247517_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd246659247520_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd246659247520_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl246658247522_))
                                                  (let ((_e246663247525_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl246658247522_))))
                                                    (let ((_tl246661247530_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e246663247525_)))
                                                          (_hd246662247528_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e246663247525_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl246661247530_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl246655247514_))
                      (let ((_e246666247533_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl246655247514_))))
                        (let ((_tl246664247538_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e246666247533_)))
                              (_hd246665247536_
                               (let ()
                                 (declare (not safe))
                                 (##car _e246666247533_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd246665247536_))
                              (let ((_e246669247541_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd246665247536_))))
                                (let ((_tl246667247546_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e246669247541_)))
                                      (_hd246668247544_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e246669247541_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd246668247544_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd246668247544_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl246667247546_))
                                              (let ((_e246672247549_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl246667247546_))))
                                                (let ((_tl246670247554_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e246672247549_)))
                                                      (_hd246671247552_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e246672247549_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl246670247554_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl246664247538_))
                                                          (let ((_e246675247557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl246664247538_))))
                    (let ((_tl246673247562_
                           (let ()
                             (declare (not safe))
                             (##cdr _e246675247557_)))
                          (_hd246674247560_
                           (let ()
                             (declare (not safe))
                             (##car _e246675247557_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd246674247560_))
                          (let ((_e246678247565_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd246674247560_))))
                            (let ((_tl246676247570_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e246678247565_)))
                                  (_hd246677247568_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e246678247565_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd246677247568_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd246677247568_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl246676247570_))
                                          (let ((_e246681247573_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl246676247570_))))
                                            (let ((_tl246679247578_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e246681247573_)))
                                                  (_hd246680247576_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e246681247573_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl246679247578_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl246673247562_))
                                                      (let ((___splice255740255741_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl246673247562_ '0))))
                (let ((_tl246684247583_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice255740255741_ '1)))
                      (_target246682247581_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice255740255741_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl246684247583_))
                      (___match255841255842_
                       _e246654247501_
                       _hd246653247504_
                       _tl246652247506_
                       _e246657247509_
                       _hd246656247512_
                       _tl246655247514_
                       _e246660247517_
                       _hd246659247520_
                       _tl246658247522_
                       _e246663247525_
                       _hd246662247528_
                       _tl246661247530_
                       _e246666247533_
                       _hd246665247536_
                       _tl246664247538_
                       _e246669247541_
                       _hd246668247544_
                       _tl246667247546_
                       _e246672247549_
                       _hd246671247552_
                       _tl246670247554_
                       _e246675247557_
                       _hd246674247560_
                       _tl246673247562_
                       _e246678247565_
                       _hd246677247568_
                       _tl246676247570_
                       _e246681247573_
                       _hd246680247576_
                       _tl246679247578_
                       ___splice255740255741_
                       _target246682247581_
                       _tl246684247583_)
                      (___match256029256030_
                       _e246654247501_
                       _hd246653247504_
                       _tl246652247506_
                       _e246657247509_
                       _hd246656247512_
                       _tl246655247514_
                       _e246660247517_
                       _hd246659247520_
                       _tl246658247522_
                       _e246663247525_
                       _hd246662247528_
                       _tl246661247530_
                       _e246666247533_
                       _hd246665247536_
                       _tl246664247538_
                       _e246669247541_
                       _hd246668247544_
                       _tl246667247546_
                       _e246672247549_
                       _hd246671247552_
                       _tl246670247554_
                       _e246675247557_
                       _hd246674247560_
                       _tl246673247562_
                       _e246678247565_
                       _hd246677247568_
                       _tl246676247570_
                       _e246681247573_
                       _hd246680247576_
                       _tl246679247578_))))
              (___match256029256030_
               _e246654247501_
               _hd246653247504_
               _tl246652247506_
               _e246657247509_
               _hd246656247512_
               _tl246655247514_
               _e246660247517_
               _hd246659247520_
               _tl246658247522_
               _e246663247525_
               _hd246662247528_
               _tl246661247530_
               _e246666247533_
               _hd246665247536_
               _tl246664247538_
               _e246669247541_
               _hd246668247544_
               _tl246667247546_
               _e246672247549_
               _hd246671247552_
               _tl246670247554_
               _e246675247557_
               _hd246674247560_
               _tl246673247562_
               _e246678247565_
               _hd246677247568_
               _tl246676247570_
               _e246681247573_
               _hd246680247576_
               _tl246679247578_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match256233256234_
                                                   _e246654247501_
                                                   _hd246653247504_
                                                   _tl246652247506_
                                                   _e246657247509_
                                                   _hd246656247512_
                                                   _tl246655247514_
                                                   _e246660247517_
                                                   _hd246659247520_
                                                   _tl246658247522_
                                                   _e246663247525_
                                                   _hd246662247528_
                                                   _tl246661247530_
                                                   _e246666247533_
                                                   _hd246665247536_
                                                   _tl246664247538_
                                                   _e246669247541_
                                                   _hd246668247544_
                                                   _tl246667247546_
                                                   _e246672247549_
                                                   _hd246671247552_
                                                   _tl246670247554_
                                                   _e246675247557_
                                                   _hd246674247560_
                                                   _tl246673247562_))))
                                          (___match256233256234_
                                           _e246654247501_
                                           _hd246653247504_
                                           _tl246652247506_
                                           _e246657247509_
                                           _hd246656247512_
                                           _tl246655247514_
                                           _e246660247517_
                                           _hd246659247520_
                                           _tl246658247522_
                                           _e246663247525_
                                           _hd246662247528_
                                           _tl246661247530_
                                           _e246666247533_
                                           _hd246665247536_
                                           _tl246664247538_
                                           _e246669247541_
                                           _hd246668247544_
                                           _tl246667247546_
                                           _e246672247549_
                                           _hd246671247552_
                                           _tl246670247554_
                                           _e246675247557_
                                           _hd246674247560_
                                           _tl246673247562_))
                                      (___match255909255910_
                                       _e246654247501_
                                       _hd246653247504_
                                       _tl246652247506_
                                       _e246657247509_
                                       _hd246656247512_
                                       _tl246655247514_
                                       _e246660247517_
                                       _hd246659247520_
                                       _tl246658247522_
                                       _e246663247525_
                                       _hd246662247528_
                                       _tl246661247530_
                                       _e246666247533_
                                       _hd246665247536_
                                       _tl246664247538_
                                       _e246669247541_
                                       _hd246668247544_
                                       _tl246667247546_
                                       _e246672247549_
                                       _hd246671247552_
                                       _tl246670247554_
                                       _e246675247557_
                                       _hd246674247560_
                                       _tl246673247562_
                                       _e246678247565_
                                       _hd246677247568_
                                       _tl246676247570_))
                                  (___match256233256234_
                                   _e246654247501_
                                   _hd246653247504_
                                   _tl246652247506_
                                   _e246657247509_
                                   _hd246656247512_
                                   _tl246655247514_
                                   _e246660247517_
                                   _hd246659247520_
                                   _tl246658247522_
                                   _e246663247525_
                                   _hd246662247528_
                                   _tl246661247530_
                                   _e246666247533_
                                   _hd246665247536_
                                   _tl246664247538_
                                   _e246669247541_
                                   _hd246668247544_
                                   _tl246667247546_
                                   _e246672247549_
                                   _hd246671247552_
                                   _tl246670247554_
                                   _e246675247557_
                                   _hd246674247560_
                                   _tl246673247562_))))
                          (___match256233256234_
                           _e246654247501_
                           _hd246653247504_
                           _tl246652247506_
                           _e246657247509_
                           _hd246656247512_
                           _tl246655247514_
                           _e246660247517_
                           _hd246659247520_
                           _tl246658247522_
                           _e246663247525_
                           _hd246662247528_
                           _tl246661247530_
                           _e246666247533_
                           _hd246665247536_
                           _tl246664247538_
                           _e246669247541_
                           _hd246668247544_
                           _tl246667247546_
                           _e246672247549_
                           _hd246671247552_
                           _tl246670247554_
                           _e246675247557_
                           _hd246674247560_
                           _tl246673247562_))))
                  (___match256171256172_
                   _e246654247501_
                   _hd246653247504_
                   _tl246652247506_
                   _e246657247509_
                   _hd246656247512_
                   _tl246655247514_
                   _e246660247517_
                   _hd246659247520_
                   _tl246658247522_
                   _e246663247525_
                   _hd246662247528_
                   _tl246661247530_
                   _e246666247533_
                   _hd246665247536_
                   _tl246664247538_
                   _e246669247541_
                   _hd246668247544_
                   _tl246667247546_
                   _e246672247549_
                   _hd246671247552_
                   _tl246670247554_))
              (___kont255754255755_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont255754255755_))
                                          (___kont255754255755_))
                                      (___kont255754255755_))))
                              (___kont255754255755_))))
                      (___kont255754255755_))
                  (___kont255754255755_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont255754255755_))
                                              (___kont255754255755_))
                                          (___kont255754255755_))))
                                  (___kont255754255755_))))
                          (___kont255754255755_))))
                  (___kont255754255755_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx245578_
               _self245579_
               _$t245580_
               _methods245581_
               _slots245582_
               _class-check245583_
               _struct-check245584_
               _struct-assert245585_)
        (letrec ((_force-e245587_
                  (lambda (_what246630_)
                    (let ((__tmp257112
                           (let ((__tmp257116
                                  (let ((__tmp257117
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp257117)))
                                 (__tmp257113
                                  (let ((__tmp257114
                                         (let ((__tmp257115
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what246630_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp257115))))
                                    (declare (not safe))
                                    (cons __tmp257114 '()))))
                             (declare (not safe))
                             (cons __tmp257116 __tmp257113))))
                      (declare (not safe))
                      (cons '%#call __tmp257112)))))
          (let* ((___stx256238256239_ _stx245578_)
                 (_g245595245817_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx256238256239_)))))
            (let ((___kont256240256241_
                   (lambda (_L246576_ _L246577_ _L246578_ _L246579_)
                     (let ((_$method246624_
                            (let ((__tmp257118
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L246577_))))
                              (declare (not safe))
                              (table-ref _methods245581_ __tmp257118)))
                           (_args246625_
                            (map (lambda (_g246612246614_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g246612246614_
                                      _self245579_
                                      _$t245580_
                                      _methods245581_
                                      _slots245582_
                                      _class-check245583_
                                      _struct-check245584_
                                      _struct-assert245585_)))
                                 (let ((__tmp257119
                                        (lambda (_g246616246619_
                                                 _g246617246621_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g246616246619_
                                                  _g246617246621_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp257119 '() _L246576_)))))
                       (let ((__tmp257120
                              (let ((__tmp257121
                                     (let ((__tmp257125
                                            (let ()
                                              (declare (not safe))
                                              (_force-e245587_
                                               _$method246624_)))
                                           (__tmp257122
                                            (let ((__tmp257123
                                                   (let ((__tmp257124
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self245579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp257124))))
                                              (declare (not safe))
                                              (cons __tmp257123
                                                    _args246625_))))
                                       (declare (not safe))
                                       (cons __tmp257125 __tmp257122))))
                                (declare (not safe))
                                (cons '%#call __tmp257121))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp257120 _stx245578_)))))
                  (___kont256244256245_
                   (lambda (_L246408_ _L246409_ _L246410_ _L246411_ _L246412_)
                     (let ((_$method246464_
                            (let ((__tmp257126
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L246409_))))
                              (declare (not safe))
                              (table-ref _methods245581_ __tmp257126)))
                           (_args246465_
                            (map (lambda (_g246452246454_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g246452246454_
                                      _self245579_
                                      _$t245580_
                                      _methods245581_
                                      _slots245582_
                                      _class-check245583_
                                      _struct-check245584_
                                      _struct-assert245585_)))
                                 (let ((__tmp257127
                                        (lambda (_g246456246459_
                                                 _g246457246461_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g246456246459_
                                                  _g246457246461_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp257127 '() _L246408_)))))
                       (let ((__tmp257128
                              (let ((__tmp257129
                                     (let ((__tmp257135
                                            (let ((__tmp257136
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp257136)))
                                           (__tmp257130
                                            (let ((__tmp257134
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e245587_
                                                      _$method246464_)))
                                                  (__tmp257131
                                                   (let ((__tmp257132
                                                          (let ((__tmp257133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self245579_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp257133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp257132
                                                           _args246465_))))
                                              (declare (not safe))
                                              (cons __tmp257134 __tmp257131))))
                                       (declare (not safe))
                                       (cons __tmp257135 __tmp257130))))
                                (declare (not safe))
                                (cons '%#call __tmp257129))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp257128 _stx245578_)))))
                  (___kont256248256249_
                   (lambda (_L246239_ _L246240_ _L246241_)
                     (let* ((_$field246273_
                             (let ((__tmp257137
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L246239_))))
                               (declare (not safe))
                               (table-ref _slots245582_ __tmp257137)))
                            (__tmp257138
                             (let ((__tmp257139
                                    (let ((__tmp257146
                                           (let ((__tmp257147
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t245580_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp257147)))
                                          (__tmp257140
                                           (let ((__tmp257144
                                                  (let ((__tmp257145
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field246273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp257145)))
                                                 (__tmp257141
                                                  (let ((__tmp257142
                                                         (let ((__tmp257143
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self245579_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp257143))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp257142 '()))))
                                             (declare (not safe))
                                             (cons __tmp257144 __tmp257141))))
                                      (declare (not safe))
                                      (cons __tmp257146 __tmp257140))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp257139))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp257138 _stx245578_))))
                  (___kont256250256251_
                   (lambda (_L246113_ _L246114_ _L246115_ _L246116_)
                     (let ((_$field246151_
                            (let ((__tmp257148
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L246114_))))
                              (declare (not safe))
                              (table-ref _slots245582_ __tmp257148)))
                           (_expr246152_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L246113_
                               _self245579_
                               _$t245580_
                               _methods245581_
                               _slots245582_
                               _class-check245583_
                               _struct-check245584_
                               _struct-assert245585_))))
                       (let ((__tmp257149
                              (let ((__tmp257150
                                     (let ((__tmp257158
                                            (let ((__tmp257159
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t245580_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp257159)))
                                           (__tmp257151
                                            (let ((__tmp257156
                                                   (let ((__tmp257157
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field246151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp257157)))
                                                  (__tmp257152
                                                   (let ((__tmp257154
                                                          (let ((__tmp257155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self245579_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp257155)))
                 (__tmp257153
                  (let () (declare (not safe)) (cons _expr246152_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp257154
                                                           __tmp257153))))
                                              (declare (not safe))
                                              (cons __tmp257156 __tmp257152))))
                                       (declare (not safe))
                                       (cons __tmp257158 __tmp257151))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp257150))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp257149 _stx245578_)))))
                  (___kont256252256253_
                   (lambda (_L245992_ _L245993_)
                     (let* ((_slot246015_
                             (##structure-ref
                              (let ((__tmp257160
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L245993_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp257160))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field246017_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots245582_ _slot246015_))))
                       (let ((__tmp257161
                              (let ((__tmp257162
                                     (let ((__tmp257169
                                            (let ((__tmp257170
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t245580_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp257170)))
                                           (__tmp257163
                                            (let ((__tmp257167
                                                   (let ((__tmp257168
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field246017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp257168)))
                                                  (__tmp257164
                                                   (let ((__tmp257165
                                                          (let ((__tmp257166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self245579_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp257166))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp257165 '()))))
                                              (declare (not safe))
                                              (cons __tmp257167 __tmp257164))))
                                       (declare (not safe))
                                       (cons __tmp257169 __tmp257163))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp257162))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp257161 _stx245578_)))))
                  (___kont256254256255_
                   (lambda (_L245893_ _L245894_ _L245895_)
                     (let* ((_slot245924_
                             (##structure-ref
                              (let ((__tmp257171
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L245895_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp257171))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field245926_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots245582_ _slot245924_)))
                            (_expr245928_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L245893_
                                _self245579_
                                _$t245580_
                                _methods245581_
                                _slots245582_
                                _class-check245583_
                                _struct-check245584_
                                _struct-assert245585_))))
                       (let ((__tmp257172
                              (let ((__tmp257173
                                     (let ((__tmp257181
                                            (let ((__tmp257182
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t245580_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp257182)))
                                           (__tmp257174
                                            (let ((__tmp257179
                                                   (let ((__tmp257180
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field245926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp257180)))
                                                  (__tmp257175
                                                   (let ((__tmp257177
                                                          (let ((__tmp257178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self245579_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp257178)))
                 (__tmp257176
                  (let () (declare (not safe)) (cons _expr245928_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp257177
                                                           __tmp257176))))
                                              (declare (not safe))
                                              (cons __tmp257179 __tmp257175))))
                                       (declare (not safe))
                                       (cons __tmp257181 __tmp257174))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp257173))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp257172 _stx245578_)))))
                  (___kont256256256257_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx245578_
                        _self245579_
                        _$t245580_
                        _methods245581_
                        _slots245582_
                        _class-check245583_
                        _struct-check245584_
                        _struct-assert245585_)))))
              (let* ((___match256737256738_
                      (lambda (_e245791245829_
                               _hd245790245832_
                               _tl245789245834_
                               _e245794245837_
                               _hd245793245840_
                               _tl245792245842_
                               _e245797245845_
                               _hd245796245848_
                               _tl245795245850_
                               _e245800245853_
                               _hd245799245856_
                               _tl245798245858_
                               _e245803245861_
                               _hd245802245864_
                               _tl245801245866_
                               _e245806245869_
                               _hd245805245872_
                               _tl245804245874_
                               _e245809245877_
                               _hd245808245880_
                               _tl245807245882_
                               _e245812245885_
                               _hd245811245888_
                               _tl245810245890_)
                        (let ((_L245893_ _hd245811245888_)
                              (_L245894_ _hd245808245880_)
                              (_L245895_ _hd245799245856_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L245894_
                                      _self245579_))
                                   (let ((__tmp257183
                                          (let ((__tmp257184
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L245895_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp257184))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp257183
                                      'gxc#!mutator::t)))
                              (___kont256254256255_
                               _L245893_
                               _L245894_
                               _L245895_)
                              (___kont256256256257_)))))
                     (___match256735256736_
                      (lambda (_e245791245829_
                               _hd245790245832_
                               _tl245789245834_
                               _e245794245837_
                               _hd245793245840_
                               _tl245792245842_
                               _e245797245845_
                               _hd245796245848_
                               _tl245795245850_
                               _e245800245853_
                               _hd245799245856_
                               _tl245798245858_
                               _e245803245861_
                               _hd245802245864_
                               _tl245801245866_
                               _e245806245869_
                               _hd245805245872_
                               _tl245804245874_
                               _e245809245877_
                               _hd245808245880_
                               _tl245807245882_
                               _e245812245885_
                               _hd245811245888_
                               _tl245810245890_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245810245890_))
                            (___match256737256738_
                             _e245791245829_
                             _hd245790245832_
                             _tl245789245834_
                             _e245794245837_
                             _hd245793245840_
                             _tl245792245842_
                             _e245797245845_
                             _hd245796245848_
                             _tl245795245850_
                             _e245800245853_
                             _hd245799245856_
                             _tl245798245858_
                             _e245803245861_
                             _hd245802245864_
                             _tl245801245866_
                             _e245806245869_
                             _hd245805245872_
                             _tl245804245874_
                             _e245809245877_
                             _hd245808245880_
                             _tl245807245882_
                             _e245812245885_
                             _hd245811245888_
                             _tl245810245890_)
                            (___kont256256256257_))))
                     (___match256729256730_
                      (lambda (_e245791245829_
                               _hd245790245832_
                               _tl245789245834_
                               _e245794245837_
                               _hd245793245840_
                               _tl245792245842_
                               _e245797245845_
                               _hd245796245848_
                               _tl245795245850_
                               _e245800245853_
                               _hd245799245856_
                               _tl245798245858_
                               _e245803245861_
                               _hd245802245864_
                               _tl245801245866_
                               _e245806245869_
                               _hd245805245872_
                               _tl245804245874_
                               _e245809245877_
                               _hd245808245880_
                               _tl245807245882_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245801245866_))
                            (let ((_e245812245885_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245801245866_))))
                              (let ((_tl245810245890_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245812245885_)))
                                    (_hd245811245888_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245812245885_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl245810245890_))
                                    (___match256737256738_
                                     _e245791245829_
                                     _hd245790245832_
                                     _tl245789245834_
                                     _e245794245837_
                                     _hd245793245840_
                                     _tl245792245842_
                                     _e245797245845_
                                     _hd245796245848_
                                     _tl245795245850_
                                     _e245800245853_
                                     _hd245799245856_
                                     _tl245798245858_
                                     _e245803245861_
                                     _hd245802245864_
                                     _tl245801245866_
                                     _e245806245869_
                                     _hd245805245872_
                                     _tl245804245874_
                                     _e245809245877_
                                     _hd245808245880_
                                     _tl245807245882_
                                     _e245812245885_
                                     _hd245811245888_
                                     _tl245810245890_)
                                    (___kont256256256257_))))
                            (___kont256256256257_))))
                     (___match256675256676_
                      (lambda (_e245767245936_
                               _hd245766245939_
                               _tl245765245941_
                               _e245770245944_
                               _hd245769245947_
                               _tl245768245949_
                               _e245773245952_
                               _hd245772245955_
                               _tl245771245957_
                               _e245776245960_
                               _hd245775245963_
                               _tl245774245965_
                               _e245779245968_
                               _hd245778245971_
                               _tl245777245973_
                               _e245782245976_
                               _hd245781245979_
                               _tl245780245981_
                               _e245785245984_
                               _hd245784245987_
                               _tl245783245989_)
                        (let ((_L245992_ _hd245784245987_)
                              (_L245993_ _hd245775245963_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L245992_
                                      _self245579_))
                                   (let ((__tmp257185
                                          (let ((__tmp257186
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L245993_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp257186))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp257185
                                      'gxc#!accessor::t)))
                              (___kont256252256253_ _L245992_ _L245993_)
                              (___kont256256256257_)))))
                     (___match256673256674_
                      (lambda (_e245767245936_
                               _hd245766245939_
                               _tl245765245941_
                               _e245770245944_
                               _hd245769245947_
                               _tl245768245949_
                               _e245773245952_
                               _hd245772245955_
                               _tl245771245957_
                               _e245776245960_
                               _hd245775245963_
                               _tl245774245965_
                               _e245779245968_
                               _hd245778245971_
                               _tl245777245973_
                               _e245782245976_
                               _hd245781245979_
                               _tl245780245981_
                               _e245785245984_
                               _hd245784245987_
                               _tl245783245989_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245777245973_))
                            (___match256675256676_
                             _e245767245936_
                             _hd245766245939_
                             _tl245765245941_
                             _e245770245944_
                             _hd245769245947_
                             _tl245768245949_
                             _e245773245952_
                             _hd245772245955_
                             _tl245771245957_
                             _e245776245960_
                             _hd245775245963_
                             _tl245774245965_
                             _e245779245968_
                             _hd245778245971_
                             _tl245777245973_
                             _e245782245976_
                             _hd245781245979_
                             _tl245780245981_
                             _e245785245984_
                             _hd245784245987_
                             _tl245783245989_)
                            (___match256729256730_
                             _e245767245936_
                             _hd245766245939_
                             _tl245765245941_
                             _e245770245944_
                             _hd245769245947_
                             _tl245768245949_
                             _e245773245952_
                             _hd245772245955_
                             _tl245771245957_
                             _e245776245960_
                             _hd245775245963_
                             _tl245774245965_
                             _e245779245968_
                             _hd245778245971_
                             _tl245777245973_
                             _e245782245976_
                             _hd245781245979_
                             _tl245780245981_
                             _e245785245984_
                             _hd245784245987_
                             _tl245783245989_))))
                     (___match256619256620_
                      (lambda (_e245732246025_
                               _hd245731246028_
                               _tl245730246030_
                               _e245735246033_
                               _hd245734246036_
                               _tl245733246038_
                               _e245738246041_
                               _hd245737246044_
                               _tl245736246046_
                               _e245741246049_
                               _hd245740246052_
                               _tl245739246054_
                               _e245744246057_
                               _hd245743246060_
                               _tl245742246062_
                               _e245747246065_
                               _hd245746246068_
                               _tl245745246070_
                               _e245750246073_
                               _hd245749246076_
                               _tl245748246078_
                               _e245753246081_
                               _hd245752246084_
                               _tl245751246086_
                               _e245756246089_
                               _hd245755246092_
                               _tl245754246094_
                               _e245759246097_
                               _hd245758246100_
                               _tl245757246102_
                               _e245762246105_
                               _hd245761246108_
                               _tl245760246110_)
                        (let ((_L246113_ _hd245761246108_)
                              (_L246114_ _hd245758246100_)
                              (_L246115_ _hd245749246076_)
                              (_L246116_ _hd245740246052_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L246116_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L246116_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L246115_
                                      _self245579_)))
                              (___kont256250256251_
                               _L246113_
                               _L246114_
                               _L246115_
                               _L246116_)
                              (___kont256256256257_)))))
                     (___match256611256612_
                      (lambda (_e245732246025_
                               _hd245731246028_
                               _tl245730246030_
                               _e245735246033_
                               _hd245734246036_
                               _tl245733246038_
                               _e245738246041_
                               _hd245737246044_
                               _tl245736246046_
                               _e245741246049_
                               _hd245740246052_
                               _tl245739246054_
                               _e245744246057_
                               _hd245743246060_
                               _tl245742246062_
                               _e245747246065_
                               _hd245746246068_
                               _tl245745246070_
                               _e245750246073_
                               _hd245749246076_
                               _tl245748246078_
                               _e245753246081_
                               _hd245752246084_
                               _tl245751246086_
                               _e245756246089_
                               _hd245755246092_
                               _tl245754246094_
                               _e245759246097_
                               _hd245758246100_
                               _tl245757246102_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245751246086_))
                            (let ((_e245762246105_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245751246086_))))
                              (let ((_tl245760246110_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245762246105_)))
                                    (_hd245761246108_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245762246105_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl245760246110_))
                                    (___match256619256620_
                                     _e245732246025_
                                     _hd245731246028_
                                     _tl245730246030_
                                     _e245735246033_
                                     _hd245734246036_
                                     _tl245733246038_
                                     _e245738246041_
                                     _hd245737246044_
                                     _tl245736246046_
                                     _e245741246049_
                                     _hd245740246052_
                                     _tl245739246054_
                                     _e245744246057_
                                     _hd245743246060_
                                     _tl245742246062_
                                     _e245747246065_
                                     _hd245746246068_
                                     _tl245745246070_
                                     _e245750246073_
                                     _hd245749246076_
                                     _tl245748246078_
                                     _e245753246081_
                                     _hd245752246084_
                                     _tl245751246086_
                                     _e245756246089_
                                     _hd245755246092_
                                     _tl245754246094_
                                     _e245759246097_
                                     _hd245758246100_
                                     _tl245757246102_
                                     _e245762246105_
                                     _hd245761246108_
                                     _tl245760246110_)
                                    (___kont256256256257_))))
                            (___match256735256736_
                             _e245732246025_
                             _hd245731246028_
                             _tl245730246030_
                             _e245735246033_
                             _hd245734246036_
                             _tl245733246038_
                             _e245738246041_
                             _hd245737246044_
                             _tl245736246046_
                             _e245741246049_
                             _hd245740246052_
                             _tl245739246054_
                             _e245744246057_
                             _hd245743246060_
                             _tl245742246062_
                             _e245747246065_
                             _hd245746246068_
                             _tl245745246070_
                             _e245750246073_
                             _hd245749246076_
                             _tl245748246078_
                             _e245753246081_
                             _hd245752246084_
                             _tl245751246086_))))
                     (___match256533256534_
                      (lambda (_e245698246159_
                               _hd245697246162_
                               _tl245696246164_
                               _e245701246167_
                               _hd245700246170_
                               _tl245699246172_
                               _e245704246175_
                               _hd245703246178_
                               _tl245702246180_
                               _e245707246183_
                               _hd245706246186_
                               _tl245705246188_
                               _e245710246191_
                               _hd245709246194_
                               _tl245708246196_
                               _e245713246199_
                               _hd245712246202_
                               _tl245711246204_
                               _e245716246207_
                               _hd245715246210_
                               _tl245714246212_
                               _e245719246215_
                               _hd245718246218_
                               _tl245717246220_
                               _e245722246223_
                               _hd245721246226_
                               _tl245720246228_
                               _e245725246231_
                               _hd245724246234_
                               _tl245723246236_)
                        (let ((_L246239_ _hd245724246234_)
                              (_L246240_ _hd245715246210_)
                              (_L246241_ _hd245706246186_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L246241_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L246241_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L246240_
                                      _self245579_)))
                              (___kont256248256249_
                               _L246239_
                               _L246240_
                               _L246241_)
                              (___match256737256738_
                               _e245698246159_
                               _hd245697246162_
                               _tl245696246164_
                               _e245701246167_
                               _hd245700246170_
                               _tl245699246172_
                               _e245704246175_
                               _hd245703246178_
                               _tl245702246180_
                               _e245707246183_
                               _hd245706246186_
                               _tl245705246188_
                               _e245710246191_
                               _hd245709246194_
                               _tl245708246196_
                               _e245713246199_
                               _hd245712246202_
                               _tl245711246204_
                               _e245716246207_
                               _hd245715246210_
                               _tl245714246212_
                               _e245719246215_
                               _hd245718246218_
                               _tl245717246220_)))))
                     (___match256531256532_
                      (lambda (_e245698246159_
                               _hd245697246162_
                               _tl245696246164_
                               _e245701246167_
                               _hd245700246170_
                               _tl245699246172_
                               _e245704246175_
                               _hd245703246178_
                               _tl245702246180_
                               _e245707246183_
                               _hd245706246186_
                               _tl245705246188_
                               _e245710246191_
                               _hd245709246194_
                               _tl245708246196_
                               _e245713246199_
                               _hd245712246202_
                               _tl245711246204_
                               _e245716246207_
                               _hd245715246210_
                               _tl245714246212_
                               _e245719246215_
                               _hd245718246218_
                               _tl245717246220_
                               _e245722246223_
                               _hd245721246226_
                               _tl245720246228_
                               _e245725246231_
                               _hd245724246234_
                               _tl245723246236_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245717246220_))
                            (___match256533256534_
                             _e245698246159_
                             _hd245697246162_
                             _tl245696246164_
                             _e245701246167_
                             _hd245700246170_
                             _tl245699246172_
                             _e245704246175_
                             _hd245703246178_
                             _tl245702246180_
                             _e245707246183_
                             _hd245706246186_
                             _tl245705246188_
                             _e245710246191_
                             _hd245709246194_
                             _tl245708246196_
                             _e245713246199_
                             _hd245712246202_
                             _tl245711246204_
                             _e245716246207_
                             _hd245715246210_
                             _tl245714246212_
                             _e245719246215_
                             _hd245718246218_
                             _tl245717246220_
                             _e245722246223_
                             _hd245721246226_
                             _tl245720246228_
                             _e245725246231_
                             _hd245724246234_
                             _tl245723246236_)
                            (___match256611256612_
                             _e245698246159_
                             _hd245697246162_
                             _tl245696246164_
                             _e245701246167_
                             _hd245700246170_
                             _tl245699246172_
                             _e245704246175_
                             _hd245703246178_
                             _tl245702246180_
                             _e245707246183_
                             _hd245706246186_
                             _tl245705246188_
                             _e245710246191_
                             _hd245709246194_
                             _tl245708246196_
                             _e245713246199_
                             _hd245712246202_
                             _tl245711246204_
                             _e245716246207_
                             _hd245715246210_
                             _tl245714246212_
                             _e245719246215_
                             _hd245718246218_
                             _tl245717246220_
                             _e245722246223_
                             _hd245721246226_
                             _tl245720246228_
                             _e245725246231_
                             _hd245724246234_
                             _tl245723246236_))))
                     (___match256521256522_
                      (lambda (_e245698246159_
                               _hd245697246162_
                               _tl245696246164_
                               _e245701246167_
                               _hd245700246170_
                               _tl245699246172_
                               _e245704246175_
                               _hd245703246178_
                               _tl245702246180_
                               _e245707246183_
                               _hd245706246186_
                               _tl245705246188_
                               _e245710246191_
                               _hd245709246194_
                               _tl245708246196_
                               _e245713246199_
                               _hd245712246202_
                               _tl245711246204_
                               _e245716246207_
                               _hd245715246210_
                               _tl245714246212_
                               _e245719246215_
                               _hd245718246218_
                               _tl245717246220_
                               _e245722246223_
                               _hd245721246226_
                               _tl245720246228_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd245721246226_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl245720246228_))
                                (let ((_e245725246231_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl245720246228_))))
                                  (let ((_tl245723246236_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245725246231_)))
                                        (_hd245724246234_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245725246231_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl245723246236_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl245717246220_))
                                            (___match256533256534_
                                             _e245698246159_
                                             _hd245697246162_
                                             _tl245696246164_
                                             _e245701246167_
                                             _hd245700246170_
                                             _tl245699246172_
                                             _e245704246175_
                                             _hd245703246178_
                                             _tl245702246180_
                                             _e245707246183_
                                             _hd245706246186_
                                             _tl245705246188_
                                             _e245710246191_
                                             _hd245709246194_
                                             _tl245708246196_
                                             _e245713246199_
                                             _hd245712246202_
                                             _tl245711246204_
                                             _e245716246207_
                                             _hd245715246210_
                                             _tl245714246212_
                                             _e245719246215_
                                             _hd245718246218_
                                             _tl245717246220_
                                             _e245722246223_
                                             _hd245721246226_
                                             _tl245720246228_
                                             _e245725246231_
                                             _hd245724246234_
                                             _tl245723246236_)
                                            (___match256611256612_
                                             _e245698246159_
                                             _hd245697246162_
                                             _tl245696246164_
                                             _e245701246167_
                                             _hd245700246170_
                                             _tl245699246172_
                                             _e245704246175_
                                             _hd245703246178_
                                             _tl245702246180_
                                             _e245707246183_
                                             _hd245706246186_
                                             _tl245705246188_
                                             _e245710246191_
                                             _hd245709246194_
                                             _tl245708246196_
                                             _e245713246199_
                                             _hd245712246202_
                                             _tl245711246204_
                                             _e245716246207_
                                             _hd245715246210_
                                             _tl245714246212_
                                             _e245719246215_
                                             _hd245718246218_
                                             _tl245717246220_
                                             _e245722246223_
                                             _hd245721246226_
                                             _tl245720246228_
                                             _e245725246231_
                                             _hd245724246234_
                                             _tl245723246236_))
                                        (___match256735256736_
                                         _e245698246159_
                                         _hd245697246162_
                                         _tl245696246164_
                                         _e245701246167_
                                         _hd245700246170_
                                         _tl245699246172_
                                         _e245704246175_
                                         _hd245703246178_
                                         _tl245702246180_
                                         _e245707246183_
                                         _hd245706246186_
                                         _tl245705246188_
                                         _e245710246191_
                                         _hd245709246194_
                                         _tl245708246196_
                                         _e245713246199_
                                         _hd245712246202_
                                         _tl245711246204_
                                         _e245716246207_
                                         _hd245715246210_
                                         _tl245714246212_
                                         _e245719246215_
                                         _hd245718246218_
                                         _tl245717246220_))))
                                (___match256735256736_
                                 _e245698246159_
                                 _hd245697246162_
                                 _tl245696246164_
                                 _e245701246167_
                                 _hd245700246170_
                                 _tl245699246172_
                                 _e245704246175_
                                 _hd245703246178_
                                 _tl245702246180_
                                 _e245707246183_
                                 _hd245706246186_
                                 _tl245705246188_
                                 _e245710246191_
                                 _hd245709246194_
                                 _tl245708246196_
                                 _e245713246199_
                                 _hd245712246202_
                                 _tl245711246204_
                                 _e245716246207_
                                 _hd245715246210_
                                 _tl245714246212_
                                 _e245719246215_
                                 _hd245718246218_
                                 _tl245717246220_))
                            (___match256735256736_
                             _e245698246159_
                             _hd245697246162_
                             _tl245696246164_
                             _e245701246167_
                             _hd245700246170_
                             _tl245699246172_
                             _e245704246175_
                             _hd245703246178_
                             _tl245702246180_
                             _e245707246183_
                             _hd245706246186_
                             _tl245705246188_
                             _e245710246191_
                             _hd245709246194_
                             _tl245708246196_
                             _e245713246199_
                             _hd245712246202_
                             _tl245711246204_
                             _e245716246207_
                             _hd245715246210_
                             _tl245714246212_
                             _e245719246215_
                             _hd245718246218_
                             _tl245717246220_))))
                     (___match256453256454_
                      (lambda (_e245647246280_
                               _hd245646246283_
                               _tl245645246285_
                               _e245650246288_
                               _hd245649246291_
                               _tl245648246293_
                               _e245653246296_
                               _hd245652246299_
                               _tl245651246301_
                               _e245656246304_
                               _hd245655246307_
                               _tl245654246309_
                               _e245659246312_
                               _hd245658246315_
                               _tl245657246317_
                               _e245662246320_
                               _hd245661246323_
                               _tl245660246325_
                               _e245665246328_
                               _hd245664246331_
                               _tl245663246333_
                               _e245668246336_
                               _hd245667246339_
                               _tl245666246341_
                               _e245671246344_
                               _hd245670246347_
                               _tl245669246349_
                               _e245674246352_
                               _hd245673246355_
                               _tl245672246357_
                               _e245677246360_
                               _hd245676246363_
                               _tl245675246365_
                               _e245680246368_
                               _hd245679246371_
                               _tl245678246373_
                               _e245683246376_
                               _hd245682246379_
                               _tl245681246381_
                               ___splice256246256247_
                               _target245684246384_
                               _tl245686246386_)
                        (letrec ((_loop245687246389_
                                  (lambda (_hd245685246392_ _args245691246394_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd245685246392_))
                                        (let ((_e245688246397_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd245685246392_))))
                                          (let ((_lp-tl245690246402_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e245688246397_)))
                                                (_lp-hd245689246400_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e245688246397_))))
                                            (let ((__tmp257187
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd245689246400_
                                                           _args245691246394_))))
                                              (declare (not safe))
                                              (_loop245687246389_
                                               _lp-tl245690246402_
                                               __tmp257187))))
                                        (let ((_args245692246405_
                                               (reverse _args245691246394_)))
                                          (let ((_L246408_ _args245692246405_)
                                                (_L246409_ _hd245682246379_)
                                                (_L246410_ _hd245673246355_)
                                                (_L246411_ _hd245664246331_)
                                                (_L246412_ _hd245655246307_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L246412_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L246411_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L246410_
                                                        _self245579_)))
                                                (___kont256244256245_
                                                 _L246408_
                                                 _L246409_
                                                 _L246410_
                                                 _L246411_
                                                 _L246412_)
                                                (___kont256256256257_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop245687246389_ _target245684246384_ '())))))
                     (___match256411256412_
                      (lambda (_e245647246280_
                               _hd245646246283_
                               _tl245645246285_
                               _e245650246288_
                               _hd245649246291_
                               _tl245648246293_
                               _e245653246296_
                               _hd245652246299_
                               _tl245651246301_
                               _e245656246304_
                               _hd245655246307_
                               _tl245654246309_
                               _e245659246312_
                               _hd245658246315_
                               _tl245657246317_
                               _e245662246320_
                               _hd245661246323_
                               _tl245660246325_
                               _e245665246328_
                               _hd245664246331_
                               _tl245663246333_
                               _e245668246336_
                               _hd245667246339_
                               _tl245666246341_
                               _e245671246344_
                               _hd245670246347_
                               _tl245669246349_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd245670246347_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl245669246349_))
                                (let ((_e245674246352_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl245669246349_))))
                                  (let ((_tl245672246357_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245674246352_)))
                                        (_hd245673246355_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245674246352_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl245672246357_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl245666246341_))
                                            (let ((_e245677246360_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl245666246341_))))
                                              (let ((_tl245675246365_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e245677246360_)))
                                                    (_hd245676246363_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e245677246360_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd245676246363_))
                                                    (let ((_e245680246368_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd245676246363_))))
                                                      (let ((_tl245678246373_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e245680246368_)))
                    (_hd245679246371_
                     (let () (declare (not safe)) (##car _e245680246368_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd245679246371_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd245679246371_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245678246373_))
                            (let ((_e245683246376_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245678246373_))))
                              (let ((_tl245681246381_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245683246376_)))
                                    (_hd245682246379_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245683246376_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl245681246381_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl245675246365_))
                                        (let ((___splice256246256247_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl245675246365_
                                                  '0))))
                                          (let ((_tl245686246386_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice256246256247_
                                                    '1)))
                                                (_target245684246384_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice256246256247_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl245686246386_))
                                                (___match256453256454_
                                                 _e245647246280_
                                                 _hd245646246283_
                                                 _tl245645246285_
                                                 _e245650246288_
                                                 _hd245649246291_
                                                 _tl245648246293_
                                                 _e245653246296_
                                                 _hd245652246299_
                                                 _tl245651246301_
                                                 _e245656246304_
                                                 _hd245655246307_
                                                 _tl245654246309_
                                                 _e245659246312_
                                                 _hd245658246315_
                                                 _tl245657246317_
                                                 _e245662246320_
                                                 _hd245661246323_
                                                 _tl245660246325_
                                                 _e245665246328_
                                                 _hd245664246331_
                                                 _tl245663246333_
                                                 _e245668246336_
                                                 _hd245667246339_
                                                 _tl245666246341_
                                                 _e245671246344_
                                                 _hd245670246347_
                                                 _tl245669246349_
                                                 _e245674246352_
                                                 _hd245673246355_
                                                 _tl245672246357_
                                                 _e245677246360_
                                                 _hd245676246363_
                                                 _tl245675246365_
                                                 _e245680246368_
                                                 _hd245679246371_
                                                 _tl245678246373_
                                                 _e245683246376_
                                                 _hd245682246379_
                                                 _tl245681246381_
                                                 ___splice256246256247_
                                                 _target245684246384_
                                                 _tl245686246386_)
                                                (___kont256256256257_))))
                                        (___kont256256256257_))
                                    (___kont256256256257_))))
                            (___kont256256256257_))
                        (___kont256256256257_))
                    (___kont256256256257_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont256256256257_))))
                                            (___match256735256736_
                                             _e245647246280_
                                             _hd245646246283_
                                             _tl245645246285_
                                             _e245650246288_
                                             _hd245649246291_
                                             _tl245648246293_
                                             _e245653246296_
                                             _hd245652246299_
                                             _tl245651246301_
                                             _e245656246304_
                                             _hd245655246307_
                                             _tl245654246309_
                                             _e245659246312_
                                             _hd245658246315_
                                             _tl245657246317_
                                             _e245662246320_
                                             _hd245661246323_
                                             _tl245660246325_
                                             _e245665246328_
                                             _hd245664246331_
                                             _tl245663246333_
                                             _e245668246336_
                                             _hd245667246339_
                                             _tl245666246341_))
                                        (___match256735256736_
                                         _e245647246280_
                                         _hd245646246283_
                                         _tl245645246285_
                                         _e245650246288_
                                         _hd245649246291_
                                         _tl245648246293_
                                         _e245653246296_
                                         _hd245652246299_
                                         _tl245651246301_
                                         _e245656246304_
                                         _hd245655246307_
                                         _tl245654246309_
                                         _e245659246312_
                                         _hd245658246315_
                                         _tl245657246317_
                                         _e245662246320_
                                         _hd245661246323_
                                         _tl245660246325_
                                         _e245665246328_
                                         _hd245664246331_
                                         _tl245663246333_
                                         _e245668246336_
                                         _hd245667246339_
                                         _tl245666246341_))))
                                (___match256735256736_
                                 _e245647246280_
                                 _hd245646246283_
                                 _tl245645246285_
                                 _e245650246288_
                                 _hd245649246291_
                                 _tl245648246293_
                                 _e245653246296_
                                 _hd245652246299_
                                 _tl245651246301_
                                 _e245656246304_
                                 _hd245655246307_
                                 _tl245654246309_
                                 _e245659246312_
                                 _hd245658246315_
                                 _tl245657246317_
                                 _e245662246320_
                                 _hd245661246323_
                                 _tl245660246325_
                                 _e245665246328_
                                 _hd245664246331_
                                 _tl245663246333_
                                 _e245668246336_
                                 _hd245667246339_
                                 _tl245666246341_))
                            (___match256521256522_
                             _e245647246280_
                             _hd245646246283_
                             _tl245645246285_
                             _e245650246288_
                             _hd245649246291_
                             _tl245648246293_
                             _e245653246296_
                             _hd245652246299_
                             _tl245651246301_
                             _e245656246304_
                             _hd245655246307_
                             _tl245654246309_
                             _e245659246312_
                             _hd245658246315_
                             _tl245657246317_
                             _e245662246320_
                             _hd245661246323_
                             _tl245660246325_
                             _e245665246328_
                             _hd245664246331_
                             _tl245663246333_
                             _e245668246336_
                             _hd245667246339_
                             _tl245666246341_
                             _e245671246344_
                             _hd245670246347_
                             _tl245669246349_))))
                     (___match256343256344_
                      (lambda (_e245603246472_
                               _hd245602246475_
                               _tl245601246477_
                               _e245606246480_
                               _hd245605246483_
                               _tl245604246485_
                               _e245609246488_
                               _hd245608246491_
                               _tl245607246493_
                               _e245612246496_
                               _hd245611246499_
                               _tl245610246501_
                               _e245615246504_
                               _hd245614246507_
                               _tl245613246509_
                               _e245618246512_
                               _hd245617246515_
                               _tl245616246517_
                               _e245621246520_
                               _hd245620246523_
                               _tl245619246525_
                               _e245624246528_
                               _hd245623246531_
                               _tl245622246533_
                               _e245627246536_
                               _hd245626246539_
                               _tl245625246541_
                               _e245630246544_
                               _hd245629246547_
                               _tl245628246549_
                               ___splice256242256243_
                               _target245631246552_
                               _tl245633246554_)
                        (letrec ((_loop245634246557_
                                  (lambda (_hd245632246560_ _args245638246562_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd245632246560_))
                                        (let ((_e245635246565_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd245632246560_))))
                                          (let ((_lp-tl245637246570_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e245635246565_)))
                                                (_lp-hd245636246568_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e245635246565_))))
                                            (let ((__tmp257188
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd245636246568_
                                                           _args245638246562_))))
                                              (declare (not safe))
                                              (_loop245634246557_
                                               _lp-tl245637246570_
                                               __tmp257188))))
                                        (let ((_args245639246573_
                                               (reverse _args245638246562_)))
                                          (let ((_L246576_ _args245639246573_)
                                                (_L246577_ _hd245629246547_)
                                                (_L246578_ _hd245620246523_)
                                                (_L246579_ _hd245611246499_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L246579_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L246578_
                                                        _self245579_)))
                                                (___kont256240256241_
                                                 _L246576_
                                                 _L246577_
                                                 _L246578_
                                                 _L246579_)
                                                (___match256531256532_
                                                 _e245603246472_
                                                 _hd245602246475_
                                                 _tl245601246477_
                                                 _e245606246480_
                                                 _hd245605246483_
                                                 _tl245604246485_
                                                 _e245609246488_
                                                 _hd245608246491_
                                                 _tl245607246493_
                                                 _e245612246496_
                                                 _hd245611246499_
                                                 _tl245610246501_
                                                 _e245615246504_
                                                 _hd245614246507_
                                                 _tl245613246509_
                                                 _e245618246512_
                                                 _hd245617246515_
                                                 _tl245616246517_
                                                 _e245621246520_
                                                 _hd245620246523_
                                                 _tl245619246525_
                                                 _e245624246528_
                                                 _hd245623246531_
                                                 _tl245622246533_
                                                 _e245627246536_
                                                 _hd245626246539_
                                                 _tl245625246541_
                                                 _e245630246544_
                                                 _hd245629246547_
                                                 _tl245628246549_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop245634246557_ _target245631246552_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx256238256239_))
                    (let ((_e245603246472_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx256238256239_))))
                      (let ((_tl245601246477_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245603246472_)))
                            (_hd245602246475_
                             (let ()
                               (declare (not safe))
                               (##car _e245603246472_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245601246477_))
                            (let ((_e245606246480_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245601246477_))))
                              (let ((_tl245604246485_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245606246480_)))
                                    (_hd245605246483_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245606246480_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd245605246483_))
                                    (let ((_e245609246488_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd245605246483_))))
                                      (let ((_tl245607246493_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e245609246488_)))
                                            (_hd245608246491_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e245609246488_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd245608246491_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd245608246491_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl245607246493_))
                                                    (let ((_e245612246496_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl245607246493_))))
                                                      (let ((_tl245610246501_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e245612246496_)))
                    (_hd245611246499_
                     (let () (declare (not safe)) (##car _e245612246496_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl245610246501_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl245604246485_))
                        (let ((_e245615246504_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl245604246485_))))
                          (let ((_tl245613246509_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e245615246504_)))
                                (_hd245614246507_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e245615246504_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd245614246507_))
                                (let ((_e245618246512_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd245614246507_))))
                                  (let ((_tl245616246517_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245618246512_)))
                                        (_hd245617246515_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245618246512_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd245617246515_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd245617246515_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl245616246517_))
                                                (let ((_e245621246520_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl245616246517_))))
                                                  (let ((_tl245619246525_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e245621246520_)))
                                                        (_hd245620246523_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e245621246520_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl245619246525_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl245613246509_))
                                                            (let ((_e245624246528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl245613246509_))))
                      (let ((_tl245622246533_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245624246528_)))
                            (_hd245623246531_
                             (let ()
                               (declare (not safe))
                               (##car _e245624246528_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd245623246531_))
                            (let ((_e245627246536_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd245623246531_))))
                              (let ((_tl245625246541_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245627246536_)))
                                    (_hd245626246539_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245627246536_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd245626246539_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd245626246539_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl245625246541_))
                                            (let ((_e245630246544_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl245625246541_))))
                                              (let ((_tl245628246549_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e245630246544_)))
                                                    (_hd245629246547_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e245630246544_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl245628246549_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl245622246533_))
                                                        (let ((___splice256242256243_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl245622246533_ '0))))
                  (let ((_tl245633246554_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice256242256243_ '1)))
                        (_target245631246552_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice256242256243_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl245633246554_))
                        (___match256343256344_
                         _e245603246472_
                         _hd245602246475_
                         _tl245601246477_
                         _e245606246480_
                         _hd245605246483_
                         _tl245604246485_
                         _e245609246488_
                         _hd245608246491_
                         _tl245607246493_
                         _e245612246496_
                         _hd245611246499_
                         _tl245610246501_
                         _e245615246504_
                         _hd245614246507_
                         _tl245613246509_
                         _e245618246512_
                         _hd245617246515_
                         _tl245616246517_
                         _e245621246520_
                         _hd245620246523_
                         _tl245619246525_
                         _e245624246528_
                         _hd245623246531_
                         _tl245622246533_
                         _e245627246536_
                         _hd245626246539_
                         _tl245625246541_
                         _e245630246544_
                         _hd245629246547_
                         _tl245628246549_
                         ___splice256242256243_
                         _target245631246552_
                         _tl245633246554_)
                        (___match256531256532_
                         _e245603246472_
                         _hd245602246475_
                         _tl245601246477_
                         _e245606246480_
                         _hd245605246483_
                         _tl245604246485_
                         _e245609246488_
                         _hd245608246491_
                         _tl245607246493_
                         _e245612246496_
                         _hd245611246499_
                         _tl245610246501_
                         _e245615246504_
                         _hd245614246507_
                         _tl245613246509_
                         _e245618246512_
                         _hd245617246515_
                         _tl245616246517_
                         _e245621246520_
                         _hd245620246523_
                         _tl245619246525_
                         _e245624246528_
                         _hd245623246531_
                         _tl245622246533_
                         _e245627246536_
                         _hd245626246539_
                         _tl245625246541_
                         _e245630246544_
                         _hd245629246547_
                         _tl245628246549_))))
                (___match256531256532_
                 _e245603246472_
                 _hd245602246475_
                 _tl245601246477_
                 _e245606246480_
                 _hd245605246483_
                 _tl245604246485_
                 _e245609246488_
                 _hd245608246491_
                 _tl245607246493_
                 _e245612246496_
                 _hd245611246499_
                 _tl245610246501_
                 _e245615246504_
                 _hd245614246507_
                 _tl245613246509_
                 _e245618246512_
                 _hd245617246515_
                 _tl245616246517_
                 _e245621246520_
                 _hd245620246523_
                 _tl245619246525_
                 _e245624246528_
                 _hd245623246531_
                 _tl245622246533_
                 _e245627246536_
                 _hd245626246539_
                 _tl245625246541_
                 _e245630246544_
                 _hd245629246547_
                 _tl245628246549_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match256735256736_
                                                     _e245603246472_
                                                     _hd245602246475_
                                                     _tl245601246477_
                                                     _e245606246480_
                                                     _hd245605246483_
                                                     _tl245604246485_
                                                     _e245609246488_
                                                     _hd245608246491_
                                                     _tl245607246493_
                                                     _e245612246496_
                                                     _hd245611246499_
                                                     _tl245610246501_
                                                     _e245615246504_
                                                     _hd245614246507_
                                                     _tl245613246509_
                                                     _e245618246512_
                                                     _hd245617246515_
                                                     _tl245616246517_
                                                     _e245621246520_
                                                     _hd245620246523_
                                                     _tl245619246525_
                                                     _e245624246528_
                                                     _hd245623246531_
                                                     _tl245622246533_))))
                                            (___match256735256736_
                                             _e245603246472_
                                             _hd245602246475_
                                             _tl245601246477_
                                             _e245606246480_
                                             _hd245605246483_
                                             _tl245604246485_
                                             _e245609246488_
                                             _hd245608246491_
                                             _tl245607246493_
                                             _e245612246496_
                                             _hd245611246499_
                                             _tl245610246501_
                                             _e245615246504_
                                             _hd245614246507_
                                             _tl245613246509_
                                             _e245618246512_
                                             _hd245617246515_
                                             _tl245616246517_
                                             _e245621246520_
                                             _hd245620246523_
                                             _tl245619246525_
                                             _e245624246528_
                                             _hd245623246531_
                                             _tl245622246533_))
                                        (___match256411256412_
                                         _e245603246472_
                                         _hd245602246475_
                                         _tl245601246477_
                                         _e245606246480_
                                         _hd245605246483_
                                         _tl245604246485_
                                         _e245609246488_
                                         _hd245608246491_
                                         _tl245607246493_
                                         _e245612246496_
                                         _hd245611246499_
                                         _tl245610246501_
                                         _e245615246504_
                                         _hd245614246507_
                                         _tl245613246509_
                                         _e245618246512_
                                         _hd245617246515_
                                         _tl245616246517_
                                         _e245621246520_
                                         _hd245620246523_
                                         _tl245619246525_
                                         _e245624246528_
                                         _hd245623246531_
                                         _tl245622246533_
                                         _e245627246536_
                                         _hd245626246539_
                                         _tl245625246541_))
                                    (___match256735256736_
                                     _e245603246472_
                                     _hd245602246475_
                                     _tl245601246477_
                                     _e245606246480_
                                     _hd245605246483_
                                     _tl245604246485_
                                     _e245609246488_
                                     _hd245608246491_
                                     _tl245607246493_
                                     _e245612246496_
                                     _hd245611246499_
                                     _tl245610246501_
                                     _e245615246504_
                                     _hd245614246507_
                                     _tl245613246509_
                                     _e245618246512_
                                     _hd245617246515_
                                     _tl245616246517_
                                     _e245621246520_
                                     _hd245620246523_
                                     _tl245619246525_
                                     _e245624246528_
                                     _hd245623246531_
                                     _tl245622246533_))))
                            (___match256735256736_
                             _e245603246472_
                             _hd245602246475_
                             _tl245601246477_
                             _e245606246480_
                             _hd245605246483_
                             _tl245604246485_
                             _e245609246488_
                             _hd245608246491_
                             _tl245607246493_
                             _e245612246496_
                             _hd245611246499_
                             _tl245610246501_
                             _e245615246504_
                             _hd245614246507_
                             _tl245613246509_
                             _e245618246512_
                             _hd245617246515_
                             _tl245616246517_
                             _e245621246520_
                             _hd245620246523_
                             _tl245619246525_
                             _e245624246528_
                             _hd245623246531_
                             _tl245622246533_))))
                    (___match256673256674_
                     _e245603246472_
                     _hd245602246475_
                     _tl245601246477_
                     _e245606246480_
                     _hd245605246483_
                     _tl245604246485_
                     _e245609246488_
                     _hd245608246491_
                     _tl245607246493_
                     _e245612246496_
                     _hd245611246499_
                     _tl245610246501_
                     _e245615246504_
                     _hd245614246507_
                     _tl245613246509_
                     _e245618246512_
                     _hd245617246515_
                     _tl245616246517_
                     _e245621246520_
                     _hd245620246523_
                     _tl245619246525_))
                (___kont256256256257_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont256256256257_))
                                            (___kont256256256257_))
                                        (___kont256256256257_))))
                                (___kont256256256257_))))
                        (___kont256256256257_))
                    (___kont256256256257_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont256256256257_))
                                                (___kont256256256257_))
                                            (___kont256256256257_))))
                                    (___kont256256256257_))))
                            (___kont256256256257_))))
                    (___kont256256256257_))))))))))
