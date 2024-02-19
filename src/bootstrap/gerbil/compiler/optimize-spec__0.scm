(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1708343718)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl133616_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp134744 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl133616_ __tmp134744))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133616_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133616_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133616_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133616_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl133616_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx133599_ . _args133601_)
        (let ((__tmp134746
               (lambda ()
                 (declare (not safe))
                 (if (null? _args133601_)
                     (gxc#compile-e__0 _stx133599_)
                     (let ((_arg1133606_ (car _args133601_))
                           (_rest133608_ (cdr _args133601_)))
                       (if (null? _rest133608_)
                           (gxc#compile-e__1 _stx133599_ _arg1133606_)
                           (let ((_arg2133611_ (car _rest133608_))
                                 (_rest133613_ (cdr _rest133608_)))
                             (if (null? _rest133613_)
                                 (gxc#compile-e__2
                                  _stx133599_
                                  _arg1133606_
                                  _arg2133611_)
                                 (apply gxc#compile-e
                                        _stx133599_
                                        _arg1133606_
                                        _arg2133611_
                                        _rest133613_))))))))
              (__tmp134745 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp134746
           gxc#current-compile-methods
           __tmp134745))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl133596_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp134747 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl133596_ __tmp134747))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133596_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133596_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133596_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133596_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133596_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133596_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133596_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133596_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133596_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133596_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133596_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133596_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133596_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133596_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133596_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133596_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl133596_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx133579_ . _args133581_)
        (let ((__tmp134749
               (lambda ()
                 (declare (not safe))
                 (if (null? _args133581_)
                     (gxc#compile-e__0 _stx133579_)
                     (let ((_arg1133586_ (car _args133581_))
                           (_rest133588_ (cdr _args133581_)))
                       (if (null? _rest133588_)
                           (gxc#compile-e__1 _stx133579_ _arg1133586_)
                           (let ((_arg2133591_ (car _rest133588_))
                                 (_rest133593_ (cdr _rest133588_)))
                             (if (null? _rest133593_)
                                 (gxc#compile-e__2
                                  _stx133579_
                                  _arg1133586_
                                  _arg2133591_)
                                 (apply gxc#compile-e
                                        _stx133579_
                                        _arg1133586_
                                        _arg2133591_
                                        _rest133593_))))))))
              (__tmp134748 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp134749
           gxc#current-compile-methods
           __tmp134748))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl133576_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp134750 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl133576_ __tmp134750))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133576_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133576_ '%#call gxc#subst-object-refs-call%))
           _tbl133576_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx133559_ . _args133561_)
        (let ((__tmp134752
               (lambda ()
                 (declare (not safe))
                 (if (null? _args133561_)
                     (gxc#compile-e__0 _stx133559_)
                     (let ((_arg1133566_ (car _args133561_))
                           (_rest133568_ (cdr _args133561_)))
                       (if (null? _rest133568_)
                           (gxc#compile-e__1 _stx133559_ _arg1133566_)
                           (let ((_arg2133571_ (car _rest133568_))
                                 (_rest133573_ (cdr _rest133568_)))
                             (if (null? _rest133573_)
                                 (gxc#compile-e__2
                                  _stx133559_
                                  _arg1133566_
                                  _arg2133571_)
                                 (apply gxc#compile-e
                                        _stx133559_
                                        _arg1133566_
                                        _arg2133571_
                                        _rest133573_))))))))
              (__tmp134751 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp134752
           gxc#current-compile-methods
           __tmp134751))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx130229_)
        (letrec ((_generate-method-bind130231_
                  (lambda (_$t133553_ _id133554_ _$id133555_)
                    (let ((_$tmp133557_
                           (let ((__tmp134753 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp134753))))
                      (let ((__tmp134801
                             (let ()
                               (declare (not safe))
                               (cons _$id133555_ '())))
                            (__tmp134754
                             (let ((__tmp134755
                                    (let ((__tmp134756
                                           (let ((__tmp134799
                                                  (let ((__tmp134800
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp134800)))
                                                 (__tmp134757
                                                  (let ((__tmp134758
                                                         (let ((__tmp134759
                                                                (let ((__tmp134760
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134761
                                      (let ((__tmp134762
                                             (let ((__tmp134782
                                                    (let ((__tmp134783
                                                           (let ((__tmp134798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp133557_ '())))
                         (__tmp134784
                          (let ((__tmp134785
                                 (let ((__tmp134786
                                        (let ((__tmp134796
                                               (let ((__tmp134797
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp134797)))
                                              (__tmp134787
                                               (let ((__tmp134794
                                                      (let ((__tmp134795
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t133553_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp134795)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134788
                                                      (let ((__tmp134792
                                                             (let ((__tmp134793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp134793)))
                    (__tmp134789
                     (let ((__tmp134790
                            (let ((__tmp134791
                                   (let ()
                                     (declare (not safe))
                                     (cons _id133554_ '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp134791))))
                       (declare (not safe))
                       (cons __tmp134790 '()))))
                (declare (not safe))
                (cons __tmp134792 __tmp134789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp134794
                                                       __tmp134788))))
                                          (declare (not safe))
                                          (cons __tmp134796 __tmp134787))))
                                   (declare (not safe))
                                   (cons '%#call __tmp134786))))
                            (declare (not safe))
                            (cons __tmp134785 '()))))
                     (declare (not safe))
                     (cons __tmp134798 __tmp134784))))
              (declare (not safe))
              (cons __tmp134783 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134763
                                                    (let ((__tmp134764
                                                           (let ((__tmp134765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134780
                                 (let ((__tmp134781
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp133557_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp134781)))
                                (__tmp134766
                                 (let ((__tmp134778
                                        (let ((__tmp134779
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp133557_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp134779)))
                                       (__tmp134767
                                        (let ((__tmp134768
                                               (let ((__tmp134769
                                                      (let ((__tmp134776
                                                             (let ((__tmp134777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp134777)))
                    (__tmp134770
                     (let ((__tmp134774
                            (let ((__tmp134775
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp134775)))
                           (__tmp134771
                            (let ((__tmp134772
                                   (let ((__tmp134773
                                          (let ()
                                            (declare (not safe))
                                            (cons _id133554_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp134773))))
                              (declare (not safe))
                              (cons __tmp134772 '()))))
                       (declare (not safe))
                       (cons __tmp134774 __tmp134771))))
                (declare (not safe))
                (cons __tmp134776 __tmp134770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp134769))))
                                          (declare (not safe))
                                          (cons __tmp134768 '()))))
                                   (declare (not safe))
                                   (cons __tmp134778 __tmp134767))))
                            (declare (not safe))
                            (cons __tmp134780 __tmp134766))))
                     (declare (not safe))
                     (cons '%#if __tmp134765))))
              (declare (not safe))
              (cons __tmp134764 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134782
                                                     __tmp134763))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp134762))))
                                 (declare (not safe))
                                 (cons __tmp134761 '()))))
                          (declare (not safe))
                          (cons '() __tmp134760))))
                   (declare (not safe))
                   (cons '%#lambda __tmp134759))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134758 '()))))
                                             (declare (not safe))
                                             (cons __tmp134799 __tmp134757))))
                                      (declare (not safe))
                                      (cons '%#call __tmp134756))))
                               (declare (not safe))
                               (cons __tmp134755 '()))))
                        (declare (not safe))
                        (cons __tmp134801 __tmp134754)))))
                 (_generate-slot-bind130232_
                  (lambda (_$t133547_ _id133548_ _$id133549_)
                    (let ((_$tmp133551_
                           (let ((__tmp134802 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp134802))))
                      (let ((__tmp134839
                             (let ()
                               (declare (not safe))
                               (cons _$id133549_ '())))
                            (__tmp134803
                             (let ((__tmp134804
                                    (let ((__tmp134805
                                           (let ((__tmp134825
                                                  (let ((__tmp134826
                                                         (let ((__tmp134838
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp133551_ '())))
                       (__tmp134827
                        (let ((__tmp134828
                               (let ((__tmp134829
                                      (let ((__tmp134836
                                             (let ((__tmp134837
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp134837)))
                                            (__tmp134830
                                             (let ((__tmp134834
                                                    (let ((__tmp134835
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t133547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp134835)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134831
                                                    (let ((__tmp134832
                                                           (let ((__tmp134833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id133548_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp134833))))
              (declare (not safe))
              (cons __tmp134832 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134834
                                                     __tmp134831))))
                                        (declare (not safe))
                                        (cons __tmp134836 __tmp134830))))
                                 (declare (not safe))
                                 (cons '%#call __tmp134829))))
                          (declare (not safe))
                          (cons __tmp134828 '()))))
                   (declare (not safe))
                   (cons __tmp134838 __tmp134827))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134826 '())))
                                                 (__tmp134806
                                                  (let ((__tmp134807
                                                         (let ((__tmp134808
                                                                (let ((__tmp134823
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134824
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp133551_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp134824)))
                              (__tmp134809
                               (let ((__tmp134821
                                      (let ((__tmp134822
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp133551_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp134822)))
                                     (__tmp134810
                                      (let ((__tmp134811
                                             (let ((__tmp134812
                                                    (let ((__tmp134819
                                                           (let ((__tmp134820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp134820)))
                  (__tmp134813
                   (let ((__tmp134817
                          (let ((__tmp134818
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp134818)))
                         (__tmp134814
                          (let ((__tmp134815
                                 (let ((__tmp134816
                                        (let ()
                                          (declare (not safe))
                                          (cons _id133548_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp134816))))
                            (declare (not safe))
                            (cons __tmp134815 '()))))
                     (declare (not safe))
                     (cons __tmp134817 __tmp134814))))
              (declare (not safe))
              (cons __tmp134819 __tmp134813))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp134812))))
                                        (declare (not safe))
                                        (cons __tmp134811 '()))))
                                 (declare (not safe))
                                 (cons __tmp134821 __tmp134810))))
                          (declare (not safe))
                          (cons __tmp134823 __tmp134809))))
                   (declare (not safe))
                   (cons '%#if __tmp134808))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134807 '()))))
                                             (declare (not safe))
                                             (cons __tmp134825 __tmp134806))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp134805))))
                               (declare (not safe))
                               (cons __tmp134804 '()))))
                        (declare (not safe))
                        (cons __tmp134839 __tmp134803)))))
                 (_generate-class-check-bind130233_
                  (lambda (_$t133543_ _class-type133544_ _$class-type133545_)
                    (let ((__tmp134851
                           (let ()
                             (declare (not safe))
                             (cons _$class-type133545_ '())))
                          (__tmp134840
                           (let ((__tmp134841
                                  (let ((__tmp134842
                                         (let ((__tmp134849
                                                (let ((__tmp134850
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp134850)))
                                               (__tmp134843
                                                (let ((__tmp134847
                                                       (let ((__tmp134848
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t133543_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp134848)))
              (__tmp134844
               (let ((__tmp134845
                      (let ((__tmp134846
                             (let ()
                               (declare (not safe))
                               (cons _class-type133544_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp134846))))
                 (declare (not safe))
                 (cons __tmp134845 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134847
                                                        __tmp134844))))
                                           (declare (not safe))
                                           (cons __tmp134849 __tmp134843))))
                                    (declare (not safe))
                                    (cons '%#call __tmp134842))))
                             (declare (not safe))
                             (cons __tmp134841 '()))))
                      (declare (not safe))
                      (cons __tmp134851 __tmp134840))))
                 (_generate-struct-check-bind130234_
                  (lambda (_$t133539_ _class-type133540_ _$class-type133541_)
                    (let ((__tmp134863
                           (let ()
                             (declare (not safe))
                             (cons _$class-type133541_ '())))
                          (__tmp134852
                           (let ((__tmp134853
                                  (let ((__tmp134854
                                         (let ((__tmp134861
                                                (let ((__tmp134862
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp134862)))
                                               (__tmp134855
                                                (let ((__tmp134859
                                                       (let ((__tmp134860
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t133539_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp134860)))
              (__tmp134856
               (let ((__tmp134857
                      (let ((__tmp134858
                             (let ()
                               (declare (not safe))
                               (cons _class-type133540_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp134858))))
                 (declare (not safe))
                 (cons __tmp134857 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134859
                                                        __tmp134856))))
                                           (declare (not safe))
                                           (cons __tmp134861 __tmp134855))))
                                    (declare (not safe))
                                    (cons '%#call __tmp134854))))
                             (declare (not safe))
                             (cons __tmp134853 '()))))
                      (declare (not safe))
                      (cons __tmp134863 __tmp134852))))
                 (_generate-specializer-impl130235_
                  (lambda (_$t133488_
                           _methods-bind133489_
                           _slots-bind133490_
                           _class-check-bind133491_
                           _struct-check-bind133492_
                           _specializer-impl133493_
                           _lifted-specializer-id133494_
                           _unchecked-specializer-impl133495_)
                    (let ((__tmp134864
                           (let ((__tmp134865
                                  (let ((__tmp134891
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t133488_ '())))
                                        (__tmp134866
                                         (let ((__tmp134867
                                                (let ((__tmp134868
                                                       (let ((__tmp134888
                                                              (let ((__tmp134889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134890
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind133492_
                                              _class-check-bind133491_))))
                               (declare (not safe))
                               (foldr1 cons __tmp134890 _slots-bind133490_))))
                        (declare (not safe))
                        (foldr1 cons __tmp134889 _methods-bind133489_)))
                     (__tmp134869
                      (let ((__tmp134870
                             (if (or _lifted-specializer-id133494_
                                     _unchecked-specializer-impl133495_)
                                 (let* ((_$specializer133500_
                                         (let ((__tmp134871
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp134871)))
                                        (__tmp134872
                                         (let ((__tmp134884
                                                (let ((__tmp134885
                                                       (let ((__tmp134887
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer133500_ '())))
                     (__tmp134886
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl133493_ '()))))
                 (declare (not safe))
                 (cons __tmp134887 __tmp134886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134885 '())))
                                               (__tmp134873
                                                (let ((__tmp134874
                                                       (let _recur133502_ ((_rest133504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind133492_)))
                 (let* ((_rest133505133513_ _rest133504_)
                        (_else133507133521_
                         (lambda ()
                           (if _lifted-specializer-id133494_
                               (let ((__tmp134875
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id133494_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp134875))
                               _unchecked-specializer-impl133495_)))
                        (_K133509133527_
                         (lambda (_rest133524_ _checkq133525_)
                           (let ((__tmp134876
                                  (let ((__tmp134882
                                         (let ((__tmp134883
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq133525_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp134883)))
                                        (__tmp134877
                                         (let ((__tmp134881
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur133502_
                                                   _rest133524_)))
                                               (__tmp134878
                                                (let ((__tmp134879
                                                       (let ((__tmp134880
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer133500_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp134880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134879 '()))))
                                           (declare (not safe))
                                           (cons __tmp134881 __tmp134878))))
                                    (declare (not safe))
                                    (cons __tmp134882 __tmp134877))))
                             (declare (not safe))
                             (cons '%#if __tmp134876)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest133505133513_))
                       (let ((_hd133510133530_
                              (let ()
                                (declare (not safe))
                                (##car _rest133505133513_)))
                             (_tl133511133532_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest133505133513_))))
                         (let* ((_checkq133535_ _hd133510133530_)
                                (_rest133537_ _tl133511133532_))
                           (declare (not safe))
                           (_K133509133527_ _rest133537_ _checkq133535_)))
                       (let () (declare (not safe)) (_else133507133521_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134874 '()))))
                                           (declare (not safe))
                                           (cons __tmp134884 __tmp134873))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp134872))
                                 _specializer-impl133493_)))
                        (declare (not safe))
                        (cons __tmp134870 '()))))
                 (declare (not safe))
                 (cons __tmp134888 __tmp134869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp134868))))
                                           (declare (not safe))
                                           (cons __tmp134867 '()))))
                                    (declare (not safe))
                                    (cons __tmp134891 __tmp134866))))
                             (declare (not safe))
                             (cons '%#lambda __tmp134865))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134864 _stx130229_))))
                 (_generate-specializer-def130236_
                  (lambda (_id133482_
                           _specializer-id133483_
                           _specializer-impl133484_
                           _lifted-specializer-id133485_
                           _unchecked-specializer-impl133486_)
                    (let ((__tmp134892
                           (let ((__tmp134893
                                  (let ((__tmp134894
                                         (let ((__tmp134914
                                                (let ((__tmp134915
                                                       (let ((__tmp134916
                                                              (let ((__tmp134918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id133483_ '())))
                            (__tmp134917
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl133484_ '()))))
                        (declare (not safe))
                        (cons __tmp134918 __tmp134917))))
                 (declare (not safe))
                 (cons '%#define-values __tmp134916))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp134915
                                                   _stx130229_)))
                                               (__tmp134895
                                                (let ((__tmp134902
                                                       (let ((__tmp134903
                                                              (let ((__tmp134904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134905
                                    (let ((__tmp134912
                                           (let ((__tmp134913
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp134913)))
                                          (__tmp134906
                                           (let ((__tmp134910
                                                  (let ((__tmp134911
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id133482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp134911)))
                                                 (__tmp134907
                                                  (let ((__tmp134908
                                                         (let ((__tmp134909
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id133483_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp134909))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134908 '()))))
                                             (declare (not safe))
                                             (cons __tmp134910 __tmp134907))))
                                      (declare (not safe))
                                      (cons __tmp134912 __tmp134906))))
                               (declare (not safe))
                               (cons '%#call __tmp134905))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp134904 _stx130229_))))
                 (declare (not safe))
                 (cons __tmp134903 '())))
              (__tmp134896
               (if _lifted-specializer-id133485_
                   (let ((__tmp134897
                          (let ((__tmp134898
                                 (let ((__tmp134899
                                        (let ((__tmp134901
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id133485_
                                                       '())))
                                              (__tmp134900
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl133486_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp134901 __tmp134900))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp134899))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp134898 _stx130229_))))
                     (declare (not safe))
                     (cons __tmp134897 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp134902
                                                          __tmp134896))))
                                           (declare (not safe))
                                           (cons __tmp134914 __tmp134895))))
                                    (declare (not safe))
                                    (cons _stx130229_ __tmp134894))))
                             (declare (not safe))
                             (cons '%#begin __tmp134893))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134892 _stx130229_)))))
          (let* ((___stx133705133706_ _stx130229_)
                 (_g130239130259_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx133705133706_)))))
            (let ((___kont133707133708_
                   (lambda (_L130303_ _L130304_)
                     (let ((_method-calls130323_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs130324_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_class-type-check130325_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-check130326_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-assert130327_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty130328_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?130330_
                                 (lambda ()
                                   (if (let ((__tmp134923
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls130323_))))
                                         (declare (not safe))
                                         (fxzero? __tmp134923))
                                       (if (let ((__tmp134922
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _slot-refs130324_))))
                                             (declare (not safe))
                                             (fxzero? __tmp134922))
                                           (if (let ((__tmp134921
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-length
                                                         _class-type-check130325_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp134921))
                                               (if (let ((__tmp134920
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (hash-length
                                                             _struct-type-check130326_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp134920))
                                                   (let ((__tmp134919
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (hash-length
                                                             _struct-type-assert130327_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp134919))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?130331_
                                 (lambda ()
                                   (let ((_$e133475_
                                          (let ((__tmp134924
                                                 (let ((__tmp134925
                                                        (let ()
                                                          (declare (not safe))
                                                          (hash-length
                                                           _struct-type-check130326_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp134925))))
                                            (declare (not safe))
                                            (not __tmp134924))))
                                     (if _$e133475_
                                         _$e133475_
                                         (let ((__tmp134926
                                                (let ((__tmp134927
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-length
                                                          _struct-type-assert130327_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp134927))))
                                           (declare (not safe))
                                           (not __tmp134926))))))
                                (_lift-unchecked-specializer?130332_
                                 (lambda ()
                                   (if (let ((__tmp134930
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls130323_))))
                                         (declare (not safe))
                                         (fxzero? __tmp134930))
                                       (if (let ((__tmp134929
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _slot-refs130324_))))
                                             (declare (not safe))
                                             (fxzero? __tmp134929))
                                           (let ((__tmp134928
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _class-type-check130325_))))
                                             (declare (not safe))
                                             (fxzero? __tmp134928))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L130303_))
                             (let* ((___stx133619133620_ _L130303_)
                                    (_g130845130863_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx133619133620_)))))
                               (let ((___kont133621133622_
                                      (lambda (_L130899_ _L130900_ _L130901_)
                                        (for-each
                                         (lambda (_g130916130918_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g130916130918_
                                              _L130901_
                                              _method-calls130323_
                                              _slot-refs130324_
                                              _class-type-check130325_
                                              _struct-type-check130326_
                                              _struct-type-assert130327_)))
                                         _L130899_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?130330_))
                                            _stx130229_
                                            (let* ((_specializer-id130927_
                                                    (let* ((_id130921_
                                                            (let ((__tmp135080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L130304_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp135080 '"::specialize")))
                   (_specializer-id130924_
                    (let ((__tmp135081
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx130229_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id130921_ __tmp135081))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id130924_))
              _specializer-id130924_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id130934_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?130332_))
                                                        (let* ((_id130929_
                                                                (let ((__tmp135082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L130304_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp135082
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id130931_
                        (let ((__tmp135083
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx130229_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id130929_ __tmp135083))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id130931_))
                  _lifted-specializer-id130931_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t130936_
                                                    (let ((__tmp135084
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135084)))
                                                   (_methods130938_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls130323_)))
                                                   (_$methods130942_
                                                    (map (lambda (_id130940_)
                                                           (let ((__tmp135085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id130940_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135085)))
                 _methods130938_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135086_
                                                    (for-each
                                                     (lambda (_g130943130946_
                                                              _g130944130948_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls130323_
                                                          _g130943130946_
                                                          _g130944130948_)))
                                                     _methods130938_
                                                     _$methods130942_))
                                                   (_methods-bind130959_
                                                    (map (lambda (_g130951130954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g130952130956_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind130231_
                      _$t130936_
                      _g130951130954_
                      _g130952130956_)))
                 _methods130938_
                 _$methods130942_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots130961_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs130324_)))
                                                   (_$slots130965_
                                                    (map (lambda (_id130963_)
                                                           (let ((__tmp135087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id130963_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135087)))
                 _slots130961_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135088_
                                                    (for-each
                                                     (lambda (_g130966130969_
                                                              _g130967130971_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs130324_
                                                          _g130966130969_
                                                          _g130967130971_)))
                                                     _slots130961_
                                                     _$slots130965_))
                                                   (_slots-bind130982_
                                                    (map (lambda (_g130974130977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g130975130979_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind130232_
                      _$t130936_
                      _g130974130977_
                      _g130975130979_)))
                 _slots130961_
                 _$slots130965_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check130984_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check130325_)))
                                                   (_$class-check130987_
                                                    (map (lambda (_g135089_)
                                                           (let ((__tmp135090
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp135090)))
                 _class-check130984_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135091_
                                                    (for-each
                                                     (lambda (_g130988130991_
                                                              _g130989130993_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _class-type-check130325_
                                                          _g130988130991_
                                                          _g130989130993_)))
                                                     _class-check130984_
                                                     _$class-check130987_))
                                                   (_class-check-bind131004_
                                                    (map (lambda (_g130996130999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g130997131001_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind130233_
                      _$t130936_
                      _g130996130999_
                      _g130997131001_)))
                 _class-check130984_
                 _$class-check130987_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all131006_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check130326_
                                                       _struct-type-assert130327_)))
                                                   (_struct-check131008_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all131006_)))
                                                   (_$struct-check131011_
                                                    (map (lambda (_g135092_)
                                                           (let ((__tmp135093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp135093)))
                 _struct-check131008_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135094_
                                                    (for-each
                                                     (lambda (_g131012131015_
                                                              _g131013131017_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _struct-check-all131006_
                                                          _g131012131015_
                                                          _g131013131017_)))
                                                     _struct-check131008_
                                                     _$struct-check131011_))
                                                   (_struct-check-bind131028_
                                                    (map (lambda (_g131020131023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131021131025_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind130234_
                      _$t130936_
                      _g131020131023_
                      _g131021131025_)))
                 _struct-check131008_
                 _$struct-check131011_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl131039_
                                                    (lambda (_struct-type-check1131030_
                                                             _struct-type-check2131031_)
                                                      (let* ((_specializer-body131037_
                                                              (map (lambda (_g131032131034_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g131032131034_
                                _L130901_
                                _$t130936_
                                _method-calls130323_
                                _slot-refs130324_
                                _class-type-check130325_
                                _struct-type-check1131030_
                                _struct-type-check2131031_)))
                           _L130899_))
                     (__tmp135095
                      (let ((__tmp135096
                             (let ((__tmp135097
                                    (let ()
                                      (declare (not safe))
                                      (cons _L130901_ _L130900_))))
                               (declare (not safe))
                               (cons __tmp135097 _specializer-body131037_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp135096))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp135095 _stx130229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl131041_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl131039_
                                                       _struct-check-all131006_
                                                       _empty130328_)))
                                                   (_unchecked-specializer-impl131043_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?130331_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl131039_
                                                           _empty130328_
                                                           _struct-check-all131006_))
                                                        '#f))
                                                   (_specializer-impl131045_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl130235_
                                                       _$t130936_
                                                       _methods-bind130959_
                                                       _slots-bind130982_
                                                       _class-check-bind131004_
                                                       _struct-check-bind131028_
                                                       _specializer-impl131041_
                                                       _lifted-specializer-id130934_
                                                       _unchecked-specializer-impl131043_))))
                                              (let ((__tmp135099
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L130304_)))
                                                    (__tmp135098
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id130927_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp135099
                                                 '" => "
                                                 __tmp135098))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def130236_
                                                 _L130304_
                                                 _specializer-id130927_
                                                 _specializer-impl131045_
                                                 _lifted-specializer-id130934_
                                                 _unchecked-specializer-impl131043_))))))
                                     (___kont133623133624_
                                      (lambda () _stx130229_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx133619133620_))
                                     (let ((_e130852130875_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx133619133620_))))
                                       (let ((_tl130850130880_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e130852130875_)))
                                             (_hd130851130878_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e130852130875_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl130850130880_))
                                             (let ((_e130855130883_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl130850130880_))))
                                               (let ((_tl130853130888_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e130855130883_)))
                                                     (_hd130854130886_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e130855130883_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd130854130886_))
                                                     (let ((_e130858130891_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd130854130886_))))
                                                       (let ((_tl130856130896_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e130858130891_)))
                     (_hd130857130894_
                      (let () (declare (not safe)) (##car _e130858130891_))))
                 (___kont133621133622_
                  _tl130853130888_
                  _tl130856130896_
                  _hd130857130894_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont133623133624_))))
                                             (___kont133623133624_))))
                                     (___kont133623133624_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L130303_))
                                 (let* ((_g131051131070_
                                         (lambda (_g131052131067_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g131052131067_))))
                                        (_g131050131421_
                                         (lambda (_g131052131073_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g131052131073_))
                                               (let ((_e131056131075_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g131052131073_))))
                                                 (let ((_hd131055131078_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e131056131075_)))
                                                       (_tl131054131080_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e131056131075_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl131054131080_))
                                                       (let ((_g135056_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl131054131080_ '0))))
                 (begin
                   (let ((_g135057_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g135056_)
                                (##vector-length _g135056_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g135057_ 2)))
                         (error "Context expects 2 values" _g135057_)))
                   (let ((_target131057131083_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135056_ 0)))
                         (_tl131059131085_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135056_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl131059131085_))
                         (letrec ((_loop131060131088_
                                   (lambda (_hd131058131091_
                                            _clause131064131093_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd131058131091_))
                                         (let ((_e131061131096_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd131058131091_))))
                                           (let ((_lp-hd131062131099_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131061131096_)))
                                                 (_lp-tl131063131101_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131061131096_))))
                                             (let ((__tmp135079
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd131062131099_
                                                            _clause131064131093_))))
                                               (declare (not safe))
                                               (_loop131060131088_
                                                _lp-tl131063131101_
                                                __tmp135079))))
                                         (let ((_clause131065131104_
                                                (reverse _clause131064131093_)))
                                           ((lambda (_L131107_)
                                              (for-each
                                               (lambda (_clause131120_)
                                                 (let* ((___stx133645133646_
                                                         _clause131120_)
                                                        (_g131123131138_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx133645133646_)))))
                                                   (let ((___kont133647133648_
                                                          (lambda (_L131166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L131167_
                           _L131168_)
                    (for-each
                     (lambda (_g131183131185_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g131183131185_
                          _L131168_
                          _method-calls130323_
                          _slot-refs130324_
                          _class-type-check130325_
                          _struct-type-check130326_
                          _struct-type-assert130327_)))
                     _L131166_)))
                 (___kont133649133650_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx133645133646_))
                                                         (let ((_e131130131150_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx133645133646_))))
                   (let ((_tl131128131155_
                          (let ()
                            (declare (not safe))
                            (##cdr _e131130131150_)))
                         (_hd131129131153_
                          (let ()
                            (declare (not safe))
                            (##car _e131130131150_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd131129131153_))
                         (let ((_e131133131158_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd131129131153_))))
                           (let ((_tl131131131163_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e131133131158_)))
                                 (_hd131132131161_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e131133131158_))))
                             (___kont133647133648_
                              _tl131128131155_
                              _tl131131131163_
                              _hd131132131161_)))
                         (___kont133649133650_))))
                 (___kont133649133650_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp135058
                                                      (lambda (_g131190131193_
                                                               _g131191131195_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g131190131193_
                                                                _g131191131195_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135058
                                                         '()
                                                         _L131107_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?130330_))
                                                  _stx130229_
                                                  (let* ((_specializer-id131204_
                                                          (let* ((_id131198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135059
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130304_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135059 '"::specialize")))
                         (_specializer-id131201_
                          (let ((__tmp135060
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130229_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id131198_ __tmp135060))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id131201_))
                    _specializer-id131201_))
                 (_lifted-specializer-id131211_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?130332_))
                      (let* ((_id131206_
                              (let ((__tmp135061
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L130304_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp135061
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id131208_
                              (let ((__tmp135062
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx130229_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id131206_
                                 __tmp135062))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id131208_))
                        _lifted-specializer-id131208_)
                      '#f))
                 (_$t131213_
                  (let ((__tmp135063 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135063)))
                 (_methods131215_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls130323_)))
                 (_$methods131219_
                  (map (lambda (_id131217_)
                         (let ((__tmp135064 (gensym _id131217_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135064)))
                       _methods131215_))
                 (_g135065_
                  (for-each
                   (lambda (_g131220131223_ _g131221131225_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls130323_
                        _g131220131223_
                        _g131221131225_)))
                   _methods131215_
                   _$methods131219_))
                 (_methods-bind131236_
                  (map (lambda (_g131228131231_ _g131229131233_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind130231_
                            _$t131213_
                            _g131228131231_
                            _g131229131233_)))
                       _methods131215_
                       _$methods131219_))
                 (_slots131238_
                  (let () (declare (not safe)) (hash-keys _slot-refs130324_)))
                 (_$slots131242_
                  (map (lambda (_id131240_)
                         (let ((__tmp135066 (gensym _id131240_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135066)))
                       _slots131238_))
                 (_g135067_
                  (for-each
                   (lambda (_g131243131246_ _g131244131248_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs130324_
                        _g131243131246_
                        _g131244131248_)))
                   _slots131238_
                   _$slots131242_))
                 (_slots-bind131259_
                  (map (lambda (_g131251131254_ _g131252131256_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind130232_
                            _$t131213_
                            _g131251131254_
                            _g131252131256_)))
                       _slots131238_
                       _$slots131242_))
                 (_class-check131261_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check130325_)))
                 (_$class-check131264_
                  (map (lambda (_g135068_)
                         (let ((__tmp135069 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp135069)))
                       _class-check131261_))
                 (_g135070_
                  (for-each
                   (lambda (_g131265131268_ _g131266131270_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _class-type-check130325_
                        _g131265131268_
                        _g131266131270_)))
                   _class-check131261_
                   _$class-check131264_))
                 (_class-check-bind131281_
                  (map (lambda (_g131273131276_ _g131274131278_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind130233_
                            _$t131213_
                            _g131273131276_
                            _g131274131278_)))
                       _class-check131261_
                       _$class-check131264_))
                 (_struct-check-all131283_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check130326_
                     _struct-type-assert130327_)))
                 (_struct-check131285_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all131283_)))
                 (_$struct-check131288_
                  (map (lambda (_g135071_)
                         (let ((__tmp135072 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp135072)))
                       _struct-check131285_))
                 (_g135073_
                  (for-each
                   (lambda (_g131289131292_ _g131290131294_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _struct-check-all131283_
                        _g131289131292_
                        _g131290131294_)))
                   _struct-check131285_
                   _$struct-check131288_))
                 (_struct-check-bind131305_
                  (map (lambda (_g131297131300_ _g131298131302_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind130234_
                            _$t131213_
                            _g131297131300_
                            _g131298131302_)))
                       _struct-check131285_
                       _$struct-check131288_))
                 (_make-specializer-impl131412_
                  (lambda (_struct-type-check1131307_
                           _struct-type-check2131308_)
                    (let* ((_specializer-clauses131410_
                            (map (lambda (_clause131310_)
                                   (let* ((___stx133665133666_ _clause131310_)
                                          (_g131313131328_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx133665133666_)))))
                                     (let ((___kont133667133668_
                                            (lambda (_L131356_
                                                     _L131357_
                                                     _L131358_)
                                              (let* ((_body131398_
                                                      (map (lambda (_g131393131395_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g131393131395_
                        _L131358_
                        _$t131213_
                        _method-calls130323_
                        _slot-refs130324_
                        _class-type-check130325_
                        _struct-type-check1131307_
                        _struct-type-check2131308_)))
                   _L131356_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp135074
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L131358_
                                                              _L131357_))))
                                                (declare (not safe))
                                                (cons __tmp135074
                                                      _body131398_))))
                                           (___kont133669133670_
                                            (lambda () _clause131310_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx133665133666_))
                                           (let ((_e131320131340_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx133665133666_))))
                                             (let ((_tl131318131345_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e131320131340_)))
                                                   (_hd131319131343_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e131320131340_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd131319131343_))
                                                   (let ((_e131323131348_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd131319131343_))))
                                                     (let ((_tl131321131353_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e131323131348_)))
                                                           (_hd131322131351_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e131323131348_))))
                                                       (___kont133667133668_
                                                        _tl131318131345_
                                                        _tl131321131353_
                                                        _hd131322131351_)))
                                                   (___kont133669133670_))))
                                           (___kont133669133670_)))))
                                 (let ((__tmp135075
                                        (lambda (_g131402131405_
                                                 _g131403131407_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g131402131405_
                                                  _g131403131407_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135075 '() _L131107_))))
                           (__tmp135076
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses131410_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135076 _stx130229_))))
                 (_specializer-impl131414_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl131412_
                     _struct-check-all131283_
                     _empty130328_)))
                 (_unchecked-specializer-impl131416_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?130331_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl131412_
                         _empty130328_
                         _struct-check-all131283_))
                      '#f))
                 (_specializer-impl131418_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl130235_
                     _$t131213_
                     _methods-bind131236_
                     _slots-bind131259_
                     _class-check-bind131281_
                     _struct-check-bind131305_
                     _specializer-impl131414_
                     _lifted-specializer-id131211_
                     _unchecked-specializer-impl131416_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135078
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130304_)))
                                                          (__tmp135077
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id131204_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135078
                                                       '" => "
                                                       __tmp135077))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def130236_
                                                       _L130304_
                                                       _specializer-id131204_
                                                       _specializer-impl131418_
                                                       _lifted-specializer-id131211_
                                                       _unchecked-specializer-impl131416_)))))
                                            _clause131065131104_))))))
                           (let ()
                             (declare (not safe))
                             (_loop131060131088_ _target131057131083_ '())))
                         (let ()
                           (declare (not safe))
                           (_g131051131070_ _g131052131073_))))))
               (let ()
                 (declare (not safe))
                 (_g131051131070_ _g131052131073_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131051131070_
                                                  _g131052131073_))))))
                                   (declare (not safe))
                                   (_g131050131421_ _L130303_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L130303_))
                                     (let* ((_g131424131454_
                                             (lambda (_g131425131451_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g131425131451_))))
                                            (_g131423132142_
                                             (lambda (_g131425131457_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g131425131457_))
                                                   (let ((_e131431131459_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g131425131457_))))
                                                     (let ((_hd131430131462_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e131431131459_)))
                                                           (_tl131429131464_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e131431131459_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl131429131464_))
                                                           (let ((_e131434131467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl131429131464_))))
                     (let ((_hd131433131470_
                            (let ()
                              (declare (not safe))
                              (##car _e131434131467_)))
                           (_tl131432131472_
                            (let ()
                              (declare (not safe))
                              (##cdr _e131434131467_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd131433131470_))
                           (let ((_e131437131475_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd131433131470_))))
                             (let ((_hd131436131478_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e131437131475_)))
                                   (_tl131435131480_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e131437131475_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd131436131478_))
                                   (let ((_e131440131483_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd131436131478_))))
                                     (let ((_hd131439131486_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e131440131483_)))
                                           (_tl131438131488_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e131440131483_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd131439131486_))
                                           (let ((_e131443131491_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd131439131486_))))
                                             (let ((_hd131442131494_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e131443131491_)))
                                                   (_tl131441131496_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e131443131491_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl131441131496_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl131438131488_))
                                                       (let ((_e131446131499_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl131438131488_))))
                 (let ((_hd131445131502_
                        (let () (declare (not safe)) (##car _e131446131499_)))
                       (_tl131444131504_
                        (let () (declare (not safe)) (##cdr _e131446131499_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl131444131504_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl131435131480_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl131432131472_))
                               (let ((_e131449131507_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl131432131472_))))
                                 (let ((_hd131448131510_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e131449131507_)))
                                       (_tl131447131512_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e131449131507_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl131447131512_))
                                       ((lambda (_L131515_ _L131516_ _L131517_)
                                          (let* ((_g131540131558_
                                                  (lambda (_g131541131555_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g131541131555_))))
                                                 (_g131539131609_
                                                  (lambda (_g131541131561_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g131541131561_))
                                                        (let ((_e131547131563_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g131541131561_))))
                  (let ((_hd131546131566_
                         (let () (declare (not safe)) (##car _e131547131563_)))
                        (_tl131545131568_
                         (let ()
                           (declare (not safe))
                           (##cdr _e131547131563_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl131545131568_))
                        (let ((_e131550131571_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl131545131568_))))
                          (let ((_hd131549131574_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131550131571_)))
                                (_tl131548131576_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131550131571_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd131549131574_))
                                (let ((_e131553131579_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd131549131574_))))
                                  (let ((_hd131552131582_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131553131579_)))
                                        (_tl131551131584_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131553131579_))))
                                    ((lambda (_L131587_ _L131588_ _L131589_)
                                       (for-each
                                        (lambda (_g131604131606_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g131604131606_
                                             _L131589_
                                             _method-calls130323_
                                             _slot-refs130324_
                                             _class-type-check130325_
                                             _struct-type-check130326_
                                             _struct-type-assert130327_)))
                                        _L131587_))
                                     _tl131548131576_
                                     _tl131551131584_
                                     _hd131552131582_)))
                                (let ()
                                  (declare (not safe))
                                  (_g131540131558_ _g131541131561_)))))
                        (let ()
                          (declare (not safe))
                          (_g131540131558_ _g131541131561_)))))
                (let ()
                  (declare (not safe))
                  (_g131540131558_ _g131541131561_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g131539131609_ _L131516_))
                                          (let* ((_g131612131631_
                                                  (lambda (_g131613131628_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g131613131628_))))
                                                 (_g131611131750_
                                                  (lambda (_g131613131634_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g131613131634_))
                                                        (let ((_e131617131636_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g131613131634_))))
                  (let ((_hd131616131639_
                         (let () (declare (not safe)) (##car _e131617131636_)))
                        (_tl131615131641_
                         (let ()
                           (declare (not safe))
                           (##cdr _e131617131636_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl131615131641_))
                        (let ((_g135019_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl131615131641_
                                  '0))))
                          (begin
                            (let ((_g135020_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g135019_)
                                         (##vector-length _g135019_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g135020_ 2)))
                                  (error "Context expects 2 values"
                                         _g135020_)))
                            (let ((_target131618131644_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135019_ 0)))
                                  (_tl131620131646_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135019_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl131620131646_))
                                  (letrec ((_loop131621131649_
                                            (lambda (_hd131619131652_
                                                     _clause131625131654_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd131619131652_))
                                                  (let ((_e131622131657_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd131619131652_))))
                                                    (let ((_lp-hd131623131660_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e131622131657_)))
                                                          (_lp-tl131624131662_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e131622131657_))))
                                                      (let ((__tmp135022
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd131623131660_ _clause131625131654_))))
                (declare (not safe))
                (_loop131621131649_ _lp-tl131624131662_ __tmp135022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause131626131665_
                                                         (reverse _clause131625131654_)))
                                                    ((lambda (_L131668_)
                                                       (for-each
                                                        (lambda (_clause131681_)
                                                          (let* ((_g131683131698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g131684131695_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g131684131695_))))
                         (_g131682131740_
                          (lambda (_g131684131701_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g131684131701_))
                                (let ((_e131690131703_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g131684131701_))))
                                  (let ((_hd131689131706_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131690131703_)))
                                        (_tl131688131708_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131690131703_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd131689131706_))
                                        (let ((_e131693131711_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd131689131706_))))
                                          (let ((_hd131692131714_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131693131711_)))
                                                (_tl131691131716_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131693131711_))))
                                            ((lambda (_L131719_
                                                      _L131720_
                                                      _L131721_)
                                               (for-each
                                                (lambda (_g131735131737_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g131735131737_
                                                     _L131721_
                                                     _method-calls130323_
                                                     _slot-refs130324_
                                                     _class-type-check130325_
                                                     _struct-type-check130326_
                                                     _struct-type-assert130327_)))
                                                _L131719_))
                                             _tl131688131708_
                                             _tl131691131716_
                                             _hd131692131714_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g131683131698_ _g131684131701_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g131683131698_ _g131684131701_))))))
                    (declare (not safe))
                    (_g131682131740_ _clause131681_)))
                (let ((__tmp135021
                       (lambda (_g131742131745_ _g131743131747_)
                         (let ()
                           (declare (not safe))
                           (cons _g131742131745_ _g131743131747_)))))
                  (declare (not safe))
                  (foldr1 __tmp135021 '() _L131668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause131626131665_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop131621131649_
                                       _target131618131644_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g131612131631_ _g131613131634_))))))
                        (let ()
                          (declare (not safe))
                          (_g131612131631_ _g131613131634_)))))
                (let ()
                  (declare (not safe))
                  (_g131612131631_ _g131613131634_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g131611131750_ _L131515_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?130330_))
                                              _stx130229_
                                              (let* ((_specializer-id131759_
                                                      (let* ((_id131753_
                                                              (let ((__tmp135023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L130304_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp135023 '"::specialize")))
                     (_specializer-id131756_
                      (let ((__tmp135024
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx130229_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id131753_ __tmp135024))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id131756_))
                _specializer-id131756_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id131766_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?130332_))
                                                          (let* ((_id131761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135025
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130304_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp135025
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id131763_
                          (let ((__tmp135026
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130229_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id131761_ __tmp135026))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id131763_))
                    _lifted-specializer-id131763_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t131768_
                                                      (let ((__tmp135027
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135027)))
                                                     (_methods131770_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls130323_)))
                                                     (_$methods131774_
                                                      (map (lambda (_id131772_)
                                                             (let ((__tmp135028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id131772_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135028)))
                   _methods131770_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135029_
                                                      (for-each
                                                       (lambda (_g131775131778_
                                                                _g131776131780_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls130323_
                                                            _g131775131778_
                                                            _g131776131780_)))
                                                       _methods131770_
                                                       _$methods131774_))
                                                     (_methods-bind131791_
                                                      (map (lambda (_g131783131786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131784131788_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind130231_
                        _$t131768_
                        _g131783131786_
                        _g131784131788_)))
                   _methods131770_
                   _$methods131774_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots131793_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs130324_)))
                                                     (_$slots131797_
                                                      (map (lambda (_id131795_)
                                                             (let ((__tmp135030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id131795_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135030)))
                   _slots131793_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135031_
                                                      (for-each
                                                       (lambda (_g131798131801_
                                                                _g131799131803_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs130324_
                                                            _g131798131801_
                                                            _g131799131803_)))
                                                       _slots131793_
                                                       _$slots131797_))
                                                     (_slots-bind131814_
                                                      (map (lambda (_g131806131809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131807131811_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind130232_
                        _$t131768_
                        _g131806131809_
                        _g131807131811_)))
                   _slots131793_
                   _$slots131797_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check131816_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check130325_)))
                                                     (_$class-check131819_
                                                      (map (lambda (_g135032_)
                                                             (let ((__tmp135033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp135033)))
                   _class-check131816_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135034_
                                                      (for-each
                                                       (lambda (_g131820131823_
                                                                _g131821131825_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _class-type-check130325_
                                                            _g131820131823_
                                                            _g131821131825_)))
                                                       _class-check131816_
                                                       _$class-check131819_))
                                                     (_class-check-bind131836_
                                                      (map (lambda (_g131828131831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131829131833_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind130233_
                        _$t131768_
                        _g131828131831_
                        _g131829131833_)))
                   _class-check131816_
                   _$class-check131819_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all131838_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check130326_
                                                         _struct-type-assert130327_)))
                                                     (_struct-check131840_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all131838_)))
                                                     (_$struct-check131843_
                                                      (map (lambda (_g135035_)
                                                             (let ((__tmp135036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp135036)))
                   _struct-check131840_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135037_
                                                      (for-each
                                                       (lambda (_g131844131847_
                                                                _g131845131849_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _struct-check-all131838_
                                                            _g131844131847_
                                                            _g131845131849_)))
                                                       _struct-check131840_
                                                       _$struct-check131843_))
                                                     (_struct-check-bind131860_
                                                      (map (lambda (_g131852131855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131853131857_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind130234_
                        _$t131768_
                        _g131852131855_
                        _g131853131857_)))
                   _struct-check131840_
                   _$struct-check131843_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr131959_
                                                      (lambda (_struct-type-check1131862_
                                                               _struct-type-check2131863_)
                                                        (let* ((_g131865131883_
                                                                (lambda (_g131866131880_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g131866131880_))))
                       (_g131864131956_
                        (lambda (_g131866131886_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g131866131886_))
                              (let ((_e131872131888_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g131866131886_))))
                                (let ((_hd131871131891_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131872131888_)))
                                      (_tl131870131893_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131872131888_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl131870131893_))
                                      (let ((_e131875131896_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl131870131893_))))
                                        (let ((_hd131874131899_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e131875131896_)))
                                              (_tl131873131901_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e131875131896_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd131874131899_))
                                              (let ((_e131878131904_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd131874131899_))))
                                                (let ((_hd131877131907_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e131878131904_)))
                                                      (_tl131876131909_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e131878131904_))))
                                                  ((lambda (_L131912_
                                                            _L131913_
                                                            _L131914_)
                                                     (let* ((_body131954_
                                                             (map (lambda (_g131949131951_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g131949131951_
                               _L131914_
                               _$t131768_
                               _method-calls130323_
                               _slot-refs130324_
                               _class-type-check130325_
                               _struct-type-check1131862_
                               _struct-type-check2131863_)))
                          _L131912_))
                    (__tmp135038
                     (let ((__tmp135039
                            (let ((__tmp135040
                                   (let ()
                                     (declare (not safe))
                                     (cons _L131914_ _L131913_))))
                              (declare (not safe))
                              (cons __tmp135040 _body131954_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp135039))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp135038 _L131516_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl131873131901_
                                                   _tl131876131909_
                                                   _hd131877131907_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g131865131883_
                                                 _g131866131886_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g131865131883_ _g131866131886_)))))
                              (let ()
                                (declare (not safe))
                                (_g131865131883_ _g131866131886_))))))
                  (declare (not safe))
                  (_g131864131956_ _L131516_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr132120_
                                                      (lambda (_struct-type-check1131961_
                                                               _struct-type-check2131962_)
                                                        (let* ((_g131964131983_
                                                                (lambda (_g131965131980_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g131965131980_))))
                       (_g131963132117_
                        (lambda (_g131965131986_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g131965131986_))
                              (let ((_e131969131988_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g131965131986_))))
                                (let ((_hd131968131991_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131969131988_)))
                                      (_tl131967131993_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131969131988_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl131967131993_))
                                      (let ((_g135041_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl131967131993_
                                                '0))))
                                        (begin
                                          (let ((_g135042_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g135041_)
                                                       (##vector-length
                                                        _g135041_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g135042_ 2)))
                                                (error "Context expects 2 values"
                                                       _g135042_)))
                                          (let ((_target131970131996_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g135041_ 0)))
                                                (_tl131972131998_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g135041_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl131972131998_))
                                                (letrec ((_loop131973132001_
                                                          (lambda (_hd131971132004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause131977132006_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd131971132004_))
                        (let ((_e131974132009_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd131971132004_))))
                          (let ((_lp-hd131975132012_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131974132009_)))
                                (_lp-tl131976132014_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131974132009_))))
                            (let ((__tmp135046
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd131975132012_
                                           _clause131977132006_))))
                              (declare (not safe))
                              (_loop131973132001_
                               _lp-tl131976132014_
                               __tmp135046))))
                        (let ((_clause131978132017_
                               (reverse _clause131977132006_)))
                          ((lambda (_L132020_)
                             (let* ((_clauses132115_
                                     (map (lambda (_clause132035_)
                                            (let* ((___stx133685133686_
                                                    _clause132035_)
                                                   (_g132038132053_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx133685133686_)))))
                                              (let ((___kont133687133688_
                                                     (lambda (_L132081_
                                                              _L132082_
                                                              _L132083_)
                                                       (let* ((_body132103_
                                                               (map (lambda (_g132098132100_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g132098132100_
                                 _L132083_
                                 _$t131768_
                                 _method-calls130323_
                                 _slot-refs130324_
                                 _class-type-check130325_
                                 _struct-type-check1131961_
                                 _struct-type-check2131962_)))
                            _L132081_))
                      (__tmp135043
                       (let ()
                         (declare (not safe))
                         (cons _L132083_ _L132082_))))
                 (declare (not safe))
                 (cons __tmp135043 _body132103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont133689133690_
                                                     (lambda ()
                                                       _clause132035_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx133685133686_))
                                                    (let ((_e132045132065_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx133685133686_))))
                                                      (let ((_tl132043132070_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e132045132065_)))
                    (_hd132044132068_
                     (let () (declare (not safe)) (##car _e132045132065_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd132044132068_))
                    (let ((_e132048132073_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd132044132068_))))
                      (let ((_tl132046132078_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132048132073_)))
                            (_hd132047132076_
                             (let ()
                               (declare (not safe))
                               (##car _e132048132073_))))
                        (___kont133687133688_
                         _tl132043132070_
                         _tl132046132078_
                         _hd132047132076_)))
                    (___kont133689133690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont133689133690_)))))
                                          (let ((__tmp135044
                                                 (lambda (_g132107132110_
                                                          _g132108132112_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g132107132110_
                                                           _g132108132112_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp135044
                                                    '()
                                                    _L132020_))))
                                    (__tmp135045
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses132115_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp135045 _L131515_)))
                           _clause131978132017_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop131973132001_
                                                     _target131970131996_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g131964131983_
                                                   _g131965131986_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g131964131983_ _g131965131986_)))))
                              (let ()
                                (declare (not safe))
                                (_g131964131983_ _g131965131986_))))))
                  (declare (not safe))
                  (_g131963132117_ _L131515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl132125_
                                                      (lambda (_specializer-lambda-expr132122_
                                                               _specializer-case-lambda-expr132123_)
                                                        (let ((__tmp135047
                                                               (let ((__tmp135048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp135050
                                     (let ((__tmp135051
                                            (let ((__tmp135053
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L131517_ '())))
                                                  (__tmp135052
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr132122_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp135053 __tmp135052))))
                                       (declare (not safe))
                                       (cons __tmp135051 '())))
                                    (__tmp135049
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr132123_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp135050 __tmp135049))))
                         (declare (not safe))
                         (cons '%#let-values __tmp135048))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp135047 _stx130229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr132127_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr131959_
                                                         _struct-check-all131838_
                                                         _empty130328_)))
                                                     (_specializer-case-lambda-expr132129_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr132120_
                                                         _struct-check-all131838_
                                                         _empty130328_)))
                                                     (_specializer-impl132131_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl132125_
                                                         _specializer-lambda-expr132127_
                                                         _specializer-case-lambda-expr132129_)))
                                                     (_unchecked-specializer-lambda-expr132133_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?130331_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr131959_
                                                             _empty130328_
                                                             _struct-check-all131838_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr132135_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?130331_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr132120_
                                                             _empty130328_
                                                             _struct-check-all131838_))
                                                          '#f))
                                                     (_unchecked-specializer-impl132137_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?130331_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl132125_
                                                             _unchecked-specializer-lambda-expr132133_
                                                             _unchecked-specializer-case-lambda-expr132135_))
                                                          '#f))
                                                     (_specializer-impl132139_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl130235_
                                                         _$t131768_
                                                         _methods-bind131791_
                                                         _slots-bind131814_
                                                         _class-check-bind131836_
                                                         _struct-check-bind131860_
                                                         _specializer-impl132131_
                                                         _lifted-specializer-id131766_
                                                         _unchecked-specializer-impl132137_))))
                                                (let ((__tmp135055
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L130304_)))
                                                      (__tmp135054
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id131759_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp135055
                                                   '" => "
                                                   __tmp135054))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def130236_
                                                   _L130304_
                                                   _specializer-id131759_
                                                   _specializer-impl132139_
                                                   _lifted-specializer-id131766_
                                                   _unchecked-specializer-impl132137_)))))
                                        _hd131448131510_
                                        _hd131445131502_
                                        _hd131442131494_)
                                       (let ()
                                         (declare (not safe))
                                         (_g131424131454_ _g131425131457_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g131424131454_ _g131425131457_)))
                           (let ()
                             (declare (not safe))
                             (_g131424131454_ _g131425131457_)))
                       (let ()
                         (declare (not safe))
                         (_g131424131454_ _g131425131457_)))))
               (let () (declare (not safe)) (_g131424131454_ _g131425131457_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131424131454_
                                                      _g131425131457_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g131424131454_
                                              _g131425131457_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g131424131454_ _g131425131457_)))))
                           (let ()
                             (declare (not safe))
                             (_g131424131454_ _g131425131457_)))))
                   (let ()
                     (declare (not safe))
                     (_g131424131454_ _g131425131457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131424131454_
                                                      _g131425131457_))))))
                                       (declare (not safe))
                                       (_g131423132142_ _L130303_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L130303_))
                                         (let* ((_g132145132198_
                                                 (lambda (_g132146132195_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g132146132195_))))
                                                (_g132144133470_
                                                 (lambda (_g132146132201_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g132146132201_))
                                                       (let ((_e132154132203_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g132146132201_))))
                 (let ((_hd132153132206_
                        (let () (declare (not safe)) (##car _e132154132203_)))
                       (_tl132152132208_
                        (let () (declare (not safe)) (##cdr _e132154132203_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd132153132206_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd132153132206_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132152132208_))
                               (let ((_e132157132211_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132152132208_))))
                                 (let ((_hd132156132214_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132157132211_)))
                                       (_tl132155132216_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132157132211_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd132156132214_))
                                       (let ((_e132160132219_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd132156132214_))))
                                         (let ((_hd132159132222_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e132160132219_)))
                                               (_tl132158132224_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e132160132219_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd132159132222_))
                                               (let ((_e132163132227_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd132159132222_))))
                                                 (let ((_hd132162132230_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132163132227_)))
                                                       (_tl132161132232_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132163132227_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd132162132230_))
                                                       (let ((_e132166132235_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd132162132230_))))
                 (let ((_hd132165132238_
                        (let () (declare (not safe)) (##car _e132166132235_)))
                       (_tl132164132240_
                        (let () (declare (not safe)) (##cdr _e132166132235_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132164132240_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl132161132232_))
                           (let ((_e132169132243_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl132161132232_))))
                             (let ((_hd132168132246_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132169132243_)))
                                   (_tl132167132248_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132169132243_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132168132246_))
                                   (let ((_e132172132251_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132168132246_))))
                                     (let ((_hd132171132254_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132172132251_)))
                                           (_tl132170132256_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132172132251_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd132171132254_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd132171132254_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl132170132256_))
                                                   (let ((_e132175132259_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl132170132256_))))
                                                     (let ((_hd132174132262_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132175132259_)))
                                                           (_tl132173132264_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132175132259_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd132174132262_))
                                                           (let ((_e132178132267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd132174132262_))))
                     (let ((_hd132177132270_
                            (let ()
                              (declare (not safe))
                              (##car _e132178132267_)))
                           (_tl132176132272_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132178132267_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132177132270_))
                           (let ((_e132181132275_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132177132270_))))
                             (let ((_hd132180132278_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132181132275_)))
                                   (_tl132179132280_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132181132275_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132180132278_))
                                   (let ((_e132184132283_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132180132278_))))
                                     (let ((_hd132183132286_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132184132283_)))
                                           (_tl132182132288_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132184132283_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl132182132288_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl132179132280_))
                                               (let ((_e132187132291_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl132179132280_))))
                                                 (let ((_hd132186132294_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132187132291_)))
                                                       (_tl132185132296_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132187132291_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl132185132296_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl132176132272_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl132173132264_))
                       (let ((_e132190132299_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl132173132264_))))
                         (let ((_hd132189132302_
                                (let ()
                                  (declare (not safe))
                                  (##car _e132190132299_)))
                               (_tl132188132304_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e132190132299_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl132188132304_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl132167132248_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132158132224_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl132155132216_))
                                           (let ((_e132193132307_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl132155132216_))))
                                             (let ((_hd132192132310_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132193132307_)))
                                                   (_tl132191132312_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132193132307_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132191132312_))
                                                   ((lambda (_L132315_
                                                             _L132316_
                                                             _L132317_
                                                             _L132318_
                                                             _L132319_)
                                                      (let* ((_g132358132420_
                                                              (lambda (_g132359132417_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132359132417_))))
                     (_g132357133467_
                      (lambda (_g132359132423_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132359132423_))
                            (let ((_e132367132425_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132359132423_))))
                              (let ((_hd132366132428_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132367132425_)))
                                    (_tl132365132430_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132367132425_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd132366132428_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd132366132428_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl132365132430_))
                                            (let ((_e132370132433_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl132365132430_))))
                                              (let ((_hd132369132436_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132370132433_)))
                                                    (_tl132368132438_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132370132433_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl132368132438_))
                                                    (let ((_e132373132441_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl132368132438_))))
                                                      (let ((_hd132372132444_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e132373132441_)))
                    (_tl132371132446_
                     (let () (declare (not safe)) (##cdr _e132373132441_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd132372132444_))
                    (let ((_e132376132449_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd132372132444_))))
                      (let ((_hd132375132452_
                             (let ()
                               (declare (not safe))
                               (##car _e132376132449_)))
                            (_tl132374132454_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132376132449_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd132375132452_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd132375132452_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl132374132454_))
                                    (let ((_e132379132457_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl132374132454_))))
                                      (let ((_hd132378132460_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132379132457_)))
                                            (_tl132377132462_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132379132457_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd132378132460_))
                                            (let ((_e132382132465_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd132378132460_))))
                                              (let ((_hd132381132468_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132382132465_)))
                                                    (_tl132380132470_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132382132465_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd132381132468_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd132381132468_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl132380132470_))
                                                            (let ((_e132385132473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl132380132470_))))
                      (let ((_hd132384132476_
                             (let ()
                               (declare (not safe))
                               (##car _e132385132473_)))
                            (_tl132383132478_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132385132473_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl132383132478_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl132377132462_))
                                (let ((_e132388132481_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl132377132462_))))
                                  (let ((_hd132387132484_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132388132481_)))
                                        (_tl132386132486_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132388132481_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd132387132484_))
                                        (let ((_e132391132489_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd132387132484_))))
                                          (let ((_hd132390132492_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132391132489_)))
                                                (_tl132389132494_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132391132489_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd132390132492_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd132390132492_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl132389132494_))
                                                        (let ((_e132394132497_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl132389132494_))))
                  (let ((_hd132393132500_
                         (let () (declare (not safe)) (##car _e132394132497_)))
                        (_tl132392132502_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132394132497_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl132392132502_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl132386132486_))
                            (let ((_e132397132505_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl132386132486_))))
                              (let ((_hd132396132508_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132397132505_)))
                                    (_tl132395132510_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132397132505_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd132396132508_))
                                    (let ((_e132400132513_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd132396132508_))))
                                      (let ((_hd132399132516_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132400132513_)))
                                            (_tl132398132518_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132400132513_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd132399132516_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd132399132516_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl132398132518_))
                                                    (let ((_e132403132521_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl132398132518_))))
                                                      (let ((_hd132402132524_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e132403132521_)))
                    (_tl132401132526_
                     (let () (declare (not safe)) (##cdr _e132403132521_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl132401132526_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl132395132510_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl132395132510_))
                                  '1)
                            (let ((_g134931_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl132395132510_
                                      '1))))
                              (begin
                                (let ((_g134932_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g134931_)
                                             (##vector-length _g134931_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g134932_ 2)))
                                      (error "Context expects 2 values"
                                             _g134932_)))
                                (let ((_target132404132529_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134931_ 0)))
                                      (_tl132406132531_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134931_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl132406132531_))
                                      (let ((_e132415132534_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl132406132531_))))
                                        (let ((_hd132414132537_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132415132534_)))
                                              (_tl132413132539_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132415132534_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132413132539_))
                                              (letrec ((_loop132407132542_
                                                        (lambda (_hd132405132545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref132411132547_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd132405132545_))
                      (let ((_e132408132550_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd132405132545_))))
                        (let ((_lp-hd132409132553_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132408132550_)))
                              (_lp-tl132410132555_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132408132550_))))
                          (let ((__tmp135018
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd132409132553_
                                         _kw-ref132411132547_))))
                            (declare (not safe))
                            (_loop132407132542_
                             _lp-tl132410132555_
                             __tmp135018))))
                      (let ((_kw-ref132412132558_
                             (reverse _kw-ref132411132547_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl132371132446_))
                            ((lambda (_L132561_
                                      _L132562_
                                      _L132563_
                                      _L132564_
                                      _L132565_)
                               (let* ((_kw-count132616_
                                       (length (let ((__tmp134933
                                                      (lambda (_g132608132611_
                                                               _g132609132613_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g132608132611_
                                                                _g132609132613_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp134933
                                                         '()
                                                         _L132562_))))
                                      (_self-index132618_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count132616_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L132317_))
                                     (let* ((_g132621132635_
                                             (lambda (_g132622132632_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g132622132632_))))
                                            (_g132620132806_
                                             (lambda (_g132622132638_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g132622132638_))
                                                   (let ((_e132627132640_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g132622132638_))))
                                                     (let ((_hd132626132643_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132627132640_)))
                                                           (_tl132625132645_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132627132640_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132625132645_))
                                                           (let ((_e132630132648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132625132645_))))
                     (let ((_hd132629132651_
                            (let ()
                              (declare (not safe))
                              (##car _e132630132648_)))
                           (_tl132628132653_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132630132648_))))
                       ((lambda (_L132656_ _L132657_)
                          (let ((_self132673_
                                 (list-ref _L132657_ _self-index132618_)))
                            (for-each
                             (lambda (_g132674132676_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g132674132676_
                                  _self132673_
                                  _method-calls130323_
                                  _slot-refs130324_
                                  _class-type-check130325_
                                  _struct-type-check130326_
                                  _struct-type-assert130327_)))
                             _L132656_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?130330_))
                                _stx130229_
                                (let* ((_specializer-id132685_
                                        (let* ((_id132679_
                                                (let ((__tmp134984
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L130304_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp134984
                                                   '"::specialize")))
                                               (_specializer-id132682_
                                                (let ((__tmp134985
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx130229_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id132679_
                                                   __tmp134985))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id132682_))
                                          _specializer-id132682_))
                                       (_lifted-specializer-id132692_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?130332_))
                                            (let* ((_id132687_
                                                    (let ((__tmp134986
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130304_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp134986
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id132689_
                                                    (let ((__tmp134987
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx130229_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id132687_
                                                       __tmp134987))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id132689_))
                                              _lifted-specializer-id132689_)
                                            '#f))
                                       (_$t132694_
                                        (let ((__tmp134988 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp134988)))
                                       (_methods132696_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls130323_)))
                                       (_$methods132700_
                                        (map (lambda (_id132698_)
                                               (let ((__tmp134989
                                                      (gensym _id132698_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp134989)))
                                             _methods132696_))
                                       (_g134990_
                                        (for-each
                                         (lambda (_g132701132704_
                                                  _g132702132706_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls130323_
                                              _g132701132704_
                                              _g132702132706_)))
                                         _methods132696_
                                         _$methods132700_))
                                       (_methods-bind132717_
                                        (map (lambda (_g132709132712_
                                                      _g132710132714_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind130231_
                                                  _$t132694_
                                                  _g132709132712_
                                                  _g132710132714_)))
                                             _methods132696_
                                             _$methods132700_))
                                       (_slots132719_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs130324_)))
                                       (_$slots132723_
                                        (map (lambda (_id132721_)
                                               (let ((__tmp134991
                                                      (gensym _id132721_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp134991)))
                                             _slots132719_))
                                       (_g134992_
                                        (for-each
                                         (lambda (_g132724132727_
                                                  _g132725132729_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs130324_
                                              _g132724132727_
                                              _g132725132729_)))
                                         _slots132719_
                                         _$slots132723_))
                                       (_slots-bind132740_
                                        (map (lambda (_g132732132735_
                                                      _g132733132737_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind130232_
                                                  _$t132694_
                                                  _g132732132735_
                                                  _g132733132737_)))
                                             _slots132719_
                                             _$slots132723_))
                                       (_class-check132742_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check130325_)))
                                       (_$class-check132745_
                                        (map (lambda (_g134993_)
                                               (let ((__tmp134994
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp134994)))
                                             _class-check132742_))
                                       (_g134995_
                                        (for-each
                                         (lambda (_g132746132749_
                                                  _g132747132751_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _class-type-check130325_
                                              _g132746132749_
                                              _g132747132751_)))
                                         _class-check132742_
                                         _$class-check132745_))
                                       (_class-check-bind132762_
                                        (map (lambda (_g132754132757_
                                                      _g132755132759_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind130233_
                                                  _$t132694_
                                                  _g132754132757_
                                                  _g132755132759_)))
                                             _class-check132742_
                                             _$class-check132745_))
                                       (_struct-check-all132764_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check130326_
                                           _struct-type-assert130327_)))
                                       (_struct-check132766_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all132764_)))
                                       (_$struct-check132769_
                                        (map (lambda (_g134996_)
                                               (let ((__tmp134997
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp134997)))
                                             _struct-check132766_))
                                       (_g134998_
                                        (for-each
                                         (lambda (_g132770132773_
                                                  _g132771132775_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _struct-check-all132764_
                                              _g132770132773_
                                              _g132771132775_)))
                                         _struct-check132766_
                                         _$struct-check132769_))
                                       (_struct-check-bind132786_
                                        (map (lambda (_g132778132781_
                                                      _g132779132783_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind130234_
                                                  _$t132694_
                                                  _g132778132781_
                                                  _g132779132783_)))
                                             _struct-check132766_
                                             _$struct-check132769_))
                                       (_make-specializer-impl132797_
                                        (lambda (_struct-type-check1132788_
                                                 _struct-type-check2132789_)
                                          (let* ((_specializer-body132795_
                                                  (map (lambda (_g132790132792_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g132790132792_
                                                            _self132673_
                                                            _$t132694_
                                                            _method-calls130323_
                                                            _slot-refs130324_
                                                            _class-type-check130325_
                                                            _struct-type-check1132788_
                                                            _struct-type-check2132789_)))
                                                       _L132656_))
                                                 (__tmp134999
                                                  (let ((__tmp135000
                                                         (let ((__tmp135002
                                                                (let ((__tmp135003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135015
                                      (let ()
                                        (declare (not safe))
                                        (cons _L132319_ '())))
                                     (__tmp135004
                                      (let ((__tmp135005
                                             (let ((__tmp135006
                                                    (let ((__tmp135008
                                                           (let ((__tmp135009
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135014
                                 (let ()
                                   (declare (not safe))
                                   (cons _L132318_ '())))
                                (__tmp135010
                                 (let ((__tmp135011
                                        (let ((__tmp135012
                                               (let ((__tmp135013
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L132657_
                                                              _specializer-body132795_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp135013))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp135012
                                           _L132317_))))
                                   (declare (not safe))
                                   (cons __tmp135011 '()))))
                            (declare (not safe))
                            (cons __tmp135014 __tmp135010))))
                     (declare (not safe))
                     (cons __tmp135009 '())))
                  (__tmp135007
                   (let () (declare (not safe)) (cons _L132316_ '()))))
              (declare (not safe))
              (cons __tmp135008 __tmp135007))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp135006))))
                                        (declare (not safe))
                                        (cons __tmp135005 '()))))
                                 (declare (not safe))
                                 (cons __tmp135015 __tmp135004))))
                          (declare (not safe))
                          (cons __tmp135003 '())))
                       (__tmp135001
                        (let () (declare (not safe)) (cons _L132315_ '()))))
                   (declare (not safe))
                   (cons __tmp135002 __tmp135001))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp135000))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp134999
                                             _stx130229_))))
                                       (_specializer-impl132799_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl132797_
                                           _struct-check-all132764_
                                           _empty130328_)))
                                       (_unchecked-specializer-impl132801_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?130331_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl132797_
                                               _empty130328_
                                               _struct-check-all132764_))
                                            '#f))
                                       (_specializer-impl132803_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl130235_
                                           _$t132694_
                                           _methods-bind132717_
                                           _slots-bind132740_
                                           _class-check-bind132762_
                                           _struct-check-bind132786_
                                           _specializer-impl132799_
                                           _lifted-specializer-id132692_
                                           _unchecked-specializer-impl132801_))))
                                  (let ((__tmp135017
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L130304_)))
                                        (__tmp135016
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id132685_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp135017
                                     '" => "
                                     __tmp135016))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def130236_
                                     _L130304_
                                     _specializer-id132685_
                                     _specializer-impl132803_
                                     _lifted-specializer-id132692_
                                     _unchecked-specializer-impl132801_))))))
                        _tl132628132653_
                        _hd132629132651_)))
                   (let ()
                     (declare (not safe))
                     (_g132621132635_ _g132622132638_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132621132635_
                                                      _g132622132638_))))))
                                       (declare (not safe))
                                       (_g132620132806_ _L132317_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L132317_))
                                         (let* ((_g132809132839_
                                                 (lambda (_g132810132836_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g132810132836_))))
                                                (_g132808133464_
                                                 (lambda (_g132810132842_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g132810132842_))
                                                       (let ((_e132816132844_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g132810132842_))))
                 (let ((_hd132815132847_
                        (let () (declare (not safe)) (##car _e132816132844_)))
                       (_tl132814132849_
                        (let () (declare (not safe)) (##cdr _e132816132844_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl132814132849_))
                       (let ((_e132819132852_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl132814132849_))))
                         (let ((_hd132818132855_
                                (let ()
                                  (declare (not safe))
                                  (##car _e132819132852_)))
                               (_tl132817132857_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e132819132852_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd132818132855_))
                               (let ((_e132822132860_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd132818132855_))))
                                 (let ((_hd132821132863_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132822132860_)))
                                       (_tl132820132865_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132822132860_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd132821132863_))
                                       (let ((_e132825132868_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd132821132863_))))
                                         (let ((_hd132824132871_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e132825132868_)))
                                               (_tl132823132873_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e132825132868_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd132824132871_))
                                               (let ((_e132828132876_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd132824132871_))))
                                                 (let ((_hd132827132879_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132828132876_)))
                                                       (_tl132826132881_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132828132876_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl132826132881_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132823132873_))
                                                           (let ((_e132831132884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132823132873_))))
                     (let ((_hd132830132887_
                            (let ()
                              (declare (not safe))
                              (##car _e132831132884_)))
                           (_tl132829132889_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132831132884_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl132829132889_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl132820132865_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl132817132857_))
                                   (let ((_e132834132892_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl132817132857_))))
                                     (let ((_hd132833132895_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132834132892_)))
                                           (_tl132832132897_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132834132892_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl132832132897_))
                                           ((lambda (_L132900_
                                                     _L132901_
                                                     _L132902_)
                                              (let* ((_g132925132939_
                                                      (lambda (_g132926132936_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g132926132936_))))
                                                     (_g132924132980_
                                                      (lambda (_g132926132942_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g132926132942_))
                                                            (let ((_e132931132944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g132926132942_))))
                      (let ((_hd132930132947_
                             (let ()
                               (declare (not safe))
                               (##car _e132931132944_)))
                            (_tl132929132949_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132931132944_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl132929132949_))
                            (let ((_e132934132952_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl132929132949_))))
                              (let ((_hd132933132955_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132934132952_)))
                                    (_tl132932132957_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132934132952_))))
                                ((lambda (_L132960_ _L132961_)
                                   (let ((_self132974_
                                          (list-ref
                                           _L132961_
                                           _self-index132618_)))
                                     (for-each
                                      (lambda (_g132975132977_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g132975132977_
                                           _self132974_
                                           _method-calls130323_
                                           _slot-refs130324_
                                           _class-type-check130325_
                                           _struct-type-check130326_
                                           _struct-type-assert130327_)))
                                      _L132960_)))
                                 _tl132932132957_
                                 _hd132933132955_)))
                            (let ()
                              (declare (not safe))
                              (_g132925132939_ _g132926132942_)))))
                    (let ()
                      (declare (not safe))
                      (_g132925132939_ _g132926132942_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g132924132980_ _L132901_))
                                              (let* ((_g132983133002_
                                                      (lambda (_g132984132999_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g132984132999_))))
                                                     (_g132982133107_
                                                      (lambda (_g132984133005_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g132984133005_))
                                                            (let ((_e132988133007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g132984133005_))))
                      (let ((_hd132987133010_
                             (let ()
                               (declare (not safe))
                               (##car _e132988133007_)))
                            (_tl132986133012_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132988133007_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl132986133012_))
                            (let ((_g134934_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl132986133012_
                                      '0))))
                              (begin
                                (let ((_g134935_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g134934_)
                                             (##vector-length _g134934_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g134935_ 2)))
                                      (error "Context expects 2 values"
                                             _g134935_)))
                                (let ((_target132989133015_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134934_ 0)))
                                      (_tl132991133017_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134934_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl132991133017_))
                                      (letrec ((_loop132992133020_
                                                (lambda (_hd132990133023_
                                                         _clause132996133025_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd132990133023_))
                                                      (let ((_e132993133028_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd132990133023_))))
                (let ((_lp-hd132994133031_
                       (let () (declare (not safe)) (##car _e132993133028_)))
                      (_lp-tl132995133033_
                       (let () (declare (not safe)) (##cdr _e132993133028_))))
                  (let ((__tmp134937
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd132994133031_ _clause132996133025_))))
                    (declare (not safe))
                    (_loop132992133020_ _lp-tl132995133033_ __tmp134937))))
              (let ((_clause132997133036_ (reverse _clause132996133025_)))
                ((lambda (_L133039_)
                   (for-each
                    (lambda (_clause133052_)
                      (let* ((_g133054133065_
                              (lambda (_g133055133062_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g133055133062_))))
                             (_g133053133097_
                              (lambda (_g133055133068_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g133055133068_))
                                    (let ((_e133060133070_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g133055133068_))))
                                      (let ((_hd133059133073_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133060133070_)))
                                            (_tl133058133075_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133060133070_))))
                                        ((lambda (_L133078_ _L133079_)
                                           (let ((_self133091_
                                                  (list-ref
                                                   _L133079_
                                                   _self-index132618_)))
                                             (for-each
                                              (lambda (_g133092133094_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g133092133094_
                                                   _self133091_
                                                   _method-calls130323_
                                                   _slot-refs130324_
                                                   _class-type-check130325_
                                                   _struct-type-check130326_
                                                   _struct-type-assert130327_)))
                                              _L133078_)))
                                         _tl133058133075_
                                         _hd133059133073_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133054133065_ _g133055133068_))))))
                        (declare (not safe))
                        (_g133053133097_ _clause133052_)))
                    (let ((__tmp134936
                           (lambda (_g133099133102_ _g133100133104_)
                             (let ()
                               (declare (not safe))
                               (cons _g133099133102_ _g133100133104_)))))
                      (declare (not safe))
                      (foldr1 __tmp134936 '() _L133039_))))
                 _clause132997133036_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop132992133020_
                                           _target132989133015_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g132983133002_ _g132984133005_))))))
                            (let ()
                              (declare (not safe))
                              (_g132983133002_ _g132984133005_)))))
                    (let ()
                      (declare (not safe))
                      (_g132983133002_ _g132984133005_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g132982133107_ _L132900_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?130330_))
                                                  _stx130229_
                                                  (let* ((_specializer-id133116_
                                                          (let* ((_id133110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134938
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130304_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp134938 '"::specialize")))
                         (_specializer-id133113_
                          (let ((__tmp134939
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130229_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133110_ __tmp134939))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133113_))
                    _specializer-id133113_))
                 (_lifted-specializer-id133123_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?130332_))
                      (let* ((_id133118_
                              (let ((__tmp134940
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L130304_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp134940
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id133120_
                              (let ((__tmp134941
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx130229_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id133118_
                                 __tmp134941))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id133120_))
                        _lifted-specializer-id133120_)
                      '#f))
                 (_$t133125_
                  (let ((__tmp134942 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp134942)))
                 (_methods133127_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls130323_)))
                 (_$methods133131_
                  (map (lambda (_id133129_)
                         (let ((__tmp134943 (gensym _id133129_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp134943)))
                       _methods133127_))
                 (_g134944_
                  (for-each
                   (lambda (_g133132133135_ _g133133133137_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls130323_
                        _g133132133135_
                        _g133133133137_)))
                   _methods133127_
                   _$methods133131_))
                 (_methods-bind133148_
                  (map (lambda (_g133140133143_ _g133141133145_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind130231_
                            _$t133125_
                            _g133140133143_
                            _g133141133145_)))
                       _methods133127_
                       _$methods133131_))
                 (_slots133150_
                  (let () (declare (not safe)) (hash-keys _slot-refs130324_)))
                 (_$slots133154_
                  (map (lambda (_id133152_)
                         (let ((__tmp134945 (gensym _id133152_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp134945)))
                       _slots133150_))
                 (_g134946_
                  (for-each
                   (lambda (_g133155133158_ _g133156133160_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs130324_
                        _g133155133158_
                        _g133156133160_)))
                   _slots133150_
                   _$slots133154_))
                 (_slots-bind133171_
                  (map (lambda (_g133163133166_ _g133164133168_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind130232_
                            _$t133125_
                            _g133163133166_
                            _g133164133168_)))
                       _slots133150_
                       _$slots133154_))
                 (_class-check133173_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check130325_)))
                 (_$class-check133176_
                  (map (lambda (_g134947_)
                         (let ((__tmp134948 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp134948)))
                       _class-check133173_))
                 (_g134949_
                  (for-each
                   (lambda (_g133177133180_ _g133178133182_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _class-type-check130325_
                        _g133177133180_
                        _g133178133182_)))
                   _class-check133173_
                   _$class-check133176_))
                 (_class-check-bind133193_
                  (map (lambda (_g133185133188_ _g133186133190_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind130233_
                            _$t133125_
                            _g133185133188_
                            _g133186133190_)))
                       _class-check133173_
                       _$class-check133176_))
                 (_struct-check-all133195_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check130326_
                     _struct-type-assert130327_)))
                 (_struct-check133197_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all133195_)))
                 (_$struct-check133200_
                  (map (lambda (_g134950_)
                         (let ((__tmp134951 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp134951)))
                       _struct-check133197_))
                 (_g134952_
                  (for-each
                   (lambda (_g133201133204_ _g133202133206_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _struct-check-all133195_
                        _g133201133204_
                        _g133202133206_)))
                   _struct-check133197_
                   _$struct-check133200_))
                 (_struct-check-bind133217_
                  (map (lambda (_g133209133212_ _g133210133214_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind130234_
                            _$t133125_
                            _g133209133212_
                            _g133210133214_)))
                       _struct-check133197_
                       _$struct-check133200_))
                 (_make-specializer-lambda-expr133303_
                  (lambda (_struct-type-check1133219_
                           _struct-type-check2133220_)
                    (let* ((_g133222133236_
                            (lambda (_g133223133233_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g133223133233_))))
                           (_g133221133300_
                            (lambda (_g133223133239_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g133223133239_))
                                  (let ((_e133228133241_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g133223133239_))))
                                    (let ((_hd133227133244_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e133228133241_)))
                                          (_tl133226133246_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e133228133241_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl133226133246_))
                                          (let ((_e133231133249_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl133226133246_))))
                                            (let ((_hd133230133252_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e133231133249_)))
                                                  (_tl133229133254_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e133231133249_))))
                                              ((lambda (_L133257_ _L133258_)
                                                 (let* ((_self133291_
                                                         (list-ref
                                                          _L133258_
                                                          _self-index132618_))
                                                        (_body133297_
                                                         (map (lambda (_g133292133294_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g133292133294_
                           _self133291_
                           _$t133125_
                           _method-calls130323_
                           _slot-refs130324_
                           _class-type-check130325_
                           _struct-type-check1133219_
                           _struct-type-check2133220_)))
                      _L133257_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp134953
                                                          (let ((__tmp134954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L133258_ _body133297_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp134954))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp134953
                                                      _L132901_))))
                                               _tl133229133254_
                                               _hd133230133252_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g133222133236_
                                             _g133223133239_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g133222133236_ _g133223133239_))))))
                      (declare (not safe))
                      (_g133221133300_ _L132901_))))
                 (_make-specializer-case-lambda-expr133442_
                  (lambda (_struct-type-check1133305_
                           _struct-type-check2133306_)
                    (let* ((_g133308133327_
                            (lambda (_g133309133324_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g133309133324_))))
                           (_g133307133439_
                            (lambda (_g133309133330_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g133309133330_))
                                  (let ((_e133313133332_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g133309133330_))))
                                    (let ((_hd133312133335_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e133313133332_)))
                                          (_tl133311133337_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e133313133332_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl133311133337_))
                                          (let ((_g134955_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl133311133337_
                                                    '0))))
                                            (begin
                                              (let ((_g134956_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g134955_)
                                                           (##vector-length
                                                            _g134955_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g134956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g134956_)))
                                              (let ((_target133314133340_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g134955_
                                                        0)))
                                                    (_tl133316133342_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g134955_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl133316133342_))
                                                    (letrec ((_loop133317133345_
                                                              (lambda (_hd133315133348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause133321133350_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd133315133348_))
                            (let ((_e133318133353_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd133315133348_))))
                              (let ((_lp-hd133319133356_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133318133353_)))
                                    (_lp-tl133320133358_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133318133353_))))
                                (let ((__tmp134959
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd133319133356_
                                               _clause133321133350_))))
                                  (declare (not safe))
                                  (_loop133317133345_
                                   _lp-tl133320133358_
                                   __tmp134959))))
                            (let ((_clause133322133361_
                                   (reverse _clause133321133350_)))
                              ((lambda (_L133364_)
                                 (let* ((_clauses133437_
                                         (map (lambda (_clause133379_)
                                                (let* ((_g133381133392_
                                                        (lambda (_g133382133389_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g133382133389_))))
                                                       (_g133380133427_
                                                        (lambda (_g133382133395_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g133382133395_))
                      (let ((_e133387133397_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g133382133395_))))
                        (let ((_hd133386133400_
                               (let ()
                                 (declare (not safe))
                                 (##car _e133387133397_)))
                              (_tl133385133402_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e133387133397_))))
                          ((lambda (_L133405_ _L133406_)
                             (let* ((_self133418_
                                     (list-ref _L133406_ _self-index132618_))
                                    (_body133424_
                                     (map (lambda (_g133419133421_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g133419133421_
                                               _self133418_
                                               _$t133125_
                                               _method-calls130323_
                                               _slot-refs130324_
                                               _class-type-check130325_
                                               _struct-type-check1133305_
                                               _struct-type-check2133306_)))
                                          _L133405_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L133406_ _body133424_))))
                           _tl133385133402_
                           _hd133386133400_)))
                      (let ()
                        (declare (not safe))
                        (_g133381133392_ _g133382133395_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g133380133427_
                                                   _clause133379_)))
                                              (let ((__tmp134957
                                                     (lambda (_g133429133432_
                                                              _g133430133434_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g133429133432_
                                                               _g133430133434_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp134957
                                                        '()
                                                        _L133364_))))
                                        (__tmp134958
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses133437_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp134958
                                    _L132900_)))
                               _clause133322133361_))))))
              (let ()
                (declare (not safe))
                (_loop133317133345_ _target133314133340_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133308133327_
                                                       _g133309133330_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g133308133327_
                                             _g133309133330_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g133308133327_ _g133309133330_))))))
                      (declare (not safe))
                      (_g133307133439_ _L132900_))))
                 (_make-specializer-impl133447_
                  (lambda (_specializer-lambda-expr133444_
                           _specializer-case-lambda-expr133445_)
                    (let ((__tmp134960
                           (let ((__tmp134961
                                  (let ((__tmp134963
                                         (let ((__tmp134964
                                                (let ((__tmp134981
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L132319_ '())))
                                                      (__tmp134965
                                                       (let ((__tmp134966
                                                              (let ((__tmp134967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134969
                                    (let ((__tmp134970
                                           (let ((__tmp134980
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L132318_ '())))
                                                 (__tmp134971
                                                  (let ((__tmp134972
                                                         (let ((__tmp134973
                                                                (let ((__tmp134974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134976
                                      (let ((__tmp134977
                                             (let ((__tmp134979
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L132902_ '())))
                                                   (__tmp134978
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr133444_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp134979
                                                     __tmp134978))))
                                        (declare (not safe))
                                        (cons __tmp134977 '())))
                                     (__tmp134975
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr133445_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp134976 __tmp134975))))
                          (declare (not safe))
                          (cons '%#let-values __tmp134974))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp134973 _stx130229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134972 '()))))
                                             (declare (not safe))
                                             (cons __tmp134980 __tmp134971))))
                                      (declare (not safe))
                                      (cons __tmp134970 '())))
                                   (__tmp134968
                                    (let ()
                                      (declare (not safe))
                                      (cons _L132316_ '()))))
                               (declare (not safe))
                               (cons __tmp134969 __tmp134968))))
                        (declare (not safe))
                        (cons '%#let-values __tmp134967))))
                 (declare (not safe))
                 (cons __tmp134966 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134981
                                                        __tmp134965))))
                                           (declare (not safe))
                                           (cons __tmp134964 '())))
                                        (__tmp134962
                                         (let ()
                                           (declare (not safe))
                                           (cons _L132315_ '()))))
                                    (declare (not safe))
                                    (cons __tmp134963 __tmp134962))))
                             (declare (not safe))
                             (cons '%#let-values __tmp134961))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134960 _stx130229_))))
                 (_specializer-lambda-expr133449_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr133303_
                     _struct-check-all133195_
                     _empty130328_)))
                 (_specializer-case-lambda-expr133451_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr133442_
                     _struct-check-all133195_
                     _empty130328_)))
                 (_specializer-impl133453_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl133447_
                     _specializer-lambda-expr133449_
                     _specializer-case-lambda-expr133451_)))
                 (_unchecked-specializer-lambda-expr133455_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?130331_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr133303_
                         _empty130328_
                         _struct-check-all133195_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr133457_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?130331_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr133442_
                         _empty130328_
                         _struct-check-all133195_))
                      '#f))
                 (_unchecked-specializer-impl133459_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?130331_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl133447_
                         _unchecked-specializer-lambda-expr133455_
                         _unchecked-specializer-case-lambda-expr133457_))
                      '#f))
                 (_specializer-impl133461_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl130235_
                     _$t133125_
                     _methods-bind133148_
                     _slots-bind133171_
                     _class-check-bind133193_
                     _struct-check-bind133217_
                     _specializer-impl133453_
                     _lifted-specializer-id133123_
                     _unchecked-specializer-impl133459_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp134983
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130304_)))
                                                          (__tmp134982
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133116_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp134983
                                                       '" => "
                                                       __tmp134982))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def130236_
                                                       _L130304_
                                                       _specializer-id133116_
                                                       _specializer-impl133461_
                                                       _lifted-specializer-id133123_
                                                       _unchecked-specializer-impl133459_)))))
                                            _hd132833132895_
                                            _hd132830132887_
                                            _hd132827132879_)
                                           (let ()
                                             (declare (not safe))
                                             (_g132809132839_
                                              _g132810132842_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132809132839_ _g132810132842_)))
                               (let ()
                                 (declare (not safe))
                                 (_g132809132839_ _g132810132842_)))
                           (let ()
                             (declare (not safe))
                             (_g132809132839_ _g132810132842_)))))
                   (let ()
                     (declare (not safe))
                     (_g132809132839_ _g132810132842_)))
               (let ()
                 (declare (not safe))
                 (_g132809132839_ _g132810132842_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132809132839_
                                                  _g132810132842_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g132809132839_ _g132810132842_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132809132839_ _g132810132842_)))))
                       (let ()
                         (declare (not safe))
                         (_g132809132839_ _g132810132842_)))))
               (let ()
                 (declare (not safe))
                 (_g132809132839_ _g132810132842_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g132808133464_ _L132317_))
                                         _stx130229_))))
                             _hd132414132537_
                             _kw-ref132412132558_
                             _hd132402132524_
                             _hd132393132500_
                             _hd132384132476_)
                            (let ()
                              (declare (not safe))
                              (_g132358132420_ _g132359132423_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop132407132542_
                                                   _target132404132529_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g132358132420_
                                                 _g132359132423_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g132358132420_ _g132359132423_))))))
                            (let ()
                              (declare (not safe))
                              (_g132358132420_ _g132359132423_)))
                        (let ()
                          (declare (not safe))
                          (_g132358132420_ _g132359132423_)))
                    (let ()
                      (declare (not safe))
                      (_g132358132420_ _g132359132423_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132358132420_
                                                       _g132359132423_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g132358132420_
                                                   _g132359132423_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g132358132420_
                                               _g132359132423_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132358132420_ _g132359132423_)))))
                            (let ()
                              (declare (not safe))
                              (_g132358132420_ _g132359132423_)))
                        (let ()
                          (declare (not safe))
                          (_g132358132420_ _g132359132423_)))))
                (let ()
                  (declare (not safe))
                  (_g132358132420_ _g132359132423_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132358132420_
                                                       _g132359132423_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g132358132420_
                                                   _g132359132423_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g132358132420_ _g132359132423_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132358132420_ _g132359132423_)))
                            (let ()
                              (declare (not safe))
                              (_g132358132420_ _g132359132423_)))))
                    (let ()
                      (declare (not safe))
                      (_g132358132420_ _g132359132423_)))
                (let ()
                  (declare (not safe))
                  (_g132358132420_ _g132359132423_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132358132420_
                                                       _g132359132423_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g132358132420_
                                               _g132359132423_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132358132420_ _g132359132423_)))
                                (let ()
                                  (declare (not safe))
                                  (_g132358132420_ _g132359132423_)))
                            (let ()
                              (declare (not safe))
                              (_g132358132420_ _g132359132423_)))))
                    (let ()
                      (declare (not safe))
                      (_g132358132420_ _g132359132423_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132358132420_
                                                       _g132359132423_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g132358132420_
                                               _g132359132423_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132358132420_ _g132359132423_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g132358132420_ _g132359132423_)))))
                            (let ()
                              (declare (not safe))
                              (_g132358132420_ _g132359132423_))))))
                (declare (not safe))
                (_g132357133467_ _L132316_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd132192132310_
                                                    _hd132189132302_
                                                    _hd132186132294_
                                                    _hd132183132286_
                                                    _hd132165132238_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132145132198_
                                                      _g132146132201_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132145132198_
                                              _g132146132201_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g132145132198_ _g132146132201_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g132145132198_ _g132146132201_)))
                               (let ()
                                 (declare (not safe))
                                 (_g132145132198_ _g132146132201_)))))
                       (let ()
                         (declare (not safe))
                         (_g132145132198_ _g132146132201_)))
                   (let ()
                     (declare (not safe))
                     (_g132145132198_ _g132146132201_)))
               (let ()
                 (declare (not safe))
                 (_g132145132198_ _g132146132201_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132145132198_
                                                  _g132146132201_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132145132198_
                                              _g132146132201_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132145132198_ _g132146132201_)))))
                           (let ()
                             (declare (not safe))
                             (_g132145132198_ _g132146132201_)))))
                   (let ()
                     (declare (not safe))
                     (_g132145132198_ _g132146132201_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132145132198_
                                                      _g132146132201_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132145132198_
                                                  _g132146132201_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132145132198_
                                              _g132146132201_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132145132198_ _g132146132201_)))))
                           (let ()
                             (declare (not safe))
                             (_g132145132198_ _g132146132201_)))
                       (let ()
                         (declare (not safe))
                         (_g132145132198_ _g132146132201_)))))
               (let ()
                 (declare (not safe))
                 (_g132145132198_ _g132146132201_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132145132198_
                                                  _g132146132201_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g132145132198_ _g132146132201_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132145132198_ _g132146132201_)))
                           (let ()
                             (declare (not safe))
                             (_g132145132198_ _g132146132201_)))
                       (let ()
                         (declare (not safe))
                         (_g132145132198_ _g132146132201_)))))
               (let ()
                 (declare (not safe))
                 (_g132145132198_ _g132146132201_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g132144133470_ _L130303_))
                                         _stx130229_))))))))
                  (___kont133709133710_ (lambda () _stx130229_)))
              (let ((___match133738133739_
                     (lambda (_e130245130271_
                              _hd130244130274_
                              _tl130243130276_
                              _e130248130279_
                              _hd130247130282_
                              _tl130246130284_
                              _e130251130287_
                              _hd130250130290_
                              _tl130249130292_
                              _e130254130295_
                              _hd130253130298_
                              _tl130252130300_)
                       (let ((_L130303_ _hd130253130298_)
                             (_L130304_ _hd130250130290_))
                         (if (let ((__tmp135100
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L130304_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp135100))
                             (___kont133707133708_ _L130303_ _L130304_)
                             (___kont133709133710_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx133705133706_))
                    (let ((_e130245130271_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx133705133706_))))
                      (let ((_tl130243130276_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130245130271_)))
                            (_hd130244130274_
                             (let ()
                               (declare (not safe))
                               (##car _e130245130271_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130243130276_))
                            (let ((_e130248130279_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130243130276_))))
                              (let ((_tl130246130284_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130248130279_)))
                                    (_hd130247130282_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130248130279_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd130247130282_))
                                    (let ((_e130251130287_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd130247130282_))))
                                      (let ((_tl130249130292_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e130251130287_)))
                                            (_hd130250130290_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e130251130287_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl130249130292_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl130246130284_))
                                                (let ((_e130254130295_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl130246130284_))))
                                                  (let ((_tl130252130300_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e130254130295_)))
                                                        (_hd130253130298_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e130254130295_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl130252130300_))
                                                        (___match133738133739_
                                                         _e130245130271_
                                                         _hd130244130274_
                                                         _tl130243130276_
                                                         _e130248130279_
                                                         _hd130247130282_
                                                         _tl130246130284_
                                                         _e130251130287_
                                                         _hd130250130290_
                                                         _tl130249130292_
                                                         _e130254130295_
                                                         _hd130253130298_
                                                         _tl130252130300_)
                                                        (___kont133709133710_))))
                                                (___kont133709133710_))
                                            (___kont133709133710_))))
                                    (___kont133709133710_))))
                            (___kont133709133710_))))
                    (___kont133709133710_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx129205_
               _self129206_
               _methods129207_
               _slots129208_
               _class-check129209_
               _struct-check129210_
               _struct-assert129211_)
        (let* ((___stx133741133742_ _stx129205_)
               (_g129219129441_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx133741133742_)))))
          (let ((___kont133743133744_
                 (lambda (_L130178_ _L130179_ _L130180_ _L130181_)
                   (let ((__tmp135101
                          (let () (declare (not safe)) (gx#stx-e _L130179_))))
                     (declare (not safe))
                     (hash-put! _methods129207_ __tmp135101 '#t))
                   (for-each
                    (lambda (_g130214130216_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g130214130216_
                         _self129206_
                         _methods129207_
                         _slots129208_
                         _class-check129209_
                         _struct-check129210_
                         _struct-assert129211_)))
                    (let ((__tmp135102
                           (lambda (_g130218130221_ _g130219130223_)
                             (let ()
                               (declare (not safe))
                               (cons _g130218130221_ _g130219130223_)))))
                      (declare (not safe))
                      (foldr1 __tmp135102 '() _L130178_)))))
                (___kont133747133748_
                 (lambda (_L130013_ _L130014_ _L130015_ _L130016_ _L130017_)
                   (let ((__tmp135103
                          (let () (declare (not safe)) (gx#stx-e _L130014_))))
                     (declare (not safe))
                     (hash-put! _methods129207_ __tmp135103 '#t))
                   (for-each
                    (lambda (_g130057130059_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g130057130059_
                         _self129206_
                         _methods129207_
                         _slots129208_
                         _class-check129209_
                         _struct-check129210_
                         _struct-assert129211_)))
                    (let ((__tmp135104
                           (lambda (_g130061130064_ _g130062130066_)
                             (let ()
                               (declare (not safe))
                               (cons _g130061130064_ _g130062130066_)))))
                      (declare (not safe))
                      (foldr1 __tmp135104 '() _L130013_)))))
                (___kont133751133752_
                 (lambda (_L129846_ _L129847_ _L129848_)
                   (let ((__tmp135105
                          (let () (declare (not safe)) (gx#stx-e _L129846_))))
                     (declare (not safe))
                     (hash-put! _slots129208_ __tmp135105 '#t))))
                (___kont133753133754_
                 (lambda (_L129723_ _L129724_ _L129725_ _L129726_)
                   (let ((__tmp135106
                          (let () (declare (not safe)) (gx#stx-e _L129724_))))
                     (declare (not safe))
                     (hash-put! _slots129208_ __tmp135106 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L129723_
                      _self129206_
                      _methods129207_
                      _slots129208_
                      _class-check129209_
                      _struct-check129210_
                      _struct-assert129211_))))
                (___kont133755133756_
                 (lambda (_L129607_ _L129608_)
                   (let ((__tmp135107
                          (##structure-ref
                           (let ((__tmp135108
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L129608_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135108))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (hash-put! _slots129208_ __tmp135107 '#t))))
                (___kont133757133758_
                 (lambda (_L129517_ _L129518_ _L129519_)
                   (let ((__tmp135109
                          (##structure-ref
                           (let ((__tmp135110
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L129519_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135110))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (hash-put! _slots129208_ __tmp135109 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L129517_
                      _self129206_
                      _methods129207_
                      _slots129208_
                      _class-check129209_
                      _struct-check129210_
                      _struct-assert129211_))))
                (___kont133759133760_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx129205_
                      _self129206_
                      _methods129207_
                      _slots129208_
                      _class-check129209_
                      _struct-check129210_
                      _struct-assert129211_)))))
            (let* ((___match134240134241_
                    (lambda (_e129415129453_
                             _hd129414129456_
                             _tl129413129458_
                             _e129418129461_
                             _hd129417129464_
                             _tl129416129466_
                             _e129421129469_
                             _hd129420129472_
                             _tl129419129474_
                             _e129424129477_
                             _hd129423129480_
                             _tl129422129482_
                             _e129427129485_
                             _hd129426129488_
                             _tl129425129490_
                             _e129430129493_
                             _hd129429129496_
                             _tl129428129498_
                             _e129433129501_
                             _hd129432129504_
                             _tl129431129506_
                             _e129436129509_
                             _hd129435129512_
                             _tl129434129514_)
                      (let ((_L129517_ _hd129435129512_)
                            (_L129518_ _hd129432129504_)
                            (_L129519_ _hd129423129480_))
                        (if (and (let ((__tmp135111
                                        (let ((__tmp135112
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L129519_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135112))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135111
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129518_
                                    _self129206_)))
                            (___kont133757133758_
                             _L129517_
                             _L129518_
                             _L129519_)
                            (___kont133759133760_)))))
                   (___match134238134239_
                    (lambda (_e129415129453_
                             _hd129414129456_
                             _tl129413129458_
                             _e129418129461_
                             _hd129417129464_
                             _tl129416129466_
                             _e129421129469_
                             _hd129420129472_
                             _tl129419129474_
                             _e129424129477_
                             _hd129423129480_
                             _tl129422129482_
                             _e129427129485_
                             _hd129426129488_
                             _tl129425129490_
                             _e129430129493_
                             _hd129429129496_
                             _tl129428129498_
                             _e129433129501_
                             _hd129432129504_
                             _tl129431129506_
                             _e129436129509_
                             _hd129435129512_
                             _tl129434129514_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129434129514_))
                          (___match134240134241_
                           _e129415129453_
                           _hd129414129456_
                           _tl129413129458_
                           _e129418129461_
                           _hd129417129464_
                           _tl129416129466_
                           _e129421129469_
                           _hd129420129472_
                           _tl129419129474_
                           _e129424129477_
                           _hd129423129480_
                           _tl129422129482_
                           _e129427129485_
                           _hd129426129488_
                           _tl129425129490_
                           _e129430129493_
                           _hd129429129496_
                           _tl129428129498_
                           _e129433129501_
                           _hd129432129504_
                           _tl129431129506_
                           _e129436129509_
                           _hd129435129512_
                           _tl129434129514_)
                          (___kont133759133760_))))
                   (___match134232134233_
                    (lambda (_e129415129453_
                             _hd129414129456_
                             _tl129413129458_
                             _e129418129461_
                             _hd129417129464_
                             _tl129416129466_
                             _e129421129469_
                             _hd129420129472_
                             _tl129419129474_
                             _e129424129477_
                             _hd129423129480_
                             _tl129422129482_
                             _e129427129485_
                             _hd129426129488_
                             _tl129425129490_
                             _e129430129493_
                             _hd129429129496_
                             _tl129428129498_
                             _e129433129501_
                             _hd129432129504_
                             _tl129431129506_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129425129490_))
                          (let ((_e129436129509_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129425129490_))))
                            (let ((_tl129434129514_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129436129509_)))
                                  (_hd129435129512_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129436129509_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129434129514_))
                                  (___match134240134241_
                                   _e129415129453_
                                   _hd129414129456_
                                   _tl129413129458_
                                   _e129418129461_
                                   _hd129417129464_
                                   _tl129416129466_
                                   _e129421129469_
                                   _hd129420129472_
                                   _tl129419129474_
                                   _e129424129477_
                                   _hd129423129480_
                                   _tl129422129482_
                                   _e129427129485_
                                   _hd129426129488_
                                   _tl129425129490_
                                   _e129430129493_
                                   _hd129429129496_
                                   _tl129428129498_
                                   _e129433129501_
                                   _hd129432129504_
                                   _tl129431129506_
                                   _e129436129509_
                                   _hd129435129512_
                                   _tl129434129514_)
                                  (___kont133759133760_))))
                          (___kont133759133760_))))
                   (___match134178134179_
                    (lambda (_e129391129551_
                             _hd129390129554_
                             _tl129389129556_
                             _e129394129559_
                             _hd129393129562_
                             _tl129392129564_
                             _e129397129567_
                             _hd129396129570_
                             _tl129395129572_
                             _e129400129575_
                             _hd129399129578_
                             _tl129398129580_
                             _e129403129583_
                             _hd129402129586_
                             _tl129401129588_
                             _e129406129591_
                             _hd129405129594_
                             _tl129404129596_
                             _e129409129599_
                             _hd129408129602_
                             _tl129407129604_)
                      (let ((_L129607_ _hd129408129602_)
                            (_L129608_ _hd129399129578_))
                        (if (and (let ((__tmp135113
                                        (let ((__tmp135114
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L129608_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135114))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135113
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129607_
                                    _self129206_)))
                            (___kont133755133756_ _L129607_ _L129608_)
                            (___kont133759133760_)))))
                   (___match134176134177_
                    (lambda (_e129391129551_
                             _hd129390129554_
                             _tl129389129556_
                             _e129394129559_
                             _hd129393129562_
                             _tl129392129564_
                             _e129397129567_
                             _hd129396129570_
                             _tl129395129572_
                             _e129400129575_
                             _hd129399129578_
                             _tl129398129580_
                             _e129403129583_
                             _hd129402129586_
                             _tl129401129588_
                             _e129406129591_
                             _hd129405129594_
                             _tl129404129596_
                             _e129409129599_
                             _hd129408129602_
                             _tl129407129604_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129401129588_))
                          (___match134178134179_
                           _e129391129551_
                           _hd129390129554_
                           _tl129389129556_
                           _e129394129559_
                           _hd129393129562_
                           _tl129392129564_
                           _e129397129567_
                           _hd129396129570_
                           _tl129395129572_
                           _e129400129575_
                           _hd129399129578_
                           _tl129398129580_
                           _e129403129583_
                           _hd129402129586_
                           _tl129401129588_
                           _e129406129591_
                           _hd129405129594_
                           _tl129404129596_
                           _e129409129599_
                           _hd129408129602_
                           _tl129407129604_)
                          (___match134232134233_
                           _e129391129551_
                           _hd129390129554_
                           _tl129389129556_
                           _e129394129559_
                           _hd129393129562_
                           _tl129392129564_
                           _e129397129567_
                           _hd129396129570_
                           _tl129395129572_
                           _e129400129575_
                           _hd129399129578_
                           _tl129398129580_
                           _e129403129583_
                           _hd129402129586_
                           _tl129401129588_
                           _e129406129591_
                           _hd129405129594_
                           _tl129404129596_
                           _e129409129599_
                           _hd129408129602_
                           _tl129407129604_))))
                   (___match134122134123_
                    (lambda (_e129356129635_
                             _hd129355129638_
                             _tl129354129640_
                             _e129359129643_
                             _hd129358129646_
                             _tl129357129648_
                             _e129362129651_
                             _hd129361129654_
                             _tl129360129656_
                             _e129365129659_
                             _hd129364129662_
                             _tl129363129664_
                             _e129368129667_
                             _hd129367129670_
                             _tl129366129672_
                             _e129371129675_
                             _hd129370129678_
                             _tl129369129680_
                             _e129374129683_
                             _hd129373129686_
                             _tl129372129688_
                             _e129377129691_
                             _hd129376129694_
                             _tl129375129696_
                             _e129380129699_
                             _hd129379129702_
                             _tl129378129704_
                             _e129383129707_
                             _hd129382129710_
                             _tl129381129712_
                             _e129386129715_
                             _hd129385129718_
                             _tl129384129720_)
                      (let ((_L129723_ _hd129385129718_)
                            (_L129724_ _hd129382129710_)
                            (_L129725_ _hd129373129686_)
                            (_L129726_ _hd129364129662_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129726_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129726_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129725_
                                    _self129206_)))
                            (___kont133753133754_
                             _L129723_
                             _L129724_
                             _L129725_
                             _L129726_)
                            (___kont133759133760_)))))
                   (___match134114134115_
                    (lambda (_e129356129635_
                             _hd129355129638_
                             _tl129354129640_
                             _e129359129643_
                             _hd129358129646_
                             _tl129357129648_
                             _e129362129651_
                             _hd129361129654_
                             _tl129360129656_
                             _e129365129659_
                             _hd129364129662_
                             _tl129363129664_
                             _e129368129667_
                             _hd129367129670_
                             _tl129366129672_
                             _e129371129675_
                             _hd129370129678_
                             _tl129369129680_
                             _e129374129683_
                             _hd129373129686_
                             _tl129372129688_
                             _e129377129691_
                             _hd129376129694_
                             _tl129375129696_
                             _e129380129699_
                             _hd129379129702_
                             _tl129378129704_
                             _e129383129707_
                             _hd129382129710_
                             _tl129381129712_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129375129696_))
                          (let ((_e129386129715_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129375129696_))))
                            (let ((_tl129384129720_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129386129715_)))
                                  (_hd129385129718_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129386129715_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129384129720_))
                                  (___match134122134123_
                                   _e129356129635_
                                   _hd129355129638_
                                   _tl129354129640_
                                   _e129359129643_
                                   _hd129358129646_
                                   _tl129357129648_
                                   _e129362129651_
                                   _hd129361129654_
                                   _tl129360129656_
                                   _e129365129659_
                                   _hd129364129662_
                                   _tl129363129664_
                                   _e129368129667_
                                   _hd129367129670_
                                   _tl129366129672_
                                   _e129371129675_
                                   _hd129370129678_
                                   _tl129369129680_
                                   _e129374129683_
                                   _hd129373129686_
                                   _tl129372129688_
                                   _e129377129691_
                                   _hd129376129694_
                                   _tl129375129696_
                                   _e129380129699_
                                   _hd129379129702_
                                   _tl129378129704_
                                   _e129383129707_
                                   _hd129382129710_
                                   _tl129381129712_
                                   _e129386129715_
                                   _hd129385129718_
                                   _tl129384129720_)
                                  (___kont133759133760_))))
                          (___match134238134239_
                           _e129356129635_
                           _hd129355129638_
                           _tl129354129640_
                           _e129359129643_
                           _hd129358129646_
                           _tl129357129648_
                           _e129362129651_
                           _hd129361129654_
                           _tl129360129656_
                           _e129365129659_
                           _hd129364129662_
                           _tl129363129664_
                           _e129368129667_
                           _hd129367129670_
                           _tl129366129672_
                           _e129371129675_
                           _hd129370129678_
                           _tl129369129680_
                           _e129374129683_
                           _hd129373129686_
                           _tl129372129688_
                           _e129377129691_
                           _hd129376129694_
                           _tl129375129696_))))
                   (___match134036134037_
                    (lambda (_e129322129766_
                             _hd129321129769_
                             _tl129320129771_
                             _e129325129774_
                             _hd129324129777_
                             _tl129323129779_
                             _e129328129782_
                             _hd129327129785_
                             _tl129326129787_
                             _e129331129790_
                             _hd129330129793_
                             _tl129329129795_
                             _e129334129798_
                             _hd129333129801_
                             _tl129332129803_
                             _e129337129806_
                             _hd129336129809_
                             _tl129335129811_
                             _e129340129814_
                             _hd129339129817_
                             _tl129338129819_
                             _e129343129822_
                             _hd129342129825_
                             _tl129341129827_
                             _e129346129830_
                             _hd129345129833_
                             _tl129344129835_
                             _e129349129838_
                             _hd129348129841_
                             _tl129347129843_)
                      (let ((_L129846_ _hd129348129841_)
                            (_L129847_ _hd129339129817_)
                            (_L129848_ _hd129330129793_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129848_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129848_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129847_
                                    _self129206_)))
                            (___kont133751133752_
                             _L129846_
                             _L129847_
                             _L129848_)
                            (___match134240134241_
                             _e129322129766_
                             _hd129321129769_
                             _tl129320129771_
                             _e129325129774_
                             _hd129324129777_
                             _tl129323129779_
                             _e129328129782_
                             _hd129327129785_
                             _tl129326129787_
                             _e129331129790_
                             _hd129330129793_
                             _tl129329129795_
                             _e129334129798_
                             _hd129333129801_
                             _tl129332129803_
                             _e129337129806_
                             _hd129336129809_
                             _tl129335129811_
                             _e129340129814_
                             _hd129339129817_
                             _tl129338129819_
                             _e129343129822_
                             _hd129342129825_
                             _tl129341129827_)))))
                   (___match134034134035_
                    (lambda (_e129322129766_
                             _hd129321129769_
                             _tl129320129771_
                             _e129325129774_
                             _hd129324129777_
                             _tl129323129779_
                             _e129328129782_
                             _hd129327129785_
                             _tl129326129787_
                             _e129331129790_
                             _hd129330129793_
                             _tl129329129795_
                             _e129334129798_
                             _hd129333129801_
                             _tl129332129803_
                             _e129337129806_
                             _hd129336129809_
                             _tl129335129811_
                             _e129340129814_
                             _hd129339129817_
                             _tl129338129819_
                             _e129343129822_
                             _hd129342129825_
                             _tl129341129827_
                             _e129346129830_
                             _hd129345129833_
                             _tl129344129835_
                             _e129349129838_
                             _hd129348129841_
                             _tl129347129843_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129341129827_))
                          (___match134036134037_
                           _e129322129766_
                           _hd129321129769_
                           _tl129320129771_
                           _e129325129774_
                           _hd129324129777_
                           _tl129323129779_
                           _e129328129782_
                           _hd129327129785_
                           _tl129326129787_
                           _e129331129790_
                           _hd129330129793_
                           _tl129329129795_
                           _e129334129798_
                           _hd129333129801_
                           _tl129332129803_
                           _e129337129806_
                           _hd129336129809_
                           _tl129335129811_
                           _e129340129814_
                           _hd129339129817_
                           _tl129338129819_
                           _e129343129822_
                           _hd129342129825_
                           _tl129341129827_
                           _e129346129830_
                           _hd129345129833_
                           _tl129344129835_
                           _e129349129838_
                           _hd129348129841_
                           _tl129347129843_)
                          (___match134114134115_
                           _e129322129766_
                           _hd129321129769_
                           _tl129320129771_
                           _e129325129774_
                           _hd129324129777_
                           _tl129323129779_
                           _e129328129782_
                           _hd129327129785_
                           _tl129326129787_
                           _e129331129790_
                           _hd129330129793_
                           _tl129329129795_
                           _e129334129798_
                           _hd129333129801_
                           _tl129332129803_
                           _e129337129806_
                           _hd129336129809_
                           _tl129335129811_
                           _e129340129814_
                           _hd129339129817_
                           _tl129338129819_
                           _e129343129822_
                           _hd129342129825_
                           _tl129341129827_
                           _e129346129830_
                           _hd129345129833_
                           _tl129344129835_
                           _e129349129838_
                           _hd129348129841_
                           _tl129347129843_))))
                   (___match134024134025_
                    (lambda (_e129322129766_
                             _hd129321129769_
                             _tl129320129771_
                             _e129325129774_
                             _hd129324129777_
                             _tl129323129779_
                             _e129328129782_
                             _hd129327129785_
                             _tl129326129787_
                             _e129331129790_
                             _hd129330129793_
                             _tl129329129795_
                             _e129334129798_
                             _hd129333129801_
                             _tl129332129803_
                             _e129337129806_
                             _hd129336129809_
                             _tl129335129811_
                             _e129340129814_
                             _hd129339129817_
                             _tl129338129819_
                             _e129343129822_
                             _hd129342129825_
                             _tl129341129827_
                             _e129346129830_
                             _hd129345129833_
                             _tl129344129835_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd129345129833_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl129344129835_))
                              (let ((_e129349129838_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl129344129835_))))
                                (let ((_tl129347129843_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129349129838_)))
                                      (_hd129348129841_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129349129838_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl129347129843_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl129341129827_))
                                          (___match134036134037_
                                           _e129322129766_
                                           _hd129321129769_
                                           _tl129320129771_
                                           _e129325129774_
                                           _hd129324129777_
                                           _tl129323129779_
                                           _e129328129782_
                                           _hd129327129785_
                                           _tl129326129787_
                                           _e129331129790_
                                           _hd129330129793_
                                           _tl129329129795_
                                           _e129334129798_
                                           _hd129333129801_
                                           _tl129332129803_
                                           _e129337129806_
                                           _hd129336129809_
                                           _tl129335129811_
                                           _e129340129814_
                                           _hd129339129817_
                                           _tl129338129819_
                                           _e129343129822_
                                           _hd129342129825_
                                           _tl129341129827_
                                           _e129346129830_
                                           _hd129345129833_
                                           _tl129344129835_
                                           _e129349129838_
                                           _hd129348129841_
                                           _tl129347129843_)
                                          (___match134114134115_
                                           _e129322129766_
                                           _hd129321129769_
                                           _tl129320129771_
                                           _e129325129774_
                                           _hd129324129777_
                                           _tl129323129779_
                                           _e129328129782_
                                           _hd129327129785_
                                           _tl129326129787_
                                           _e129331129790_
                                           _hd129330129793_
                                           _tl129329129795_
                                           _e129334129798_
                                           _hd129333129801_
                                           _tl129332129803_
                                           _e129337129806_
                                           _hd129336129809_
                                           _tl129335129811_
                                           _e129340129814_
                                           _hd129339129817_
                                           _tl129338129819_
                                           _e129343129822_
                                           _hd129342129825_
                                           _tl129341129827_
                                           _e129346129830_
                                           _hd129345129833_
                                           _tl129344129835_
                                           _e129349129838_
                                           _hd129348129841_
                                           _tl129347129843_))
                                      (___match134238134239_
                                       _e129322129766_
                                       _hd129321129769_
                                       _tl129320129771_
                                       _e129325129774_
                                       _hd129324129777_
                                       _tl129323129779_
                                       _e129328129782_
                                       _hd129327129785_
                                       _tl129326129787_
                                       _e129331129790_
                                       _hd129330129793_
                                       _tl129329129795_
                                       _e129334129798_
                                       _hd129333129801_
                                       _tl129332129803_
                                       _e129337129806_
                                       _hd129336129809_
                                       _tl129335129811_
                                       _e129340129814_
                                       _hd129339129817_
                                       _tl129338129819_
                                       _e129343129822_
                                       _hd129342129825_
                                       _tl129341129827_))))
                              (___match134238134239_
                               _e129322129766_
                               _hd129321129769_
                               _tl129320129771_
                               _e129325129774_
                               _hd129324129777_
                               _tl129323129779_
                               _e129328129782_
                               _hd129327129785_
                               _tl129326129787_
                               _e129331129790_
                               _hd129330129793_
                               _tl129329129795_
                               _e129334129798_
                               _hd129333129801_
                               _tl129332129803_
                               _e129337129806_
                               _hd129336129809_
                               _tl129335129811_
                               _e129340129814_
                               _hd129339129817_
                               _tl129338129819_
                               _e129343129822_
                               _hd129342129825_
                               _tl129341129827_))
                          (___match134238134239_
                           _e129322129766_
                           _hd129321129769_
                           _tl129320129771_
                           _e129325129774_
                           _hd129324129777_
                           _tl129323129779_
                           _e129328129782_
                           _hd129327129785_
                           _tl129326129787_
                           _e129331129790_
                           _hd129330129793_
                           _tl129329129795_
                           _e129334129798_
                           _hd129333129801_
                           _tl129332129803_
                           _e129337129806_
                           _hd129336129809_
                           _tl129335129811_
                           _e129340129814_
                           _hd129339129817_
                           _tl129338129819_
                           _e129343129822_
                           _hd129342129825_
                           _tl129341129827_))))
                   (___match133956133957_
                    (lambda (_e129271129885_
                             _hd129270129888_
                             _tl129269129890_
                             _e129274129893_
                             _hd129273129896_
                             _tl129272129898_
                             _e129277129901_
                             _hd129276129904_
                             _tl129275129906_
                             _e129280129909_
                             _hd129279129912_
                             _tl129278129914_
                             _e129283129917_
                             _hd129282129920_
                             _tl129281129922_
                             _e129286129925_
                             _hd129285129928_
                             _tl129284129930_
                             _e129289129933_
                             _hd129288129936_
                             _tl129287129938_
                             _e129292129941_
                             _hd129291129944_
                             _tl129290129946_
                             _e129295129949_
                             _hd129294129952_
                             _tl129293129954_
                             _e129298129957_
                             _hd129297129960_
                             _tl129296129962_
                             _e129301129965_
                             _hd129300129968_
                             _tl129299129970_
                             _e129304129973_
                             _hd129303129976_
                             _tl129302129978_
                             _e129307129981_
                             _hd129306129984_
                             _tl129305129986_
                             ___splice133749133750_
                             _target129308129989_
                             _tl129310129991_)
                      (letrec ((_loop129311129994_
                                (lambda (_hd129309129997_ _args129315129999_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd129309129997_))
                                      (let ((_e129312130002_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd129309129997_))))
                                        (let ((_lp-tl129314130007_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e129312130002_)))
                                              (_lp-hd129313130005_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e129312130002_))))
                                          (let ((__tmp135115
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd129313130005_
                                                         _args129315129999_))))
                                            (declare (not safe))
                                            (_loop129311129994_
                                             _lp-tl129314130007_
                                             __tmp135115))))
                                      (let ((_args129316130010_
                                             (reverse _args129315129999_)))
                                        (let ((_L130013_ _args129316130010_)
                                              (_L130014_ _hd129306129984_)
                                              (_L130015_ _hd129297129960_)
                                              (_L130016_ _hd129288129936_)
                                              (_L130017_ _hd129279129912_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130017_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130016_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L130015_
                                                      _self129206_)))
                                              (___kont133747133748_
                                               _L130013_
                                               _L130014_
                                               _L130015_
                                               _L130016_
                                               _L130017_)
                                              (___kont133759133760_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop129311129994_ _target129308129989_ '())))))
                   (___match133914133915_
                    (lambda (_e129271129885_
                             _hd129270129888_
                             _tl129269129890_
                             _e129274129893_
                             _hd129273129896_
                             _tl129272129898_
                             _e129277129901_
                             _hd129276129904_
                             _tl129275129906_
                             _e129280129909_
                             _hd129279129912_
                             _tl129278129914_
                             _e129283129917_
                             _hd129282129920_
                             _tl129281129922_
                             _e129286129925_
                             _hd129285129928_
                             _tl129284129930_
                             _e129289129933_
                             _hd129288129936_
                             _tl129287129938_
                             _e129292129941_
                             _hd129291129944_
                             _tl129290129946_
                             _e129295129949_
                             _hd129294129952_
                             _tl129293129954_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd129294129952_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl129293129954_))
                              (let ((_e129298129957_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl129293129954_))))
                                (let ((_tl129296129962_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129298129957_)))
                                      (_hd129297129960_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129298129957_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl129296129962_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl129290129946_))
                                          (let ((_e129301129965_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl129290129946_))))
                                            (let ((_tl129299129970_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e129301129965_)))
                                                  (_hd129300129968_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e129301129965_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd129300129968_))
                                                  (let ((_e129304129973_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd129300129968_))))
                                                    (let ((_tl129302129978_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129304129973_)))
                                                          (_hd129303129976_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129304129973_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd129303129976_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd129303129976_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129302129978_))
                          (let ((_e129307129981_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129302129978_))))
                            (let ((_tl129305129986_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129307129981_)))
                                  (_hd129306129984_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129307129981_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129305129986_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl129299129970_))
                                      (let ((___splice133749133750_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl129299129970_
                                                '0))))
                                        (let ((_tl129310129991_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice133749133750_
                                                  '1)))
                                              (_target129308129989_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice133749133750_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl129310129991_))
                                              (___match133956133957_
                                               _e129271129885_
                                               _hd129270129888_
                                               _tl129269129890_
                                               _e129274129893_
                                               _hd129273129896_
                                               _tl129272129898_
                                               _e129277129901_
                                               _hd129276129904_
                                               _tl129275129906_
                                               _e129280129909_
                                               _hd129279129912_
                                               _tl129278129914_
                                               _e129283129917_
                                               _hd129282129920_
                                               _tl129281129922_
                                               _e129286129925_
                                               _hd129285129928_
                                               _tl129284129930_
                                               _e129289129933_
                                               _hd129288129936_
                                               _tl129287129938_
                                               _e129292129941_
                                               _hd129291129944_
                                               _tl129290129946_
                                               _e129295129949_
                                               _hd129294129952_
                                               _tl129293129954_
                                               _e129298129957_
                                               _hd129297129960_
                                               _tl129296129962_
                                               _e129301129965_
                                               _hd129300129968_
                                               _tl129299129970_
                                               _e129304129973_
                                               _hd129303129976_
                                               _tl129302129978_
                                               _e129307129981_
                                               _hd129306129984_
                                               _tl129305129986_
                                               ___splice133749133750_
                                               _target129308129989_
                                               _tl129310129991_)
                                              (___kont133759133760_))))
                                      (___kont133759133760_))
                                  (___kont133759133760_))))
                          (___kont133759133760_))
                      (___kont133759133760_))
                  (___kont133759133760_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133759133760_))))
                                          (___match134238134239_
                                           _e129271129885_
                                           _hd129270129888_
                                           _tl129269129890_
                                           _e129274129893_
                                           _hd129273129896_
                                           _tl129272129898_
                                           _e129277129901_
                                           _hd129276129904_
                                           _tl129275129906_
                                           _e129280129909_
                                           _hd129279129912_
                                           _tl129278129914_
                                           _e129283129917_
                                           _hd129282129920_
                                           _tl129281129922_
                                           _e129286129925_
                                           _hd129285129928_
                                           _tl129284129930_
                                           _e129289129933_
                                           _hd129288129936_
                                           _tl129287129938_
                                           _e129292129941_
                                           _hd129291129944_
                                           _tl129290129946_))
                                      (___match134238134239_
                                       _e129271129885_
                                       _hd129270129888_
                                       _tl129269129890_
                                       _e129274129893_
                                       _hd129273129896_
                                       _tl129272129898_
                                       _e129277129901_
                                       _hd129276129904_
                                       _tl129275129906_
                                       _e129280129909_
                                       _hd129279129912_
                                       _tl129278129914_
                                       _e129283129917_
                                       _hd129282129920_
                                       _tl129281129922_
                                       _e129286129925_
                                       _hd129285129928_
                                       _tl129284129930_
                                       _e129289129933_
                                       _hd129288129936_
                                       _tl129287129938_
                                       _e129292129941_
                                       _hd129291129944_
                                       _tl129290129946_))))
                              (___match134238134239_
                               _e129271129885_
                               _hd129270129888_
                               _tl129269129890_
                               _e129274129893_
                               _hd129273129896_
                               _tl129272129898_
                               _e129277129901_
                               _hd129276129904_
                               _tl129275129906_
                               _e129280129909_
                               _hd129279129912_
                               _tl129278129914_
                               _e129283129917_
                               _hd129282129920_
                               _tl129281129922_
                               _e129286129925_
                               _hd129285129928_
                               _tl129284129930_
                               _e129289129933_
                               _hd129288129936_
                               _tl129287129938_
                               _e129292129941_
                               _hd129291129944_
                               _tl129290129946_))
                          (___match134024134025_
                           _e129271129885_
                           _hd129270129888_
                           _tl129269129890_
                           _e129274129893_
                           _hd129273129896_
                           _tl129272129898_
                           _e129277129901_
                           _hd129276129904_
                           _tl129275129906_
                           _e129280129909_
                           _hd129279129912_
                           _tl129278129914_
                           _e129283129917_
                           _hd129282129920_
                           _tl129281129922_
                           _e129286129925_
                           _hd129285129928_
                           _tl129284129930_
                           _e129289129933_
                           _hd129288129936_
                           _tl129287129938_
                           _e129292129941_
                           _hd129291129944_
                           _tl129290129946_
                           _e129295129949_
                           _hd129294129952_
                           _tl129293129954_))))
                   (___match133846133847_
                    (lambda (_e129227130074_
                             _hd129226130077_
                             _tl129225130079_
                             _e129230130082_
                             _hd129229130085_
                             _tl129228130087_
                             _e129233130090_
                             _hd129232130093_
                             _tl129231130095_
                             _e129236130098_
                             _hd129235130101_
                             _tl129234130103_
                             _e129239130106_
                             _hd129238130109_
                             _tl129237130111_
                             _e129242130114_
                             _hd129241130117_
                             _tl129240130119_
                             _e129245130122_
                             _hd129244130125_
                             _tl129243130127_
                             _e129248130130_
                             _hd129247130133_
                             _tl129246130135_
                             _e129251130138_
                             _hd129250130141_
                             _tl129249130143_
                             _e129254130146_
                             _hd129253130149_
                             _tl129252130151_
                             ___splice133745133746_
                             _target129255130154_
                             _tl129257130156_)
                      (letrec ((_loop129258130159_
                                (lambda (_hd129256130162_ _args129262130164_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd129256130162_))
                                      (let ((_e129259130167_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd129256130162_))))
                                        (let ((_lp-tl129261130172_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e129259130167_)))
                                              (_lp-hd129260130170_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e129259130167_))))
                                          (let ((__tmp135116
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd129260130170_
                                                         _args129262130164_))))
                                            (declare (not safe))
                                            (_loop129258130159_
                                             _lp-tl129261130172_
                                             __tmp135116))))
                                      (let ((_args129263130175_
                                             (reverse _args129262130164_)))
                                        (let ((_L130178_ _args129263130175_)
                                              (_L130179_ _hd129253130149_)
                                              (_L130180_ _hd129244130125_)
                                              (_L130181_ _hd129235130101_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130181_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L130180_
                                                      _self129206_)))
                                              (___kont133743133744_
                                               _L130178_
                                               _L130179_
                                               _L130180_
                                               _L130181_)
                                              (___match134034134035_
                                               _e129227130074_
                                               _hd129226130077_
                                               _tl129225130079_
                                               _e129230130082_
                                               _hd129229130085_
                                               _tl129228130087_
                                               _e129233130090_
                                               _hd129232130093_
                                               _tl129231130095_
                                               _e129236130098_
                                               _hd129235130101_
                                               _tl129234130103_
                                               _e129239130106_
                                               _hd129238130109_
                                               _tl129237130111_
                                               _e129242130114_
                                               _hd129241130117_
                                               _tl129240130119_
                                               _e129245130122_
                                               _hd129244130125_
                                               _tl129243130127_
                                               _e129248130130_
                                               _hd129247130133_
                                               _tl129246130135_
                                               _e129251130138_
                                               _hd129250130141_
                                               _tl129249130143_
                                               _e129254130146_
                                               _hd129253130149_
                                               _tl129252130151_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop129258130159_ _target129255130154_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx133741133742_))
                  (let ((_e129227130074_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx133741133742_))))
                    (let ((_tl129225130079_
                           (let ()
                             (declare (not safe))
                             (##cdr _e129227130074_)))
                          (_hd129226130077_
                           (let ()
                             (declare (not safe))
                             (##car _e129227130074_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129225130079_))
                          (let ((_e129230130082_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129225130079_))))
                            (let ((_tl129228130087_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129230130082_)))
                                  (_hd129229130085_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129230130082_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd129229130085_))
                                  (let ((_e129233130090_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd129229130085_))))
                                    (let ((_tl129231130095_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e129233130090_)))
                                          (_hd129232130093_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e129233130090_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd129232130093_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd129232130093_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl129231130095_))
                                                  (let ((_e129236130098_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl129231130095_))))
                                                    (let ((_tl129234130103_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129236130098_)))
                                                          (_hd129235130101_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129236130098_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl129234130103_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl129228130087_))
                      (let ((_e129239130106_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl129228130087_))))
                        (let ((_tl129237130111_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129239130106_)))
                              (_hd129238130109_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129239130106_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd129238130109_))
                              (let ((_e129242130114_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd129238130109_))))
                                (let ((_tl129240130119_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129242130114_)))
                                      (_hd129241130117_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129242130114_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd129241130117_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd129241130117_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl129240130119_))
                                              (let ((_e129245130122_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl129240130119_))))
                                                (let ((_tl129243130127_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e129245130122_)))
                                                      (_hd129244130125_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e129245130122_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl129243130127_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl129237130111_))
                                                          (let ((_e129248130130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl129237130111_))))
                    (let ((_tl129246130135_
                           (let ()
                             (declare (not safe))
                             (##cdr _e129248130130_)))
                          (_hd129247130133_
                           (let ()
                             (declare (not safe))
                             (##car _e129248130130_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd129247130133_))
                          (let ((_e129251130138_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd129247130133_))))
                            (let ((_tl129249130143_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129251130138_)))
                                  (_hd129250130141_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129251130138_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd129250130141_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd129250130141_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl129249130143_))
                                          (let ((_e129254130146_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl129249130143_))))
                                            (let ((_tl129252130151_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e129254130146_)))
                                                  (_hd129253130149_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e129254130146_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl129252130151_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl129246130135_))
                                                      (let ((___splice133745133746_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl129246130135_ '0))))
                (let ((_tl129257130156_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice133745133746_ '1)))
                      (_target129255130154_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice133745133746_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl129257130156_))
                      (___match133846133847_
                       _e129227130074_
                       _hd129226130077_
                       _tl129225130079_
                       _e129230130082_
                       _hd129229130085_
                       _tl129228130087_
                       _e129233130090_
                       _hd129232130093_
                       _tl129231130095_
                       _e129236130098_
                       _hd129235130101_
                       _tl129234130103_
                       _e129239130106_
                       _hd129238130109_
                       _tl129237130111_
                       _e129242130114_
                       _hd129241130117_
                       _tl129240130119_
                       _e129245130122_
                       _hd129244130125_
                       _tl129243130127_
                       _e129248130130_
                       _hd129247130133_
                       _tl129246130135_
                       _e129251130138_
                       _hd129250130141_
                       _tl129249130143_
                       _e129254130146_
                       _hd129253130149_
                       _tl129252130151_
                       ___splice133745133746_
                       _target129255130154_
                       _tl129257130156_)
                      (___match134034134035_
                       _e129227130074_
                       _hd129226130077_
                       _tl129225130079_
                       _e129230130082_
                       _hd129229130085_
                       _tl129228130087_
                       _e129233130090_
                       _hd129232130093_
                       _tl129231130095_
                       _e129236130098_
                       _hd129235130101_
                       _tl129234130103_
                       _e129239130106_
                       _hd129238130109_
                       _tl129237130111_
                       _e129242130114_
                       _hd129241130117_
                       _tl129240130119_
                       _e129245130122_
                       _hd129244130125_
                       _tl129243130127_
                       _e129248130130_
                       _hd129247130133_
                       _tl129246130135_
                       _e129251130138_
                       _hd129250130141_
                       _tl129249130143_
                       _e129254130146_
                       _hd129253130149_
                       _tl129252130151_))))
              (___match134034134035_
               _e129227130074_
               _hd129226130077_
               _tl129225130079_
               _e129230130082_
               _hd129229130085_
               _tl129228130087_
               _e129233130090_
               _hd129232130093_
               _tl129231130095_
               _e129236130098_
               _hd129235130101_
               _tl129234130103_
               _e129239130106_
               _hd129238130109_
               _tl129237130111_
               _e129242130114_
               _hd129241130117_
               _tl129240130119_
               _e129245130122_
               _hd129244130125_
               _tl129243130127_
               _e129248130130_
               _hd129247130133_
               _tl129246130135_
               _e129251130138_
               _hd129250130141_
               _tl129249130143_
               _e129254130146_
               _hd129253130149_
               _tl129252130151_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match134238134239_
                                                   _e129227130074_
                                                   _hd129226130077_
                                                   _tl129225130079_
                                                   _e129230130082_
                                                   _hd129229130085_
                                                   _tl129228130087_
                                                   _e129233130090_
                                                   _hd129232130093_
                                                   _tl129231130095_
                                                   _e129236130098_
                                                   _hd129235130101_
                                                   _tl129234130103_
                                                   _e129239130106_
                                                   _hd129238130109_
                                                   _tl129237130111_
                                                   _e129242130114_
                                                   _hd129241130117_
                                                   _tl129240130119_
                                                   _e129245130122_
                                                   _hd129244130125_
                                                   _tl129243130127_
                                                   _e129248130130_
                                                   _hd129247130133_
                                                   _tl129246130135_))))
                                          (___match134238134239_
                                           _e129227130074_
                                           _hd129226130077_
                                           _tl129225130079_
                                           _e129230130082_
                                           _hd129229130085_
                                           _tl129228130087_
                                           _e129233130090_
                                           _hd129232130093_
                                           _tl129231130095_
                                           _e129236130098_
                                           _hd129235130101_
                                           _tl129234130103_
                                           _e129239130106_
                                           _hd129238130109_
                                           _tl129237130111_
                                           _e129242130114_
                                           _hd129241130117_
                                           _tl129240130119_
                                           _e129245130122_
                                           _hd129244130125_
                                           _tl129243130127_
                                           _e129248130130_
                                           _hd129247130133_
                                           _tl129246130135_))
                                      (___match133914133915_
                                       _e129227130074_
                                       _hd129226130077_
                                       _tl129225130079_
                                       _e129230130082_
                                       _hd129229130085_
                                       _tl129228130087_
                                       _e129233130090_
                                       _hd129232130093_
                                       _tl129231130095_
                                       _e129236130098_
                                       _hd129235130101_
                                       _tl129234130103_
                                       _e129239130106_
                                       _hd129238130109_
                                       _tl129237130111_
                                       _e129242130114_
                                       _hd129241130117_
                                       _tl129240130119_
                                       _e129245130122_
                                       _hd129244130125_
                                       _tl129243130127_
                                       _e129248130130_
                                       _hd129247130133_
                                       _tl129246130135_
                                       _e129251130138_
                                       _hd129250130141_
                                       _tl129249130143_))
                                  (___match134238134239_
                                   _e129227130074_
                                   _hd129226130077_
                                   _tl129225130079_
                                   _e129230130082_
                                   _hd129229130085_
                                   _tl129228130087_
                                   _e129233130090_
                                   _hd129232130093_
                                   _tl129231130095_
                                   _e129236130098_
                                   _hd129235130101_
                                   _tl129234130103_
                                   _e129239130106_
                                   _hd129238130109_
                                   _tl129237130111_
                                   _e129242130114_
                                   _hd129241130117_
                                   _tl129240130119_
                                   _e129245130122_
                                   _hd129244130125_
                                   _tl129243130127_
                                   _e129248130130_
                                   _hd129247130133_
                                   _tl129246130135_))))
                          (___match134238134239_
                           _e129227130074_
                           _hd129226130077_
                           _tl129225130079_
                           _e129230130082_
                           _hd129229130085_
                           _tl129228130087_
                           _e129233130090_
                           _hd129232130093_
                           _tl129231130095_
                           _e129236130098_
                           _hd129235130101_
                           _tl129234130103_
                           _e129239130106_
                           _hd129238130109_
                           _tl129237130111_
                           _e129242130114_
                           _hd129241130117_
                           _tl129240130119_
                           _e129245130122_
                           _hd129244130125_
                           _tl129243130127_
                           _e129248130130_
                           _hd129247130133_
                           _tl129246130135_))))
                  (___match134176134177_
                   _e129227130074_
                   _hd129226130077_
                   _tl129225130079_
                   _e129230130082_
                   _hd129229130085_
                   _tl129228130087_
                   _e129233130090_
                   _hd129232130093_
                   _tl129231130095_
                   _e129236130098_
                   _hd129235130101_
                   _tl129234130103_
                   _e129239130106_
                   _hd129238130109_
                   _tl129237130111_
                   _e129242130114_
                   _hd129241130117_
                   _tl129240130119_
                   _e129245130122_
                   _hd129244130125_
                   _tl129243130127_))
              (___kont133759133760_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont133759133760_))
                                          (___kont133759133760_))
                                      (___kont133759133760_))))
                              (___kont133759133760_))))
                      (___kont133759133760_))
                  (___kont133759133760_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133759133760_))
                                              (___kont133759133760_))
                                          (___kont133759133760_))))
                                  (___kont133759133760_))))
                          (___kont133759133760_))))
                  (___kont133759133760_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx128151_
               _self128152_
               _$t128153_
               _methods128154_
               _slots128155_
               _class-check128156_
               _struct-check128157_
               _struct-assert128158_)
        (letrec ((_force-e128160_
                  (lambda (_what129203_)
                    (let ((__tmp135117
                           (let ((__tmp135121
                                  (let ((__tmp135122
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp135122)))
                                 (__tmp135118
                                  (let ((__tmp135119
                                         (let ((__tmp135120
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what129203_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp135120))))
                                    (declare (not safe))
                                    (cons __tmp135119 '()))))
                             (declare (not safe))
                             (cons __tmp135121 __tmp135118))))
                      (declare (not safe))
                      (cons '%#call __tmp135117)))))
          (let* ((___stx134243134244_ _stx128151_)
                 (_g128168128390_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134243134244_)))))
            (let ((___kont134245134246_
                   (lambda (_L129149_ _L129150_ _L129151_ _L129152_)
                     (let ((_$method129197_
                            (let ((__tmp135123
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129150_))))
                              (declare (not safe))
                              (hash-ref__0 _methods128154_ __tmp135123)))
                           (_args129198_
                            (map (lambda (_g129185129187_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g129185129187_
                                      _self128152_
                                      _$t128153_
                                      _methods128154_
                                      _slots128155_
                                      _class-check128156_
                                      _struct-check128157_
                                      _struct-assert128158_)))
                                 (let ((__tmp135124
                                        (lambda (_g129189129192_
                                                 _g129190129194_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g129189129192_
                                                  _g129190129194_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135124 '() _L129149_)))))
                       (let ((__tmp135125
                              (let ((__tmp135126
                                     (let ((__tmp135130
                                            (let ()
                                              (declare (not safe))
                                              (_force-e128160_
                                               _$method129197_)))
                                           (__tmp135127
                                            (let ((__tmp135128
                                                   (let ((__tmp135129
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self128152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135129))))
                                              (declare (not safe))
                                              (cons __tmp135128
                                                    _args129198_))))
                                       (declare (not safe))
                                       (cons __tmp135130 __tmp135127))))
                                (declare (not safe))
                                (cons '%#call __tmp135126))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135125 _stx128151_)))))
                  (___kont134249134250_
                   (lambda (_L128981_ _L128982_ _L128983_ _L128984_ _L128985_)
                     (let ((_$method129037_
                            (let ((__tmp135131
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L128982_))))
                              (declare (not safe))
                              (hash-ref__0 _methods128154_ __tmp135131)))
                           (_args129038_
                            (map (lambda (_g129025129027_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g129025129027_
                                      _self128152_
                                      _$t128153_
                                      _methods128154_
                                      _slots128155_
                                      _class-check128156_
                                      _struct-check128157_
                                      _struct-assert128158_)))
                                 (let ((__tmp135132
                                        (lambda (_g129029129032_
                                                 _g129030129034_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g129029129032_
                                                  _g129030129034_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135132 '() _L128981_)))))
                       (let ((__tmp135133
                              (let ((__tmp135134
                                     (let ((__tmp135140
                                            (let ((__tmp135141
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135141)))
                                           (__tmp135135
                                            (let ((__tmp135139
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e128160_
                                                      _$method129037_)))
                                                  (__tmp135136
                                                   (let ((__tmp135137
                                                          (let ((__tmp135138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self128152_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135138))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135137
                                                           _args129038_))))
                                              (declare (not safe))
                                              (cons __tmp135139 __tmp135136))))
                                       (declare (not safe))
                                       (cons __tmp135140 __tmp135135))))
                                (declare (not safe))
                                (cons '%#call __tmp135134))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135133 _stx128151_)))))
                  (___kont134253134254_
                   (lambda (_L128812_ _L128813_ _L128814_)
                     (let* ((_$field128846_
                             (let ((__tmp135142
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L128812_))))
                               (declare (not safe))
                               (hash-ref__0 _slots128155_ __tmp135142)))
                            (__tmp135143
                             (let ((__tmp135144
                                    (let ((__tmp135151
                                           (let ((__tmp135152
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t128153_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135152)))
                                          (__tmp135145
                                           (let ((__tmp135149
                                                  (let ((__tmp135150
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field128846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135150)))
                                                 (__tmp135146
                                                  (let ((__tmp135147
                                                         (let ((__tmp135148
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self128152_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp135148))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135147 '()))))
                                             (declare (not safe))
                                             (cons __tmp135149 __tmp135146))))
                                      (declare (not safe))
                                      (cons __tmp135151 __tmp135145))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp135144))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp135143 _stx128151_))))
                  (___kont134255134256_
                   (lambda (_L128686_ _L128687_ _L128688_ _L128689_)
                     (let ((_$field128724_
                            (let ((__tmp135153
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L128687_))))
                              (declare (not safe))
                              (hash-ref__0 _slots128155_ __tmp135153)))
                           (_expr128725_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L128686_
                               _self128152_
                               _$t128153_
                               _methods128154_
                               _slots128155_
                               _class-check128156_
                               _struct-check128157_
                               _struct-assert128158_))))
                       (let ((__tmp135154
                              (let ((__tmp135155
                                     (let ((__tmp135163
                                            (let ((__tmp135164
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t128153_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135164)))
                                           (__tmp135156
                                            (let ((__tmp135161
                                                   (let ((__tmp135162
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field128724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135162)))
                                                  (__tmp135157
                                                   (let ((__tmp135159
                                                          (let ((__tmp135160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self128152_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135160)))
                 (__tmp135158
                  (let () (declare (not safe)) (cons _expr128725_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135159
                                                           __tmp135158))))
                                              (declare (not safe))
                                              (cons __tmp135161 __tmp135157))))
                                       (declare (not safe))
                                       (cons __tmp135163 __tmp135156))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp135155))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135154 _stx128151_)))))
                  (___kont134257134258_
                   (lambda (_L128565_ _L128566_)
                     (let* ((_slot128588_
                             (##structure-ref
                              (let ((__tmp135165
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L128566_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp135165))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field128590_
                             (let ()
                               (declare (not safe))
                               (hash-ref__0 _slots128155_ _slot128588_))))
                       (let ((__tmp135166
                              (let ((__tmp135167
                                     (let ((__tmp135174
                                            (let ((__tmp135175
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t128153_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135175)))
                                           (__tmp135168
                                            (let ((__tmp135172
                                                   (let ((__tmp135173
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field128590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135173)))
                                                  (__tmp135169
                                                   (let ((__tmp135170
                                                          (let ((__tmp135171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self128152_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135171))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135170 '()))))
                                              (declare (not safe))
                                              (cons __tmp135172 __tmp135169))))
                                       (declare (not safe))
                                       (cons __tmp135174 __tmp135168))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp135167))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135166 _stx128151_)))))
                  (___kont134259134260_
                   (lambda (_L128466_ _L128467_ _L128468_)
                     (let* ((_slot128497_
                             (##structure-ref
                              (let ((__tmp135176
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L128468_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp135176))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field128499_
                             (let ()
                               (declare (not safe))
                               (hash-ref__0 _slots128155_ _slot128497_)))
                            (_expr128501_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L128466_
                                _self128152_
                                _$t128153_
                                _methods128154_
                                _slots128155_
                                _class-check128156_
                                _struct-check128157_
                                _struct-assert128158_))))
                       (let ((__tmp135177
                              (let ((__tmp135178
                                     (let ((__tmp135186
                                            (let ((__tmp135187
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t128153_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135187)))
                                           (__tmp135179
                                            (let ((__tmp135184
                                                   (let ((__tmp135185
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field128499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135185)))
                                                  (__tmp135180
                                                   (let ((__tmp135182
                                                          (let ((__tmp135183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self128152_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135183)))
                 (__tmp135181
                  (let () (declare (not safe)) (cons _expr128501_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135182
                                                           __tmp135181))))
                                              (declare (not safe))
                                              (cons __tmp135184 __tmp135180))))
                                       (declare (not safe))
                                       (cons __tmp135186 __tmp135179))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp135178))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135177 _stx128151_)))))
                  (___kont134261134262_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx128151_
                        _self128152_
                        _$t128153_
                        _methods128154_
                        _slots128155_
                        _class-check128156_
                        _struct-check128157_
                        _struct-assert128158_)))))
              (let* ((___match134742134743_
                      (lambda (_e128364128402_
                               _hd128363128405_
                               _tl128362128407_
                               _e128367128410_
                               _hd128366128413_
                               _tl128365128415_
                               _e128370128418_
                               _hd128369128421_
                               _tl128368128423_
                               _e128373128426_
                               _hd128372128429_
                               _tl128371128431_
                               _e128376128434_
                               _hd128375128437_
                               _tl128374128439_
                               _e128379128442_
                               _hd128378128445_
                               _tl128377128447_
                               _e128382128450_
                               _hd128381128453_
                               _tl128380128455_
                               _e128385128458_
                               _hd128384128461_
                               _tl128383128463_)
                        (let ((_L128466_ _hd128384128461_)
                              (_L128467_ _hd128381128453_)
                              (_L128468_ _hd128372128429_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128467_
                                      _self128152_))
                                   (let ((__tmp135188
                                          (let ((__tmp135189
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L128468_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135189))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135188
                                      'gxc#!mutator::t)))
                              (___kont134259134260_
                               _L128466_
                               _L128467_
                               _L128468_)
                              (___kont134261134262_)))))
                     (___match134740134741_
                      (lambda (_e128364128402_
                               _hd128363128405_
                               _tl128362128407_
                               _e128367128410_
                               _hd128366128413_
                               _tl128365128415_
                               _e128370128418_
                               _hd128369128421_
                               _tl128368128423_
                               _e128373128426_
                               _hd128372128429_
                               _tl128371128431_
                               _e128376128434_
                               _hd128375128437_
                               _tl128374128439_
                               _e128379128442_
                               _hd128378128445_
                               _tl128377128447_
                               _e128382128450_
                               _hd128381128453_
                               _tl128380128455_
                               _e128385128458_
                               _hd128384128461_
                               _tl128383128463_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128383128463_))
                            (___match134742134743_
                             _e128364128402_
                             _hd128363128405_
                             _tl128362128407_
                             _e128367128410_
                             _hd128366128413_
                             _tl128365128415_
                             _e128370128418_
                             _hd128369128421_
                             _tl128368128423_
                             _e128373128426_
                             _hd128372128429_
                             _tl128371128431_
                             _e128376128434_
                             _hd128375128437_
                             _tl128374128439_
                             _e128379128442_
                             _hd128378128445_
                             _tl128377128447_
                             _e128382128450_
                             _hd128381128453_
                             _tl128380128455_
                             _e128385128458_
                             _hd128384128461_
                             _tl128383128463_)
                            (___kont134261134262_))))
                     (___match134734134735_
                      (lambda (_e128364128402_
                               _hd128363128405_
                               _tl128362128407_
                               _e128367128410_
                               _hd128366128413_
                               _tl128365128415_
                               _e128370128418_
                               _hd128369128421_
                               _tl128368128423_
                               _e128373128426_
                               _hd128372128429_
                               _tl128371128431_
                               _e128376128434_
                               _hd128375128437_
                               _tl128374128439_
                               _e128379128442_
                               _hd128378128445_
                               _tl128377128447_
                               _e128382128450_
                               _hd128381128453_
                               _tl128380128455_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128374128439_))
                            (let ((_e128385128458_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128374128439_))))
                              (let ((_tl128383128463_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128385128458_)))
                                    (_hd128384128461_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128385128458_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128383128463_))
                                    (___match134742134743_
                                     _e128364128402_
                                     _hd128363128405_
                                     _tl128362128407_
                                     _e128367128410_
                                     _hd128366128413_
                                     _tl128365128415_
                                     _e128370128418_
                                     _hd128369128421_
                                     _tl128368128423_
                                     _e128373128426_
                                     _hd128372128429_
                                     _tl128371128431_
                                     _e128376128434_
                                     _hd128375128437_
                                     _tl128374128439_
                                     _e128379128442_
                                     _hd128378128445_
                                     _tl128377128447_
                                     _e128382128450_
                                     _hd128381128453_
                                     _tl128380128455_
                                     _e128385128458_
                                     _hd128384128461_
                                     _tl128383128463_)
                                    (___kont134261134262_))))
                            (___kont134261134262_))))
                     (___match134680134681_
                      (lambda (_e128340128509_
                               _hd128339128512_
                               _tl128338128514_
                               _e128343128517_
                               _hd128342128520_
                               _tl128341128522_
                               _e128346128525_
                               _hd128345128528_
                               _tl128344128530_
                               _e128349128533_
                               _hd128348128536_
                               _tl128347128538_
                               _e128352128541_
                               _hd128351128544_
                               _tl128350128546_
                               _e128355128549_
                               _hd128354128552_
                               _tl128353128554_
                               _e128358128557_
                               _hd128357128560_
                               _tl128356128562_)
                        (let ((_L128565_ _hd128357128560_)
                              (_L128566_ _hd128348128536_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128565_
                                      _self128152_))
                                   (let ((__tmp135190
                                          (let ((__tmp135191
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L128566_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135191))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135190
                                      'gxc#!accessor::t)))
                              (___kont134257134258_ _L128565_ _L128566_)
                              (___kont134261134262_)))))
                     (___match134678134679_
                      (lambda (_e128340128509_
                               _hd128339128512_
                               _tl128338128514_
                               _e128343128517_
                               _hd128342128520_
                               _tl128341128522_
                               _e128346128525_
                               _hd128345128528_
                               _tl128344128530_
                               _e128349128533_
                               _hd128348128536_
                               _tl128347128538_
                               _e128352128541_
                               _hd128351128544_
                               _tl128350128546_
                               _e128355128549_
                               _hd128354128552_
                               _tl128353128554_
                               _e128358128557_
                               _hd128357128560_
                               _tl128356128562_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128350128546_))
                            (___match134680134681_
                             _e128340128509_
                             _hd128339128512_
                             _tl128338128514_
                             _e128343128517_
                             _hd128342128520_
                             _tl128341128522_
                             _e128346128525_
                             _hd128345128528_
                             _tl128344128530_
                             _e128349128533_
                             _hd128348128536_
                             _tl128347128538_
                             _e128352128541_
                             _hd128351128544_
                             _tl128350128546_
                             _e128355128549_
                             _hd128354128552_
                             _tl128353128554_
                             _e128358128557_
                             _hd128357128560_
                             _tl128356128562_)
                            (___match134734134735_
                             _e128340128509_
                             _hd128339128512_
                             _tl128338128514_
                             _e128343128517_
                             _hd128342128520_
                             _tl128341128522_
                             _e128346128525_
                             _hd128345128528_
                             _tl128344128530_
                             _e128349128533_
                             _hd128348128536_
                             _tl128347128538_
                             _e128352128541_
                             _hd128351128544_
                             _tl128350128546_
                             _e128355128549_
                             _hd128354128552_
                             _tl128353128554_
                             _e128358128557_
                             _hd128357128560_
                             _tl128356128562_))))
                     (___match134624134625_
                      (lambda (_e128305128598_
                               _hd128304128601_
                               _tl128303128603_
                               _e128308128606_
                               _hd128307128609_
                               _tl128306128611_
                               _e128311128614_
                               _hd128310128617_
                               _tl128309128619_
                               _e128314128622_
                               _hd128313128625_
                               _tl128312128627_
                               _e128317128630_
                               _hd128316128633_
                               _tl128315128635_
                               _e128320128638_
                               _hd128319128641_
                               _tl128318128643_
                               _e128323128646_
                               _hd128322128649_
                               _tl128321128651_
                               _e128326128654_
                               _hd128325128657_
                               _tl128324128659_
                               _e128329128662_
                               _hd128328128665_
                               _tl128327128667_
                               _e128332128670_
                               _hd128331128673_
                               _tl128330128675_
                               _e128335128678_
                               _hd128334128681_
                               _tl128333128683_)
                        (let ((_L128686_ _hd128334128681_)
                              (_L128687_ _hd128331128673_)
                              (_L128688_ _hd128322128649_)
                              (_L128689_ _hd128313128625_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128689_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128689_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128688_
                                      _self128152_)))
                              (___kont134255134256_
                               _L128686_
                               _L128687_
                               _L128688_
                               _L128689_)
                              (___kont134261134262_)))))
                     (___match134616134617_
                      (lambda (_e128305128598_
                               _hd128304128601_
                               _tl128303128603_
                               _e128308128606_
                               _hd128307128609_
                               _tl128306128611_
                               _e128311128614_
                               _hd128310128617_
                               _tl128309128619_
                               _e128314128622_
                               _hd128313128625_
                               _tl128312128627_
                               _e128317128630_
                               _hd128316128633_
                               _tl128315128635_
                               _e128320128638_
                               _hd128319128641_
                               _tl128318128643_
                               _e128323128646_
                               _hd128322128649_
                               _tl128321128651_
                               _e128326128654_
                               _hd128325128657_
                               _tl128324128659_
                               _e128329128662_
                               _hd128328128665_
                               _tl128327128667_
                               _e128332128670_
                               _hd128331128673_
                               _tl128330128675_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128324128659_))
                            (let ((_e128335128678_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128324128659_))))
                              (let ((_tl128333128683_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128335128678_)))
                                    (_hd128334128681_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128335128678_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128333128683_))
                                    (___match134624134625_
                                     _e128305128598_
                                     _hd128304128601_
                                     _tl128303128603_
                                     _e128308128606_
                                     _hd128307128609_
                                     _tl128306128611_
                                     _e128311128614_
                                     _hd128310128617_
                                     _tl128309128619_
                                     _e128314128622_
                                     _hd128313128625_
                                     _tl128312128627_
                                     _e128317128630_
                                     _hd128316128633_
                                     _tl128315128635_
                                     _e128320128638_
                                     _hd128319128641_
                                     _tl128318128643_
                                     _e128323128646_
                                     _hd128322128649_
                                     _tl128321128651_
                                     _e128326128654_
                                     _hd128325128657_
                                     _tl128324128659_
                                     _e128329128662_
                                     _hd128328128665_
                                     _tl128327128667_
                                     _e128332128670_
                                     _hd128331128673_
                                     _tl128330128675_
                                     _e128335128678_
                                     _hd128334128681_
                                     _tl128333128683_)
                                    (___kont134261134262_))))
                            (___match134740134741_
                             _e128305128598_
                             _hd128304128601_
                             _tl128303128603_
                             _e128308128606_
                             _hd128307128609_
                             _tl128306128611_
                             _e128311128614_
                             _hd128310128617_
                             _tl128309128619_
                             _e128314128622_
                             _hd128313128625_
                             _tl128312128627_
                             _e128317128630_
                             _hd128316128633_
                             _tl128315128635_
                             _e128320128638_
                             _hd128319128641_
                             _tl128318128643_
                             _e128323128646_
                             _hd128322128649_
                             _tl128321128651_
                             _e128326128654_
                             _hd128325128657_
                             _tl128324128659_))))
                     (___match134538134539_
                      (lambda (_e128271128732_
                               _hd128270128735_
                               _tl128269128737_
                               _e128274128740_
                               _hd128273128743_
                               _tl128272128745_
                               _e128277128748_
                               _hd128276128751_
                               _tl128275128753_
                               _e128280128756_
                               _hd128279128759_
                               _tl128278128761_
                               _e128283128764_
                               _hd128282128767_
                               _tl128281128769_
                               _e128286128772_
                               _hd128285128775_
                               _tl128284128777_
                               _e128289128780_
                               _hd128288128783_
                               _tl128287128785_
                               _e128292128788_
                               _hd128291128791_
                               _tl128290128793_
                               _e128295128796_
                               _hd128294128799_
                               _tl128293128801_
                               _e128298128804_
                               _hd128297128807_
                               _tl128296128809_)
                        (let ((_L128812_ _hd128297128807_)
                              (_L128813_ _hd128288128783_)
                              (_L128814_ _hd128279128759_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128814_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128814_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128813_
                                      _self128152_)))
                              (___kont134253134254_
                               _L128812_
                               _L128813_
                               _L128814_)
                              (___match134742134743_
                               _e128271128732_
                               _hd128270128735_
                               _tl128269128737_
                               _e128274128740_
                               _hd128273128743_
                               _tl128272128745_
                               _e128277128748_
                               _hd128276128751_
                               _tl128275128753_
                               _e128280128756_
                               _hd128279128759_
                               _tl128278128761_
                               _e128283128764_
                               _hd128282128767_
                               _tl128281128769_
                               _e128286128772_
                               _hd128285128775_
                               _tl128284128777_
                               _e128289128780_
                               _hd128288128783_
                               _tl128287128785_
                               _e128292128788_
                               _hd128291128791_
                               _tl128290128793_)))))
                     (___match134536134537_
                      (lambda (_e128271128732_
                               _hd128270128735_
                               _tl128269128737_
                               _e128274128740_
                               _hd128273128743_
                               _tl128272128745_
                               _e128277128748_
                               _hd128276128751_
                               _tl128275128753_
                               _e128280128756_
                               _hd128279128759_
                               _tl128278128761_
                               _e128283128764_
                               _hd128282128767_
                               _tl128281128769_
                               _e128286128772_
                               _hd128285128775_
                               _tl128284128777_
                               _e128289128780_
                               _hd128288128783_
                               _tl128287128785_
                               _e128292128788_
                               _hd128291128791_
                               _tl128290128793_
                               _e128295128796_
                               _hd128294128799_
                               _tl128293128801_
                               _e128298128804_
                               _hd128297128807_
                               _tl128296128809_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128290128793_))
                            (___match134538134539_
                             _e128271128732_
                             _hd128270128735_
                             _tl128269128737_
                             _e128274128740_
                             _hd128273128743_
                             _tl128272128745_
                             _e128277128748_
                             _hd128276128751_
                             _tl128275128753_
                             _e128280128756_
                             _hd128279128759_
                             _tl128278128761_
                             _e128283128764_
                             _hd128282128767_
                             _tl128281128769_
                             _e128286128772_
                             _hd128285128775_
                             _tl128284128777_
                             _e128289128780_
                             _hd128288128783_
                             _tl128287128785_
                             _e128292128788_
                             _hd128291128791_
                             _tl128290128793_
                             _e128295128796_
                             _hd128294128799_
                             _tl128293128801_
                             _e128298128804_
                             _hd128297128807_
                             _tl128296128809_)
                            (___match134616134617_
                             _e128271128732_
                             _hd128270128735_
                             _tl128269128737_
                             _e128274128740_
                             _hd128273128743_
                             _tl128272128745_
                             _e128277128748_
                             _hd128276128751_
                             _tl128275128753_
                             _e128280128756_
                             _hd128279128759_
                             _tl128278128761_
                             _e128283128764_
                             _hd128282128767_
                             _tl128281128769_
                             _e128286128772_
                             _hd128285128775_
                             _tl128284128777_
                             _e128289128780_
                             _hd128288128783_
                             _tl128287128785_
                             _e128292128788_
                             _hd128291128791_
                             _tl128290128793_
                             _e128295128796_
                             _hd128294128799_
                             _tl128293128801_
                             _e128298128804_
                             _hd128297128807_
                             _tl128296128809_))))
                     (___match134526134527_
                      (lambda (_e128271128732_
                               _hd128270128735_
                               _tl128269128737_
                               _e128274128740_
                               _hd128273128743_
                               _tl128272128745_
                               _e128277128748_
                               _hd128276128751_
                               _tl128275128753_
                               _e128280128756_
                               _hd128279128759_
                               _tl128278128761_
                               _e128283128764_
                               _hd128282128767_
                               _tl128281128769_
                               _e128286128772_
                               _hd128285128775_
                               _tl128284128777_
                               _e128289128780_
                               _hd128288128783_
                               _tl128287128785_
                               _e128292128788_
                               _hd128291128791_
                               _tl128290128793_
                               _e128295128796_
                               _hd128294128799_
                               _tl128293128801_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd128294128799_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128293128801_))
                                (let ((_e128298128804_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128293128801_))))
                                  (let ((_tl128296128809_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128298128804_)))
                                        (_hd128297128807_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128298128804_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128296128809_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl128290128793_))
                                            (___match134538134539_
                                             _e128271128732_
                                             _hd128270128735_
                                             _tl128269128737_
                                             _e128274128740_
                                             _hd128273128743_
                                             _tl128272128745_
                                             _e128277128748_
                                             _hd128276128751_
                                             _tl128275128753_
                                             _e128280128756_
                                             _hd128279128759_
                                             _tl128278128761_
                                             _e128283128764_
                                             _hd128282128767_
                                             _tl128281128769_
                                             _e128286128772_
                                             _hd128285128775_
                                             _tl128284128777_
                                             _e128289128780_
                                             _hd128288128783_
                                             _tl128287128785_
                                             _e128292128788_
                                             _hd128291128791_
                                             _tl128290128793_
                                             _e128295128796_
                                             _hd128294128799_
                                             _tl128293128801_
                                             _e128298128804_
                                             _hd128297128807_
                                             _tl128296128809_)
                                            (___match134616134617_
                                             _e128271128732_
                                             _hd128270128735_
                                             _tl128269128737_
                                             _e128274128740_
                                             _hd128273128743_
                                             _tl128272128745_
                                             _e128277128748_
                                             _hd128276128751_
                                             _tl128275128753_
                                             _e128280128756_
                                             _hd128279128759_
                                             _tl128278128761_
                                             _e128283128764_
                                             _hd128282128767_
                                             _tl128281128769_
                                             _e128286128772_
                                             _hd128285128775_
                                             _tl128284128777_
                                             _e128289128780_
                                             _hd128288128783_
                                             _tl128287128785_
                                             _e128292128788_
                                             _hd128291128791_
                                             _tl128290128793_
                                             _e128295128796_
                                             _hd128294128799_
                                             _tl128293128801_
                                             _e128298128804_
                                             _hd128297128807_
                                             _tl128296128809_))
                                        (___match134740134741_
                                         _e128271128732_
                                         _hd128270128735_
                                         _tl128269128737_
                                         _e128274128740_
                                         _hd128273128743_
                                         _tl128272128745_
                                         _e128277128748_
                                         _hd128276128751_
                                         _tl128275128753_
                                         _e128280128756_
                                         _hd128279128759_
                                         _tl128278128761_
                                         _e128283128764_
                                         _hd128282128767_
                                         _tl128281128769_
                                         _e128286128772_
                                         _hd128285128775_
                                         _tl128284128777_
                                         _e128289128780_
                                         _hd128288128783_
                                         _tl128287128785_
                                         _e128292128788_
                                         _hd128291128791_
                                         _tl128290128793_))))
                                (___match134740134741_
                                 _e128271128732_
                                 _hd128270128735_
                                 _tl128269128737_
                                 _e128274128740_
                                 _hd128273128743_
                                 _tl128272128745_
                                 _e128277128748_
                                 _hd128276128751_
                                 _tl128275128753_
                                 _e128280128756_
                                 _hd128279128759_
                                 _tl128278128761_
                                 _e128283128764_
                                 _hd128282128767_
                                 _tl128281128769_
                                 _e128286128772_
                                 _hd128285128775_
                                 _tl128284128777_
                                 _e128289128780_
                                 _hd128288128783_
                                 _tl128287128785_
                                 _e128292128788_
                                 _hd128291128791_
                                 _tl128290128793_))
                            (___match134740134741_
                             _e128271128732_
                             _hd128270128735_
                             _tl128269128737_
                             _e128274128740_
                             _hd128273128743_
                             _tl128272128745_
                             _e128277128748_
                             _hd128276128751_
                             _tl128275128753_
                             _e128280128756_
                             _hd128279128759_
                             _tl128278128761_
                             _e128283128764_
                             _hd128282128767_
                             _tl128281128769_
                             _e128286128772_
                             _hd128285128775_
                             _tl128284128777_
                             _e128289128780_
                             _hd128288128783_
                             _tl128287128785_
                             _e128292128788_
                             _hd128291128791_
                             _tl128290128793_))))
                     (___match134458134459_
                      (lambda (_e128220128853_
                               _hd128219128856_
                               _tl128218128858_
                               _e128223128861_
                               _hd128222128864_
                               _tl128221128866_
                               _e128226128869_
                               _hd128225128872_
                               _tl128224128874_
                               _e128229128877_
                               _hd128228128880_
                               _tl128227128882_
                               _e128232128885_
                               _hd128231128888_
                               _tl128230128890_
                               _e128235128893_
                               _hd128234128896_
                               _tl128233128898_
                               _e128238128901_
                               _hd128237128904_
                               _tl128236128906_
                               _e128241128909_
                               _hd128240128912_
                               _tl128239128914_
                               _e128244128917_
                               _hd128243128920_
                               _tl128242128922_
                               _e128247128925_
                               _hd128246128928_
                               _tl128245128930_
                               _e128250128933_
                               _hd128249128936_
                               _tl128248128938_
                               _e128253128941_
                               _hd128252128944_
                               _tl128251128946_
                               _e128256128949_
                               _hd128255128952_
                               _tl128254128954_
                               ___splice134251134252_
                               _target128257128957_
                               _tl128259128959_)
                        (letrec ((_loop128260128962_
                                  (lambda (_hd128258128965_ _args128264128967_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd128258128965_))
                                        (let ((_e128261128970_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd128258128965_))))
                                          (let ((_lp-tl128263128975_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128261128970_)))
                                                (_lp-hd128262128973_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128261128970_))))
                                            (let ((__tmp135192
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd128262128973_
                                                           _args128264128967_))))
                                              (declare (not safe))
                                              (_loop128260128962_
                                               _lp-tl128263128975_
                                               __tmp135192))))
                                        (let ((_args128265128978_
                                               (reverse _args128264128967_)))
                                          (let ((_L128981_ _args128265128978_)
                                                (_L128982_ _hd128255128952_)
                                                (_L128983_ _hd128246128928_)
                                                (_L128984_ _hd128237128904_)
                                                (_L128985_ _hd128228128880_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L128985_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L128984_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L128983_
                                                        _self128152_)))
                                                (___kont134249134250_
                                                 _L128981_
                                                 _L128982_
                                                 _L128983_
                                                 _L128984_
                                                 _L128985_)
                                                (___kont134261134262_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop128260128962_ _target128257128957_ '())))))
                     (___match134416134417_
                      (lambda (_e128220128853_
                               _hd128219128856_
                               _tl128218128858_
                               _e128223128861_
                               _hd128222128864_
                               _tl128221128866_
                               _e128226128869_
                               _hd128225128872_
                               _tl128224128874_
                               _e128229128877_
                               _hd128228128880_
                               _tl128227128882_
                               _e128232128885_
                               _hd128231128888_
                               _tl128230128890_
                               _e128235128893_
                               _hd128234128896_
                               _tl128233128898_
                               _e128238128901_
                               _hd128237128904_
                               _tl128236128906_
                               _e128241128909_
                               _hd128240128912_
                               _tl128239128914_
                               _e128244128917_
                               _hd128243128920_
                               _tl128242128922_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd128243128920_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128242128922_))
                                (let ((_e128247128925_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128242128922_))))
                                  (let ((_tl128245128930_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128247128925_)))
                                        (_hd128246128928_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128247128925_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128245128930_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl128239128914_))
                                            (let ((_e128250128933_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl128239128914_))))
                                              (let ((_tl128248128938_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e128250128933_)))
                                                    (_hd128249128936_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e128250128933_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd128249128936_))
                                                    (let ((_e128253128941_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd128249128936_))))
                                                      (let ((_tl128251128946_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128253128941_)))
                    (_hd128252128944_
                     (let () (declare (not safe)) (##car _e128253128941_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd128252128944_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd128252128944_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128251128946_))
                            (let ((_e128256128949_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128251128946_))))
                              (let ((_tl128254128954_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128256128949_)))
                                    (_hd128255128952_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128256128949_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128254128954_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl128248128938_))
                                        (let ((___splice134251134252_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl128248128938_
                                                  '0))))
                                          (let ((_tl128259128959_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134251134252_
                                                    '1)))
                                                (_target128257128957_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134251134252_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl128259128959_))
                                                (___match134458134459_
                                                 _e128220128853_
                                                 _hd128219128856_
                                                 _tl128218128858_
                                                 _e128223128861_
                                                 _hd128222128864_
                                                 _tl128221128866_
                                                 _e128226128869_
                                                 _hd128225128872_
                                                 _tl128224128874_
                                                 _e128229128877_
                                                 _hd128228128880_
                                                 _tl128227128882_
                                                 _e128232128885_
                                                 _hd128231128888_
                                                 _tl128230128890_
                                                 _e128235128893_
                                                 _hd128234128896_
                                                 _tl128233128898_
                                                 _e128238128901_
                                                 _hd128237128904_
                                                 _tl128236128906_
                                                 _e128241128909_
                                                 _hd128240128912_
                                                 _tl128239128914_
                                                 _e128244128917_
                                                 _hd128243128920_
                                                 _tl128242128922_
                                                 _e128247128925_
                                                 _hd128246128928_
                                                 _tl128245128930_
                                                 _e128250128933_
                                                 _hd128249128936_
                                                 _tl128248128938_
                                                 _e128253128941_
                                                 _hd128252128944_
                                                 _tl128251128946_
                                                 _e128256128949_
                                                 _hd128255128952_
                                                 _tl128254128954_
                                                 ___splice134251134252_
                                                 _target128257128957_
                                                 _tl128259128959_)
                                                (___kont134261134262_))))
                                        (___kont134261134262_))
                                    (___kont134261134262_))))
                            (___kont134261134262_))
                        (___kont134261134262_))
                    (___kont134261134262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134261134262_))))
                                            (___match134740134741_
                                             _e128220128853_
                                             _hd128219128856_
                                             _tl128218128858_
                                             _e128223128861_
                                             _hd128222128864_
                                             _tl128221128866_
                                             _e128226128869_
                                             _hd128225128872_
                                             _tl128224128874_
                                             _e128229128877_
                                             _hd128228128880_
                                             _tl128227128882_
                                             _e128232128885_
                                             _hd128231128888_
                                             _tl128230128890_
                                             _e128235128893_
                                             _hd128234128896_
                                             _tl128233128898_
                                             _e128238128901_
                                             _hd128237128904_
                                             _tl128236128906_
                                             _e128241128909_
                                             _hd128240128912_
                                             _tl128239128914_))
                                        (___match134740134741_
                                         _e128220128853_
                                         _hd128219128856_
                                         _tl128218128858_
                                         _e128223128861_
                                         _hd128222128864_
                                         _tl128221128866_
                                         _e128226128869_
                                         _hd128225128872_
                                         _tl128224128874_
                                         _e128229128877_
                                         _hd128228128880_
                                         _tl128227128882_
                                         _e128232128885_
                                         _hd128231128888_
                                         _tl128230128890_
                                         _e128235128893_
                                         _hd128234128896_
                                         _tl128233128898_
                                         _e128238128901_
                                         _hd128237128904_
                                         _tl128236128906_
                                         _e128241128909_
                                         _hd128240128912_
                                         _tl128239128914_))))
                                (___match134740134741_
                                 _e128220128853_
                                 _hd128219128856_
                                 _tl128218128858_
                                 _e128223128861_
                                 _hd128222128864_
                                 _tl128221128866_
                                 _e128226128869_
                                 _hd128225128872_
                                 _tl128224128874_
                                 _e128229128877_
                                 _hd128228128880_
                                 _tl128227128882_
                                 _e128232128885_
                                 _hd128231128888_
                                 _tl128230128890_
                                 _e128235128893_
                                 _hd128234128896_
                                 _tl128233128898_
                                 _e128238128901_
                                 _hd128237128904_
                                 _tl128236128906_
                                 _e128241128909_
                                 _hd128240128912_
                                 _tl128239128914_))
                            (___match134526134527_
                             _e128220128853_
                             _hd128219128856_
                             _tl128218128858_
                             _e128223128861_
                             _hd128222128864_
                             _tl128221128866_
                             _e128226128869_
                             _hd128225128872_
                             _tl128224128874_
                             _e128229128877_
                             _hd128228128880_
                             _tl128227128882_
                             _e128232128885_
                             _hd128231128888_
                             _tl128230128890_
                             _e128235128893_
                             _hd128234128896_
                             _tl128233128898_
                             _e128238128901_
                             _hd128237128904_
                             _tl128236128906_
                             _e128241128909_
                             _hd128240128912_
                             _tl128239128914_
                             _e128244128917_
                             _hd128243128920_
                             _tl128242128922_))))
                     (___match134348134349_
                      (lambda (_e128176129045_
                               _hd128175129048_
                               _tl128174129050_
                               _e128179129053_
                               _hd128178129056_
                               _tl128177129058_
                               _e128182129061_
                               _hd128181129064_
                               _tl128180129066_
                               _e128185129069_
                               _hd128184129072_
                               _tl128183129074_
                               _e128188129077_
                               _hd128187129080_
                               _tl128186129082_
                               _e128191129085_
                               _hd128190129088_
                               _tl128189129090_
                               _e128194129093_
                               _hd128193129096_
                               _tl128192129098_
                               _e128197129101_
                               _hd128196129104_
                               _tl128195129106_
                               _e128200129109_
                               _hd128199129112_
                               _tl128198129114_
                               _e128203129117_
                               _hd128202129120_
                               _tl128201129122_
                               ___splice134247134248_
                               _target128204129125_
                               _tl128206129127_)
                        (letrec ((_loop128207129130_
                                  (lambda (_hd128205129133_ _args128211129135_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd128205129133_))
                                        (let ((_e128208129138_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd128205129133_))))
                                          (let ((_lp-tl128210129143_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128208129138_)))
                                                (_lp-hd128209129141_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128208129138_))))
                                            (let ((__tmp135193
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd128209129141_
                                                           _args128211129135_))))
                                              (declare (not safe))
                                              (_loop128207129130_
                                               _lp-tl128210129143_
                                               __tmp135193))))
                                        (let ((_args128212129146_
                                               (reverse _args128211129135_)))
                                          (let ((_L129149_ _args128212129146_)
                                                (_L129150_ _hd128202129120_)
                                                (_L129151_ _hd128193129096_)
                                                (_L129152_ _hd128184129072_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L129152_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L129151_
                                                        _self128152_)))
                                                (___kont134245134246_
                                                 _L129149_
                                                 _L129150_
                                                 _L129151_
                                                 _L129152_)
                                                (___match134536134537_
                                                 _e128176129045_
                                                 _hd128175129048_
                                                 _tl128174129050_
                                                 _e128179129053_
                                                 _hd128178129056_
                                                 _tl128177129058_
                                                 _e128182129061_
                                                 _hd128181129064_
                                                 _tl128180129066_
                                                 _e128185129069_
                                                 _hd128184129072_
                                                 _tl128183129074_
                                                 _e128188129077_
                                                 _hd128187129080_
                                                 _tl128186129082_
                                                 _e128191129085_
                                                 _hd128190129088_
                                                 _tl128189129090_
                                                 _e128194129093_
                                                 _hd128193129096_
                                                 _tl128192129098_
                                                 _e128197129101_
                                                 _hd128196129104_
                                                 _tl128195129106_
                                                 _e128200129109_
                                                 _hd128199129112_
                                                 _tl128198129114_
                                                 _e128203129117_
                                                 _hd128202129120_
                                                 _tl128201129122_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop128207129130_ _target128204129125_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134243134244_))
                    (let ((_e128176129045_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134243134244_))))
                      (let ((_tl128174129050_
                             (let ()
                               (declare (not safe))
                               (##cdr _e128176129045_)))
                            (_hd128175129048_
                             (let ()
                               (declare (not safe))
                               (##car _e128176129045_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128174129050_))
                            (let ((_e128179129053_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128174129050_))))
                              (let ((_tl128177129058_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128179129053_)))
                                    (_hd128178129056_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128179129053_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd128178129056_))
                                    (let ((_e128182129061_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd128178129056_))))
                                      (let ((_tl128180129066_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e128182129061_)))
                                            (_hd128181129064_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e128182129061_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd128181129064_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd128181129064_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl128180129066_))
                                                    (let ((_e128185129069_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl128180129066_))))
                                                      (let ((_tl128183129074_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128185129069_)))
                    (_hd128184129072_
                     (let () (declare (not safe)) (##car _e128185129069_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl128183129074_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl128177129058_))
                        (let ((_e128188129077_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl128177129058_))))
                          (let ((_tl128186129082_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128188129077_)))
                                (_hd128187129080_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128188129077_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd128187129080_))
                                (let ((_e128191129085_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd128187129080_))))
                                  (let ((_tl128189129090_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128191129085_)))
                                        (_hd128190129088_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128191129085_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd128190129088_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd128190129088_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl128189129090_))
                                                (let ((_e128194129093_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl128189129090_))))
                                                  (let ((_tl128192129098_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e128194129093_)))
                                                        (_hd128193129096_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e128194129093_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl128192129098_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl128186129082_))
                                                            (let ((_e128197129101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl128186129082_))))
                      (let ((_tl128195129106_
                             (let ()
                               (declare (not safe))
                               (##cdr _e128197129101_)))
                            (_hd128196129104_
                             (let ()
                               (declare (not safe))
                               (##car _e128197129101_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd128196129104_))
                            (let ((_e128200129109_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd128196129104_))))
                              (let ((_tl128198129114_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128200129109_)))
                                    (_hd128199129112_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128200129109_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd128199129112_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd128199129112_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl128198129114_))
                                            (let ((_e128203129117_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl128198129114_))))
                                              (let ((_tl128201129122_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e128203129117_)))
                                                    (_hd128202129120_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e128203129117_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl128201129122_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl128195129106_))
                                                        (let ((___splice134247134248_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl128195129106_ '0))))
                  (let ((_tl128206129127_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134247134248_ '1)))
                        (_target128204129125_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134247134248_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl128206129127_))
                        (___match134348134349_
                         _e128176129045_
                         _hd128175129048_
                         _tl128174129050_
                         _e128179129053_
                         _hd128178129056_
                         _tl128177129058_
                         _e128182129061_
                         _hd128181129064_
                         _tl128180129066_
                         _e128185129069_
                         _hd128184129072_
                         _tl128183129074_
                         _e128188129077_
                         _hd128187129080_
                         _tl128186129082_
                         _e128191129085_
                         _hd128190129088_
                         _tl128189129090_
                         _e128194129093_
                         _hd128193129096_
                         _tl128192129098_
                         _e128197129101_
                         _hd128196129104_
                         _tl128195129106_
                         _e128200129109_
                         _hd128199129112_
                         _tl128198129114_
                         _e128203129117_
                         _hd128202129120_
                         _tl128201129122_
                         ___splice134247134248_
                         _target128204129125_
                         _tl128206129127_)
                        (___match134536134537_
                         _e128176129045_
                         _hd128175129048_
                         _tl128174129050_
                         _e128179129053_
                         _hd128178129056_
                         _tl128177129058_
                         _e128182129061_
                         _hd128181129064_
                         _tl128180129066_
                         _e128185129069_
                         _hd128184129072_
                         _tl128183129074_
                         _e128188129077_
                         _hd128187129080_
                         _tl128186129082_
                         _e128191129085_
                         _hd128190129088_
                         _tl128189129090_
                         _e128194129093_
                         _hd128193129096_
                         _tl128192129098_
                         _e128197129101_
                         _hd128196129104_
                         _tl128195129106_
                         _e128200129109_
                         _hd128199129112_
                         _tl128198129114_
                         _e128203129117_
                         _hd128202129120_
                         _tl128201129122_))))
                (___match134536134537_
                 _e128176129045_
                 _hd128175129048_
                 _tl128174129050_
                 _e128179129053_
                 _hd128178129056_
                 _tl128177129058_
                 _e128182129061_
                 _hd128181129064_
                 _tl128180129066_
                 _e128185129069_
                 _hd128184129072_
                 _tl128183129074_
                 _e128188129077_
                 _hd128187129080_
                 _tl128186129082_
                 _e128191129085_
                 _hd128190129088_
                 _tl128189129090_
                 _e128194129093_
                 _hd128193129096_
                 _tl128192129098_
                 _e128197129101_
                 _hd128196129104_
                 _tl128195129106_
                 _e128200129109_
                 _hd128199129112_
                 _tl128198129114_
                 _e128203129117_
                 _hd128202129120_
                 _tl128201129122_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match134740134741_
                                                     _e128176129045_
                                                     _hd128175129048_
                                                     _tl128174129050_
                                                     _e128179129053_
                                                     _hd128178129056_
                                                     _tl128177129058_
                                                     _e128182129061_
                                                     _hd128181129064_
                                                     _tl128180129066_
                                                     _e128185129069_
                                                     _hd128184129072_
                                                     _tl128183129074_
                                                     _e128188129077_
                                                     _hd128187129080_
                                                     _tl128186129082_
                                                     _e128191129085_
                                                     _hd128190129088_
                                                     _tl128189129090_
                                                     _e128194129093_
                                                     _hd128193129096_
                                                     _tl128192129098_
                                                     _e128197129101_
                                                     _hd128196129104_
                                                     _tl128195129106_))))
                                            (___match134740134741_
                                             _e128176129045_
                                             _hd128175129048_
                                             _tl128174129050_
                                             _e128179129053_
                                             _hd128178129056_
                                             _tl128177129058_
                                             _e128182129061_
                                             _hd128181129064_
                                             _tl128180129066_
                                             _e128185129069_
                                             _hd128184129072_
                                             _tl128183129074_
                                             _e128188129077_
                                             _hd128187129080_
                                             _tl128186129082_
                                             _e128191129085_
                                             _hd128190129088_
                                             _tl128189129090_
                                             _e128194129093_
                                             _hd128193129096_
                                             _tl128192129098_
                                             _e128197129101_
                                             _hd128196129104_
                                             _tl128195129106_))
                                        (___match134416134417_
                                         _e128176129045_
                                         _hd128175129048_
                                         _tl128174129050_
                                         _e128179129053_
                                         _hd128178129056_
                                         _tl128177129058_
                                         _e128182129061_
                                         _hd128181129064_
                                         _tl128180129066_
                                         _e128185129069_
                                         _hd128184129072_
                                         _tl128183129074_
                                         _e128188129077_
                                         _hd128187129080_
                                         _tl128186129082_
                                         _e128191129085_
                                         _hd128190129088_
                                         _tl128189129090_
                                         _e128194129093_
                                         _hd128193129096_
                                         _tl128192129098_
                                         _e128197129101_
                                         _hd128196129104_
                                         _tl128195129106_
                                         _e128200129109_
                                         _hd128199129112_
                                         _tl128198129114_))
                                    (___match134740134741_
                                     _e128176129045_
                                     _hd128175129048_
                                     _tl128174129050_
                                     _e128179129053_
                                     _hd128178129056_
                                     _tl128177129058_
                                     _e128182129061_
                                     _hd128181129064_
                                     _tl128180129066_
                                     _e128185129069_
                                     _hd128184129072_
                                     _tl128183129074_
                                     _e128188129077_
                                     _hd128187129080_
                                     _tl128186129082_
                                     _e128191129085_
                                     _hd128190129088_
                                     _tl128189129090_
                                     _e128194129093_
                                     _hd128193129096_
                                     _tl128192129098_
                                     _e128197129101_
                                     _hd128196129104_
                                     _tl128195129106_))))
                            (___match134740134741_
                             _e128176129045_
                             _hd128175129048_
                             _tl128174129050_
                             _e128179129053_
                             _hd128178129056_
                             _tl128177129058_
                             _e128182129061_
                             _hd128181129064_
                             _tl128180129066_
                             _e128185129069_
                             _hd128184129072_
                             _tl128183129074_
                             _e128188129077_
                             _hd128187129080_
                             _tl128186129082_
                             _e128191129085_
                             _hd128190129088_
                             _tl128189129090_
                             _e128194129093_
                             _hd128193129096_
                             _tl128192129098_
                             _e128197129101_
                             _hd128196129104_
                             _tl128195129106_))))
                    (___match134678134679_
                     _e128176129045_
                     _hd128175129048_
                     _tl128174129050_
                     _e128179129053_
                     _hd128178129056_
                     _tl128177129058_
                     _e128182129061_
                     _hd128181129064_
                     _tl128180129066_
                     _e128185129069_
                     _hd128184129072_
                     _tl128183129074_
                     _e128188129077_
                     _hd128187129080_
                     _tl128186129082_
                     _e128191129085_
                     _hd128190129088_
                     _tl128189129090_
                     _e128194129093_
                     _hd128193129096_
                     _tl128192129098_))
                (___kont134261134262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134261134262_))
                                            (___kont134261134262_))
                                        (___kont134261134262_))))
                                (___kont134261134262_))))
                        (___kont134261134262_))
                    (___kont134261134262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134261134262_))
                                                (___kont134261134262_))
                                            (___kont134261134262_))))
                                    (___kont134261134262_))))
                            (___kont134261134262_))))
                    (___kont134261134262_))))))))))
