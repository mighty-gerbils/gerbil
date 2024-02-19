(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1708352926)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl133617_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp134745 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl133617_ __tmp134745))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133617_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133617_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133617_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133617_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl133617_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx133600_ . _args133602_)
        (let ((__tmp134747
               (lambda ()
                 (declare (not safe))
                 (if (null? _args133602_)
                     (gxc#compile-e__0 _stx133600_)
                     (let ((_arg1133607_ (car _args133602_))
                           (_rest133609_ (cdr _args133602_)))
                       (if (null? _rest133609_)
                           (gxc#compile-e__1 _stx133600_ _arg1133607_)
                           (let ((_arg2133612_ (car _rest133609_))
                                 (_rest133614_ (cdr _rest133609_)))
                             (if (null? _rest133614_)
                                 (gxc#compile-e__2
                                  _stx133600_
                                  _arg1133607_
                                  _arg2133612_)
                                 (apply gxc#compile-e
                                        _stx133600_
                                        _arg1133607_
                                        _arg2133612_
                                        _rest133614_))))))))
              (__tmp134746 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp134747
           gxc#current-compile-methods
           __tmp134746))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl133597_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp134748 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl133597_ __tmp134748))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133597_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133597_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133597_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133597_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133597_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133597_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133597_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133597_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133597_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133597_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133597_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133597_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133597_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133597_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133597_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133597_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl133597_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx133580_ . _args133582_)
        (let ((__tmp134750
               (lambda ()
                 (declare (not safe))
                 (if (null? _args133582_)
                     (gxc#compile-e__0 _stx133580_)
                     (let ((_arg1133587_ (car _args133582_))
                           (_rest133589_ (cdr _args133582_)))
                       (if (null? _rest133589_)
                           (gxc#compile-e__1 _stx133580_ _arg1133587_)
                           (let ((_arg2133592_ (car _rest133589_))
                                 (_rest133594_ (cdr _rest133589_)))
                             (if (null? _rest133594_)
                                 (gxc#compile-e__2
                                  _stx133580_
                                  _arg1133587_
                                  _arg2133592_)
                                 (apply gxc#compile-e
                                        _stx133580_
                                        _arg1133587_
                                        _arg2133592_
                                        _rest133594_))))))))
              (__tmp134749 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp134750
           gxc#current-compile-methods
           __tmp134749))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl133577_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp134751 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl133577_ __tmp134751))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133577_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133577_ '%#call gxc#subst-object-refs-call%))
           _tbl133577_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx133560_ . _args133562_)
        (let ((__tmp134753
               (lambda ()
                 (declare (not safe))
                 (if (null? _args133562_)
                     (gxc#compile-e__0 _stx133560_)
                     (let ((_arg1133567_ (car _args133562_))
                           (_rest133569_ (cdr _args133562_)))
                       (if (null? _rest133569_)
                           (gxc#compile-e__1 _stx133560_ _arg1133567_)
                           (let ((_arg2133572_ (car _rest133569_))
                                 (_rest133574_ (cdr _rest133569_)))
                             (if (null? _rest133574_)
                                 (gxc#compile-e__2
                                  _stx133560_
                                  _arg1133567_
                                  _arg2133572_)
                                 (apply gxc#compile-e
                                        _stx133560_
                                        _arg1133567_
                                        _arg2133572_
                                        _rest133574_))))))))
              (__tmp134752 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp134753
           gxc#current-compile-methods
           __tmp134752))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx130230_)
        (letrec ((_generate-method-bind130232_
                  (lambda (_$t133554_ _id133555_ _$id133556_)
                    (let ((_$tmp133558_
                           (let ((__tmp134754 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp134754))))
                      (let ((__tmp134802
                             (let ()
                               (declare (not safe))
                               (cons _$id133556_ '())))
                            (__tmp134755
                             (let ((__tmp134756
                                    (let ((__tmp134757
                                           (let ((__tmp134800
                                                  (let ((__tmp134801
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp134801)))
                                                 (__tmp134758
                                                  (let ((__tmp134759
                                                         (let ((__tmp134760
                                                                (let ((__tmp134761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134762
                                      (let ((__tmp134763
                                             (let ((__tmp134783
                                                    (let ((__tmp134784
                                                           (let ((__tmp134799
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp133558_ '())))
                         (__tmp134785
                          (let ((__tmp134786
                                 (let ((__tmp134787
                                        (let ((__tmp134797
                                               (let ((__tmp134798
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp134798)))
                                              (__tmp134788
                                               (let ((__tmp134795
                                                      (let ((__tmp134796
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t133554_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp134796)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134789
                                                      (let ((__tmp134793
                                                             (let ((__tmp134794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp134794)))
                    (__tmp134790
                     (let ((__tmp134791
                            (let ((__tmp134792
                                   (let ()
                                     (declare (not safe))
                                     (cons _id133555_ '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp134792))))
                       (declare (not safe))
                       (cons __tmp134791 '()))))
                (declare (not safe))
                (cons __tmp134793 __tmp134790))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp134795
                                                       __tmp134789))))
                                          (declare (not safe))
                                          (cons __tmp134797 __tmp134788))))
                                   (declare (not safe))
                                   (cons '%#call __tmp134787))))
                            (declare (not safe))
                            (cons __tmp134786 '()))))
                     (declare (not safe))
                     (cons __tmp134799 __tmp134785))))
              (declare (not safe))
              (cons __tmp134784 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134764
                                                    (let ((__tmp134765
                                                           (let ((__tmp134766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134781
                                 (let ((__tmp134782
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp133558_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp134782)))
                                (__tmp134767
                                 (let ((__tmp134779
                                        (let ((__tmp134780
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp133558_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp134780)))
                                       (__tmp134768
                                        (let ((__tmp134769
                                               (let ((__tmp134770
                                                      (let ((__tmp134777
                                                             (let ((__tmp134778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp134778)))
                    (__tmp134771
                     (let ((__tmp134775
                            (let ((__tmp134776
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp134776)))
                           (__tmp134772
                            (let ((__tmp134773
                                   (let ((__tmp134774
                                          (let ()
                                            (declare (not safe))
                                            (cons _id133555_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp134774))))
                              (declare (not safe))
                              (cons __tmp134773 '()))))
                       (declare (not safe))
                       (cons __tmp134775 __tmp134772))))
                (declare (not safe))
                (cons __tmp134777 __tmp134771))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp134770))))
                                          (declare (not safe))
                                          (cons __tmp134769 '()))))
                                   (declare (not safe))
                                   (cons __tmp134779 __tmp134768))))
                            (declare (not safe))
                            (cons __tmp134781 __tmp134767))))
                     (declare (not safe))
                     (cons '%#if __tmp134766))))
              (declare (not safe))
              (cons __tmp134765 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134783
                                                     __tmp134764))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp134763))))
                                 (declare (not safe))
                                 (cons __tmp134762 '()))))
                          (declare (not safe))
                          (cons '() __tmp134761))))
                   (declare (not safe))
                   (cons '%#lambda __tmp134760))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134759 '()))))
                                             (declare (not safe))
                                             (cons __tmp134800 __tmp134758))))
                                      (declare (not safe))
                                      (cons '%#call __tmp134757))))
                               (declare (not safe))
                               (cons __tmp134756 '()))))
                        (declare (not safe))
                        (cons __tmp134802 __tmp134755)))))
                 (_generate-slot-bind130233_
                  (lambda (_$t133548_ _id133549_ _$id133550_)
                    (let ((_$tmp133552_
                           (let ((__tmp134803 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp134803))))
                      (let ((__tmp134840
                             (let ()
                               (declare (not safe))
                               (cons _$id133550_ '())))
                            (__tmp134804
                             (let ((__tmp134805
                                    (let ((__tmp134806
                                           (let ((__tmp134826
                                                  (let ((__tmp134827
                                                         (let ((__tmp134839
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp133552_ '())))
                       (__tmp134828
                        (let ((__tmp134829
                               (let ((__tmp134830
                                      (let ((__tmp134837
                                             (let ((__tmp134838
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp134838)))
                                            (__tmp134831
                                             (let ((__tmp134835
                                                    (let ((__tmp134836
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t133548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp134836)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134832
                                                    (let ((__tmp134833
                                                           (let ((__tmp134834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id133549_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp134834))))
              (declare (not safe))
              (cons __tmp134833 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134835
                                                     __tmp134832))))
                                        (declare (not safe))
                                        (cons __tmp134837 __tmp134831))))
                                 (declare (not safe))
                                 (cons '%#call __tmp134830))))
                          (declare (not safe))
                          (cons __tmp134829 '()))))
                   (declare (not safe))
                   (cons __tmp134839 __tmp134828))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134827 '())))
                                                 (__tmp134807
                                                  (let ((__tmp134808
                                                         (let ((__tmp134809
                                                                (let ((__tmp134824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134825
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp133552_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp134825)))
                              (__tmp134810
                               (let ((__tmp134822
                                      (let ((__tmp134823
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp133552_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp134823)))
                                     (__tmp134811
                                      (let ((__tmp134812
                                             (let ((__tmp134813
                                                    (let ((__tmp134820
                                                           (let ((__tmp134821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp134821)))
                  (__tmp134814
                   (let ((__tmp134818
                          (let ((__tmp134819
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp134819)))
                         (__tmp134815
                          (let ((__tmp134816
                                 (let ((__tmp134817
                                        (let ()
                                          (declare (not safe))
                                          (cons _id133549_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp134817))))
                            (declare (not safe))
                            (cons __tmp134816 '()))))
                     (declare (not safe))
                     (cons __tmp134818 __tmp134815))))
              (declare (not safe))
              (cons __tmp134820 __tmp134814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp134813))))
                                        (declare (not safe))
                                        (cons __tmp134812 '()))))
                                 (declare (not safe))
                                 (cons __tmp134822 __tmp134811))))
                          (declare (not safe))
                          (cons __tmp134824 __tmp134810))))
                   (declare (not safe))
                   (cons '%#if __tmp134809))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134808 '()))))
                                             (declare (not safe))
                                             (cons __tmp134826 __tmp134807))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp134806))))
                               (declare (not safe))
                               (cons __tmp134805 '()))))
                        (declare (not safe))
                        (cons __tmp134840 __tmp134804)))))
                 (_generate-class-check-bind130234_
                  (lambda (_$t133544_ _class-type133545_ _$class-type133546_)
                    (let ((__tmp134852
                           (let ()
                             (declare (not safe))
                             (cons _$class-type133546_ '())))
                          (__tmp134841
                           (let ((__tmp134842
                                  (let ((__tmp134843
                                         (let ((__tmp134850
                                                (let ((__tmp134851
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp134851)))
                                               (__tmp134844
                                                (let ((__tmp134848
                                                       (let ((__tmp134849
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t133544_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp134849)))
              (__tmp134845
               (let ((__tmp134846
                      (let ((__tmp134847
                             (let ()
                               (declare (not safe))
                               (cons _class-type133545_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp134847))))
                 (declare (not safe))
                 (cons __tmp134846 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134848
                                                        __tmp134845))))
                                           (declare (not safe))
                                           (cons __tmp134850 __tmp134844))))
                                    (declare (not safe))
                                    (cons '%#call __tmp134843))))
                             (declare (not safe))
                             (cons __tmp134842 '()))))
                      (declare (not safe))
                      (cons __tmp134852 __tmp134841))))
                 (_generate-struct-check-bind130235_
                  (lambda (_$t133540_ _class-type133541_ _$class-type133542_)
                    (let ((__tmp134864
                           (let ()
                             (declare (not safe))
                             (cons _$class-type133542_ '())))
                          (__tmp134853
                           (let ((__tmp134854
                                  (let ((__tmp134855
                                         (let ((__tmp134862
                                                (let ((__tmp134863
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp134863)))
                                               (__tmp134856
                                                (let ((__tmp134860
                                                       (let ((__tmp134861
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t133540_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp134861)))
              (__tmp134857
               (let ((__tmp134858
                      (let ((__tmp134859
                             (let ()
                               (declare (not safe))
                               (cons _class-type133541_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp134859))))
                 (declare (not safe))
                 (cons __tmp134858 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134860
                                                        __tmp134857))))
                                           (declare (not safe))
                                           (cons __tmp134862 __tmp134856))))
                                    (declare (not safe))
                                    (cons '%#call __tmp134855))))
                             (declare (not safe))
                             (cons __tmp134854 '()))))
                      (declare (not safe))
                      (cons __tmp134864 __tmp134853))))
                 (_generate-specializer-impl130236_
                  (lambda (_$t133489_
                           _methods-bind133490_
                           _slots-bind133491_
                           _class-check-bind133492_
                           _struct-check-bind133493_
                           _specializer-impl133494_
                           _lifted-specializer-id133495_
                           _unchecked-specializer-impl133496_)
                    (let ((__tmp134865
                           (let ((__tmp134866
                                  (let ((__tmp134892
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t133489_ '())))
                                        (__tmp134867
                                         (let ((__tmp134868
                                                (let ((__tmp134869
                                                       (let ((__tmp134889
                                                              (let ((__tmp134890
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134891
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind133493_
                                              _class-check-bind133492_))))
                               (declare (not safe))
                               (foldr1 cons __tmp134891 _slots-bind133491_))))
                        (declare (not safe))
                        (foldr1 cons __tmp134890 _methods-bind133490_)))
                     (__tmp134870
                      (let ((__tmp134871
                             (if (or _lifted-specializer-id133495_
                                     _unchecked-specializer-impl133496_)
                                 (let* ((_$specializer133501_
                                         (let ((__tmp134872
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp134872)))
                                        (__tmp134873
                                         (let ((__tmp134885
                                                (let ((__tmp134886
                                                       (let ((__tmp134888
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer133501_ '())))
                     (__tmp134887
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl133494_ '()))))
                 (declare (not safe))
                 (cons __tmp134888 __tmp134887))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134886 '())))
                                               (__tmp134874
                                                (let ((__tmp134875
                                                       (let _recur133503_ ((_rest133505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind133493_)))
                 (let* ((_rest133506133514_ _rest133505_)
                        (_else133508133522_
                         (lambda ()
                           (if _lifted-specializer-id133495_
                               (let ((__tmp134876
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id133495_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp134876))
                               _unchecked-specializer-impl133496_)))
                        (_K133510133528_
                         (lambda (_rest133525_ _checkq133526_)
                           (let ((__tmp134877
                                  (let ((__tmp134883
                                         (let ((__tmp134884
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq133526_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp134884)))
                                        (__tmp134878
                                         (let ((__tmp134882
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur133503_
                                                   _rest133525_)))
                                               (__tmp134879
                                                (let ((__tmp134880
                                                       (let ((__tmp134881
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer133501_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp134881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134880 '()))))
                                           (declare (not safe))
                                           (cons __tmp134882 __tmp134879))))
                                    (declare (not safe))
                                    (cons __tmp134883 __tmp134878))))
                             (declare (not safe))
                             (cons '%#if __tmp134877)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest133506133514_))
                       (let ((_hd133511133531_
                              (let ()
                                (declare (not safe))
                                (##car _rest133506133514_)))
                             (_tl133512133533_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest133506133514_))))
                         (let* ((_checkq133536_ _hd133511133531_)
                                (_rest133538_ _tl133512133533_))
                           (declare (not safe))
                           (_K133510133528_ _rest133538_ _checkq133536_)))
                       (let () (declare (not safe)) (_else133508133522_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134875 '()))))
                                           (declare (not safe))
                                           (cons __tmp134885 __tmp134874))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp134873))
                                 _specializer-impl133494_)))
                        (declare (not safe))
                        (cons __tmp134871 '()))))
                 (declare (not safe))
                 (cons __tmp134889 __tmp134870))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp134869))))
                                           (declare (not safe))
                                           (cons __tmp134868 '()))))
                                    (declare (not safe))
                                    (cons __tmp134892 __tmp134867))))
                             (declare (not safe))
                             (cons '%#lambda __tmp134866))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134865 _stx130230_))))
                 (_generate-specializer-def130237_
                  (lambda (_id133483_
                           _specializer-id133484_
                           _specializer-impl133485_
                           _lifted-specializer-id133486_
                           _unchecked-specializer-impl133487_)
                    (let ((__tmp134893
                           (let ((__tmp134894
                                  (let ((__tmp134895
                                         (let ((__tmp134915
                                                (let ((__tmp134916
                                                       (let ((__tmp134917
                                                              (let ((__tmp134919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id133484_ '())))
                            (__tmp134918
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl133485_ '()))))
                        (declare (not safe))
                        (cons __tmp134919 __tmp134918))))
                 (declare (not safe))
                 (cons '%#define-values __tmp134917))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp134916
                                                   _stx130230_)))
                                               (__tmp134896
                                                (let ((__tmp134903
                                                       (let ((__tmp134904
                                                              (let ((__tmp134905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134906
                                    (let ((__tmp134913
                                           (let ((__tmp134914
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp134914)))
                                          (__tmp134907
                                           (let ((__tmp134911
                                                  (let ((__tmp134912
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id133483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp134912)))
                                                 (__tmp134908
                                                  (let ((__tmp134909
                                                         (let ((__tmp134910
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id133484_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp134910))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134909 '()))))
                                             (declare (not safe))
                                             (cons __tmp134911 __tmp134908))))
                                      (declare (not safe))
                                      (cons __tmp134913 __tmp134907))))
                               (declare (not safe))
                               (cons '%#call __tmp134906))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp134905 _stx130230_))))
                 (declare (not safe))
                 (cons __tmp134904 '())))
              (__tmp134897
               (if _lifted-specializer-id133486_
                   (let ((__tmp134898
                          (let ((__tmp134899
                                 (let ((__tmp134900
                                        (let ((__tmp134902
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id133486_
                                                       '())))
                                              (__tmp134901
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl133487_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp134902 __tmp134901))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp134900))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp134899 _stx130230_))))
                     (declare (not safe))
                     (cons __tmp134898 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp134903
                                                          __tmp134897))))
                                           (declare (not safe))
                                           (cons __tmp134915 __tmp134896))))
                                    (declare (not safe))
                                    (cons _stx130230_ __tmp134895))))
                             (declare (not safe))
                             (cons '%#begin __tmp134894))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134893 _stx130230_)))))
          (let* ((___stx133706133707_ _stx130230_)
                 (_g130240130260_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx133706133707_)))))
            (let ((___kont133708133709_
                   (lambda (_L130304_ _L130305_)
                     (let ((_method-calls130324_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs130325_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_class-type-check130326_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-check130327_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-assert130328_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty130329_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?130331_
                                 (lambda ()
                                   (if (let ((__tmp134924
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls130324_))))
                                         (declare (not safe))
                                         (fxzero? __tmp134924))
                                       (if (let ((__tmp134923
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _slot-refs130325_))))
                                             (declare (not safe))
                                             (fxzero? __tmp134923))
                                           (if (let ((__tmp134922
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-length
                                                         _class-type-check130326_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp134922))
                                               (if (let ((__tmp134921
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (hash-length
                                                             _struct-type-check130327_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp134921))
                                                   (let ((__tmp134920
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (hash-length
                                                             _struct-type-assert130328_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp134920))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?130332_
                                 (lambda ()
                                   (let ((_$e133476_
                                          (let ((__tmp134925
                                                 (let ((__tmp134926
                                                        (let ()
                                                          (declare (not safe))
                                                          (hash-length
                                                           _struct-type-check130327_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp134926))))
                                            (declare (not safe))
                                            (not __tmp134925))))
                                     (if _$e133476_
                                         _$e133476_
                                         (let ((__tmp134927
                                                (let ((__tmp134928
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-length
                                                          _struct-type-assert130328_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp134928))))
                                           (declare (not safe))
                                           (not __tmp134927))))))
                                (_lift-unchecked-specializer?130333_
                                 (lambda ()
                                   (if (let ((__tmp134931
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls130324_))))
                                         (declare (not safe))
                                         (fxzero? __tmp134931))
                                       (if (let ((__tmp134930
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _slot-refs130325_))))
                                             (declare (not safe))
                                             (fxzero? __tmp134930))
                                           (let ((__tmp134929
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _class-type-check130326_))))
                                             (declare (not safe))
                                             (fxzero? __tmp134929))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L130304_))
                             (let* ((___stx133620133621_ _L130304_)
                                    (_g130846130864_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx133620133621_)))))
                               (let ((___kont133622133623_
                                      (lambda (_L130900_ _L130901_ _L130902_)
                                        (for-each
                                         (lambda (_g130917130919_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g130917130919_
                                              _L130902_
                                              _method-calls130324_
                                              _slot-refs130325_
                                              _class-type-check130326_
                                              _struct-type-check130327_
                                              _struct-type-assert130328_)))
                                         _L130900_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?130331_))
                                            _stx130230_
                                            (let* ((_specializer-id130928_
                                                    (let* ((_id130922_
                                                            (let ((__tmp135081
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L130305_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp135081 '"::specialize")))
                   (_specializer-id130925_
                    (let ((__tmp135082
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx130230_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id130922_ __tmp135082))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id130925_))
              _specializer-id130925_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id130935_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?130333_))
                                                        (let* ((_id130930_
                                                                (let ((__tmp135083
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L130305_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp135083
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id130932_
                        (let ((__tmp135084
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx130230_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id130930_ __tmp135084))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id130932_))
                  _lifted-specializer-id130932_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t130937_
                                                    (let ((__tmp135085
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135085)))
                                                   (_methods130939_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls130324_)))
                                                   (_$methods130943_
                                                    (map (lambda (_id130941_)
                                                           (let ((__tmp135086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id130941_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135086)))
                 _methods130939_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135087_
                                                    (for-each
                                                     (lambda (_g130944130947_
                                                              _g130945130949_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls130324_
                                                          _g130944130947_
                                                          _g130945130949_)))
                                                     _methods130939_
                                                     _$methods130943_))
                                                   (_methods-bind130960_
                                                    (map (lambda (_g130952130955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g130953130957_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind130232_
                      _$t130937_
                      _g130952130955_
                      _g130953130957_)))
                 _methods130939_
                 _$methods130943_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots130962_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs130325_)))
                                                   (_$slots130966_
                                                    (map (lambda (_id130964_)
                                                           (let ((__tmp135088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id130964_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135088)))
                 _slots130962_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135089_
                                                    (for-each
                                                     (lambda (_g130967130970_
                                                              _g130968130972_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs130325_
                                                          _g130967130970_
                                                          _g130968130972_)))
                                                     _slots130962_
                                                     _$slots130966_))
                                                   (_slots-bind130983_
                                                    (map (lambda (_g130975130978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g130976130980_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind130233_
                      _$t130937_
                      _g130975130978_
                      _g130976130980_)))
                 _slots130962_
                 _$slots130966_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check130985_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check130326_)))
                                                   (_$class-check130988_
                                                    (map (lambda (_g135090_)
                                                           (let ((__tmp135091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp135091)))
                 _class-check130985_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135092_
                                                    (for-each
                                                     (lambda (_g130989130992_
                                                              _g130990130994_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _class-type-check130326_
                                                          _g130989130992_
                                                          _g130990130994_)))
                                                     _class-check130985_
                                                     _$class-check130988_))
                                                   (_class-check-bind131005_
                                                    (map (lambda (_g130997131000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g130998131002_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind130234_
                      _$t130937_
                      _g130997131000_
                      _g130998131002_)))
                 _class-check130985_
                 _$class-check130988_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all131007_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check130327_
                                                       _struct-type-assert130328_)))
                                                   (_struct-check131009_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all131007_)))
                                                   (_$struct-check131012_
                                                    (map (lambda (_g135093_)
                                                           (let ((__tmp135094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp135094)))
                 _struct-check131009_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135095_
                                                    (for-each
                                                     (lambda (_g131013131016_
                                                              _g131014131018_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _struct-check-all131007_
                                                          _g131013131016_
                                                          _g131014131018_)))
                                                     _struct-check131009_
                                                     _$struct-check131012_))
                                                   (_struct-check-bind131029_
                                                    (map (lambda (_g131021131024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131022131026_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind130235_
                      _$t130937_
                      _g131021131024_
                      _g131022131026_)))
                 _struct-check131009_
                 _$struct-check131012_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl131040_
                                                    (lambda (_struct-type-check1131031_
                                                             _struct-type-check2131032_)
                                                      (let* ((_specializer-body131038_
                                                              (map (lambda (_g131033131035_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g131033131035_
                                _L130902_
                                _$t130937_
                                _method-calls130324_
                                _slot-refs130325_
                                _class-type-check130326_
                                _struct-type-check1131031_
                                _struct-type-check2131032_)))
                           _L130900_))
                     (__tmp135096
                      (let ((__tmp135097
                             (let ((__tmp135098
                                    (let ()
                                      (declare (not safe))
                                      (cons _L130902_ _L130901_))))
                               (declare (not safe))
                               (cons __tmp135098 _specializer-body131038_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp135097))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp135096 _stx130230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl131042_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl131040_
                                                       _struct-check-all131007_
                                                       _empty130329_)))
                                                   (_unchecked-specializer-impl131044_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?130332_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl131040_
                                                           _empty130329_
                                                           _struct-check-all131007_))
                                                        '#f))
                                                   (_specializer-impl131046_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl130236_
                                                       _$t130937_
                                                       _methods-bind130960_
                                                       _slots-bind130983_
                                                       _class-check-bind131005_
                                                       _struct-check-bind131029_
                                                       _specializer-impl131042_
                                                       _lifted-specializer-id130935_
                                                       _unchecked-specializer-impl131044_))))
                                              (let ((__tmp135100
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L130305_)))
                                                    (__tmp135099
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id130928_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp135100
                                                 '" => "
                                                 __tmp135099))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def130237_
                                                 _L130305_
                                                 _specializer-id130928_
                                                 _specializer-impl131046_
                                                 _lifted-specializer-id130935_
                                                 _unchecked-specializer-impl131044_))))))
                                     (___kont133624133625_
                                      (lambda () _stx130230_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx133620133621_))
                                     (let ((_e130853130876_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx133620133621_))))
                                       (let ((_tl130851130881_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e130853130876_)))
                                             (_hd130852130879_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e130853130876_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl130851130881_))
                                             (let ((_e130856130884_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl130851130881_))))
                                               (let ((_tl130854130889_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e130856130884_)))
                                                     (_hd130855130887_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e130856130884_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd130855130887_))
                                                     (let ((_e130859130892_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd130855130887_))))
                                                       (let ((_tl130857130897_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e130859130892_)))
                     (_hd130858130895_
                      (let () (declare (not safe)) (##car _e130859130892_))))
                 (___kont133622133623_
                  _tl130854130889_
                  _tl130857130897_
                  _hd130858130895_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont133624133625_))))
                                             (___kont133624133625_))))
                                     (___kont133624133625_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L130304_))
                                 (let* ((_g131052131071_
                                         (lambda (_g131053131068_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g131053131068_))))
                                        (_g131051131422_
                                         (lambda (_g131053131074_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g131053131074_))
                                               (let ((_e131057131076_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g131053131074_))))
                                                 (let ((_hd131056131079_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e131057131076_)))
                                                       (_tl131055131081_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e131057131076_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl131055131081_))
                                                       (let ((_g135057_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl131055131081_ '0))))
                 (begin
                   (let ((_g135058_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g135057_)
                                (##vector-length _g135057_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g135058_ 2)))
                         (error "Context expects 2 values" _g135058_)))
                   (let ((_target131058131084_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135057_ 0)))
                         (_tl131060131086_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135057_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl131060131086_))
                         (letrec ((_loop131061131089_
                                   (lambda (_hd131059131092_
                                            _clause131065131094_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd131059131092_))
                                         (let ((_e131062131097_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd131059131092_))))
                                           (let ((_lp-hd131063131100_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131062131097_)))
                                                 (_lp-tl131064131102_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131062131097_))))
                                             (let ((__tmp135080
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd131063131100_
                                                            _clause131065131094_))))
                                               (declare (not safe))
                                               (_loop131061131089_
                                                _lp-tl131064131102_
                                                __tmp135080))))
                                         (let ((_clause131066131105_
                                                (reverse _clause131065131094_)))
                                           ((lambda (_L131108_)
                                              (for-each
                                               (lambda (_clause131121_)
                                                 (let* ((___stx133646133647_
                                                         _clause131121_)
                                                        (_g131124131139_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx133646133647_)))))
                                                   (let ((___kont133648133649_
                                                          (lambda (_L131167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L131168_
                           _L131169_)
                    (for-each
                     (lambda (_g131184131186_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g131184131186_
                          _L131169_
                          _method-calls130324_
                          _slot-refs130325_
                          _class-type-check130326_
                          _struct-type-check130327_
                          _struct-type-assert130328_)))
                     _L131167_)))
                 (___kont133650133651_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx133646133647_))
                                                         (let ((_e131131131151_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx133646133647_))))
                   (let ((_tl131129131156_
                          (let ()
                            (declare (not safe))
                            (##cdr _e131131131151_)))
                         (_hd131130131154_
                          (let ()
                            (declare (not safe))
                            (##car _e131131131151_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd131130131154_))
                         (let ((_e131134131159_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd131130131154_))))
                           (let ((_tl131132131164_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e131134131159_)))
                                 (_hd131133131162_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e131134131159_))))
                             (___kont133648133649_
                              _tl131129131156_
                              _tl131132131164_
                              _hd131133131162_)))
                         (___kont133650133651_))))
                 (___kont133650133651_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp135059
                                                      (lambda (_g131191131194_
                                                               _g131192131196_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g131191131194_
                                                                _g131192131196_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135059
                                                         '()
                                                         _L131108_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?130331_))
                                                  _stx130230_
                                                  (let* ((_specializer-id131205_
                                                          (let* ((_id131199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135060
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130305_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135060 '"::specialize")))
                         (_specializer-id131202_
                          (let ((__tmp135061
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130230_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id131199_ __tmp135061))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id131202_))
                    _specializer-id131202_))
                 (_lifted-specializer-id131212_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?130333_))
                      (let* ((_id131207_
                              (let ((__tmp135062
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L130305_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp135062
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id131209_
                              (let ((__tmp135063
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx130230_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id131207_
                                 __tmp135063))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id131209_))
                        _lifted-specializer-id131209_)
                      '#f))
                 (_$t131214_
                  (let ((__tmp135064 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135064)))
                 (_methods131216_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls130324_)))
                 (_$methods131220_
                  (map (lambda (_id131218_)
                         (let ((__tmp135065 (gensym _id131218_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135065)))
                       _methods131216_))
                 (_g135066_
                  (for-each
                   (lambda (_g131221131224_ _g131222131226_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls130324_
                        _g131221131224_
                        _g131222131226_)))
                   _methods131216_
                   _$methods131220_))
                 (_methods-bind131237_
                  (map (lambda (_g131229131232_ _g131230131234_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind130232_
                            _$t131214_
                            _g131229131232_
                            _g131230131234_)))
                       _methods131216_
                       _$methods131220_))
                 (_slots131239_
                  (let () (declare (not safe)) (hash-keys _slot-refs130325_)))
                 (_$slots131243_
                  (map (lambda (_id131241_)
                         (let ((__tmp135067 (gensym _id131241_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135067)))
                       _slots131239_))
                 (_g135068_
                  (for-each
                   (lambda (_g131244131247_ _g131245131249_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs130325_
                        _g131244131247_
                        _g131245131249_)))
                   _slots131239_
                   _$slots131243_))
                 (_slots-bind131260_
                  (map (lambda (_g131252131255_ _g131253131257_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind130233_
                            _$t131214_
                            _g131252131255_
                            _g131253131257_)))
                       _slots131239_
                       _$slots131243_))
                 (_class-check131262_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check130326_)))
                 (_$class-check131265_
                  (map (lambda (_g135069_)
                         (let ((__tmp135070 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp135070)))
                       _class-check131262_))
                 (_g135071_
                  (for-each
                   (lambda (_g131266131269_ _g131267131271_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _class-type-check130326_
                        _g131266131269_
                        _g131267131271_)))
                   _class-check131262_
                   _$class-check131265_))
                 (_class-check-bind131282_
                  (map (lambda (_g131274131277_ _g131275131279_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind130234_
                            _$t131214_
                            _g131274131277_
                            _g131275131279_)))
                       _class-check131262_
                       _$class-check131265_))
                 (_struct-check-all131284_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check130327_
                     _struct-type-assert130328_)))
                 (_struct-check131286_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all131284_)))
                 (_$struct-check131289_
                  (map (lambda (_g135072_)
                         (let ((__tmp135073 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp135073)))
                       _struct-check131286_))
                 (_g135074_
                  (for-each
                   (lambda (_g131290131293_ _g131291131295_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _struct-check-all131284_
                        _g131290131293_
                        _g131291131295_)))
                   _struct-check131286_
                   _$struct-check131289_))
                 (_struct-check-bind131306_
                  (map (lambda (_g131298131301_ _g131299131303_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind130235_
                            _$t131214_
                            _g131298131301_
                            _g131299131303_)))
                       _struct-check131286_
                       _$struct-check131289_))
                 (_make-specializer-impl131413_
                  (lambda (_struct-type-check1131308_
                           _struct-type-check2131309_)
                    (let* ((_specializer-clauses131411_
                            (map (lambda (_clause131311_)
                                   (let* ((___stx133666133667_ _clause131311_)
                                          (_g131314131329_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx133666133667_)))))
                                     (let ((___kont133668133669_
                                            (lambda (_L131357_
                                                     _L131358_
                                                     _L131359_)
                                              (let* ((_body131399_
                                                      (map (lambda (_g131394131396_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g131394131396_
                        _L131359_
                        _$t131214_
                        _method-calls130324_
                        _slot-refs130325_
                        _class-type-check130326_
                        _struct-type-check1131308_
                        _struct-type-check2131309_)))
                   _L131357_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp135075
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L131359_
                                                              _L131358_))))
                                                (declare (not safe))
                                                (cons __tmp135075
                                                      _body131399_))))
                                           (___kont133670133671_
                                            (lambda () _clause131311_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx133666133667_))
                                           (let ((_e131321131341_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx133666133667_))))
                                             (let ((_tl131319131346_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e131321131341_)))
                                                   (_hd131320131344_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e131321131341_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd131320131344_))
                                                   (let ((_e131324131349_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd131320131344_))))
                                                     (let ((_tl131322131354_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e131324131349_)))
                                                           (_hd131323131352_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e131324131349_))))
                                                       (___kont133668133669_
                                                        _tl131319131346_
                                                        _tl131322131354_
                                                        _hd131323131352_)))
                                                   (___kont133670133671_))))
                                           (___kont133670133671_)))))
                                 (let ((__tmp135076
                                        (lambda (_g131403131406_
                                                 _g131404131408_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g131403131406_
                                                  _g131404131408_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135076 '() _L131108_))))
                           (__tmp135077
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses131411_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135077 _stx130230_))))
                 (_specializer-impl131415_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl131413_
                     _struct-check-all131284_
                     _empty130329_)))
                 (_unchecked-specializer-impl131417_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?130332_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl131413_
                         _empty130329_
                         _struct-check-all131284_))
                      '#f))
                 (_specializer-impl131419_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl130236_
                     _$t131214_
                     _methods-bind131237_
                     _slots-bind131260_
                     _class-check-bind131282_
                     _struct-check-bind131306_
                     _specializer-impl131415_
                     _lifted-specializer-id131212_
                     _unchecked-specializer-impl131417_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135079
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130305_)))
                                                          (__tmp135078
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id131205_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135079
                                                       '" => "
                                                       __tmp135078))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def130237_
                                                       _L130305_
                                                       _specializer-id131205_
                                                       _specializer-impl131419_
                                                       _lifted-specializer-id131212_
                                                       _unchecked-specializer-impl131417_)))))
                                            _clause131066131105_))))))
                           (let ()
                             (declare (not safe))
                             (_loop131061131089_ _target131058131084_ '())))
                         (let ()
                           (declare (not safe))
                           (_g131052131071_ _g131053131074_))))))
               (let ()
                 (declare (not safe))
                 (_g131052131071_ _g131053131074_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131052131071_
                                                  _g131053131074_))))))
                                   (declare (not safe))
                                   (_g131051131422_ _L130304_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L130304_))
                                     (let* ((_g131425131455_
                                             (lambda (_g131426131452_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g131426131452_))))
                                            (_g131424132143_
                                             (lambda (_g131426131458_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g131426131458_))
                                                   (let ((_e131432131460_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g131426131458_))))
                                                     (let ((_hd131431131463_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e131432131460_)))
                                                           (_tl131430131465_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e131432131460_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl131430131465_))
                                                           (let ((_e131435131468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl131430131465_))))
                     (let ((_hd131434131471_
                            (let ()
                              (declare (not safe))
                              (##car _e131435131468_)))
                           (_tl131433131473_
                            (let ()
                              (declare (not safe))
                              (##cdr _e131435131468_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd131434131471_))
                           (let ((_e131438131476_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd131434131471_))))
                             (let ((_hd131437131479_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e131438131476_)))
                                   (_tl131436131481_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e131438131476_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd131437131479_))
                                   (let ((_e131441131484_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd131437131479_))))
                                     (let ((_hd131440131487_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e131441131484_)))
                                           (_tl131439131489_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e131441131484_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd131440131487_))
                                           (let ((_e131444131492_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd131440131487_))))
                                             (let ((_hd131443131495_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e131444131492_)))
                                                   (_tl131442131497_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e131444131492_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl131442131497_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl131439131489_))
                                                       (let ((_e131447131500_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl131439131489_))))
                 (let ((_hd131446131503_
                        (let () (declare (not safe)) (##car _e131447131500_)))
                       (_tl131445131505_
                        (let () (declare (not safe)) (##cdr _e131447131500_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl131445131505_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl131436131481_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl131433131473_))
                               (let ((_e131450131508_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl131433131473_))))
                                 (let ((_hd131449131511_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e131450131508_)))
                                       (_tl131448131513_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e131450131508_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl131448131513_))
                                       ((lambda (_L131516_ _L131517_ _L131518_)
                                          (let* ((_g131541131559_
                                                  (lambda (_g131542131556_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g131542131556_))))
                                                 (_g131540131610_
                                                  (lambda (_g131542131562_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g131542131562_))
                                                        (let ((_e131548131564_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g131542131562_))))
                  (let ((_hd131547131567_
                         (let () (declare (not safe)) (##car _e131548131564_)))
                        (_tl131546131569_
                         (let ()
                           (declare (not safe))
                           (##cdr _e131548131564_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl131546131569_))
                        (let ((_e131551131572_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl131546131569_))))
                          (let ((_hd131550131575_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131551131572_)))
                                (_tl131549131577_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131551131572_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd131550131575_))
                                (let ((_e131554131580_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd131550131575_))))
                                  (let ((_hd131553131583_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131554131580_)))
                                        (_tl131552131585_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131554131580_))))
                                    ((lambda (_L131588_ _L131589_ _L131590_)
                                       (for-each
                                        (lambda (_g131605131607_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g131605131607_
                                             _L131590_
                                             _method-calls130324_
                                             _slot-refs130325_
                                             _class-type-check130326_
                                             _struct-type-check130327_
                                             _struct-type-assert130328_)))
                                        _L131588_))
                                     _tl131549131577_
                                     _tl131552131585_
                                     _hd131553131583_)))
                                (let ()
                                  (declare (not safe))
                                  (_g131541131559_ _g131542131562_)))))
                        (let ()
                          (declare (not safe))
                          (_g131541131559_ _g131542131562_)))))
                (let ()
                  (declare (not safe))
                  (_g131541131559_ _g131542131562_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g131540131610_ _L131517_))
                                          (let* ((_g131613131632_
                                                  (lambda (_g131614131629_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g131614131629_))))
                                                 (_g131612131751_
                                                  (lambda (_g131614131635_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g131614131635_))
                                                        (let ((_e131618131637_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g131614131635_))))
                  (let ((_hd131617131640_
                         (let () (declare (not safe)) (##car _e131618131637_)))
                        (_tl131616131642_
                         (let ()
                           (declare (not safe))
                           (##cdr _e131618131637_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl131616131642_))
                        (let ((_g135020_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl131616131642_
                                  '0))))
                          (begin
                            (let ((_g135021_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g135020_)
                                         (##vector-length _g135020_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g135021_ 2)))
                                  (error "Context expects 2 values"
                                         _g135021_)))
                            (let ((_target131619131645_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135020_ 0)))
                                  (_tl131621131647_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135020_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl131621131647_))
                                  (letrec ((_loop131622131650_
                                            (lambda (_hd131620131653_
                                                     _clause131626131655_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd131620131653_))
                                                  (let ((_e131623131658_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd131620131653_))))
                                                    (let ((_lp-hd131624131661_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e131623131658_)))
                                                          (_lp-tl131625131663_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e131623131658_))))
                                                      (let ((__tmp135023
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd131624131661_ _clause131626131655_))))
                (declare (not safe))
                (_loop131622131650_ _lp-tl131625131663_ __tmp135023))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause131627131666_
                                                         (reverse _clause131626131655_)))
                                                    ((lambda (_L131669_)
                                                       (for-each
                                                        (lambda (_clause131682_)
                                                          (let* ((_g131684131699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g131685131696_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g131685131696_))))
                         (_g131683131741_
                          (lambda (_g131685131702_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g131685131702_))
                                (let ((_e131691131704_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g131685131702_))))
                                  (let ((_hd131690131707_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131691131704_)))
                                        (_tl131689131709_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131691131704_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd131690131707_))
                                        (let ((_e131694131712_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd131690131707_))))
                                          (let ((_hd131693131715_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131694131712_)))
                                                (_tl131692131717_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131694131712_))))
                                            ((lambda (_L131720_
                                                      _L131721_
                                                      _L131722_)
                                               (for-each
                                                (lambda (_g131736131738_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g131736131738_
                                                     _L131722_
                                                     _method-calls130324_
                                                     _slot-refs130325_
                                                     _class-type-check130326_
                                                     _struct-type-check130327_
                                                     _struct-type-assert130328_)))
                                                _L131720_))
                                             _tl131689131709_
                                             _tl131692131717_
                                             _hd131693131715_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g131684131699_ _g131685131702_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g131684131699_ _g131685131702_))))))
                    (declare (not safe))
                    (_g131683131741_ _clause131682_)))
                (let ((__tmp135022
                       (lambda (_g131743131746_ _g131744131748_)
                         (let ()
                           (declare (not safe))
                           (cons _g131743131746_ _g131744131748_)))))
                  (declare (not safe))
                  (foldr1 __tmp135022 '() _L131669_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause131627131666_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop131622131650_
                                       _target131619131645_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g131613131632_ _g131614131635_))))))
                        (let ()
                          (declare (not safe))
                          (_g131613131632_ _g131614131635_)))))
                (let ()
                  (declare (not safe))
                  (_g131613131632_ _g131614131635_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g131612131751_ _L131516_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?130331_))
                                              _stx130230_
                                              (let* ((_specializer-id131760_
                                                      (let* ((_id131754_
                                                              (let ((__tmp135024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L130305_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp135024 '"::specialize")))
                     (_specializer-id131757_
                      (let ((__tmp135025
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx130230_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id131754_ __tmp135025))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id131757_))
                _specializer-id131757_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id131767_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?130333_))
                                                          (let* ((_id131762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135026
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130305_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp135026
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id131764_
                          (let ((__tmp135027
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130230_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id131762_ __tmp135027))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id131764_))
                    _lifted-specializer-id131764_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t131769_
                                                      (let ((__tmp135028
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135028)))
                                                     (_methods131771_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls130324_)))
                                                     (_$methods131775_
                                                      (map (lambda (_id131773_)
                                                             (let ((__tmp135029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id131773_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135029)))
                   _methods131771_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135030_
                                                      (for-each
                                                       (lambda (_g131776131779_
                                                                _g131777131781_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls130324_
                                                            _g131776131779_
                                                            _g131777131781_)))
                                                       _methods131771_
                                                       _$methods131775_))
                                                     (_methods-bind131792_
                                                      (map (lambda (_g131784131787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131785131789_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind130232_
                        _$t131769_
                        _g131784131787_
                        _g131785131789_)))
                   _methods131771_
                   _$methods131775_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots131794_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs130325_)))
                                                     (_$slots131798_
                                                      (map (lambda (_id131796_)
                                                             (let ((__tmp135031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id131796_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135031)))
                   _slots131794_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135032_
                                                      (for-each
                                                       (lambda (_g131799131802_
                                                                _g131800131804_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs130325_
                                                            _g131799131802_
                                                            _g131800131804_)))
                                                       _slots131794_
                                                       _$slots131798_))
                                                     (_slots-bind131815_
                                                      (map (lambda (_g131807131810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131808131812_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind130233_
                        _$t131769_
                        _g131807131810_
                        _g131808131812_)))
                   _slots131794_
                   _$slots131798_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check131817_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check130326_)))
                                                     (_$class-check131820_
                                                      (map (lambda (_g135033_)
                                                             (let ((__tmp135034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp135034)))
                   _class-check131817_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135035_
                                                      (for-each
                                                       (lambda (_g131821131824_
                                                                _g131822131826_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _class-type-check130326_
                                                            _g131821131824_
                                                            _g131822131826_)))
                                                       _class-check131817_
                                                       _$class-check131820_))
                                                     (_class-check-bind131837_
                                                      (map (lambda (_g131829131832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131830131834_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind130234_
                        _$t131769_
                        _g131829131832_
                        _g131830131834_)))
                   _class-check131817_
                   _$class-check131820_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all131839_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check130327_
                                                         _struct-type-assert130328_)))
                                                     (_struct-check131841_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all131839_)))
                                                     (_$struct-check131844_
                                                      (map (lambda (_g135036_)
                                                             (let ((__tmp135037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp135037)))
                   _struct-check131841_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135038_
                                                      (for-each
                                                       (lambda (_g131845131848_
                                                                _g131846131850_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _struct-check-all131839_
                                                            _g131845131848_
                                                            _g131846131850_)))
                                                       _struct-check131841_
                                                       _$struct-check131844_))
                                                     (_struct-check-bind131861_
                                                      (map (lambda (_g131853131856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131854131858_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind130235_
                        _$t131769_
                        _g131853131856_
                        _g131854131858_)))
                   _struct-check131841_
                   _$struct-check131844_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr131960_
                                                      (lambda (_struct-type-check1131863_
                                                               _struct-type-check2131864_)
                                                        (let* ((_g131866131884_
                                                                (lambda (_g131867131881_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g131867131881_))))
                       (_g131865131957_
                        (lambda (_g131867131887_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g131867131887_))
                              (let ((_e131873131889_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g131867131887_))))
                                (let ((_hd131872131892_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131873131889_)))
                                      (_tl131871131894_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131873131889_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl131871131894_))
                                      (let ((_e131876131897_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl131871131894_))))
                                        (let ((_hd131875131900_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e131876131897_)))
                                              (_tl131874131902_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e131876131897_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd131875131900_))
                                              (let ((_e131879131905_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd131875131900_))))
                                                (let ((_hd131878131908_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e131879131905_)))
                                                      (_tl131877131910_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e131879131905_))))
                                                  ((lambda (_L131913_
                                                            _L131914_
                                                            _L131915_)
                                                     (let* ((_body131955_
                                                             (map (lambda (_g131950131952_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g131950131952_
                               _L131915_
                               _$t131769_
                               _method-calls130324_
                               _slot-refs130325_
                               _class-type-check130326_
                               _struct-type-check1131863_
                               _struct-type-check2131864_)))
                          _L131913_))
                    (__tmp135039
                     (let ((__tmp135040
                            (let ((__tmp135041
                                   (let ()
                                     (declare (not safe))
                                     (cons _L131915_ _L131914_))))
                              (declare (not safe))
                              (cons __tmp135041 _body131955_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp135040))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp135039 _L131517_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl131874131902_
                                                   _tl131877131910_
                                                   _hd131878131908_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g131866131884_
                                                 _g131867131887_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g131866131884_ _g131867131887_)))))
                              (let ()
                                (declare (not safe))
                                (_g131866131884_ _g131867131887_))))))
                  (declare (not safe))
                  (_g131865131957_ _L131517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr132121_
                                                      (lambda (_struct-type-check1131962_
                                                               _struct-type-check2131963_)
                                                        (let* ((_g131965131984_
                                                                (lambda (_g131966131981_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g131966131981_))))
                       (_g131964132118_
                        (lambda (_g131966131987_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g131966131987_))
                              (let ((_e131970131989_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g131966131987_))))
                                (let ((_hd131969131992_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131970131989_)))
                                      (_tl131968131994_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131970131989_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl131968131994_))
                                      (let ((_g135042_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl131968131994_
                                                '0))))
                                        (begin
                                          (let ((_g135043_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g135042_)
                                                       (##vector-length
                                                        _g135042_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g135043_ 2)))
                                                (error "Context expects 2 values"
                                                       _g135043_)))
                                          (let ((_target131971131997_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g135042_ 0)))
                                                (_tl131973131999_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g135042_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl131973131999_))
                                                (letrec ((_loop131974132002_
                                                          (lambda (_hd131972132005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause131978132007_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd131972132005_))
                        (let ((_e131975132010_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd131972132005_))))
                          (let ((_lp-hd131976132013_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131975132010_)))
                                (_lp-tl131977132015_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131975132010_))))
                            (let ((__tmp135047
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd131976132013_
                                           _clause131978132007_))))
                              (declare (not safe))
                              (_loop131974132002_
                               _lp-tl131977132015_
                               __tmp135047))))
                        (let ((_clause131979132018_
                               (reverse _clause131978132007_)))
                          ((lambda (_L132021_)
                             (let* ((_clauses132116_
                                     (map (lambda (_clause132036_)
                                            (let* ((___stx133686133687_
                                                    _clause132036_)
                                                   (_g132039132054_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx133686133687_)))))
                                              (let ((___kont133688133689_
                                                     (lambda (_L132082_
                                                              _L132083_
                                                              _L132084_)
                                                       (let* ((_body132104_
                                                               (map (lambda (_g132099132101_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g132099132101_
                                 _L132084_
                                 _$t131769_
                                 _method-calls130324_
                                 _slot-refs130325_
                                 _class-type-check130326_
                                 _struct-type-check1131962_
                                 _struct-type-check2131963_)))
                            _L132082_))
                      (__tmp135044
                       (let ()
                         (declare (not safe))
                         (cons _L132084_ _L132083_))))
                 (declare (not safe))
                 (cons __tmp135044 _body132104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont133690133691_
                                                     (lambda ()
                                                       _clause132036_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx133686133687_))
                                                    (let ((_e132046132066_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx133686133687_))))
                                                      (let ((_tl132044132071_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e132046132066_)))
                    (_hd132045132069_
                     (let () (declare (not safe)) (##car _e132046132066_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd132045132069_))
                    (let ((_e132049132074_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd132045132069_))))
                      (let ((_tl132047132079_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132049132074_)))
                            (_hd132048132077_
                             (let ()
                               (declare (not safe))
                               (##car _e132049132074_))))
                        (___kont133688133689_
                         _tl132044132071_
                         _tl132047132079_
                         _hd132048132077_)))
                    (___kont133690133691_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont133690133691_)))))
                                          (let ((__tmp135045
                                                 (lambda (_g132108132111_
                                                          _g132109132113_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g132108132111_
                                                           _g132109132113_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp135045
                                                    '()
                                                    _L132021_))))
                                    (__tmp135046
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses132116_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp135046 _L131516_)))
                           _clause131979132018_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop131974132002_
                                                     _target131971131997_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g131965131984_
                                                   _g131966131987_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g131965131984_ _g131966131987_)))))
                              (let ()
                                (declare (not safe))
                                (_g131965131984_ _g131966131987_))))))
                  (declare (not safe))
                  (_g131964132118_ _L131516_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl132126_
                                                      (lambda (_specializer-lambda-expr132123_
                                                               _specializer-case-lambda-expr132124_)
                                                        (let ((__tmp135048
                                                               (let ((__tmp135049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp135051
                                     (let ((__tmp135052
                                            (let ((__tmp135054
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L131518_ '())))
                                                  (__tmp135053
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr132123_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp135054 __tmp135053))))
                                       (declare (not safe))
                                       (cons __tmp135052 '())))
                                    (__tmp135050
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr132124_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp135051 __tmp135050))))
                         (declare (not safe))
                         (cons '%#let-values __tmp135049))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp135048 _stx130230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr132128_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr131960_
                                                         _struct-check-all131839_
                                                         _empty130329_)))
                                                     (_specializer-case-lambda-expr132130_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr132121_
                                                         _struct-check-all131839_
                                                         _empty130329_)))
                                                     (_specializer-impl132132_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl132126_
                                                         _specializer-lambda-expr132128_
                                                         _specializer-case-lambda-expr132130_)))
                                                     (_unchecked-specializer-lambda-expr132134_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?130332_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr131960_
                                                             _empty130329_
                                                             _struct-check-all131839_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr132136_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?130332_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr132121_
                                                             _empty130329_
                                                             _struct-check-all131839_))
                                                          '#f))
                                                     (_unchecked-specializer-impl132138_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?130332_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl132126_
                                                             _unchecked-specializer-lambda-expr132134_
                                                             _unchecked-specializer-case-lambda-expr132136_))
                                                          '#f))
                                                     (_specializer-impl132140_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl130236_
                                                         _$t131769_
                                                         _methods-bind131792_
                                                         _slots-bind131815_
                                                         _class-check-bind131837_
                                                         _struct-check-bind131861_
                                                         _specializer-impl132132_
                                                         _lifted-specializer-id131767_
                                                         _unchecked-specializer-impl132138_))))
                                                (let ((__tmp135056
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L130305_)))
                                                      (__tmp135055
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id131760_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp135056
                                                   '" => "
                                                   __tmp135055))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def130237_
                                                   _L130305_
                                                   _specializer-id131760_
                                                   _specializer-impl132140_
                                                   _lifted-specializer-id131767_
                                                   _unchecked-specializer-impl132138_)))))
                                        _hd131449131511_
                                        _hd131446131503_
                                        _hd131443131495_)
                                       (let ()
                                         (declare (not safe))
                                         (_g131425131455_ _g131426131458_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g131425131455_ _g131426131458_)))
                           (let ()
                             (declare (not safe))
                             (_g131425131455_ _g131426131458_)))
                       (let ()
                         (declare (not safe))
                         (_g131425131455_ _g131426131458_)))))
               (let () (declare (not safe)) (_g131425131455_ _g131426131458_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131425131455_
                                                      _g131426131458_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g131425131455_
                                              _g131426131458_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g131425131455_ _g131426131458_)))))
                           (let ()
                             (declare (not safe))
                             (_g131425131455_ _g131426131458_)))))
                   (let ()
                     (declare (not safe))
                     (_g131425131455_ _g131426131458_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131425131455_
                                                      _g131426131458_))))))
                                       (declare (not safe))
                                       (_g131424132143_ _L130304_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L130304_))
                                         (let* ((_g132146132199_
                                                 (lambda (_g132147132196_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g132147132196_))))
                                                (_g132145133471_
                                                 (lambda (_g132147132202_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g132147132202_))
                                                       (let ((_e132155132204_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g132147132202_))))
                 (let ((_hd132154132207_
                        (let () (declare (not safe)) (##car _e132155132204_)))
                       (_tl132153132209_
                        (let () (declare (not safe)) (##cdr _e132155132204_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd132154132207_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd132154132207_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132153132209_))
                               (let ((_e132158132212_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132153132209_))))
                                 (let ((_hd132157132215_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132158132212_)))
                                       (_tl132156132217_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132158132212_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd132157132215_))
                                       (let ((_e132161132220_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd132157132215_))))
                                         (let ((_hd132160132223_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e132161132220_)))
                                               (_tl132159132225_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e132161132220_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd132160132223_))
                                               (let ((_e132164132228_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd132160132223_))))
                                                 (let ((_hd132163132231_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132164132228_)))
                                                       (_tl132162132233_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132164132228_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd132163132231_))
                                                       (let ((_e132167132236_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd132163132231_))))
                 (let ((_hd132166132239_
                        (let () (declare (not safe)) (##car _e132167132236_)))
                       (_tl132165132241_
                        (let () (declare (not safe)) (##cdr _e132167132236_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132165132241_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl132162132233_))
                           (let ((_e132170132244_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl132162132233_))))
                             (let ((_hd132169132247_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132170132244_)))
                                   (_tl132168132249_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132170132244_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132169132247_))
                                   (let ((_e132173132252_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132169132247_))))
                                     (let ((_hd132172132255_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132173132252_)))
                                           (_tl132171132257_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132173132252_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd132172132255_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd132172132255_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl132171132257_))
                                                   (let ((_e132176132260_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl132171132257_))))
                                                     (let ((_hd132175132263_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132176132260_)))
                                                           (_tl132174132265_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132176132260_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd132175132263_))
                                                           (let ((_e132179132268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd132175132263_))))
                     (let ((_hd132178132271_
                            (let ()
                              (declare (not safe))
                              (##car _e132179132268_)))
                           (_tl132177132273_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132179132268_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132178132271_))
                           (let ((_e132182132276_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132178132271_))))
                             (let ((_hd132181132279_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132182132276_)))
                                   (_tl132180132281_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132182132276_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132181132279_))
                                   (let ((_e132185132284_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132181132279_))))
                                     (let ((_hd132184132287_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132185132284_)))
                                           (_tl132183132289_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132185132284_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl132183132289_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl132180132281_))
                                               (let ((_e132188132292_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl132180132281_))))
                                                 (let ((_hd132187132295_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132188132292_)))
                                                       (_tl132186132297_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132188132292_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl132186132297_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl132177132273_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl132174132265_))
                       (let ((_e132191132300_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl132174132265_))))
                         (let ((_hd132190132303_
                                (let ()
                                  (declare (not safe))
                                  (##car _e132191132300_)))
                               (_tl132189132305_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e132191132300_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl132189132305_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl132168132249_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132159132225_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl132156132217_))
                                           (let ((_e132194132308_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl132156132217_))))
                                             (let ((_hd132193132311_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132194132308_)))
                                                   (_tl132192132313_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132194132308_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132192132313_))
                                                   ((lambda (_L132316_
                                                             _L132317_
                                                             _L132318_
                                                             _L132319_
                                                             _L132320_)
                                                      (let* ((_g132359132421_
                                                              (lambda (_g132360132418_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132360132418_))))
                     (_g132358133468_
                      (lambda (_g132360132424_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132360132424_))
                            (let ((_e132368132426_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132360132424_))))
                              (let ((_hd132367132429_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132368132426_)))
                                    (_tl132366132431_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132368132426_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd132367132429_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd132367132429_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl132366132431_))
                                            (let ((_e132371132434_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl132366132431_))))
                                              (let ((_hd132370132437_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132371132434_)))
                                                    (_tl132369132439_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132371132434_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl132369132439_))
                                                    (let ((_e132374132442_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl132369132439_))))
                                                      (let ((_hd132373132445_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e132374132442_)))
                    (_tl132372132447_
                     (let () (declare (not safe)) (##cdr _e132374132442_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd132373132445_))
                    (let ((_e132377132450_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd132373132445_))))
                      (let ((_hd132376132453_
                             (let ()
                               (declare (not safe))
                               (##car _e132377132450_)))
                            (_tl132375132455_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132377132450_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd132376132453_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd132376132453_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl132375132455_))
                                    (let ((_e132380132458_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl132375132455_))))
                                      (let ((_hd132379132461_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132380132458_)))
                                            (_tl132378132463_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132380132458_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd132379132461_))
                                            (let ((_e132383132466_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd132379132461_))))
                                              (let ((_hd132382132469_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132383132466_)))
                                                    (_tl132381132471_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132383132466_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd132382132469_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd132382132469_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl132381132471_))
                                                            (let ((_e132386132474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl132381132471_))))
                      (let ((_hd132385132477_
                             (let ()
                               (declare (not safe))
                               (##car _e132386132474_)))
                            (_tl132384132479_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132386132474_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl132384132479_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl132378132463_))
                                (let ((_e132389132482_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl132378132463_))))
                                  (let ((_hd132388132485_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132389132482_)))
                                        (_tl132387132487_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132389132482_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd132388132485_))
                                        (let ((_e132392132490_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd132388132485_))))
                                          (let ((_hd132391132493_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132392132490_)))
                                                (_tl132390132495_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132392132490_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd132391132493_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd132391132493_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl132390132495_))
                                                        (let ((_e132395132498_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl132390132495_))))
                  (let ((_hd132394132501_
                         (let () (declare (not safe)) (##car _e132395132498_)))
                        (_tl132393132503_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132395132498_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl132393132503_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl132387132487_))
                            (let ((_e132398132506_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl132387132487_))))
                              (let ((_hd132397132509_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132398132506_)))
                                    (_tl132396132511_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132398132506_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd132397132509_))
                                    (let ((_e132401132514_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd132397132509_))))
                                      (let ((_hd132400132517_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132401132514_)))
                                            (_tl132399132519_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132401132514_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd132400132517_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd132400132517_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl132399132519_))
                                                    (let ((_e132404132522_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl132399132519_))))
                                                      (let ((_hd132403132525_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e132404132522_)))
                    (_tl132402132527_
                     (let () (declare (not safe)) (##cdr _e132404132522_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl132402132527_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl132396132511_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl132396132511_))
                                  '1)
                            (let ((_g134932_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl132396132511_
                                      '1))))
                              (begin
                                (let ((_g134933_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g134932_)
                                             (##vector-length _g134932_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g134933_ 2)))
                                      (error "Context expects 2 values"
                                             _g134933_)))
                                (let ((_target132405132530_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134932_ 0)))
                                      (_tl132407132532_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134932_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl132407132532_))
                                      (let ((_e132416132535_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl132407132532_))))
                                        (let ((_hd132415132538_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132416132535_)))
                                              (_tl132414132540_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132416132535_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132414132540_))
                                              (letrec ((_loop132408132543_
                                                        (lambda (_hd132406132546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref132412132548_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd132406132546_))
                      (let ((_e132409132551_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd132406132546_))))
                        (let ((_lp-hd132410132554_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132409132551_)))
                              (_lp-tl132411132556_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132409132551_))))
                          (let ((__tmp135019
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd132410132554_
                                         _kw-ref132412132548_))))
                            (declare (not safe))
                            (_loop132408132543_
                             _lp-tl132411132556_
                             __tmp135019))))
                      (let ((_kw-ref132413132559_
                             (reverse _kw-ref132412132548_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl132372132447_))
                            ((lambda (_L132562_
                                      _L132563_
                                      _L132564_
                                      _L132565_
                                      _L132566_)
                               (let* ((_kw-count132617_
                                       (length (let ((__tmp134934
                                                      (lambda (_g132609132612_
                                                               _g132610132614_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g132609132612_
                                                                _g132610132614_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp134934
                                                         '()
                                                         _L132563_))))
                                      (_self-index132619_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count132617_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L132318_))
                                     (let* ((_g132622132636_
                                             (lambda (_g132623132633_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g132623132633_))))
                                            (_g132621132807_
                                             (lambda (_g132623132639_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g132623132639_))
                                                   (let ((_e132628132641_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g132623132639_))))
                                                     (let ((_hd132627132644_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132628132641_)))
                                                           (_tl132626132646_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132628132641_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132626132646_))
                                                           (let ((_e132631132649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132626132646_))))
                     (let ((_hd132630132652_
                            (let ()
                              (declare (not safe))
                              (##car _e132631132649_)))
                           (_tl132629132654_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132631132649_))))
                       ((lambda (_L132657_ _L132658_)
                          (let ((_self132674_
                                 (list-ref _L132658_ _self-index132619_)))
                            (for-each
                             (lambda (_g132675132677_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g132675132677_
                                  _self132674_
                                  _method-calls130324_
                                  _slot-refs130325_
                                  _class-type-check130326_
                                  _struct-type-check130327_
                                  _struct-type-assert130328_)))
                             _L132657_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?130331_))
                                _stx130230_
                                (let* ((_specializer-id132686_
                                        (let* ((_id132680_
                                                (let ((__tmp134985
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L130305_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp134985
                                                   '"::specialize")))
                                               (_specializer-id132683_
                                                (let ((__tmp134986
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx130230_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id132680_
                                                   __tmp134986))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id132683_))
                                          _specializer-id132683_))
                                       (_lifted-specializer-id132693_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?130333_))
                                            (let* ((_id132688_
                                                    (let ((__tmp134987
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130305_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp134987
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id132690_
                                                    (let ((__tmp134988
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx130230_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id132688_
                                                       __tmp134988))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id132690_))
                                              _lifted-specializer-id132690_)
                                            '#f))
                                       (_$t132695_
                                        (let ((__tmp134989 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp134989)))
                                       (_methods132697_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls130324_)))
                                       (_$methods132701_
                                        (map (lambda (_id132699_)
                                               (let ((__tmp134990
                                                      (gensym _id132699_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp134990)))
                                             _methods132697_))
                                       (_g134991_
                                        (for-each
                                         (lambda (_g132702132705_
                                                  _g132703132707_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls130324_
                                              _g132702132705_
                                              _g132703132707_)))
                                         _methods132697_
                                         _$methods132701_))
                                       (_methods-bind132718_
                                        (map (lambda (_g132710132713_
                                                      _g132711132715_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind130232_
                                                  _$t132695_
                                                  _g132710132713_
                                                  _g132711132715_)))
                                             _methods132697_
                                             _$methods132701_))
                                       (_slots132720_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs130325_)))
                                       (_$slots132724_
                                        (map (lambda (_id132722_)
                                               (let ((__tmp134992
                                                      (gensym _id132722_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp134992)))
                                             _slots132720_))
                                       (_g134993_
                                        (for-each
                                         (lambda (_g132725132728_
                                                  _g132726132730_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs130325_
                                              _g132725132728_
                                              _g132726132730_)))
                                         _slots132720_
                                         _$slots132724_))
                                       (_slots-bind132741_
                                        (map (lambda (_g132733132736_
                                                      _g132734132738_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind130233_
                                                  _$t132695_
                                                  _g132733132736_
                                                  _g132734132738_)))
                                             _slots132720_
                                             _$slots132724_))
                                       (_class-check132743_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check130326_)))
                                       (_$class-check132746_
                                        (map (lambda (_g134994_)
                                               (let ((__tmp134995
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp134995)))
                                             _class-check132743_))
                                       (_g134996_
                                        (for-each
                                         (lambda (_g132747132750_
                                                  _g132748132752_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _class-type-check130326_
                                              _g132747132750_
                                              _g132748132752_)))
                                         _class-check132743_
                                         _$class-check132746_))
                                       (_class-check-bind132763_
                                        (map (lambda (_g132755132758_
                                                      _g132756132760_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind130234_
                                                  _$t132695_
                                                  _g132755132758_
                                                  _g132756132760_)))
                                             _class-check132743_
                                             _$class-check132746_))
                                       (_struct-check-all132765_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check130327_
                                           _struct-type-assert130328_)))
                                       (_struct-check132767_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all132765_)))
                                       (_$struct-check132770_
                                        (map (lambda (_g134997_)
                                               (let ((__tmp134998
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp134998)))
                                             _struct-check132767_))
                                       (_g134999_
                                        (for-each
                                         (lambda (_g132771132774_
                                                  _g132772132776_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _struct-check-all132765_
                                              _g132771132774_
                                              _g132772132776_)))
                                         _struct-check132767_
                                         _$struct-check132770_))
                                       (_struct-check-bind132787_
                                        (map (lambda (_g132779132782_
                                                      _g132780132784_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind130235_
                                                  _$t132695_
                                                  _g132779132782_
                                                  _g132780132784_)))
                                             _struct-check132767_
                                             _$struct-check132770_))
                                       (_make-specializer-impl132798_
                                        (lambda (_struct-type-check1132789_
                                                 _struct-type-check2132790_)
                                          (let* ((_specializer-body132796_
                                                  (map (lambda (_g132791132793_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g132791132793_
                                                            _self132674_
                                                            _$t132695_
                                                            _method-calls130324_
                                                            _slot-refs130325_
                                                            _class-type-check130326_
                                                            _struct-type-check1132789_
                                                            _struct-type-check2132790_)))
                                                       _L132657_))
                                                 (__tmp135000
                                                  (let ((__tmp135001
                                                         (let ((__tmp135003
                                                                (let ((__tmp135004
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135016
                                      (let ()
                                        (declare (not safe))
                                        (cons _L132320_ '())))
                                     (__tmp135005
                                      (let ((__tmp135006
                                             (let ((__tmp135007
                                                    (let ((__tmp135009
                                                           (let ((__tmp135010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135015
                                 (let ()
                                   (declare (not safe))
                                   (cons _L132319_ '())))
                                (__tmp135011
                                 (let ((__tmp135012
                                        (let ((__tmp135013
                                               (let ((__tmp135014
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L132658_
                                                              _specializer-body132796_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp135014))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp135013
                                           _L132318_))))
                                   (declare (not safe))
                                   (cons __tmp135012 '()))))
                            (declare (not safe))
                            (cons __tmp135015 __tmp135011))))
                     (declare (not safe))
                     (cons __tmp135010 '())))
                  (__tmp135008
                   (let () (declare (not safe)) (cons _L132317_ '()))))
              (declare (not safe))
              (cons __tmp135009 __tmp135008))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp135007))))
                                        (declare (not safe))
                                        (cons __tmp135006 '()))))
                                 (declare (not safe))
                                 (cons __tmp135016 __tmp135005))))
                          (declare (not safe))
                          (cons __tmp135004 '())))
                       (__tmp135002
                        (let () (declare (not safe)) (cons _L132316_ '()))))
                   (declare (not safe))
                   (cons __tmp135003 __tmp135002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp135001))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp135000
                                             _stx130230_))))
                                       (_specializer-impl132800_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl132798_
                                           _struct-check-all132765_
                                           _empty130329_)))
                                       (_unchecked-specializer-impl132802_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?130332_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl132798_
                                               _empty130329_
                                               _struct-check-all132765_))
                                            '#f))
                                       (_specializer-impl132804_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl130236_
                                           _$t132695_
                                           _methods-bind132718_
                                           _slots-bind132741_
                                           _class-check-bind132763_
                                           _struct-check-bind132787_
                                           _specializer-impl132800_
                                           _lifted-specializer-id132693_
                                           _unchecked-specializer-impl132802_))))
                                  (let ((__tmp135018
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L130305_)))
                                        (__tmp135017
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id132686_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp135018
                                     '" => "
                                     __tmp135017))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def130237_
                                     _L130305_
                                     _specializer-id132686_
                                     _specializer-impl132804_
                                     _lifted-specializer-id132693_
                                     _unchecked-specializer-impl132802_))))))
                        _tl132629132654_
                        _hd132630132652_)))
                   (let ()
                     (declare (not safe))
                     (_g132622132636_ _g132623132639_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132622132636_
                                                      _g132623132639_))))))
                                       (declare (not safe))
                                       (_g132621132807_ _L132318_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L132318_))
                                         (let* ((_g132810132840_
                                                 (lambda (_g132811132837_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g132811132837_))))
                                                (_g132809133465_
                                                 (lambda (_g132811132843_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g132811132843_))
                                                       (let ((_e132817132845_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g132811132843_))))
                 (let ((_hd132816132848_
                        (let () (declare (not safe)) (##car _e132817132845_)))
                       (_tl132815132850_
                        (let () (declare (not safe)) (##cdr _e132817132845_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl132815132850_))
                       (let ((_e132820132853_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl132815132850_))))
                         (let ((_hd132819132856_
                                (let ()
                                  (declare (not safe))
                                  (##car _e132820132853_)))
                               (_tl132818132858_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e132820132853_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd132819132856_))
                               (let ((_e132823132861_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd132819132856_))))
                                 (let ((_hd132822132864_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132823132861_)))
                                       (_tl132821132866_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132823132861_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd132822132864_))
                                       (let ((_e132826132869_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd132822132864_))))
                                         (let ((_hd132825132872_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e132826132869_)))
                                               (_tl132824132874_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e132826132869_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd132825132872_))
                                               (let ((_e132829132877_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd132825132872_))))
                                                 (let ((_hd132828132880_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132829132877_)))
                                                       (_tl132827132882_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132829132877_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl132827132882_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132824132874_))
                                                           (let ((_e132832132885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132824132874_))))
                     (let ((_hd132831132888_
                            (let ()
                              (declare (not safe))
                              (##car _e132832132885_)))
                           (_tl132830132890_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132832132885_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl132830132890_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl132821132866_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl132818132858_))
                                   (let ((_e132835132893_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl132818132858_))))
                                     (let ((_hd132834132896_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132835132893_)))
                                           (_tl132833132898_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132835132893_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl132833132898_))
                                           ((lambda (_L132901_
                                                     _L132902_
                                                     _L132903_)
                                              (let* ((_g132926132940_
                                                      (lambda (_g132927132937_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g132927132937_))))
                                                     (_g132925132981_
                                                      (lambda (_g132927132943_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g132927132943_))
                                                            (let ((_e132932132945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g132927132943_))))
                      (let ((_hd132931132948_
                             (let ()
                               (declare (not safe))
                               (##car _e132932132945_)))
                            (_tl132930132950_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132932132945_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl132930132950_))
                            (let ((_e132935132953_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl132930132950_))))
                              (let ((_hd132934132956_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132935132953_)))
                                    (_tl132933132958_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132935132953_))))
                                ((lambda (_L132961_ _L132962_)
                                   (let ((_self132975_
                                          (list-ref
                                           _L132962_
                                           _self-index132619_)))
                                     (for-each
                                      (lambda (_g132976132978_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g132976132978_
                                           _self132975_
                                           _method-calls130324_
                                           _slot-refs130325_
                                           _class-type-check130326_
                                           _struct-type-check130327_
                                           _struct-type-assert130328_)))
                                      _L132961_)))
                                 _tl132933132958_
                                 _hd132934132956_)))
                            (let ()
                              (declare (not safe))
                              (_g132926132940_ _g132927132943_)))))
                    (let ()
                      (declare (not safe))
                      (_g132926132940_ _g132927132943_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g132925132981_ _L132902_))
                                              (let* ((_g132984133003_
                                                      (lambda (_g132985133000_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g132985133000_))))
                                                     (_g132983133108_
                                                      (lambda (_g132985133006_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g132985133006_))
                                                            (let ((_e132989133008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g132985133006_))))
                      (let ((_hd132988133011_
                             (let ()
                               (declare (not safe))
                               (##car _e132989133008_)))
                            (_tl132987133013_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132989133008_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl132987133013_))
                            (let ((_g134935_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl132987133013_
                                      '0))))
                              (begin
                                (let ((_g134936_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g134935_)
                                             (##vector-length _g134935_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g134936_ 2)))
                                      (error "Context expects 2 values"
                                             _g134936_)))
                                (let ((_target132990133016_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134935_ 0)))
                                      (_tl132992133018_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134935_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl132992133018_))
                                      (letrec ((_loop132993133021_
                                                (lambda (_hd132991133024_
                                                         _clause132997133026_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd132991133024_))
                                                      (let ((_e132994133029_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd132991133024_))))
                (let ((_lp-hd132995133032_
                       (let () (declare (not safe)) (##car _e132994133029_)))
                      (_lp-tl132996133034_
                       (let () (declare (not safe)) (##cdr _e132994133029_))))
                  (let ((__tmp134938
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd132995133032_ _clause132997133026_))))
                    (declare (not safe))
                    (_loop132993133021_ _lp-tl132996133034_ __tmp134938))))
              (let ((_clause132998133037_ (reverse _clause132997133026_)))
                ((lambda (_L133040_)
                   (for-each
                    (lambda (_clause133053_)
                      (let* ((_g133055133066_
                              (lambda (_g133056133063_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g133056133063_))))
                             (_g133054133098_
                              (lambda (_g133056133069_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g133056133069_))
                                    (let ((_e133061133071_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g133056133069_))))
                                      (let ((_hd133060133074_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133061133071_)))
                                            (_tl133059133076_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133061133071_))))
                                        ((lambda (_L133079_ _L133080_)
                                           (let ((_self133092_
                                                  (list-ref
                                                   _L133080_
                                                   _self-index132619_)))
                                             (for-each
                                              (lambda (_g133093133095_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g133093133095_
                                                   _self133092_
                                                   _method-calls130324_
                                                   _slot-refs130325_
                                                   _class-type-check130326_
                                                   _struct-type-check130327_
                                                   _struct-type-assert130328_)))
                                              _L133079_)))
                                         _tl133059133076_
                                         _hd133060133074_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133055133066_ _g133056133069_))))))
                        (declare (not safe))
                        (_g133054133098_ _clause133053_)))
                    (let ((__tmp134937
                           (lambda (_g133100133103_ _g133101133105_)
                             (let ()
                               (declare (not safe))
                               (cons _g133100133103_ _g133101133105_)))))
                      (declare (not safe))
                      (foldr1 __tmp134937 '() _L133040_))))
                 _clause132998133037_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop132993133021_
                                           _target132990133016_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g132984133003_ _g132985133006_))))))
                            (let ()
                              (declare (not safe))
                              (_g132984133003_ _g132985133006_)))))
                    (let ()
                      (declare (not safe))
                      (_g132984133003_ _g132985133006_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g132983133108_ _L132901_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?130331_))
                                                  _stx130230_
                                                  (let* ((_specializer-id133117_
                                                          (let* ((_id133111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134939
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130305_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp134939 '"::specialize")))
                         (_specializer-id133114_
                          (let ((__tmp134940
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130230_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133111_ __tmp134940))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133114_))
                    _specializer-id133114_))
                 (_lifted-specializer-id133124_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?130333_))
                      (let* ((_id133119_
                              (let ((__tmp134941
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L130305_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp134941
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id133121_
                              (let ((__tmp134942
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx130230_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id133119_
                                 __tmp134942))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id133121_))
                        _lifted-specializer-id133121_)
                      '#f))
                 (_$t133126_
                  (let ((__tmp134943 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp134943)))
                 (_methods133128_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls130324_)))
                 (_$methods133132_
                  (map (lambda (_id133130_)
                         (let ((__tmp134944 (gensym _id133130_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp134944)))
                       _methods133128_))
                 (_g134945_
                  (for-each
                   (lambda (_g133133133136_ _g133134133138_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls130324_
                        _g133133133136_
                        _g133134133138_)))
                   _methods133128_
                   _$methods133132_))
                 (_methods-bind133149_
                  (map (lambda (_g133141133144_ _g133142133146_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind130232_
                            _$t133126_
                            _g133141133144_
                            _g133142133146_)))
                       _methods133128_
                       _$methods133132_))
                 (_slots133151_
                  (let () (declare (not safe)) (hash-keys _slot-refs130325_)))
                 (_$slots133155_
                  (map (lambda (_id133153_)
                         (let ((__tmp134946 (gensym _id133153_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp134946)))
                       _slots133151_))
                 (_g134947_
                  (for-each
                   (lambda (_g133156133159_ _g133157133161_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs130325_
                        _g133156133159_
                        _g133157133161_)))
                   _slots133151_
                   _$slots133155_))
                 (_slots-bind133172_
                  (map (lambda (_g133164133167_ _g133165133169_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind130233_
                            _$t133126_
                            _g133164133167_
                            _g133165133169_)))
                       _slots133151_
                       _$slots133155_))
                 (_class-check133174_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check130326_)))
                 (_$class-check133177_
                  (map (lambda (_g134948_)
                         (let ((__tmp134949 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp134949)))
                       _class-check133174_))
                 (_g134950_
                  (for-each
                   (lambda (_g133178133181_ _g133179133183_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _class-type-check130326_
                        _g133178133181_
                        _g133179133183_)))
                   _class-check133174_
                   _$class-check133177_))
                 (_class-check-bind133194_
                  (map (lambda (_g133186133189_ _g133187133191_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind130234_
                            _$t133126_
                            _g133186133189_
                            _g133187133191_)))
                       _class-check133174_
                       _$class-check133177_))
                 (_struct-check-all133196_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check130327_
                     _struct-type-assert130328_)))
                 (_struct-check133198_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all133196_)))
                 (_$struct-check133201_
                  (map (lambda (_g134951_)
                         (let ((__tmp134952 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp134952)))
                       _struct-check133198_))
                 (_g134953_
                  (for-each
                   (lambda (_g133202133205_ _g133203133207_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _struct-check-all133196_
                        _g133202133205_
                        _g133203133207_)))
                   _struct-check133198_
                   _$struct-check133201_))
                 (_struct-check-bind133218_
                  (map (lambda (_g133210133213_ _g133211133215_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind130235_
                            _$t133126_
                            _g133210133213_
                            _g133211133215_)))
                       _struct-check133198_
                       _$struct-check133201_))
                 (_make-specializer-lambda-expr133304_
                  (lambda (_struct-type-check1133220_
                           _struct-type-check2133221_)
                    (let* ((_g133223133237_
                            (lambda (_g133224133234_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g133224133234_))))
                           (_g133222133301_
                            (lambda (_g133224133240_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g133224133240_))
                                  (let ((_e133229133242_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g133224133240_))))
                                    (let ((_hd133228133245_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e133229133242_)))
                                          (_tl133227133247_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e133229133242_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl133227133247_))
                                          (let ((_e133232133250_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl133227133247_))))
                                            (let ((_hd133231133253_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e133232133250_)))
                                                  (_tl133230133255_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e133232133250_))))
                                              ((lambda (_L133258_ _L133259_)
                                                 (let* ((_self133292_
                                                         (list-ref
                                                          _L133259_
                                                          _self-index132619_))
                                                        (_body133298_
                                                         (map (lambda (_g133293133295_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g133293133295_
                           _self133292_
                           _$t133126_
                           _method-calls130324_
                           _slot-refs130325_
                           _class-type-check130326_
                           _struct-type-check1133220_
                           _struct-type-check2133221_)))
                      _L133258_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp134954
                                                          (let ((__tmp134955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L133259_ _body133298_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp134955))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp134954
                                                      _L132902_))))
                                               _tl133230133255_
                                               _hd133231133253_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g133223133237_
                                             _g133224133240_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g133223133237_ _g133224133240_))))))
                      (declare (not safe))
                      (_g133222133301_ _L132902_))))
                 (_make-specializer-case-lambda-expr133443_
                  (lambda (_struct-type-check1133306_
                           _struct-type-check2133307_)
                    (let* ((_g133309133328_
                            (lambda (_g133310133325_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g133310133325_))))
                           (_g133308133440_
                            (lambda (_g133310133331_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g133310133331_))
                                  (let ((_e133314133333_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g133310133331_))))
                                    (let ((_hd133313133336_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e133314133333_)))
                                          (_tl133312133338_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e133314133333_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl133312133338_))
                                          (let ((_g134956_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl133312133338_
                                                    '0))))
                                            (begin
                                              (let ((_g134957_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g134956_)
                                                           (##vector-length
                                                            _g134956_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g134957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g134957_)))
                                              (let ((_target133315133341_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g134956_
                                                        0)))
                                                    (_tl133317133343_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g134956_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl133317133343_))
                                                    (letrec ((_loop133318133346_
                                                              (lambda (_hd133316133349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause133322133351_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd133316133349_))
                            (let ((_e133319133354_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd133316133349_))))
                              (let ((_lp-hd133320133357_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133319133354_)))
                                    (_lp-tl133321133359_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133319133354_))))
                                (let ((__tmp134960
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd133320133357_
                                               _clause133322133351_))))
                                  (declare (not safe))
                                  (_loop133318133346_
                                   _lp-tl133321133359_
                                   __tmp134960))))
                            (let ((_clause133323133362_
                                   (reverse _clause133322133351_)))
                              ((lambda (_L133365_)
                                 (let* ((_clauses133438_
                                         (map (lambda (_clause133380_)
                                                (let* ((_g133382133393_
                                                        (lambda (_g133383133390_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g133383133390_))))
                                                       (_g133381133428_
                                                        (lambda (_g133383133396_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g133383133396_))
                      (let ((_e133388133398_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g133383133396_))))
                        (let ((_hd133387133401_
                               (let ()
                                 (declare (not safe))
                                 (##car _e133388133398_)))
                              (_tl133386133403_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e133388133398_))))
                          ((lambda (_L133406_ _L133407_)
                             (let* ((_self133419_
                                     (list-ref _L133407_ _self-index132619_))
                                    (_body133425_
                                     (map (lambda (_g133420133422_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g133420133422_
                                               _self133419_
                                               _$t133126_
                                               _method-calls130324_
                                               _slot-refs130325_
                                               _class-type-check130326_
                                               _struct-type-check1133306_
                                               _struct-type-check2133307_)))
                                          _L133406_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L133407_ _body133425_))))
                           _tl133386133403_
                           _hd133387133401_)))
                      (let ()
                        (declare (not safe))
                        (_g133382133393_ _g133383133396_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g133381133428_
                                                   _clause133380_)))
                                              (let ((__tmp134958
                                                     (lambda (_g133430133433_
                                                              _g133431133435_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g133430133433_
                                                               _g133431133435_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp134958
                                                        '()
                                                        _L133365_))))
                                        (__tmp134959
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses133438_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp134959
                                    _L132901_)))
                               _clause133323133362_))))))
              (let ()
                (declare (not safe))
                (_loop133318133346_ _target133315133341_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133309133328_
                                                       _g133310133331_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g133309133328_
                                             _g133310133331_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g133309133328_ _g133310133331_))))))
                      (declare (not safe))
                      (_g133308133440_ _L132901_))))
                 (_make-specializer-impl133448_
                  (lambda (_specializer-lambda-expr133445_
                           _specializer-case-lambda-expr133446_)
                    (let ((__tmp134961
                           (let ((__tmp134962
                                  (let ((__tmp134964
                                         (let ((__tmp134965
                                                (let ((__tmp134982
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L132320_ '())))
                                                      (__tmp134966
                                                       (let ((__tmp134967
                                                              (let ((__tmp134968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134970
                                    (let ((__tmp134971
                                           (let ((__tmp134981
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L132319_ '())))
                                                 (__tmp134972
                                                  (let ((__tmp134973
                                                         (let ((__tmp134974
                                                                (let ((__tmp134975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134977
                                      (let ((__tmp134978
                                             (let ((__tmp134980
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L132903_ '())))
                                                   (__tmp134979
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr133445_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp134980
                                                     __tmp134979))))
                                        (declare (not safe))
                                        (cons __tmp134978 '())))
                                     (__tmp134976
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr133446_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp134977 __tmp134976))))
                          (declare (not safe))
                          (cons '%#let-values __tmp134975))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp134974 _stx130230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134973 '()))))
                                             (declare (not safe))
                                             (cons __tmp134981 __tmp134972))))
                                      (declare (not safe))
                                      (cons __tmp134971 '())))
                                   (__tmp134969
                                    (let ()
                                      (declare (not safe))
                                      (cons _L132317_ '()))))
                               (declare (not safe))
                               (cons __tmp134970 __tmp134969))))
                        (declare (not safe))
                        (cons '%#let-values __tmp134968))))
                 (declare (not safe))
                 (cons __tmp134967 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134982
                                                        __tmp134966))))
                                           (declare (not safe))
                                           (cons __tmp134965 '())))
                                        (__tmp134963
                                         (let ()
                                           (declare (not safe))
                                           (cons _L132316_ '()))))
                                    (declare (not safe))
                                    (cons __tmp134964 __tmp134963))))
                             (declare (not safe))
                             (cons '%#let-values __tmp134962))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134961 _stx130230_))))
                 (_specializer-lambda-expr133450_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr133304_
                     _struct-check-all133196_
                     _empty130329_)))
                 (_specializer-case-lambda-expr133452_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr133443_
                     _struct-check-all133196_
                     _empty130329_)))
                 (_specializer-impl133454_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl133448_
                     _specializer-lambda-expr133450_
                     _specializer-case-lambda-expr133452_)))
                 (_unchecked-specializer-lambda-expr133456_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?130332_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr133304_
                         _empty130329_
                         _struct-check-all133196_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr133458_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?130332_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr133443_
                         _empty130329_
                         _struct-check-all133196_))
                      '#f))
                 (_unchecked-specializer-impl133460_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?130332_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl133448_
                         _unchecked-specializer-lambda-expr133456_
                         _unchecked-specializer-case-lambda-expr133458_))
                      '#f))
                 (_specializer-impl133462_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl130236_
                     _$t133126_
                     _methods-bind133149_
                     _slots-bind133172_
                     _class-check-bind133194_
                     _struct-check-bind133218_
                     _specializer-impl133454_
                     _lifted-specializer-id133124_
                     _unchecked-specializer-impl133460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp134984
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130305_)))
                                                          (__tmp134983
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133117_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp134984
                                                       '" => "
                                                       __tmp134983))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def130237_
                                                       _L130305_
                                                       _specializer-id133117_
                                                       _specializer-impl133462_
                                                       _lifted-specializer-id133124_
                                                       _unchecked-specializer-impl133460_)))))
                                            _hd132834132896_
                                            _hd132831132888_
                                            _hd132828132880_)
                                           (let ()
                                             (declare (not safe))
                                             (_g132810132840_
                                              _g132811132843_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132810132840_ _g132811132843_)))
                               (let ()
                                 (declare (not safe))
                                 (_g132810132840_ _g132811132843_)))
                           (let ()
                             (declare (not safe))
                             (_g132810132840_ _g132811132843_)))))
                   (let ()
                     (declare (not safe))
                     (_g132810132840_ _g132811132843_)))
               (let ()
                 (declare (not safe))
                 (_g132810132840_ _g132811132843_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132810132840_
                                                  _g132811132843_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g132810132840_ _g132811132843_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132810132840_ _g132811132843_)))))
                       (let ()
                         (declare (not safe))
                         (_g132810132840_ _g132811132843_)))))
               (let ()
                 (declare (not safe))
                 (_g132810132840_ _g132811132843_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g132809133465_ _L132318_))
                                         _stx130230_))))
                             _hd132415132538_
                             _kw-ref132413132559_
                             _hd132403132525_
                             _hd132394132501_
                             _hd132385132477_)
                            (let ()
                              (declare (not safe))
                              (_g132359132421_ _g132360132424_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop132408132543_
                                                   _target132405132530_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g132359132421_
                                                 _g132360132424_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g132359132421_ _g132360132424_))))))
                            (let ()
                              (declare (not safe))
                              (_g132359132421_ _g132360132424_)))
                        (let ()
                          (declare (not safe))
                          (_g132359132421_ _g132360132424_)))
                    (let ()
                      (declare (not safe))
                      (_g132359132421_ _g132360132424_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132359132421_
                                                       _g132360132424_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g132359132421_
                                                   _g132360132424_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g132359132421_
                                               _g132360132424_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132359132421_ _g132360132424_)))))
                            (let ()
                              (declare (not safe))
                              (_g132359132421_ _g132360132424_)))
                        (let ()
                          (declare (not safe))
                          (_g132359132421_ _g132360132424_)))))
                (let ()
                  (declare (not safe))
                  (_g132359132421_ _g132360132424_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132359132421_
                                                       _g132360132424_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g132359132421_
                                                   _g132360132424_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g132359132421_ _g132360132424_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132359132421_ _g132360132424_)))
                            (let ()
                              (declare (not safe))
                              (_g132359132421_ _g132360132424_)))))
                    (let ()
                      (declare (not safe))
                      (_g132359132421_ _g132360132424_)))
                (let ()
                  (declare (not safe))
                  (_g132359132421_ _g132360132424_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132359132421_
                                                       _g132360132424_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g132359132421_
                                               _g132360132424_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132359132421_ _g132360132424_)))
                                (let ()
                                  (declare (not safe))
                                  (_g132359132421_ _g132360132424_)))
                            (let ()
                              (declare (not safe))
                              (_g132359132421_ _g132360132424_)))))
                    (let ()
                      (declare (not safe))
                      (_g132359132421_ _g132360132424_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132359132421_
                                                       _g132360132424_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g132359132421_
                                               _g132360132424_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132359132421_ _g132360132424_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g132359132421_ _g132360132424_)))))
                            (let ()
                              (declare (not safe))
                              (_g132359132421_ _g132360132424_))))))
                (declare (not safe))
                (_g132358133468_ _L132317_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd132193132311_
                                                    _hd132190132303_
                                                    _hd132187132295_
                                                    _hd132184132287_
                                                    _hd132166132239_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132146132199_
                                                      _g132147132202_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132146132199_
                                              _g132147132202_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g132146132199_ _g132147132202_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g132146132199_ _g132147132202_)))
                               (let ()
                                 (declare (not safe))
                                 (_g132146132199_ _g132147132202_)))))
                       (let ()
                         (declare (not safe))
                         (_g132146132199_ _g132147132202_)))
                   (let ()
                     (declare (not safe))
                     (_g132146132199_ _g132147132202_)))
               (let ()
                 (declare (not safe))
                 (_g132146132199_ _g132147132202_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132146132199_
                                                  _g132147132202_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132146132199_
                                              _g132147132202_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132146132199_ _g132147132202_)))))
                           (let ()
                             (declare (not safe))
                             (_g132146132199_ _g132147132202_)))))
                   (let ()
                     (declare (not safe))
                     (_g132146132199_ _g132147132202_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132146132199_
                                                      _g132147132202_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132146132199_
                                                  _g132147132202_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132146132199_
                                              _g132147132202_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132146132199_ _g132147132202_)))))
                           (let ()
                             (declare (not safe))
                             (_g132146132199_ _g132147132202_)))
                       (let ()
                         (declare (not safe))
                         (_g132146132199_ _g132147132202_)))))
               (let ()
                 (declare (not safe))
                 (_g132146132199_ _g132147132202_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132146132199_
                                                  _g132147132202_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g132146132199_ _g132147132202_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132146132199_ _g132147132202_)))
                           (let ()
                             (declare (not safe))
                             (_g132146132199_ _g132147132202_)))
                       (let ()
                         (declare (not safe))
                         (_g132146132199_ _g132147132202_)))))
               (let ()
                 (declare (not safe))
                 (_g132146132199_ _g132147132202_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g132145133471_ _L130304_))
                                         _stx130230_))))))))
                  (___kont133710133711_ (lambda () _stx130230_)))
              (let ((___match133739133740_
                     (lambda (_e130246130272_
                              _hd130245130275_
                              _tl130244130277_
                              _e130249130280_
                              _hd130248130283_
                              _tl130247130285_
                              _e130252130288_
                              _hd130251130291_
                              _tl130250130293_
                              _e130255130296_
                              _hd130254130299_
                              _tl130253130301_)
                       (let ((_L130304_ _hd130254130299_)
                             (_L130305_ _hd130251130291_))
                         (if (let ((__tmp135101
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L130305_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp135101))
                             (___kont133708133709_ _L130304_ _L130305_)
                             (___kont133710133711_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx133706133707_))
                    (let ((_e130246130272_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx133706133707_))))
                      (let ((_tl130244130277_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130246130272_)))
                            (_hd130245130275_
                             (let ()
                               (declare (not safe))
                               (##car _e130246130272_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130244130277_))
                            (let ((_e130249130280_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130244130277_))))
                              (let ((_tl130247130285_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130249130280_)))
                                    (_hd130248130283_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130249130280_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd130248130283_))
                                    (let ((_e130252130288_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd130248130283_))))
                                      (let ((_tl130250130293_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e130252130288_)))
                                            (_hd130251130291_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e130252130288_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl130250130293_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl130247130285_))
                                                (let ((_e130255130296_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl130247130285_))))
                                                  (let ((_tl130253130301_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e130255130296_)))
                                                        (_hd130254130299_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e130255130296_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl130253130301_))
                                                        (___match133739133740_
                                                         _e130246130272_
                                                         _hd130245130275_
                                                         _tl130244130277_
                                                         _e130249130280_
                                                         _hd130248130283_
                                                         _tl130247130285_
                                                         _e130252130288_
                                                         _hd130251130291_
                                                         _tl130250130293_
                                                         _e130255130296_
                                                         _hd130254130299_
                                                         _tl130253130301_)
                                                        (___kont133710133711_))))
                                                (___kont133710133711_))
                                            (___kont133710133711_))))
                                    (___kont133710133711_))))
                            (___kont133710133711_))))
                    (___kont133710133711_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx129206_
               _self129207_
               _methods129208_
               _slots129209_
               _class-check129210_
               _struct-check129211_
               _struct-assert129212_)
        (let* ((___stx133742133743_ _stx129206_)
               (_g129220129442_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx133742133743_)))))
          (let ((___kont133744133745_
                 (lambda (_L130179_ _L130180_ _L130181_ _L130182_)
                   (let ((__tmp135102
                          (let () (declare (not safe)) (gx#stx-e _L130180_))))
                     (declare (not safe))
                     (hash-put! _methods129208_ __tmp135102 '#t))
                   (for-each
                    (lambda (_g130215130217_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g130215130217_
                         _self129207_
                         _methods129208_
                         _slots129209_
                         _class-check129210_
                         _struct-check129211_
                         _struct-assert129212_)))
                    (let ((__tmp135103
                           (lambda (_g130219130222_ _g130220130224_)
                             (let ()
                               (declare (not safe))
                               (cons _g130219130222_ _g130220130224_)))))
                      (declare (not safe))
                      (foldr1 __tmp135103 '() _L130179_)))))
                (___kont133748133749_
                 (lambda (_L130014_ _L130015_ _L130016_ _L130017_ _L130018_)
                   (let ((__tmp135104
                          (let () (declare (not safe)) (gx#stx-e _L130015_))))
                     (declare (not safe))
                     (hash-put! _methods129208_ __tmp135104 '#t))
                   (for-each
                    (lambda (_g130058130060_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g130058130060_
                         _self129207_
                         _methods129208_
                         _slots129209_
                         _class-check129210_
                         _struct-check129211_
                         _struct-assert129212_)))
                    (let ((__tmp135105
                           (lambda (_g130062130065_ _g130063130067_)
                             (let ()
                               (declare (not safe))
                               (cons _g130062130065_ _g130063130067_)))))
                      (declare (not safe))
                      (foldr1 __tmp135105 '() _L130014_)))))
                (___kont133752133753_
                 (lambda (_L129847_ _L129848_ _L129849_)
                   (let ((__tmp135106
                          (let () (declare (not safe)) (gx#stx-e _L129847_))))
                     (declare (not safe))
                     (hash-put! _slots129209_ __tmp135106 '#t))))
                (___kont133754133755_
                 (lambda (_L129724_ _L129725_ _L129726_ _L129727_)
                   (let ((__tmp135107
                          (let () (declare (not safe)) (gx#stx-e _L129725_))))
                     (declare (not safe))
                     (hash-put! _slots129209_ __tmp135107 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L129724_
                      _self129207_
                      _methods129208_
                      _slots129209_
                      _class-check129210_
                      _struct-check129211_
                      _struct-assert129212_))))
                (___kont133756133757_
                 (lambda (_L129608_ _L129609_)
                   (let ((__tmp135108
                          (##structure-ref
                           (let ((__tmp135109
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L129609_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135109))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (hash-put! _slots129209_ __tmp135108 '#t))))
                (___kont133758133759_
                 (lambda (_L129518_ _L129519_ _L129520_)
                   (let ((__tmp135110
                          (##structure-ref
                           (let ((__tmp135111
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L129520_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135111))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (hash-put! _slots129209_ __tmp135110 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L129518_
                      _self129207_
                      _methods129208_
                      _slots129209_
                      _class-check129210_
                      _struct-check129211_
                      _struct-assert129212_))))
                (___kont133760133761_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx129206_
                      _self129207_
                      _methods129208_
                      _slots129209_
                      _class-check129210_
                      _struct-check129211_
                      _struct-assert129212_)))))
            (let* ((___match134241134242_
                    (lambda (_e129416129454_
                             _hd129415129457_
                             _tl129414129459_
                             _e129419129462_
                             _hd129418129465_
                             _tl129417129467_
                             _e129422129470_
                             _hd129421129473_
                             _tl129420129475_
                             _e129425129478_
                             _hd129424129481_
                             _tl129423129483_
                             _e129428129486_
                             _hd129427129489_
                             _tl129426129491_
                             _e129431129494_
                             _hd129430129497_
                             _tl129429129499_
                             _e129434129502_
                             _hd129433129505_
                             _tl129432129507_
                             _e129437129510_
                             _hd129436129513_
                             _tl129435129515_)
                      (let ((_L129518_ _hd129436129513_)
                            (_L129519_ _hd129433129505_)
                            (_L129520_ _hd129424129481_))
                        (if (and (let ((__tmp135112
                                        (let ((__tmp135113
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L129520_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135113))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135112
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129519_
                                    _self129207_)))
                            (___kont133758133759_
                             _L129518_
                             _L129519_
                             _L129520_)
                            (___kont133760133761_)))))
                   (___match134239134240_
                    (lambda (_e129416129454_
                             _hd129415129457_
                             _tl129414129459_
                             _e129419129462_
                             _hd129418129465_
                             _tl129417129467_
                             _e129422129470_
                             _hd129421129473_
                             _tl129420129475_
                             _e129425129478_
                             _hd129424129481_
                             _tl129423129483_
                             _e129428129486_
                             _hd129427129489_
                             _tl129426129491_
                             _e129431129494_
                             _hd129430129497_
                             _tl129429129499_
                             _e129434129502_
                             _hd129433129505_
                             _tl129432129507_
                             _e129437129510_
                             _hd129436129513_
                             _tl129435129515_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129435129515_))
                          (___match134241134242_
                           _e129416129454_
                           _hd129415129457_
                           _tl129414129459_
                           _e129419129462_
                           _hd129418129465_
                           _tl129417129467_
                           _e129422129470_
                           _hd129421129473_
                           _tl129420129475_
                           _e129425129478_
                           _hd129424129481_
                           _tl129423129483_
                           _e129428129486_
                           _hd129427129489_
                           _tl129426129491_
                           _e129431129494_
                           _hd129430129497_
                           _tl129429129499_
                           _e129434129502_
                           _hd129433129505_
                           _tl129432129507_
                           _e129437129510_
                           _hd129436129513_
                           _tl129435129515_)
                          (___kont133760133761_))))
                   (___match134233134234_
                    (lambda (_e129416129454_
                             _hd129415129457_
                             _tl129414129459_
                             _e129419129462_
                             _hd129418129465_
                             _tl129417129467_
                             _e129422129470_
                             _hd129421129473_
                             _tl129420129475_
                             _e129425129478_
                             _hd129424129481_
                             _tl129423129483_
                             _e129428129486_
                             _hd129427129489_
                             _tl129426129491_
                             _e129431129494_
                             _hd129430129497_
                             _tl129429129499_
                             _e129434129502_
                             _hd129433129505_
                             _tl129432129507_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129426129491_))
                          (let ((_e129437129510_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129426129491_))))
                            (let ((_tl129435129515_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129437129510_)))
                                  (_hd129436129513_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129437129510_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129435129515_))
                                  (___match134241134242_
                                   _e129416129454_
                                   _hd129415129457_
                                   _tl129414129459_
                                   _e129419129462_
                                   _hd129418129465_
                                   _tl129417129467_
                                   _e129422129470_
                                   _hd129421129473_
                                   _tl129420129475_
                                   _e129425129478_
                                   _hd129424129481_
                                   _tl129423129483_
                                   _e129428129486_
                                   _hd129427129489_
                                   _tl129426129491_
                                   _e129431129494_
                                   _hd129430129497_
                                   _tl129429129499_
                                   _e129434129502_
                                   _hd129433129505_
                                   _tl129432129507_
                                   _e129437129510_
                                   _hd129436129513_
                                   _tl129435129515_)
                                  (___kont133760133761_))))
                          (___kont133760133761_))))
                   (___match134179134180_
                    (lambda (_e129392129552_
                             _hd129391129555_
                             _tl129390129557_
                             _e129395129560_
                             _hd129394129563_
                             _tl129393129565_
                             _e129398129568_
                             _hd129397129571_
                             _tl129396129573_
                             _e129401129576_
                             _hd129400129579_
                             _tl129399129581_
                             _e129404129584_
                             _hd129403129587_
                             _tl129402129589_
                             _e129407129592_
                             _hd129406129595_
                             _tl129405129597_
                             _e129410129600_
                             _hd129409129603_
                             _tl129408129605_)
                      (let ((_L129608_ _hd129409129603_)
                            (_L129609_ _hd129400129579_))
                        (if (and (let ((__tmp135114
                                        (let ((__tmp135115
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L129609_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135115))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135114
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129608_
                                    _self129207_)))
                            (___kont133756133757_ _L129608_ _L129609_)
                            (___kont133760133761_)))))
                   (___match134177134178_
                    (lambda (_e129392129552_
                             _hd129391129555_
                             _tl129390129557_
                             _e129395129560_
                             _hd129394129563_
                             _tl129393129565_
                             _e129398129568_
                             _hd129397129571_
                             _tl129396129573_
                             _e129401129576_
                             _hd129400129579_
                             _tl129399129581_
                             _e129404129584_
                             _hd129403129587_
                             _tl129402129589_
                             _e129407129592_
                             _hd129406129595_
                             _tl129405129597_
                             _e129410129600_
                             _hd129409129603_
                             _tl129408129605_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129402129589_))
                          (___match134179134180_
                           _e129392129552_
                           _hd129391129555_
                           _tl129390129557_
                           _e129395129560_
                           _hd129394129563_
                           _tl129393129565_
                           _e129398129568_
                           _hd129397129571_
                           _tl129396129573_
                           _e129401129576_
                           _hd129400129579_
                           _tl129399129581_
                           _e129404129584_
                           _hd129403129587_
                           _tl129402129589_
                           _e129407129592_
                           _hd129406129595_
                           _tl129405129597_
                           _e129410129600_
                           _hd129409129603_
                           _tl129408129605_)
                          (___match134233134234_
                           _e129392129552_
                           _hd129391129555_
                           _tl129390129557_
                           _e129395129560_
                           _hd129394129563_
                           _tl129393129565_
                           _e129398129568_
                           _hd129397129571_
                           _tl129396129573_
                           _e129401129576_
                           _hd129400129579_
                           _tl129399129581_
                           _e129404129584_
                           _hd129403129587_
                           _tl129402129589_
                           _e129407129592_
                           _hd129406129595_
                           _tl129405129597_
                           _e129410129600_
                           _hd129409129603_
                           _tl129408129605_))))
                   (___match134123134124_
                    (lambda (_e129357129636_
                             _hd129356129639_
                             _tl129355129641_
                             _e129360129644_
                             _hd129359129647_
                             _tl129358129649_
                             _e129363129652_
                             _hd129362129655_
                             _tl129361129657_
                             _e129366129660_
                             _hd129365129663_
                             _tl129364129665_
                             _e129369129668_
                             _hd129368129671_
                             _tl129367129673_
                             _e129372129676_
                             _hd129371129679_
                             _tl129370129681_
                             _e129375129684_
                             _hd129374129687_
                             _tl129373129689_
                             _e129378129692_
                             _hd129377129695_
                             _tl129376129697_
                             _e129381129700_
                             _hd129380129703_
                             _tl129379129705_
                             _e129384129708_
                             _hd129383129711_
                             _tl129382129713_
                             _e129387129716_
                             _hd129386129719_
                             _tl129385129721_)
                      (let ((_L129724_ _hd129386129719_)
                            (_L129725_ _hd129383129711_)
                            (_L129726_ _hd129374129687_)
                            (_L129727_ _hd129365129663_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129727_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129727_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129726_
                                    _self129207_)))
                            (___kont133754133755_
                             _L129724_
                             _L129725_
                             _L129726_
                             _L129727_)
                            (___kont133760133761_)))))
                   (___match134115134116_
                    (lambda (_e129357129636_
                             _hd129356129639_
                             _tl129355129641_
                             _e129360129644_
                             _hd129359129647_
                             _tl129358129649_
                             _e129363129652_
                             _hd129362129655_
                             _tl129361129657_
                             _e129366129660_
                             _hd129365129663_
                             _tl129364129665_
                             _e129369129668_
                             _hd129368129671_
                             _tl129367129673_
                             _e129372129676_
                             _hd129371129679_
                             _tl129370129681_
                             _e129375129684_
                             _hd129374129687_
                             _tl129373129689_
                             _e129378129692_
                             _hd129377129695_
                             _tl129376129697_
                             _e129381129700_
                             _hd129380129703_
                             _tl129379129705_
                             _e129384129708_
                             _hd129383129711_
                             _tl129382129713_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129376129697_))
                          (let ((_e129387129716_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129376129697_))))
                            (let ((_tl129385129721_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129387129716_)))
                                  (_hd129386129719_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129387129716_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129385129721_))
                                  (___match134123134124_
                                   _e129357129636_
                                   _hd129356129639_
                                   _tl129355129641_
                                   _e129360129644_
                                   _hd129359129647_
                                   _tl129358129649_
                                   _e129363129652_
                                   _hd129362129655_
                                   _tl129361129657_
                                   _e129366129660_
                                   _hd129365129663_
                                   _tl129364129665_
                                   _e129369129668_
                                   _hd129368129671_
                                   _tl129367129673_
                                   _e129372129676_
                                   _hd129371129679_
                                   _tl129370129681_
                                   _e129375129684_
                                   _hd129374129687_
                                   _tl129373129689_
                                   _e129378129692_
                                   _hd129377129695_
                                   _tl129376129697_
                                   _e129381129700_
                                   _hd129380129703_
                                   _tl129379129705_
                                   _e129384129708_
                                   _hd129383129711_
                                   _tl129382129713_
                                   _e129387129716_
                                   _hd129386129719_
                                   _tl129385129721_)
                                  (___kont133760133761_))))
                          (___match134239134240_
                           _e129357129636_
                           _hd129356129639_
                           _tl129355129641_
                           _e129360129644_
                           _hd129359129647_
                           _tl129358129649_
                           _e129363129652_
                           _hd129362129655_
                           _tl129361129657_
                           _e129366129660_
                           _hd129365129663_
                           _tl129364129665_
                           _e129369129668_
                           _hd129368129671_
                           _tl129367129673_
                           _e129372129676_
                           _hd129371129679_
                           _tl129370129681_
                           _e129375129684_
                           _hd129374129687_
                           _tl129373129689_
                           _e129378129692_
                           _hd129377129695_
                           _tl129376129697_))))
                   (___match134037134038_
                    (lambda (_e129323129767_
                             _hd129322129770_
                             _tl129321129772_
                             _e129326129775_
                             _hd129325129778_
                             _tl129324129780_
                             _e129329129783_
                             _hd129328129786_
                             _tl129327129788_
                             _e129332129791_
                             _hd129331129794_
                             _tl129330129796_
                             _e129335129799_
                             _hd129334129802_
                             _tl129333129804_
                             _e129338129807_
                             _hd129337129810_
                             _tl129336129812_
                             _e129341129815_
                             _hd129340129818_
                             _tl129339129820_
                             _e129344129823_
                             _hd129343129826_
                             _tl129342129828_
                             _e129347129831_
                             _hd129346129834_
                             _tl129345129836_
                             _e129350129839_
                             _hd129349129842_
                             _tl129348129844_)
                      (let ((_L129847_ _hd129349129842_)
                            (_L129848_ _hd129340129818_)
                            (_L129849_ _hd129331129794_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129849_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129849_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129848_
                                    _self129207_)))
                            (___kont133752133753_
                             _L129847_
                             _L129848_
                             _L129849_)
                            (___match134241134242_
                             _e129323129767_
                             _hd129322129770_
                             _tl129321129772_
                             _e129326129775_
                             _hd129325129778_
                             _tl129324129780_
                             _e129329129783_
                             _hd129328129786_
                             _tl129327129788_
                             _e129332129791_
                             _hd129331129794_
                             _tl129330129796_
                             _e129335129799_
                             _hd129334129802_
                             _tl129333129804_
                             _e129338129807_
                             _hd129337129810_
                             _tl129336129812_
                             _e129341129815_
                             _hd129340129818_
                             _tl129339129820_
                             _e129344129823_
                             _hd129343129826_
                             _tl129342129828_)))))
                   (___match134035134036_
                    (lambda (_e129323129767_
                             _hd129322129770_
                             _tl129321129772_
                             _e129326129775_
                             _hd129325129778_
                             _tl129324129780_
                             _e129329129783_
                             _hd129328129786_
                             _tl129327129788_
                             _e129332129791_
                             _hd129331129794_
                             _tl129330129796_
                             _e129335129799_
                             _hd129334129802_
                             _tl129333129804_
                             _e129338129807_
                             _hd129337129810_
                             _tl129336129812_
                             _e129341129815_
                             _hd129340129818_
                             _tl129339129820_
                             _e129344129823_
                             _hd129343129826_
                             _tl129342129828_
                             _e129347129831_
                             _hd129346129834_
                             _tl129345129836_
                             _e129350129839_
                             _hd129349129842_
                             _tl129348129844_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129342129828_))
                          (___match134037134038_
                           _e129323129767_
                           _hd129322129770_
                           _tl129321129772_
                           _e129326129775_
                           _hd129325129778_
                           _tl129324129780_
                           _e129329129783_
                           _hd129328129786_
                           _tl129327129788_
                           _e129332129791_
                           _hd129331129794_
                           _tl129330129796_
                           _e129335129799_
                           _hd129334129802_
                           _tl129333129804_
                           _e129338129807_
                           _hd129337129810_
                           _tl129336129812_
                           _e129341129815_
                           _hd129340129818_
                           _tl129339129820_
                           _e129344129823_
                           _hd129343129826_
                           _tl129342129828_
                           _e129347129831_
                           _hd129346129834_
                           _tl129345129836_
                           _e129350129839_
                           _hd129349129842_
                           _tl129348129844_)
                          (___match134115134116_
                           _e129323129767_
                           _hd129322129770_
                           _tl129321129772_
                           _e129326129775_
                           _hd129325129778_
                           _tl129324129780_
                           _e129329129783_
                           _hd129328129786_
                           _tl129327129788_
                           _e129332129791_
                           _hd129331129794_
                           _tl129330129796_
                           _e129335129799_
                           _hd129334129802_
                           _tl129333129804_
                           _e129338129807_
                           _hd129337129810_
                           _tl129336129812_
                           _e129341129815_
                           _hd129340129818_
                           _tl129339129820_
                           _e129344129823_
                           _hd129343129826_
                           _tl129342129828_
                           _e129347129831_
                           _hd129346129834_
                           _tl129345129836_
                           _e129350129839_
                           _hd129349129842_
                           _tl129348129844_))))
                   (___match134025134026_
                    (lambda (_e129323129767_
                             _hd129322129770_
                             _tl129321129772_
                             _e129326129775_
                             _hd129325129778_
                             _tl129324129780_
                             _e129329129783_
                             _hd129328129786_
                             _tl129327129788_
                             _e129332129791_
                             _hd129331129794_
                             _tl129330129796_
                             _e129335129799_
                             _hd129334129802_
                             _tl129333129804_
                             _e129338129807_
                             _hd129337129810_
                             _tl129336129812_
                             _e129341129815_
                             _hd129340129818_
                             _tl129339129820_
                             _e129344129823_
                             _hd129343129826_
                             _tl129342129828_
                             _e129347129831_
                             _hd129346129834_
                             _tl129345129836_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd129346129834_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl129345129836_))
                              (let ((_e129350129839_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl129345129836_))))
                                (let ((_tl129348129844_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129350129839_)))
                                      (_hd129349129842_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129350129839_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl129348129844_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl129342129828_))
                                          (___match134037134038_
                                           _e129323129767_
                                           _hd129322129770_
                                           _tl129321129772_
                                           _e129326129775_
                                           _hd129325129778_
                                           _tl129324129780_
                                           _e129329129783_
                                           _hd129328129786_
                                           _tl129327129788_
                                           _e129332129791_
                                           _hd129331129794_
                                           _tl129330129796_
                                           _e129335129799_
                                           _hd129334129802_
                                           _tl129333129804_
                                           _e129338129807_
                                           _hd129337129810_
                                           _tl129336129812_
                                           _e129341129815_
                                           _hd129340129818_
                                           _tl129339129820_
                                           _e129344129823_
                                           _hd129343129826_
                                           _tl129342129828_
                                           _e129347129831_
                                           _hd129346129834_
                                           _tl129345129836_
                                           _e129350129839_
                                           _hd129349129842_
                                           _tl129348129844_)
                                          (___match134115134116_
                                           _e129323129767_
                                           _hd129322129770_
                                           _tl129321129772_
                                           _e129326129775_
                                           _hd129325129778_
                                           _tl129324129780_
                                           _e129329129783_
                                           _hd129328129786_
                                           _tl129327129788_
                                           _e129332129791_
                                           _hd129331129794_
                                           _tl129330129796_
                                           _e129335129799_
                                           _hd129334129802_
                                           _tl129333129804_
                                           _e129338129807_
                                           _hd129337129810_
                                           _tl129336129812_
                                           _e129341129815_
                                           _hd129340129818_
                                           _tl129339129820_
                                           _e129344129823_
                                           _hd129343129826_
                                           _tl129342129828_
                                           _e129347129831_
                                           _hd129346129834_
                                           _tl129345129836_
                                           _e129350129839_
                                           _hd129349129842_
                                           _tl129348129844_))
                                      (___match134239134240_
                                       _e129323129767_
                                       _hd129322129770_
                                       _tl129321129772_
                                       _e129326129775_
                                       _hd129325129778_
                                       _tl129324129780_
                                       _e129329129783_
                                       _hd129328129786_
                                       _tl129327129788_
                                       _e129332129791_
                                       _hd129331129794_
                                       _tl129330129796_
                                       _e129335129799_
                                       _hd129334129802_
                                       _tl129333129804_
                                       _e129338129807_
                                       _hd129337129810_
                                       _tl129336129812_
                                       _e129341129815_
                                       _hd129340129818_
                                       _tl129339129820_
                                       _e129344129823_
                                       _hd129343129826_
                                       _tl129342129828_))))
                              (___match134239134240_
                               _e129323129767_
                               _hd129322129770_
                               _tl129321129772_
                               _e129326129775_
                               _hd129325129778_
                               _tl129324129780_
                               _e129329129783_
                               _hd129328129786_
                               _tl129327129788_
                               _e129332129791_
                               _hd129331129794_
                               _tl129330129796_
                               _e129335129799_
                               _hd129334129802_
                               _tl129333129804_
                               _e129338129807_
                               _hd129337129810_
                               _tl129336129812_
                               _e129341129815_
                               _hd129340129818_
                               _tl129339129820_
                               _e129344129823_
                               _hd129343129826_
                               _tl129342129828_))
                          (___match134239134240_
                           _e129323129767_
                           _hd129322129770_
                           _tl129321129772_
                           _e129326129775_
                           _hd129325129778_
                           _tl129324129780_
                           _e129329129783_
                           _hd129328129786_
                           _tl129327129788_
                           _e129332129791_
                           _hd129331129794_
                           _tl129330129796_
                           _e129335129799_
                           _hd129334129802_
                           _tl129333129804_
                           _e129338129807_
                           _hd129337129810_
                           _tl129336129812_
                           _e129341129815_
                           _hd129340129818_
                           _tl129339129820_
                           _e129344129823_
                           _hd129343129826_
                           _tl129342129828_))))
                   (___match133957133958_
                    (lambda (_e129272129886_
                             _hd129271129889_
                             _tl129270129891_
                             _e129275129894_
                             _hd129274129897_
                             _tl129273129899_
                             _e129278129902_
                             _hd129277129905_
                             _tl129276129907_
                             _e129281129910_
                             _hd129280129913_
                             _tl129279129915_
                             _e129284129918_
                             _hd129283129921_
                             _tl129282129923_
                             _e129287129926_
                             _hd129286129929_
                             _tl129285129931_
                             _e129290129934_
                             _hd129289129937_
                             _tl129288129939_
                             _e129293129942_
                             _hd129292129945_
                             _tl129291129947_
                             _e129296129950_
                             _hd129295129953_
                             _tl129294129955_
                             _e129299129958_
                             _hd129298129961_
                             _tl129297129963_
                             _e129302129966_
                             _hd129301129969_
                             _tl129300129971_
                             _e129305129974_
                             _hd129304129977_
                             _tl129303129979_
                             _e129308129982_
                             _hd129307129985_
                             _tl129306129987_
                             ___splice133750133751_
                             _target129309129990_
                             _tl129311129992_)
                      (letrec ((_loop129312129995_
                                (lambda (_hd129310129998_ _args129316130000_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd129310129998_))
                                      (let ((_e129313130003_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd129310129998_))))
                                        (let ((_lp-tl129315130008_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e129313130003_)))
                                              (_lp-hd129314130006_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e129313130003_))))
                                          (let ((__tmp135116
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd129314130006_
                                                         _args129316130000_))))
                                            (declare (not safe))
                                            (_loop129312129995_
                                             _lp-tl129315130008_
                                             __tmp135116))))
                                      (let ((_args129317130011_
                                             (reverse _args129316130000_)))
                                        (let ((_L130014_ _args129317130011_)
                                              (_L130015_ _hd129307129985_)
                                              (_L130016_ _hd129298129961_)
                                              (_L130017_ _hd129289129937_)
                                              (_L130018_ _hd129280129913_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130018_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130017_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L130016_
                                                      _self129207_)))
                                              (___kont133748133749_
                                               _L130014_
                                               _L130015_
                                               _L130016_
                                               _L130017_
                                               _L130018_)
                                              (___kont133760133761_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop129312129995_ _target129309129990_ '())))))
                   (___match133915133916_
                    (lambda (_e129272129886_
                             _hd129271129889_
                             _tl129270129891_
                             _e129275129894_
                             _hd129274129897_
                             _tl129273129899_
                             _e129278129902_
                             _hd129277129905_
                             _tl129276129907_
                             _e129281129910_
                             _hd129280129913_
                             _tl129279129915_
                             _e129284129918_
                             _hd129283129921_
                             _tl129282129923_
                             _e129287129926_
                             _hd129286129929_
                             _tl129285129931_
                             _e129290129934_
                             _hd129289129937_
                             _tl129288129939_
                             _e129293129942_
                             _hd129292129945_
                             _tl129291129947_
                             _e129296129950_
                             _hd129295129953_
                             _tl129294129955_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd129295129953_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl129294129955_))
                              (let ((_e129299129958_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl129294129955_))))
                                (let ((_tl129297129963_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129299129958_)))
                                      (_hd129298129961_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129299129958_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl129297129963_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl129291129947_))
                                          (let ((_e129302129966_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl129291129947_))))
                                            (let ((_tl129300129971_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e129302129966_)))
                                                  (_hd129301129969_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e129302129966_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd129301129969_))
                                                  (let ((_e129305129974_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd129301129969_))))
                                                    (let ((_tl129303129979_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129305129974_)))
                                                          (_hd129304129977_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129305129974_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd129304129977_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd129304129977_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129303129979_))
                          (let ((_e129308129982_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129303129979_))))
                            (let ((_tl129306129987_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129308129982_)))
                                  (_hd129307129985_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129308129982_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129306129987_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl129300129971_))
                                      (let ((___splice133750133751_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl129300129971_
                                                '0))))
                                        (let ((_tl129311129992_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice133750133751_
                                                  '1)))
                                              (_target129309129990_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice133750133751_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl129311129992_))
                                              (___match133957133958_
                                               _e129272129886_
                                               _hd129271129889_
                                               _tl129270129891_
                                               _e129275129894_
                                               _hd129274129897_
                                               _tl129273129899_
                                               _e129278129902_
                                               _hd129277129905_
                                               _tl129276129907_
                                               _e129281129910_
                                               _hd129280129913_
                                               _tl129279129915_
                                               _e129284129918_
                                               _hd129283129921_
                                               _tl129282129923_
                                               _e129287129926_
                                               _hd129286129929_
                                               _tl129285129931_
                                               _e129290129934_
                                               _hd129289129937_
                                               _tl129288129939_
                                               _e129293129942_
                                               _hd129292129945_
                                               _tl129291129947_
                                               _e129296129950_
                                               _hd129295129953_
                                               _tl129294129955_
                                               _e129299129958_
                                               _hd129298129961_
                                               _tl129297129963_
                                               _e129302129966_
                                               _hd129301129969_
                                               _tl129300129971_
                                               _e129305129974_
                                               _hd129304129977_
                                               _tl129303129979_
                                               _e129308129982_
                                               _hd129307129985_
                                               _tl129306129987_
                                               ___splice133750133751_
                                               _target129309129990_
                                               _tl129311129992_)
                                              (___kont133760133761_))))
                                      (___kont133760133761_))
                                  (___kont133760133761_))))
                          (___kont133760133761_))
                      (___kont133760133761_))
                  (___kont133760133761_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133760133761_))))
                                          (___match134239134240_
                                           _e129272129886_
                                           _hd129271129889_
                                           _tl129270129891_
                                           _e129275129894_
                                           _hd129274129897_
                                           _tl129273129899_
                                           _e129278129902_
                                           _hd129277129905_
                                           _tl129276129907_
                                           _e129281129910_
                                           _hd129280129913_
                                           _tl129279129915_
                                           _e129284129918_
                                           _hd129283129921_
                                           _tl129282129923_
                                           _e129287129926_
                                           _hd129286129929_
                                           _tl129285129931_
                                           _e129290129934_
                                           _hd129289129937_
                                           _tl129288129939_
                                           _e129293129942_
                                           _hd129292129945_
                                           _tl129291129947_))
                                      (___match134239134240_
                                       _e129272129886_
                                       _hd129271129889_
                                       _tl129270129891_
                                       _e129275129894_
                                       _hd129274129897_
                                       _tl129273129899_
                                       _e129278129902_
                                       _hd129277129905_
                                       _tl129276129907_
                                       _e129281129910_
                                       _hd129280129913_
                                       _tl129279129915_
                                       _e129284129918_
                                       _hd129283129921_
                                       _tl129282129923_
                                       _e129287129926_
                                       _hd129286129929_
                                       _tl129285129931_
                                       _e129290129934_
                                       _hd129289129937_
                                       _tl129288129939_
                                       _e129293129942_
                                       _hd129292129945_
                                       _tl129291129947_))))
                              (___match134239134240_
                               _e129272129886_
                               _hd129271129889_
                               _tl129270129891_
                               _e129275129894_
                               _hd129274129897_
                               _tl129273129899_
                               _e129278129902_
                               _hd129277129905_
                               _tl129276129907_
                               _e129281129910_
                               _hd129280129913_
                               _tl129279129915_
                               _e129284129918_
                               _hd129283129921_
                               _tl129282129923_
                               _e129287129926_
                               _hd129286129929_
                               _tl129285129931_
                               _e129290129934_
                               _hd129289129937_
                               _tl129288129939_
                               _e129293129942_
                               _hd129292129945_
                               _tl129291129947_))
                          (___match134025134026_
                           _e129272129886_
                           _hd129271129889_
                           _tl129270129891_
                           _e129275129894_
                           _hd129274129897_
                           _tl129273129899_
                           _e129278129902_
                           _hd129277129905_
                           _tl129276129907_
                           _e129281129910_
                           _hd129280129913_
                           _tl129279129915_
                           _e129284129918_
                           _hd129283129921_
                           _tl129282129923_
                           _e129287129926_
                           _hd129286129929_
                           _tl129285129931_
                           _e129290129934_
                           _hd129289129937_
                           _tl129288129939_
                           _e129293129942_
                           _hd129292129945_
                           _tl129291129947_
                           _e129296129950_
                           _hd129295129953_
                           _tl129294129955_))))
                   (___match133847133848_
                    (lambda (_e129228130075_
                             _hd129227130078_
                             _tl129226130080_
                             _e129231130083_
                             _hd129230130086_
                             _tl129229130088_
                             _e129234130091_
                             _hd129233130094_
                             _tl129232130096_
                             _e129237130099_
                             _hd129236130102_
                             _tl129235130104_
                             _e129240130107_
                             _hd129239130110_
                             _tl129238130112_
                             _e129243130115_
                             _hd129242130118_
                             _tl129241130120_
                             _e129246130123_
                             _hd129245130126_
                             _tl129244130128_
                             _e129249130131_
                             _hd129248130134_
                             _tl129247130136_
                             _e129252130139_
                             _hd129251130142_
                             _tl129250130144_
                             _e129255130147_
                             _hd129254130150_
                             _tl129253130152_
                             ___splice133746133747_
                             _target129256130155_
                             _tl129258130157_)
                      (letrec ((_loop129259130160_
                                (lambda (_hd129257130163_ _args129263130165_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd129257130163_))
                                      (let ((_e129260130168_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd129257130163_))))
                                        (let ((_lp-tl129262130173_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e129260130168_)))
                                              (_lp-hd129261130171_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e129260130168_))))
                                          (let ((__tmp135117
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd129261130171_
                                                         _args129263130165_))))
                                            (declare (not safe))
                                            (_loop129259130160_
                                             _lp-tl129262130173_
                                             __tmp135117))))
                                      (let ((_args129264130176_
                                             (reverse _args129263130165_)))
                                        (let ((_L130179_ _args129264130176_)
                                              (_L130180_ _hd129254130150_)
                                              (_L130181_ _hd129245130126_)
                                              (_L130182_ _hd129236130102_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130182_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L130181_
                                                      _self129207_)))
                                              (___kont133744133745_
                                               _L130179_
                                               _L130180_
                                               _L130181_
                                               _L130182_)
                                              (___match134035134036_
                                               _e129228130075_
                                               _hd129227130078_
                                               _tl129226130080_
                                               _e129231130083_
                                               _hd129230130086_
                                               _tl129229130088_
                                               _e129234130091_
                                               _hd129233130094_
                                               _tl129232130096_
                                               _e129237130099_
                                               _hd129236130102_
                                               _tl129235130104_
                                               _e129240130107_
                                               _hd129239130110_
                                               _tl129238130112_
                                               _e129243130115_
                                               _hd129242130118_
                                               _tl129241130120_
                                               _e129246130123_
                                               _hd129245130126_
                                               _tl129244130128_
                                               _e129249130131_
                                               _hd129248130134_
                                               _tl129247130136_
                                               _e129252130139_
                                               _hd129251130142_
                                               _tl129250130144_
                                               _e129255130147_
                                               _hd129254130150_
                                               _tl129253130152_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop129259130160_ _target129256130155_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx133742133743_))
                  (let ((_e129228130075_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx133742133743_))))
                    (let ((_tl129226130080_
                           (let ()
                             (declare (not safe))
                             (##cdr _e129228130075_)))
                          (_hd129227130078_
                           (let ()
                             (declare (not safe))
                             (##car _e129228130075_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129226130080_))
                          (let ((_e129231130083_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129226130080_))))
                            (let ((_tl129229130088_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129231130083_)))
                                  (_hd129230130086_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129231130083_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd129230130086_))
                                  (let ((_e129234130091_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd129230130086_))))
                                    (let ((_tl129232130096_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e129234130091_)))
                                          (_hd129233130094_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e129234130091_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd129233130094_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd129233130094_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl129232130096_))
                                                  (let ((_e129237130099_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl129232130096_))))
                                                    (let ((_tl129235130104_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129237130099_)))
                                                          (_hd129236130102_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129237130099_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl129235130104_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl129229130088_))
                      (let ((_e129240130107_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl129229130088_))))
                        (let ((_tl129238130112_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129240130107_)))
                              (_hd129239130110_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129240130107_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd129239130110_))
                              (let ((_e129243130115_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd129239130110_))))
                                (let ((_tl129241130120_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129243130115_)))
                                      (_hd129242130118_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129243130115_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd129242130118_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd129242130118_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl129241130120_))
                                              (let ((_e129246130123_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl129241130120_))))
                                                (let ((_tl129244130128_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e129246130123_)))
                                                      (_hd129245130126_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e129246130123_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl129244130128_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl129238130112_))
                                                          (let ((_e129249130131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl129238130112_))))
                    (let ((_tl129247130136_
                           (let ()
                             (declare (not safe))
                             (##cdr _e129249130131_)))
                          (_hd129248130134_
                           (let ()
                             (declare (not safe))
                             (##car _e129249130131_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd129248130134_))
                          (let ((_e129252130139_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd129248130134_))))
                            (let ((_tl129250130144_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129252130139_)))
                                  (_hd129251130142_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129252130139_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd129251130142_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd129251130142_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl129250130144_))
                                          (let ((_e129255130147_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl129250130144_))))
                                            (let ((_tl129253130152_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e129255130147_)))
                                                  (_hd129254130150_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e129255130147_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl129253130152_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl129247130136_))
                                                      (let ((___splice133746133747_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl129247130136_ '0))))
                (let ((_tl129258130157_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice133746133747_ '1)))
                      (_target129256130155_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice133746133747_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl129258130157_))
                      (___match133847133848_
                       _e129228130075_
                       _hd129227130078_
                       _tl129226130080_
                       _e129231130083_
                       _hd129230130086_
                       _tl129229130088_
                       _e129234130091_
                       _hd129233130094_
                       _tl129232130096_
                       _e129237130099_
                       _hd129236130102_
                       _tl129235130104_
                       _e129240130107_
                       _hd129239130110_
                       _tl129238130112_
                       _e129243130115_
                       _hd129242130118_
                       _tl129241130120_
                       _e129246130123_
                       _hd129245130126_
                       _tl129244130128_
                       _e129249130131_
                       _hd129248130134_
                       _tl129247130136_
                       _e129252130139_
                       _hd129251130142_
                       _tl129250130144_
                       _e129255130147_
                       _hd129254130150_
                       _tl129253130152_
                       ___splice133746133747_
                       _target129256130155_
                       _tl129258130157_)
                      (___match134035134036_
                       _e129228130075_
                       _hd129227130078_
                       _tl129226130080_
                       _e129231130083_
                       _hd129230130086_
                       _tl129229130088_
                       _e129234130091_
                       _hd129233130094_
                       _tl129232130096_
                       _e129237130099_
                       _hd129236130102_
                       _tl129235130104_
                       _e129240130107_
                       _hd129239130110_
                       _tl129238130112_
                       _e129243130115_
                       _hd129242130118_
                       _tl129241130120_
                       _e129246130123_
                       _hd129245130126_
                       _tl129244130128_
                       _e129249130131_
                       _hd129248130134_
                       _tl129247130136_
                       _e129252130139_
                       _hd129251130142_
                       _tl129250130144_
                       _e129255130147_
                       _hd129254130150_
                       _tl129253130152_))))
              (___match134035134036_
               _e129228130075_
               _hd129227130078_
               _tl129226130080_
               _e129231130083_
               _hd129230130086_
               _tl129229130088_
               _e129234130091_
               _hd129233130094_
               _tl129232130096_
               _e129237130099_
               _hd129236130102_
               _tl129235130104_
               _e129240130107_
               _hd129239130110_
               _tl129238130112_
               _e129243130115_
               _hd129242130118_
               _tl129241130120_
               _e129246130123_
               _hd129245130126_
               _tl129244130128_
               _e129249130131_
               _hd129248130134_
               _tl129247130136_
               _e129252130139_
               _hd129251130142_
               _tl129250130144_
               _e129255130147_
               _hd129254130150_
               _tl129253130152_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match134239134240_
                                                   _e129228130075_
                                                   _hd129227130078_
                                                   _tl129226130080_
                                                   _e129231130083_
                                                   _hd129230130086_
                                                   _tl129229130088_
                                                   _e129234130091_
                                                   _hd129233130094_
                                                   _tl129232130096_
                                                   _e129237130099_
                                                   _hd129236130102_
                                                   _tl129235130104_
                                                   _e129240130107_
                                                   _hd129239130110_
                                                   _tl129238130112_
                                                   _e129243130115_
                                                   _hd129242130118_
                                                   _tl129241130120_
                                                   _e129246130123_
                                                   _hd129245130126_
                                                   _tl129244130128_
                                                   _e129249130131_
                                                   _hd129248130134_
                                                   _tl129247130136_))))
                                          (___match134239134240_
                                           _e129228130075_
                                           _hd129227130078_
                                           _tl129226130080_
                                           _e129231130083_
                                           _hd129230130086_
                                           _tl129229130088_
                                           _e129234130091_
                                           _hd129233130094_
                                           _tl129232130096_
                                           _e129237130099_
                                           _hd129236130102_
                                           _tl129235130104_
                                           _e129240130107_
                                           _hd129239130110_
                                           _tl129238130112_
                                           _e129243130115_
                                           _hd129242130118_
                                           _tl129241130120_
                                           _e129246130123_
                                           _hd129245130126_
                                           _tl129244130128_
                                           _e129249130131_
                                           _hd129248130134_
                                           _tl129247130136_))
                                      (___match133915133916_
                                       _e129228130075_
                                       _hd129227130078_
                                       _tl129226130080_
                                       _e129231130083_
                                       _hd129230130086_
                                       _tl129229130088_
                                       _e129234130091_
                                       _hd129233130094_
                                       _tl129232130096_
                                       _e129237130099_
                                       _hd129236130102_
                                       _tl129235130104_
                                       _e129240130107_
                                       _hd129239130110_
                                       _tl129238130112_
                                       _e129243130115_
                                       _hd129242130118_
                                       _tl129241130120_
                                       _e129246130123_
                                       _hd129245130126_
                                       _tl129244130128_
                                       _e129249130131_
                                       _hd129248130134_
                                       _tl129247130136_
                                       _e129252130139_
                                       _hd129251130142_
                                       _tl129250130144_))
                                  (___match134239134240_
                                   _e129228130075_
                                   _hd129227130078_
                                   _tl129226130080_
                                   _e129231130083_
                                   _hd129230130086_
                                   _tl129229130088_
                                   _e129234130091_
                                   _hd129233130094_
                                   _tl129232130096_
                                   _e129237130099_
                                   _hd129236130102_
                                   _tl129235130104_
                                   _e129240130107_
                                   _hd129239130110_
                                   _tl129238130112_
                                   _e129243130115_
                                   _hd129242130118_
                                   _tl129241130120_
                                   _e129246130123_
                                   _hd129245130126_
                                   _tl129244130128_
                                   _e129249130131_
                                   _hd129248130134_
                                   _tl129247130136_))))
                          (___match134239134240_
                           _e129228130075_
                           _hd129227130078_
                           _tl129226130080_
                           _e129231130083_
                           _hd129230130086_
                           _tl129229130088_
                           _e129234130091_
                           _hd129233130094_
                           _tl129232130096_
                           _e129237130099_
                           _hd129236130102_
                           _tl129235130104_
                           _e129240130107_
                           _hd129239130110_
                           _tl129238130112_
                           _e129243130115_
                           _hd129242130118_
                           _tl129241130120_
                           _e129246130123_
                           _hd129245130126_
                           _tl129244130128_
                           _e129249130131_
                           _hd129248130134_
                           _tl129247130136_))))
                  (___match134177134178_
                   _e129228130075_
                   _hd129227130078_
                   _tl129226130080_
                   _e129231130083_
                   _hd129230130086_
                   _tl129229130088_
                   _e129234130091_
                   _hd129233130094_
                   _tl129232130096_
                   _e129237130099_
                   _hd129236130102_
                   _tl129235130104_
                   _e129240130107_
                   _hd129239130110_
                   _tl129238130112_
                   _e129243130115_
                   _hd129242130118_
                   _tl129241130120_
                   _e129246130123_
                   _hd129245130126_
                   _tl129244130128_))
              (___kont133760133761_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont133760133761_))
                                          (___kont133760133761_))
                                      (___kont133760133761_))))
                              (___kont133760133761_))))
                      (___kont133760133761_))
                  (___kont133760133761_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133760133761_))
                                              (___kont133760133761_))
                                          (___kont133760133761_))))
                                  (___kont133760133761_))))
                          (___kont133760133761_))))
                  (___kont133760133761_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx128152_
               _self128153_
               _$t128154_
               _methods128155_
               _slots128156_
               _class-check128157_
               _struct-check128158_
               _struct-assert128159_)
        (letrec ((_force-e128161_
                  (lambda (_what129204_)
                    (let ((__tmp135118
                           (let ((__tmp135122
                                  (let ((__tmp135123
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp135123)))
                                 (__tmp135119
                                  (let ((__tmp135120
                                         (let ((__tmp135121
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what129204_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp135121))))
                                    (declare (not safe))
                                    (cons __tmp135120 '()))))
                             (declare (not safe))
                             (cons __tmp135122 __tmp135119))))
                      (declare (not safe))
                      (cons '%#call __tmp135118)))))
          (let* ((___stx134244134245_ _stx128152_)
                 (_g128169128391_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134244134245_)))))
            (let ((___kont134246134247_
                   (lambda (_L129150_ _L129151_ _L129152_ _L129153_)
                     (let ((_$method129198_
                            (let ((__tmp135124
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129151_))))
                              (declare (not safe))
                              (hash-ref__0 _methods128155_ __tmp135124)))
                           (_args129199_
                            (map (lambda (_g129186129188_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g129186129188_
                                      _self128153_
                                      _$t128154_
                                      _methods128155_
                                      _slots128156_
                                      _class-check128157_
                                      _struct-check128158_
                                      _struct-assert128159_)))
                                 (let ((__tmp135125
                                        (lambda (_g129190129193_
                                                 _g129191129195_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g129190129193_
                                                  _g129191129195_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135125 '() _L129150_)))))
                       (let ((__tmp135126
                              (let ((__tmp135127
                                     (let ((__tmp135131
                                            (let ()
                                              (declare (not safe))
                                              (_force-e128161_
                                               _$method129198_)))
                                           (__tmp135128
                                            (let ((__tmp135129
                                                   (let ((__tmp135130
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self128153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135130))))
                                              (declare (not safe))
                                              (cons __tmp135129
                                                    _args129199_))))
                                       (declare (not safe))
                                       (cons __tmp135131 __tmp135128))))
                                (declare (not safe))
                                (cons '%#call __tmp135127))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135126 _stx128152_)))))
                  (___kont134250134251_
                   (lambda (_L128982_ _L128983_ _L128984_ _L128985_ _L128986_)
                     (let ((_$method129038_
                            (let ((__tmp135132
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L128983_))))
                              (declare (not safe))
                              (hash-ref__0 _methods128155_ __tmp135132)))
                           (_args129039_
                            (map (lambda (_g129026129028_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g129026129028_
                                      _self128153_
                                      _$t128154_
                                      _methods128155_
                                      _slots128156_
                                      _class-check128157_
                                      _struct-check128158_
                                      _struct-assert128159_)))
                                 (let ((__tmp135133
                                        (lambda (_g129030129033_
                                                 _g129031129035_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g129030129033_
                                                  _g129031129035_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135133 '() _L128982_)))))
                       (let ((__tmp135134
                              (let ((__tmp135135
                                     (let ((__tmp135141
                                            (let ((__tmp135142
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135142)))
                                           (__tmp135136
                                            (let ((__tmp135140
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e128161_
                                                      _$method129038_)))
                                                  (__tmp135137
                                                   (let ((__tmp135138
                                                          (let ((__tmp135139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self128153_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135139))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135138
                                                           _args129039_))))
                                              (declare (not safe))
                                              (cons __tmp135140 __tmp135137))))
                                       (declare (not safe))
                                       (cons __tmp135141 __tmp135136))))
                                (declare (not safe))
                                (cons '%#call __tmp135135))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135134 _stx128152_)))))
                  (___kont134254134255_
                   (lambda (_L128813_ _L128814_ _L128815_)
                     (let* ((_$field128847_
                             (let ((__tmp135143
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L128813_))))
                               (declare (not safe))
                               (hash-ref__0 _slots128156_ __tmp135143)))
                            (__tmp135144
                             (let ((__tmp135145
                                    (let ((__tmp135152
                                           (let ((__tmp135153
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t128154_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135153)))
                                          (__tmp135146
                                           (let ((__tmp135150
                                                  (let ((__tmp135151
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field128847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135151)))
                                                 (__tmp135147
                                                  (let ((__tmp135148
                                                         (let ((__tmp135149
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self128153_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp135149))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135148 '()))))
                                             (declare (not safe))
                                             (cons __tmp135150 __tmp135147))))
                                      (declare (not safe))
                                      (cons __tmp135152 __tmp135146))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp135145))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp135144 _stx128152_))))
                  (___kont134256134257_
                   (lambda (_L128687_ _L128688_ _L128689_ _L128690_)
                     (let ((_$field128725_
                            (let ((__tmp135154
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L128688_))))
                              (declare (not safe))
                              (hash-ref__0 _slots128156_ __tmp135154)))
                           (_expr128726_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L128687_
                               _self128153_
                               _$t128154_
                               _methods128155_
                               _slots128156_
                               _class-check128157_
                               _struct-check128158_
                               _struct-assert128159_))))
                       (let ((__tmp135155
                              (let ((__tmp135156
                                     (let ((__tmp135164
                                            (let ((__tmp135165
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t128154_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135165)))
                                           (__tmp135157
                                            (let ((__tmp135162
                                                   (let ((__tmp135163
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field128725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135163)))
                                                  (__tmp135158
                                                   (let ((__tmp135160
                                                          (let ((__tmp135161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self128153_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135161)))
                 (__tmp135159
                  (let () (declare (not safe)) (cons _expr128726_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135160
                                                           __tmp135159))))
                                              (declare (not safe))
                                              (cons __tmp135162 __tmp135158))))
                                       (declare (not safe))
                                       (cons __tmp135164 __tmp135157))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp135156))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135155 _stx128152_)))))
                  (___kont134258134259_
                   (lambda (_L128566_ _L128567_)
                     (let* ((_slot128589_
                             (##structure-ref
                              (let ((__tmp135166
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L128567_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp135166))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field128591_
                             (let ()
                               (declare (not safe))
                               (hash-ref__0 _slots128156_ _slot128589_))))
                       (let ((__tmp135167
                              (let ((__tmp135168
                                     (let ((__tmp135175
                                            (let ((__tmp135176
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t128154_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135176)))
                                           (__tmp135169
                                            (let ((__tmp135173
                                                   (let ((__tmp135174
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field128591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135174)))
                                                  (__tmp135170
                                                   (let ((__tmp135171
                                                          (let ((__tmp135172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self128153_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135172))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135171 '()))))
                                              (declare (not safe))
                                              (cons __tmp135173 __tmp135170))))
                                       (declare (not safe))
                                       (cons __tmp135175 __tmp135169))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp135168))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135167 _stx128152_)))))
                  (___kont134260134261_
                   (lambda (_L128467_ _L128468_ _L128469_)
                     (let* ((_slot128498_
                             (##structure-ref
                              (let ((__tmp135177
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L128469_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp135177))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field128500_
                             (let ()
                               (declare (not safe))
                               (hash-ref__0 _slots128156_ _slot128498_)))
                            (_expr128502_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L128467_
                                _self128153_
                                _$t128154_
                                _methods128155_
                                _slots128156_
                                _class-check128157_
                                _struct-check128158_
                                _struct-assert128159_))))
                       (let ((__tmp135178
                              (let ((__tmp135179
                                     (let ((__tmp135187
                                            (let ((__tmp135188
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t128154_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135188)))
                                           (__tmp135180
                                            (let ((__tmp135185
                                                   (let ((__tmp135186
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field128500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135186)))
                                                  (__tmp135181
                                                   (let ((__tmp135183
                                                          (let ((__tmp135184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self128153_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135184)))
                 (__tmp135182
                  (let () (declare (not safe)) (cons _expr128502_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135183
                                                           __tmp135182))))
                                              (declare (not safe))
                                              (cons __tmp135185 __tmp135181))))
                                       (declare (not safe))
                                       (cons __tmp135187 __tmp135180))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp135179))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135178 _stx128152_)))))
                  (___kont134262134263_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx128152_
                        _self128153_
                        _$t128154_
                        _methods128155_
                        _slots128156_
                        _class-check128157_
                        _struct-check128158_
                        _struct-assert128159_)))))
              (let* ((___match134743134744_
                      (lambda (_e128365128403_
                               _hd128364128406_
                               _tl128363128408_
                               _e128368128411_
                               _hd128367128414_
                               _tl128366128416_
                               _e128371128419_
                               _hd128370128422_
                               _tl128369128424_
                               _e128374128427_
                               _hd128373128430_
                               _tl128372128432_
                               _e128377128435_
                               _hd128376128438_
                               _tl128375128440_
                               _e128380128443_
                               _hd128379128446_
                               _tl128378128448_
                               _e128383128451_
                               _hd128382128454_
                               _tl128381128456_
                               _e128386128459_
                               _hd128385128462_
                               _tl128384128464_)
                        (let ((_L128467_ _hd128385128462_)
                              (_L128468_ _hd128382128454_)
                              (_L128469_ _hd128373128430_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128468_
                                      _self128153_))
                                   (let ((__tmp135189
                                          (let ((__tmp135190
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L128469_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135190))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135189
                                      'gxc#!mutator::t)))
                              (___kont134260134261_
                               _L128467_
                               _L128468_
                               _L128469_)
                              (___kont134262134263_)))))
                     (___match134741134742_
                      (lambda (_e128365128403_
                               _hd128364128406_
                               _tl128363128408_
                               _e128368128411_
                               _hd128367128414_
                               _tl128366128416_
                               _e128371128419_
                               _hd128370128422_
                               _tl128369128424_
                               _e128374128427_
                               _hd128373128430_
                               _tl128372128432_
                               _e128377128435_
                               _hd128376128438_
                               _tl128375128440_
                               _e128380128443_
                               _hd128379128446_
                               _tl128378128448_
                               _e128383128451_
                               _hd128382128454_
                               _tl128381128456_
                               _e128386128459_
                               _hd128385128462_
                               _tl128384128464_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128384128464_))
                            (___match134743134744_
                             _e128365128403_
                             _hd128364128406_
                             _tl128363128408_
                             _e128368128411_
                             _hd128367128414_
                             _tl128366128416_
                             _e128371128419_
                             _hd128370128422_
                             _tl128369128424_
                             _e128374128427_
                             _hd128373128430_
                             _tl128372128432_
                             _e128377128435_
                             _hd128376128438_
                             _tl128375128440_
                             _e128380128443_
                             _hd128379128446_
                             _tl128378128448_
                             _e128383128451_
                             _hd128382128454_
                             _tl128381128456_
                             _e128386128459_
                             _hd128385128462_
                             _tl128384128464_)
                            (___kont134262134263_))))
                     (___match134735134736_
                      (lambda (_e128365128403_
                               _hd128364128406_
                               _tl128363128408_
                               _e128368128411_
                               _hd128367128414_
                               _tl128366128416_
                               _e128371128419_
                               _hd128370128422_
                               _tl128369128424_
                               _e128374128427_
                               _hd128373128430_
                               _tl128372128432_
                               _e128377128435_
                               _hd128376128438_
                               _tl128375128440_
                               _e128380128443_
                               _hd128379128446_
                               _tl128378128448_
                               _e128383128451_
                               _hd128382128454_
                               _tl128381128456_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128375128440_))
                            (let ((_e128386128459_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128375128440_))))
                              (let ((_tl128384128464_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128386128459_)))
                                    (_hd128385128462_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128386128459_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128384128464_))
                                    (___match134743134744_
                                     _e128365128403_
                                     _hd128364128406_
                                     _tl128363128408_
                                     _e128368128411_
                                     _hd128367128414_
                                     _tl128366128416_
                                     _e128371128419_
                                     _hd128370128422_
                                     _tl128369128424_
                                     _e128374128427_
                                     _hd128373128430_
                                     _tl128372128432_
                                     _e128377128435_
                                     _hd128376128438_
                                     _tl128375128440_
                                     _e128380128443_
                                     _hd128379128446_
                                     _tl128378128448_
                                     _e128383128451_
                                     _hd128382128454_
                                     _tl128381128456_
                                     _e128386128459_
                                     _hd128385128462_
                                     _tl128384128464_)
                                    (___kont134262134263_))))
                            (___kont134262134263_))))
                     (___match134681134682_
                      (lambda (_e128341128510_
                               _hd128340128513_
                               _tl128339128515_
                               _e128344128518_
                               _hd128343128521_
                               _tl128342128523_
                               _e128347128526_
                               _hd128346128529_
                               _tl128345128531_
                               _e128350128534_
                               _hd128349128537_
                               _tl128348128539_
                               _e128353128542_
                               _hd128352128545_
                               _tl128351128547_
                               _e128356128550_
                               _hd128355128553_
                               _tl128354128555_
                               _e128359128558_
                               _hd128358128561_
                               _tl128357128563_)
                        (let ((_L128566_ _hd128358128561_)
                              (_L128567_ _hd128349128537_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128566_
                                      _self128153_))
                                   (let ((__tmp135191
                                          (let ((__tmp135192
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L128567_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135192))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135191
                                      'gxc#!accessor::t)))
                              (___kont134258134259_ _L128566_ _L128567_)
                              (___kont134262134263_)))))
                     (___match134679134680_
                      (lambda (_e128341128510_
                               _hd128340128513_
                               _tl128339128515_
                               _e128344128518_
                               _hd128343128521_
                               _tl128342128523_
                               _e128347128526_
                               _hd128346128529_
                               _tl128345128531_
                               _e128350128534_
                               _hd128349128537_
                               _tl128348128539_
                               _e128353128542_
                               _hd128352128545_
                               _tl128351128547_
                               _e128356128550_
                               _hd128355128553_
                               _tl128354128555_
                               _e128359128558_
                               _hd128358128561_
                               _tl128357128563_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128351128547_))
                            (___match134681134682_
                             _e128341128510_
                             _hd128340128513_
                             _tl128339128515_
                             _e128344128518_
                             _hd128343128521_
                             _tl128342128523_
                             _e128347128526_
                             _hd128346128529_
                             _tl128345128531_
                             _e128350128534_
                             _hd128349128537_
                             _tl128348128539_
                             _e128353128542_
                             _hd128352128545_
                             _tl128351128547_
                             _e128356128550_
                             _hd128355128553_
                             _tl128354128555_
                             _e128359128558_
                             _hd128358128561_
                             _tl128357128563_)
                            (___match134735134736_
                             _e128341128510_
                             _hd128340128513_
                             _tl128339128515_
                             _e128344128518_
                             _hd128343128521_
                             _tl128342128523_
                             _e128347128526_
                             _hd128346128529_
                             _tl128345128531_
                             _e128350128534_
                             _hd128349128537_
                             _tl128348128539_
                             _e128353128542_
                             _hd128352128545_
                             _tl128351128547_
                             _e128356128550_
                             _hd128355128553_
                             _tl128354128555_
                             _e128359128558_
                             _hd128358128561_
                             _tl128357128563_))))
                     (___match134625134626_
                      (lambda (_e128306128599_
                               _hd128305128602_
                               _tl128304128604_
                               _e128309128607_
                               _hd128308128610_
                               _tl128307128612_
                               _e128312128615_
                               _hd128311128618_
                               _tl128310128620_
                               _e128315128623_
                               _hd128314128626_
                               _tl128313128628_
                               _e128318128631_
                               _hd128317128634_
                               _tl128316128636_
                               _e128321128639_
                               _hd128320128642_
                               _tl128319128644_
                               _e128324128647_
                               _hd128323128650_
                               _tl128322128652_
                               _e128327128655_
                               _hd128326128658_
                               _tl128325128660_
                               _e128330128663_
                               _hd128329128666_
                               _tl128328128668_
                               _e128333128671_
                               _hd128332128674_
                               _tl128331128676_
                               _e128336128679_
                               _hd128335128682_
                               _tl128334128684_)
                        (let ((_L128687_ _hd128335128682_)
                              (_L128688_ _hd128332128674_)
                              (_L128689_ _hd128323128650_)
                              (_L128690_ _hd128314128626_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128690_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128690_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128689_
                                      _self128153_)))
                              (___kont134256134257_
                               _L128687_
                               _L128688_
                               _L128689_
                               _L128690_)
                              (___kont134262134263_)))))
                     (___match134617134618_
                      (lambda (_e128306128599_
                               _hd128305128602_
                               _tl128304128604_
                               _e128309128607_
                               _hd128308128610_
                               _tl128307128612_
                               _e128312128615_
                               _hd128311128618_
                               _tl128310128620_
                               _e128315128623_
                               _hd128314128626_
                               _tl128313128628_
                               _e128318128631_
                               _hd128317128634_
                               _tl128316128636_
                               _e128321128639_
                               _hd128320128642_
                               _tl128319128644_
                               _e128324128647_
                               _hd128323128650_
                               _tl128322128652_
                               _e128327128655_
                               _hd128326128658_
                               _tl128325128660_
                               _e128330128663_
                               _hd128329128666_
                               _tl128328128668_
                               _e128333128671_
                               _hd128332128674_
                               _tl128331128676_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128325128660_))
                            (let ((_e128336128679_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128325128660_))))
                              (let ((_tl128334128684_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128336128679_)))
                                    (_hd128335128682_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128336128679_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128334128684_))
                                    (___match134625134626_
                                     _e128306128599_
                                     _hd128305128602_
                                     _tl128304128604_
                                     _e128309128607_
                                     _hd128308128610_
                                     _tl128307128612_
                                     _e128312128615_
                                     _hd128311128618_
                                     _tl128310128620_
                                     _e128315128623_
                                     _hd128314128626_
                                     _tl128313128628_
                                     _e128318128631_
                                     _hd128317128634_
                                     _tl128316128636_
                                     _e128321128639_
                                     _hd128320128642_
                                     _tl128319128644_
                                     _e128324128647_
                                     _hd128323128650_
                                     _tl128322128652_
                                     _e128327128655_
                                     _hd128326128658_
                                     _tl128325128660_
                                     _e128330128663_
                                     _hd128329128666_
                                     _tl128328128668_
                                     _e128333128671_
                                     _hd128332128674_
                                     _tl128331128676_
                                     _e128336128679_
                                     _hd128335128682_
                                     _tl128334128684_)
                                    (___kont134262134263_))))
                            (___match134741134742_
                             _e128306128599_
                             _hd128305128602_
                             _tl128304128604_
                             _e128309128607_
                             _hd128308128610_
                             _tl128307128612_
                             _e128312128615_
                             _hd128311128618_
                             _tl128310128620_
                             _e128315128623_
                             _hd128314128626_
                             _tl128313128628_
                             _e128318128631_
                             _hd128317128634_
                             _tl128316128636_
                             _e128321128639_
                             _hd128320128642_
                             _tl128319128644_
                             _e128324128647_
                             _hd128323128650_
                             _tl128322128652_
                             _e128327128655_
                             _hd128326128658_
                             _tl128325128660_))))
                     (___match134539134540_
                      (lambda (_e128272128733_
                               _hd128271128736_
                               _tl128270128738_
                               _e128275128741_
                               _hd128274128744_
                               _tl128273128746_
                               _e128278128749_
                               _hd128277128752_
                               _tl128276128754_
                               _e128281128757_
                               _hd128280128760_
                               _tl128279128762_
                               _e128284128765_
                               _hd128283128768_
                               _tl128282128770_
                               _e128287128773_
                               _hd128286128776_
                               _tl128285128778_
                               _e128290128781_
                               _hd128289128784_
                               _tl128288128786_
                               _e128293128789_
                               _hd128292128792_
                               _tl128291128794_
                               _e128296128797_
                               _hd128295128800_
                               _tl128294128802_
                               _e128299128805_
                               _hd128298128808_
                               _tl128297128810_)
                        (let ((_L128813_ _hd128298128808_)
                              (_L128814_ _hd128289128784_)
                              (_L128815_ _hd128280128760_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128815_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128815_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128814_
                                      _self128153_)))
                              (___kont134254134255_
                               _L128813_
                               _L128814_
                               _L128815_)
                              (___match134743134744_
                               _e128272128733_
                               _hd128271128736_
                               _tl128270128738_
                               _e128275128741_
                               _hd128274128744_
                               _tl128273128746_
                               _e128278128749_
                               _hd128277128752_
                               _tl128276128754_
                               _e128281128757_
                               _hd128280128760_
                               _tl128279128762_
                               _e128284128765_
                               _hd128283128768_
                               _tl128282128770_
                               _e128287128773_
                               _hd128286128776_
                               _tl128285128778_
                               _e128290128781_
                               _hd128289128784_
                               _tl128288128786_
                               _e128293128789_
                               _hd128292128792_
                               _tl128291128794_)))))
                     (___match134537134538_
                      (lambda (_e128272128733_
                               _hd128271128736_
                               _tl128270128738_
                               _e128275128741_
                               _hd128274128744_
                               _tl128273128746_
                               _e128278128749_
                               _hd128277128752_
                               _tl128276128754_
                               _e128281128757_
                               _hd128280128760_
                               _tl128279128762_
                               _e128284128765_
                               _hd128283128768_
                               _tl128282128770_
                               _e128287128773_
                               _hd128286128776_
                               _tl128285128778_
                               _e128290128781_
                               _hd128289128784_
                               _tl128288128786_
                               _e128293128789_
                               _hd128292128792_
                               _tl128291128794_
                               _e128296128797_
                               _hd128295128800_
                               _tl128294128802_
                               _e128299128805_
                               _hd128298128808_
                               _tl128297128810_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128291128794_))
                            (___match134539134540_
                             _e128272128733_
                             _hd128271128736_
                             _tl128270128738_
                             _e128275128741_
                             _hd128274128744_
                             _tl128273128746_
                             _e128278128749_
                             _hd128277128752_
                             _tl128276128754_
                             _e128281128757_
                             _hd128280128760_
                             _tl128279128762_
                             _e128284128765_
                             _hd128283128768_
                             _tl128282128770_
                             _e128287128773_
                             _hd128286128776_
                             _tl128285128778_
                             _e128290128781_
                             _hd128289128784_
                             _tl128288128786_
                             _e128293128789_
                             _hd128292128792_
                             _tl128291128794_
                             _e128296128797_
                             _hd128295128800_
                             _tl128294128802_
                             _e128299128805_
                             _hd128298128808_
                             _tl128297128810_)
                            (___match134617134618_
                             _e128272128733_
                             _hd128271128736_
                             _tl128270128738_
                             _e128275128741_
                             _hd128274128744_
                             _tl128273128746_
                             _e128278128749_
                             _hd128277128752_
                             _tl128276128754_
                             _e128281128757_
                             _hd128280128760_
                             _tl128279128762_
                             _e128284128765_
                             _hd128283128768_
                             _tl128282128770_
                             _e128287128773_
                             _hd128286128776_
                             _tl128285128778_
                             _e128290128781_
                             _hd128289128784_
                             _tl128288128786_
                             _e128293128789_
                             _hd128292128792_
                             _tl128291128794_
                             _e128296128797_
                             _hd128295128800_
                             _tl128294128802_
                             _e128299128805_
                             _hd128298128808_
                             _tl128297128810_))))
                     (___match134527134528_
                      (lambda (_e128272128733_
                               _hd128271128736_
                               _tl128270128738_
                               _e128275128741_
                               _hd128274128744_
                               _tl128273128746_
                               _e128278128749_
                               _hd128277128752_
                               _tl128276128754_
                               _e128281128757_
                               _hd128280128760_
                               _tl128279128762_
                               _e128284128765_
                               _hd128283128768_
                               _tl128282128770_
                               _e128287128773_
                               _hd128286128776_
                               _tl128285128778_
                               _e128290128781_
                               _hd128289128784_
                               _tl128288128786_
                               _e128293128789_
                               _hd128292128792_
                               _tl128291128794_
                               _e128296128797_
                               _hd128295128800_
                               _tl128294128802_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd128295128800_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128294128802_))
                                (let ((_e128299128805_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128294128802_))))
                                  (let ((_tl128297128810_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128299128805_)))
                                        (_hd128298128808_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128299128805_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128297128810_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl128291128794_))
                                            (___match134539134540_
                                             _e128272128733_
                                             _hd128271128736_
                                             _tl128270128738_
                                             _e128275128741_
                                             _hd128274128744_
                                             _tl128273128746_
                                             _e128278128749_
                                             _hd128277128752_
                                             _tl128276128754_
                                             _e128281128757_
                                             _hd128280128760_
                                             _tl128279128762_
                                             _e128284128765_
                                             _hd128283128768_
                                             _tl128282128770_
                                             _e128287128773_
                                             _hd128286128776_
                                             _tl128285128778_
                                             _e128290128781_
                                             _hd128289128784_
                                             _tl128288128786_
                                             _e128293128789_
                                             _hd128292128792_
                                             _tl128291128794_
                                             _e128296128797_
                                             _hd128295128800_
                                             _tl128294128802_
                                             _e128299128805_
                                             _hd128298128808_
                                             _tl128297128810_)
                                            (___match134617134618_
                                             _e128272128733_
                                             _hd128271128736_
                                             _tl128270128738_
                                             _e128275128741_
                                             _hd128274128744_
                                             _tl128273128746_
                                             _e128278128749_
                                             _hd128277128752_
                                             _tl128276128754_
                                             _e128281128757_
                                             _hd128280128760_
                                             _tl128279128762_
                                             _e128284128765_
                                             _hd128283128768_
                                             _tl128282128770_
                                             _e128287128773_
                                             _hd128286128776_
                                             _tl128285128778_
                                             _e128290128781_
                                             _hd128289128784_
                                             _tl128288128786_
                                             _e128293128789_
                                             _hd128292128792_
                                             _tl128291128794_
                                             _e128296128797_
                                             _hd128295128800_
                                             _tl128294128802_
                                             _e128299128805_
                                             _hd128298128808_
                                             _tl128297128810_))
                                        (___match134741134742_
                                         _e128272128733_
                                         _hd128271128736_
                                         _tl128270128738_
                                         _e128275128741_
                                         _hd128274128744_
                                         _tl128273128746_
                                         _e128278128749_
                                         _hd128277128752_
                                         _tl128276128754_
                                         _e128281128757_
                                         _hd128280128760_
                                         _tl128279128762_
                                         _e128284128765_
                                         _hd128283128768_
                                         _tl128282128770_
                                         _e128287128773_
                                         _hd128286128776_
                                         _tl128285128778_
                                         _e128290128781_
                                         _hd128289128784_
                                         _tl128288128786_
                                         _e128293128789_
                                         _hd128292128792_
                                         _tl128291128794_))))
                                (___match134741134742_
                                 _e128272128733_
                                 _hd128271128736_
                                 _tl128270128738_
                                 _e128275128741_
                                 _hd128274128744_
                                 _tl128273128746_
                                 _e128278128749_
                                 _hd128277128752_
                                 _tl128276128754_
                                 _e128281128757_
                                 _hd128280128760_
                                 _tl128279128762_
                                 _e128284128765_
                                 _hd128283128768_
                                 _tl128282128770_
                                 _e128287128773_
                                 _hd128286128776_
                                 _tl128285128778_
                                 _e128290128781_
                                 _hd128289128784_
                                 _tl128288128786_
                                 _e128293128789_
                                 _hd128292128792_
                                 _tl128291128794_))
                            (___match134741134742_
                             _e128272128733_
                             _hd128271128736_
                             _tl128270128738_
                             _e128275128741_
                             _hd128274128744_
                             _tl128273128746_
                             _e128278128749_
                             _hd128277128752_
                             _tl128276128754_
                             _e128281128757_
                             _hd128280128760_
                             _tl128279128762_
                             _e128284128765_
                             _hd128283128768_
                             _tl128282128770_
                             _e128287128773_
                             _hd128286128776_
                             _tl128285128778_
                             _e128290128781_
                             _hd128289128784_
                             _tl128288128786_
                             _e128293128789_
                             _hd128292128792_
                             _tl128291128794_))))
                     (___match134459134460_
                      (lambda (_e128221128854_
                               _hd128220128857_
                               _tl128219128859_
                               _e128224128862_
                               _hd128223128865_
                               _tl128222128867_
                               _e128227128870_
                               _hd128226128873_
                               _tl128225128875_
                               _e128230128878_
                               _hd128229128881_
                               _tl128228128883_
                               _e128233128886_
                               _hd128232128889_
                               _tl128231128891_
                               _e128236128894_
                               _hd128235128897_
                               _tl128234128899_
                               _e128239128902_
                               _hd128238128905_
                               _tl128237128907_
                               _e128242128910_
                               _hd128241128913_
                               _tl128240128915_
                               _e128245128918_
                               _hd128244128921_
                               _tl128243128923_
                               _e128248128926_
                               _hd128247128929_
                               _tl128246128931_
                               _e128251128934_
                               _hd128250128937_
                               _tl128249128939_
                               _e128254128942_
                               _hd128253128945_
                               _tl128252128947_
                               _e128257128950_
                               _hd128256128953_
                               _tl128255128955_
                               ___splice134252134253_
                               _target128258128958_
                               _tl128260128960_)
                        (letrec ((_loop128261128963_
                                  (lambda (_hd128259128966_ _args128265128968_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd128259128966_))
                                        (let ((_e128262128971_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd128259128966_))))
                                          (let ((_lp-tl128264128976_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128262128971_)))
                                                (_lp-hd128263128974_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128262128971_))))
                                            (let ((__tmp135193
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd128263128974_
                                                           _args128265128968_))))
                                              (declare (not safe))
                                              (_loop128261128963_
                                               _lp-tl128264128976_
                                               __tmp135193))))
                                        (let ((_args128266128979_
                                               (reverse _args128265128968_)))
                                          (let ((_L128982_ _args128266128979_)
                                                (_L128983_ _hd128256128953_)
                                                (_L128984_ _hd128247128929_)
                                                (_L128985_ _hd128238128905_)
                                                (_L128986_ _hd128229128881_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L128986_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L128985_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L128984_
                                                        _self128153_)))
                                                (___kont134250134251_
                                                 _L128982_
                                                 _L128983_
                                                 _L128984_
                                                 _L128985_
                                                 _L128986_)
                                                (___kont134262134263_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop128261128963_ _target128258128958_ '())))))
                     (___match134417134418_
                      (lambda (_e128221128854_
                               _hd128220128857_
                               _tl128219128859_
                               _e128224128862_
                               _hd128223128865_
                               _tl128222128867_
                               _e128227128870_
                               _hd128226128873_
                               _tl128225128875_
                               _e128230128878_
                               _hd128229128881_
                               _tl128228128883_
                               _e128233128886_
                               _hd128232128889_
                               _tl128231128891_
                               _e128236128894_
                               _hd128235128897_
                               _tl128234128899_
                               _e128239128902_
                               _hd128238128905_
                               _tl128237128907_
                               _e128242128910_
                               _hd128241128913_
                               _tl128240128915_
                               _e128245128918_
                               _hd128244128921_
                               _tl128243128923_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd128244128921_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128243128923_))
                                (let ((_e128248128926_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128243128923_))))
                                  (let ((_tl128246128931_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128248128926_)))
                                        (_hd128247128929_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128248128926_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128246128931_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl128240128915_))
                                            (let ((_e128251128934_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl128240128915_))))
                                              (let ((_tl128249128939_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e128251128934_)))
                                                    (_hd128250128937_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e128251128934_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd128250128937_))
                                                    (let ((_e128254128942_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd128250128937_))))
                                                      (let ((_tl128252128947_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128254128942_)))
                    (_hd128253128945_
                     (let () (declare (not safe)) (##car _e128254128942_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd128253128945_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd128253128945_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128252128947_))
                            (let ((_e128257128950_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128252128947_))))
                              (let ((_tl128255128955_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128257128950_)))
                                    (_hd128256128953_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128257128950_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128255128955_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl128249128939_))
                                        (let ((___splice134252134253_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl128249128939_
                                                  '0))))
                                          (let ((_tl128260128960_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134252134253_
                                                    '1)))
                                                (_target128258128958_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134252134253_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl128260128960_))
                                                (___match134459134460_
                                                 _e128221128854_
                                                 _hd128220128857_
                                                 _tl128219128859_
                                                 _e128224128862_
                                                 _hd128223128865_
                                                 _tl128222128867_
                                                 _e128227128870_
                                                 _hd128226128873_
                                                 _tl128225128875_
                                                 _e128230128878_
                                                 _hd128229128881_
                                                 _tl128228128883_
                                                 _e128233128886_
                                                 _hd128232128889_
                                                 _tl128231128891_
                                                 _e128236128894_
                                                 _hd128235128897_
                                                 _tl128234128899_
                                                 _e128239128902_
                                                 _hd128238128905_
                                                 _tl128237128907_
                                                 _e128242128910_
                                                 _hd128241128913_
                                                 _tl128240128915_
                                                 _e128245128918_
                                                 _hd128244128921_
                                                 _tl128243128923_
                                                 _e128248128926_
                                                 _hd128247128929_
                                                 _tl128246128931_
                                                 _e128251128934_
                                                 _hd128250128937_
                                                 _tl128249128939_
                                                 _e128254128942_
                                                 _hd128253128945_
                                                 _tl128252128947_
                                                 _e128257128950_
                                                 _hd128256128953_
                                                 _tl128255128955_
                                                 ___splice134252134253_
                                                 _target128258128958_
                                                 _tl128260128960_)
                                                (___kont134262134263_))))
                                        (___kont134262134263_))
                                    (___kont134262134263_))))
                            (___kont134262134263_))
                        (___kont134262134263_))
                    (___kont134262134263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134262134263_))))
                                            (___match134741134742_
                                             _e128221128854_
                                             _hd128220128857_
                                             _tl128219128859_
                                             _e128224128862_
                                             _hd128223128865_
                                             _tl128222128867_
                                             _e128227128870_
                                             _hd128226128873_
                                             _tl128225128875_
                                             _e128230128878_
                                             _hd128229128881_
                                             _tl128228128883_
                                             _e128233128886_
                                             _hd128232128889_
                                             _tl128231128891_
                                             _e128236128894_
                                             _hd128235128897_
                                             _tl128234128899_
                                             _e128239128902_
                                             _hd128238128905_
                                             _tl128237128907_
                                             _e128242128910_
                                             _hd128241128913_
                                             _tl128240128915_))
                                        (___match134741134742_
                                         _e128221128854_
                                         _hd128220128857_
                                         _tl128219128859_
                                         _e128224128862_
                                         _hd128223128865_
                                         _tl128222128867_
                                         _e128227128870_
                                         _hd128226128873_
                                         _tl128225128875_
                                         _e128230128878_
                                         _hd128229128881_
                                         _tl128228128883_
                                         _e128233128886_
                                         _hd128232128889_
                                         _tl128231128891_
                                         _e128236128894_
                                         _hd128235128897_
                                         _tl128234128899_
                                         _e128239128902_
                                         _hd128238128905_
                                         _tl128237128907_
                                         _e128242128910_
                                         _hd128241128913_
                                         _tl128240128915_))))
                                (___match134741134742_
                                 _e128221128854_
                                 _hd128220128857_
                                 _tl128219128859_
                                 _e128224128862_
                                 _hd128223128865_
                                 _tl128222128867_
                                 _e128227128870_
                                 _hd128226128873_
                                 _tl128225128875_
                                 _e128230128878_
                                 _hd128229128881_
                                 _tl128228128883_
                                 _e128233128886_
                                 _hd128232128889_
                                 _tl128231128891_
                                 _e128236128894_
                                 _hd128235128897_
                                 _tl128234128899_
                                 _e128239128902_
                                 _hd128238128905_
                                 _tl128237128907_
                                 _e128242128910_
                                 _hd128241128913_
                                 _tl128240128915_))
                            (___match134527134528_
                             _e128221128854_
                             _hd128220128857_
                             _tl128219128859_
                             _e128224128862_
                             _hd128223128865_
                             _tl128222128867_
                             _e128227128870_
                             _hd128226128873_
                             _tl128225128875_
                             _e128230128878_
                             _hd128229128881_
                             _tl128228128883_
                             _e128233128886_
                             _hd128232128889_
                             _tl128231128891_
                             _e128236128894_
                             _hd128235128897_
                             _tl128234128899_
                             _e128239128902_
                             _hd128238128905_
                             _tl128237128907_
                             _e128242128910_
                             _hd128241128913_
                             _tl128240128915_
                             _e128245128918_
                             _hd128244128921_
                             _tl128243128923_))))
                     (___match134349134350_
                      (lambda (_e128177129046_
                               _hd128176129049_
                               _tl128175129051_
                               _e128180129054_
                               _hd128179129057_
                               _tl128178129059_
                               _e128183129062_
                               _hd128182129065_
                               _tl128181129067_
                               _e128186129070_
                               _hd128185129073_
                               _tl128184129075_
                               _e128189129078_
                               _hd128188129081_
                               _tl128187129083_
                               _e128192129086_
                               _hd128191129089_
                               _tl128190129091_
                               _e128195129094_
                               _hd128194129097_
                               _tl128193129099_
                               _e128198129102_
                               _hd128197129105_
                               _tl128196129107_
                               _e128201129110_
                               _hd128200129113_
                               _tl128199129115_
                               _e128204129118_
                               _hd128203129121_
                               _tl128202129123_
                               ___splice134248134249_
                               _target128205129126_
                               _tl128207129128_)
                        (letrec ((_loop128208129131_
                                  (lambda (_hd128206129134_ _args128212129136_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd128206129134_))
                                        (let ((_e128209129139_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd128206129134_))))
                                          (let ((_lp-tl128211129144_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128209129139_)))
                                                (_lp-hd128210129142_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128209129139_))))
                                            (let ((__tmp135194
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd128210129142_
                                                           _args128212129136_))))
                                              (declare (not safe))
                                              (_loop128208129131_
                                               _lp-tl128211129144_
                                               __tmp135194))))
                                        (let ((_args128213129147_
                                               (reverse _args128212129136_)))
                                          (let ((_L129150_ _args128213129147_)
                                                (_L129151_ _hd128203129121_)
                                                (_L129152_ _hd128194129097_)
                                                (_L129153_ _hd128185129073_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L129153_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L129152_
                                                        _self128153_)))
                                                (___kont134246134247_
                                                 _L129150_
                                                 _L129151_
                                                 _L129152_
                                                 _L129153_)
                                                (___match134537134538_
                                                 _e128177129046_
                                                 _hd128176129049_
                                                 _tl128175129051_
                                                 _e128180129054_
                                                 _hd128179129057_
                                                 _tl128178129059_
                                                 _e128183129062_
                                                 _hd128182129065_
                                                 _tl128181129067_
                                                 _e128186129070_
                                                 _hd128185129073_
                                                 _tl128184129075_
                                                 _e128189129078_
                                                 _hd128188129081_
                                                 _tl128187129083_
                                                 _e128192129086_
                                                 _hd128191129089_
                                                 _tl128190129091_
                                                 _e128195129094_
                                                 _hd128194129097_
                                                 _tl128193129099_
                                                 _e128198129102_
                                                 _hd128197129105_
                                                 _tl128196129107_
                                                 _e128201129110_
                                                 _hd128200129113_
                                                 _tl128199129115_
                                                 _e128204129118_
                                                 _hd128203129121_
                                                 _tl128202129123_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop128208129131_ _target128205129126_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134244134245_))
                    (let ((_e128177129046_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134244134245_))))
                      (let ((_tl128175129051_
                             (let ()
                               (declare (not safe))
                               (##cdr _e128177129046_)))
                            (_hd128176129049_
                             (let ()
                               (declare (not safe))
                               (##car _e128177129046_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128175129051_))
                            (let ((_e128180129054_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128175129051_))))
                              (let ((_tl128178129059_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128180129054_)))
                                    (_hd128179129057_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128180129054_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd128179129057_))
                                    (let ((_e128183129062_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd128179129057_))))
                                      (let ((_tl128181129067_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e128183129062_)))
                                            (_hd128182129065_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e128183129062_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd128182129065_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd128182129065_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl128181129067_))
                                                    (let ((_e128186129070_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl128181129067_))))
                                                      (let ((_tl128184129075_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128186129070_)))
                    (_hd128185129073_
                     (let () (declare (not safe)) (##car _e128186129070_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl128184129075_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl128178129059_))
                        (let ((_e128189129078_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl128178129059_))))
                          (let ((_tl128187129083_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128189129078_)))
                                (_hd128188129081_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128189129078_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd128188129081_))
                                (let ((_e128192129086_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd128188129081_))))
                                  (let ((_tl128190129091_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128192129086_)))
                                        (_hd128191129089_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128192129086_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd128191129089_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd128191129089_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl128190129091_))
                                                (let ((_e128195129094_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl128190129091_))))
                                                  (let ((_tl128193129099_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e128195129094_)))
                                                        (_hd128194129097_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e128195129094_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl128193129099_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl128187129083_))
                                                            (let ((_e128198129102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl128187129083_))))
                      (let ((_tl128196129107_
                             (let ()
                               (declare (not safe))
                               (##cdr _e128198129102_)))
                            (_hd128197129105_
                             (let ()
                               (declare (not safe))
                               (##car _e128198129102_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd128197129105_))
                            (let ((_e128201129110_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd128197129105_))))
                              (let ((_tl128199129115_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128201129110_)))
                                    (_hd128200129113_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128201129110_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd128200129113_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd128200129113_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl128199129115_))
                                            (let ((_e128204129118_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl128199129115_))))
                                              (let ((_tl128202129123_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e128204129118_)))
                                                    (_hd128203129121_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e128204129118_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl128202129123_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl128196129107_))
                                                        (let ((___splice134248134249_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl128196129107_ '0))))
                  (let ((_tl128207129128_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134248134249_ '1)))
                        (_target128205129126_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134248134249_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl128207129128_))
                        (___match134349134350_
                         _e128177129046_
                         _hd128176129049_
                         _tl128175129051_
                         _e128180129054_
                         _hd128179129057_
                         _tl128178129059_
                         _e128183129062_
                         _hd128182129065_
                         _tl128181129067_
                         _e128186129070_
                         _hd128185129073_
                         _tl128184129075_
                         _e128189129078_
                         _hd128188129081_
                         _tl128187129083_
                         _e128192129086_
                         _hd128191129089_
                         _tl128190129091_
                         _e128195129094_
                         _hd128194129097_
                         _tl128193129099_
                         _e128198129102_
                         _hd128197129105_
                         _tl128196129107_
                         _e128201129110_
                         _hd128200129113_
                         _tl128199129115_
                         _e128204129118_
                         _hd128203129121_
                         _tl128202129123_
                         ___splice134248134249_
                         _target128205129126_
                         _tl128207129128_)
                        (___match134537134538_
                         _e128177129046_
                         _hd128176129049_
                         _tl128175129051_
                         _e128180129054_
                         _hd128179129057_
                         _tl128178129059_
                         _e128183129062_
                         _hd128182129065_
                         _tl128181129067_
                         _e128186129070_
                         _hd128185129073_
                         _tl128184129075_
                         _e128189129078_
                         _hd128188129081_
                         _tl128187129083_
                         _e128192129086_
                         _hd128191129089_
                         _tl128190129091_
                         _e128195129094_
                         _hd128194129097_
                         _tl128193129099_
                         _e128198129102_
                         _hd128197129105_
                         _tl128196129107_
                         _e128201129110_
                         _hd128200129113_
                         _tl128199129115_
                         _e128204129118_
                         _hd128203129121_
                         _tl128202129123_))))
                (___match134537134538_
                 _e128177129046_
                 _hd128176129049_
                 _tl128175129051_
                 _e128180129054_
                 _hd128179129057_
                 _tl128178129059_
                 _e128183129062_
                 _hd128182129065_
                 _tl128181129067_
                 _e128186129070_
                 _hd128185129073_
                 _tl128184129075_
                 _e128189129078_
                 _hd128188129081_
                 _tl128187129083_
                 _e128192129086_
                 _hd128191129089_
                 _tl128190129091_
                 _e128195129094_
                 _hd128194129097_
                 _tl128193129099_
                 _e128198129102_
                 _hd128197129105_
                 _tl128196129107_
                 _e128201129110_
                 _hd128200129113_
                 _tl128199129115_
                 _e128204129118_
                 _hd128203129121_
                 _tl128202129123_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match134741134742_
                                                     _e128177129046_
                                                     _hd128176129049_
                                                     _tl128175129051_
                                                     _e128180129054_
                                                     _hd128179129057_
                                                     _tl128178129059_
                                                     _e128183129062_
                                                     _hd128182129065_
                                                     _tl128181129067_
                                                     _e128186129070_
                                                     _hd128185129073_
                                                     _tl128184129075_
                                                     _e128189129078_
                                                     _hd128188129081_
                                                     _tl128187129083_
                                                     _e128192129086_
                                                     _hd128191129089_
                                                     _tl128190129091_
                                                     _e128195129094_
                                                     _hd128194129097_
                                                     _tl128193129099_
                                                     _e128198129102_
                                                     _hd128197129105_
                                                     _tl128196129107_))))
                                            (___match134741134742_
                                             _e128177129046_
                                             _hd128176129049_
                                             _tl128175129051_
                                             _e128180129054_
                                             _hd128179129057_
                                             _tl128178129059_
                                             _e128183129062_
                                             _hd128182129065_
                                             _tl128181129067_
                                             _e128186129070_
                                             _hd128185129073_
                                             _tl128184129075_
                                             _e128189129078_
                                             _hd128188129081_
                                             _tl128187129083_
                                             _e128192129086_
                                             _hd128191129089_
                                             _tl128190129091_
                                             _e128195129094_
                                             _hd128194129097_
                                             _tl128193129099_
                                             _e128198129102_
                                             _hd128197129105_
                                             _tl128196129107_))
                                        (___match134417134418_
                                         _e128177129046_
                                         _hd128176129049_
                                         _tl128175129051_
                                         _e128180129054_
                                         _hd128179129057_
                                         _tl128178129059_
                                         _e128183129062_
                                         _hd128182129065_
                                         _tl128181129067_
                                         _e128186129070_
                                         _hd128185129073_
                                         _tl128184129075_
                                         _e128189129078_
                                         _hd128188129081_
                                         _tl128187129083_
                                         _e128192129086_
                                         _hd128191129089_
                                         _tl128190129091_
                                         _e128195129094_
                                         _hd128194129097_
                                         _tl128193129099_
                                         _e128198129102_
                                         _hd128197129105_
                                         _tl128196129107_
                                         _e128201129110_
                                         _hd128200129113_
                                         _tl128199129115_))
                                    (___match134741134742_
                                     _e128177129046_
                                     _hd128176129049_
                                     _tl128175129051_
                                     _e128180129054_
                                     _hd128179129057_
                                     _tl128178129059_
                                     _e128183129062_
                                     _hd128182129065_
                                     _tl128181129067_
                                     _e128186129070_
                                     _hd128185129073_
                                     _tl128184129075_
                                     _e128189129078_
                                     _hd128188129081_
                                     _tl128187129083_
                                     _e128192129086_
                                     _hd128191129089_
                                     _tl128190129091_
                                     _e128195129094_
                                     _hd128194129097_
                                     _tl128193129099_
                                     _e128198129102_
                                     _hd128197129105_
                                     _tl128196129107_))))
                            (___match134741134742_
                             _e128177129046_
                             _hd128176129049_
                             _tl128175129051_
                             _e128180129054_
                             _hd128179129057_
                             _tl128178129059_
                             _e128183129062_
                             _hd128182129065_
                             _tl128181129067_
                             _e128186129070_
                             _hd128185129073_
                             _tl128184129075_
                             _e128189129078_
                             _hd128188129081_
                             _tl128187129083_
                             _e128192129086_
                             _hd128191129089_
                             _tl128190129091_
                             _e128195129094_
                             _hd128194129097_
                             _tl128193129099_
                             _e128198129102_
                             _hd128197129105_
                             _tl128196129107_))))
                    (___match134679134680_
                     _e128177129046_
                     _hd128176129049_
                     _tl128175129051_
                     _e128180129054_
                     _hd128179129057_
                     _tl128178129059_
                     _e128183129062_
                     _hd128182129065_
                     _tl128181129067_
                     _e128186129070_
                     _hd128185129073_
                     _tl128184129075_
                     _e128189129078_
                     _hd128188129081_
                     _tl128187129083_
                     _e128192129086_
                     _hd128191129089_
                     _tl128190129091_
                     _e128195129094_
                     _hd128194129097_
                     _tl128193129099_))
                (___kont134262134263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134262134263_))
                                            (___kont134262134263_))
                                        (___kont134262134263_))))
                                (___kont134262134263_))))
                        (___kont134262134263_))
                    (___kont134262134263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134262134263_))
                                                (___kont134262134263_))
                                            (___kont134262134263_))))
                                    (___kont134262134263_))))
                            (___kont134262134263_))))
                    (___kont134262134263_))))))))))
