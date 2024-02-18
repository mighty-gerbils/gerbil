(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1708280337)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl255456_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp260651 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl255456_ __tmp260651))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255456_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255456_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255456_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl255456_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl255456_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx255439_ . _args255441_)
        (let ((__tmp260653
               (lambda ()
                 (declare (not safe))
                 (if (null? _args255441_)
                     (gxc#compile-e__0 _stx255439_)
                     (let ((_arg1255446_ (car _args255441_))
                           (_rest255448_ (cdr _args255441_)))
                       (if (null? _rest255448_)
                           (gxc#compile-e__1 _stx255439_ _arg1255446_)
                           (let ((_arg2255451_ (car _rest255448_))
                                 (_rest255453_ (cdr _rest255448_)))
                             (if (null? _rest255453_)
                                 (gxc#compile-e__2
                                  _stx255439_
                                  _arg1255446_
                                  _arg2255451_)
                                 (apply gxc#compile-e
                                        _stx255439_
                                        _arg1255446_
                                        _arg2255451_
                                        _rest255453_))))))))
              (__tmp260652 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp260653
           gxc#current-compile-methods
           __tmp260652))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl255436_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp260654 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl255436_ __tmp260654))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255436_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl255436_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255436_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl255436_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl255436_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl255436_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl255436_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255436_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255436_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255436_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255436_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255436_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255436_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl255436_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl255436_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl255436_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl255436_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx255419_ . _args255421_)
        (let ((__tmp260656
               (lambda ()
                 (declare (not safe))
                 (if (null? _args255421_)
                     (gxc#compile-e__0 _stx255419_)
                     (let ((_arg1255426_ (car _args255421_))
                           (_rest255428_ (cdr _args255421_)))
                       (if (null? _rest255428_)
                           (gxc#compile-e__1 _stx255419_ _arg1255426_)
                           (let ((_arg2255431_ (car _rest255428_))
                                 (_rest255433_ (cdr _rest255428_)))
                             (if (null? _rest255433_)
                                 (gxc#compile-e__2
                                  _stx255419_
                                  _arg1255426_
                                  _arg2255431_)
                                 (apply gxc#compile-e
                                        _stx255419_
                                        _arg1255426_
                                        _arg2255431_
                                        _rest255433_))))))))
              (__tmp260655 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp260656
           gxc#current-compile-methods
           __tmp260655))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl255416_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp260657 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl255416_ __tmp260657))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255416_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255416_ '%#call gxc#subst-object-refs-call%))
           _tbl255416_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx255399_ . _args255401_)
        (let ((__tmp260659
               (lambda ()
                 (declare (not safe))
                 (if (null? _args255401_)
                     (gxc#compile-e__0 _stx255399_)
                     (let ((_arg1255406_ (car _args255401_))
                           (_rest255408_ (cdr _args255401_)))
                       (if (null? _rest255408_)
                           (gxc#compile-e__1 _stx255399_ _arg1255406_)
                           (let ((_arg2255411_ (car _rest255408_))
                                 (_rest255413_ (cdr _rest255408_)))
                             (if (null? _rest255413_)
                                 (gxc#compile-e__2
                                  _stx255399_
                                  _arg1255406_
                                  _arg2255411_)
                                 (apply gxc#compile-e
                                        _stx255399_
                                        _arg1255406_
                                        _arg2255411_
                                        _rest255413_))))))))
              (__tmp260658 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp260659
           gxc#current-compile-methods
           __tmp260658))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx252069_)
        (letrec ((_generate-method-bind252071_
                  (lambda (_$t255393_ _id255394_ _$id255395_)
                    (let ((_$tmp255397_
                           (let ((__tmp260660 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp260660))))
                      (let ((__tmp260708
                             (let ()
                               (declare (not safe))
                               (cons _$id255395_ '())))
                            (__tmp260661
                             (let ((__tmp260662
                                    (let ((__tmp260663
                                           (let ((__tmp260706
                                                  (let ((__tmp260707
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp260707)))
                                                 (__tmp260664
                                                  (let ((__tmp260665
                                                         (let ((__tmp260666
                                                                (let ((__tmp260667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp260668
                                      (let ((__tmp260669
                                             (let ((__tmp260689
                                                    (let ((__tmp260690
                                                           (let ((__tmp260705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp255397_ '())))
                         (__tmp260691
                          (let ((__tmp260692
                                 (let ((__tmp260693
                                        (let ((__tmp260703
                                               (let ((__tmp260704
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp260704)))
                                              (__tmp260694
                                               (let ((__tmp260701
                                                      (let ((__tmp260702
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t255393_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp260702)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp260695
                                                      (let ((__tmp260699
                                                             (let ((__tmp260700
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp260700)))
                    (__tmp260696
                     (let ((__tmp260697
                            (let ((__tmp260698
                                   (let ()
                                     (declare (not safe))
                                     (cons _id255394_ '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp260698))))
                       (declare (not safe))
                       (cons __tmp260697 '()))))
                (declare (not safe))
                (cons __tmp260699 __tmp260696))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp260701
                                                       __tmp260695))))
                                          (declare (not safe))
                                          (cons __tmp260703 __tmp260694))))
                                   (declare (not safe))
                                   (cons '%#call __tmp260693))))
                            (declare (not safe))
                            (cons __tmp260692 '()))))
                     (declare (not safe))
                     (cons __tmp260705 __tmp260691))))
              (declare (not safe))
              (cons __tmp260690 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp260670
                                                    (let ((__tmp260671
                                                           (let ((__tmp260672
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp260687
                                 (let ((__tmp260688
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp255397_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp260688)))
                                (__tmp260673
                                 (let ((__tmp260685
                                        (let ((__tmp260686
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp255397_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp260686)))
                                       (__tmp260674
                                        (let ((__tmp260675
                                               (let ((__tmp260676
                                                      (let ((__tmp260683
                                                             (let ((__tmp260684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp260684)))
                    (__tmp260677
                     (let ((__tmp260681
                            (let ((__tmp260682
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp260682)))
                           (__tmp260678
                            (let ((__tmp260679
                                   (let ((__tmp260680
                                          (let ()
                                            (declare (not safe))
                                            (cons _id255394_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp260680))))
                              (declare (not safe))
                              (cons __tmp260679 '()))))
                       (declare (not safe))
                       (cons __tmp260681 __tmp260678))))
                (declare (not safe))
                (cons __tmp260683 __tmp260677))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp260676))))
                                          (declare (not safe))
                                          (cons __tmp260675 '()))))
                                   (declare (not safe))
                                   (cons __tmp260685 __tmp260674))))
                            (declare (not safe))
                            (cons __tmp260687 __tmp260673))))
                     (declare (not safe))
                     (cons '%#if __tmp260672))))
              (declare (not safe))
              (cons __tmp260671 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp260689
                                                     __tmp260670))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp260669))))
                                 (declare (not safe))
                                 (cons __tmp260668 '()))))
                          (declare (not safe))
                          (cons '() __tmp260667))))
                   (declare (not safe))
                   (cons '%#lambda __tmp260666))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp260665 '()))))
                                             (declare (not safe))
                                             (cons __tmp260706 __tmp260664))))
                                      (declare (not safe))
                                      (cons '%#call __tmp260663))))
                               (declare (not safe))
                               (cons __tmp260662 '()))))
                        (declare (not safe))
                        (cons __tmp260708 __tmp260661)))))
                 (_generate-slot-bind252072_
                  (lambda (_$t255387_ _id255388_ _$id255389_)
                    (let ((_$tmp255391_
                           (let ((__tmp260709 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp260709))))
                      (let ((__tmp260746
                             (let ()
                               (declare (not safe))
                               (cons _$id255389_ '())))
                            (__tmp260710
                             (let ((__tmp260711
                                    (let ((__tmp260712
                                           (let ((__tmp260732
                                                  (let ((__tmp260733
                                                         (let ((__tmp260745
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp255391_ '())))
                       (__tmp260734
                        (let ((__tmp260735
                               (let ((__tmp260736
                                      (let ((__tmp260743
                                             (let ((__tmp260744
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp260744)))
                                            (__tmp260737
                                             (let ((__tmp260741
                                                    (let ((__tmp260742
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t255387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp260742)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp260738
                                                    (let ((__tmp260739
                                                           (let ((__tmp260740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id255388_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp260740))))
              (declare (not safe))
              (cons __tmp260739 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp260741
                                                     __tmp260738))))
                                        (declare (not safe))
                                        (cons __tmp260743 __tmp260737))))
                                 (declare (not safe))
                                 (cons '%#call __tmp260736))))
                          (declare (not safe))
                          (cons __tmp260735 '()))))
                   (declare (not safe))
                   (cons __tmp260745 __tmp260734))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp260733 '())))
                                                 (__tmp260713
                                                  (let ((__tmp260714
                                                         (let ((__tmp260715
                                                                (let ((__tmp260730
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp260731
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp255391_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp260731)))
                              (__tmp260716
                               (let ((__tmp260728
                                      (let ((__tmp260729
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp255391_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp260729)))
                                     (__tmp260717
                                      (let ((__tmp260718
                                             (let ((__tmp260719
                                                    (let ((__tmp260726
                                                           (let ((__tmp260727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp260727)))
                  (__tmp260720
                   (let ((__tmp260724
                          (let ((__tmp260725
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp260725)))
                         (__tmp260721
                          (let ((__tmp260722
                                 (let ((__tmp260723
                                        (let ()
                                          (declare (not safe))
                                          (cons _id255388_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp260723))))
                            (declare (not safe))
                            (cons __tmp260722 '()))))
                     (declare (not safe))
                     (cons __tmp260724 __tmp260721))))
              (declare (not safe))
              (cons __tmp260726 __tmp260720))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp260719))))
                                        (declare (not safe))
                                        (cons __tmp260718 '()))))
                                 (declare (not safe))
                                 (cons __tmp260728 __tmp260717))))
                          (declare (not safe))
                          (cons __tmp260730 __tmp260716))))
                   (declare (not safe))
                   (cons '%#if __tmp260715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp260714 '()))))
                                             (declare (not safe))
                                             (cons __tmp260732 __tmp260713))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp260712))))
                               (declare (not safe))
                               (cons __tmp260711 '()))))
                        (declare (not safe))
                        (cons __tmp260746 __tmp260710)))))
                 (_generate-class-check-bind252073_
                  (lambda (_$t255383_ _class-type255384_ _$class-type255385_)
                    (let ((__tmp260758
                           (let ()
                             (declare (not safe))
                             (cons _$class-type255385_ '())))
                          (__tmp260747
                           (let ((__tmp260748
                                  (let ((__tmp260749
                                         (let ((__tmp260756
                                                (let ((__tmp260757
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp260757)))
                                               (__tmp260750
                                                (let ((__tmp260754
                                                       (let ((__tmp260755
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t255383_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp260755)))
              (__tmp260751
               (let ((__tmp260752
                      (let ((__tmp260753
                             (let ()
                               (declare (not safe))
                               (cons _class-type255384_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp260753))))
                 (declare (not safe))
                 (cons __tmp260752 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp260754
                                                        __tmp260751))))
                                           (declare (not safe))
                                           (cons __tmp260756 __tmp260750))))
                                    (declare (not safe))
                                    (cons '%#call __tmp260749))))
                             (declare (not safe))
                             (cons __tmp260748 '()))))
                      (declare (not safe))
                      (cons __tmp260758 __tmp260747))))
                 (_generate-struct-check-bind252074_
                  (lambda (_$t255379_ _class-type255380_ _$class-type255381_)
                    (let ((__tmp260770
                           (let ()
                             (declare (not safe))
                             (cons _$class-type255381_ '())))
                          (__tmp260759
                           (let ((__tmp260760
                                  (let ((__tmp260761
                                         (let ((__tmp260768
                                                (let ((__tmp260769
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp260769)))
                                               (__tmp260762
                                                (let ((__tmp260766
                                                       (let ((__tmp260767
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t255379_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp260767)))
              (__tmp260763
               (let ((__tmp260764
                      (let ((__tmp260765
                             (let ()
                               (declare (not safe))
                               (cons _class-type255380_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp260765))))
                 (declare (not safe))
                 (cons __tmp260764 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp260766
                                                        __tmp260763))))
                                           (declare (not safe))
                                           (cons __tmp260768 __tmp260762))))
                                    (declare (not safe))
                                    (cons '%#call __tmp260761))))
                             (declare (not safe))
                             (cons __tmp260760 '()))))
                      (declare (not safe))
                      (cons __tmp260770 __tmp260759))))
                 (_generate-specializer-impl252075_
                  (lambda (_$t255328_
                           _methods-bind255329_
                           _slots-bind255330_
                           _class-check-bind255331_
                           _struct-check-bind255332_
                           _specializer-impl255333_
                           _lifted-specializer-id255334_
                           _unchecked-specializer-impl255335_)
                    (let ((__tmp260771
                           (let ((__tmp260772
                                  (let ((__tmp260798
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t255328_ '())))
                                        (__tmp260773
                                         (let ((__tmp260774
                                                (let ((__tmp260775
                                                       (let ((__tmp260795
                                                              (let ((__tmp260796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp260797
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind255332_
                                              _class-check-bind255331_))))
                               (declare (not safe))
                               (foldr1 cons __tmp260797 _slots-bind255330_))))
                        (declare (not safe))
                        (foldr1 cons __tmp260796 _methods-bind255329_)))
                     (__tmp260776
                      (let ((__tmp260777
                             (if (or _lifted-specializer-id255334_
                                     _unchecked-specializer-impl255335_)
                                 (let* ((_$specializer255340_
                                         (let ((__tmp260778
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp260778)))
                                        (__tmp260779
                                         (let ((__tmp260791
                                                (let ((__tmp260792
                                                       (let ((__tmp260794
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer255340_ '())))
                     (__tmp260793
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl255333_ '()))))
                 (declare (not safe))
                 (cons __tmp260794 __tmp260793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp260792 '())))
                                               (__tmp260780
                                                (let ((__tmp260781
                                                       (let _recur255342_ ((_rest255344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind255332_)))
                 (let* ((_rest255345255353_ _rest255344_)
                        (_else255347255361_
                         (lambda ()
                           (if _lifted-specializer-id255334_
                               (let ((__tmp260782
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id255334_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp260782))
                               _unchecked-specializer-impl255335_)))
                        (_K255349255367_
                         (lambda (_rest255364_ _checkq255365_)
                           (let ((__tmp260783
                                  (let ((__tmp260789
                                         (let ((__tmp260790
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq255365_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp260790)))
                                        (__tmp260784
                                         (let ((__tmp260788
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur255342_
                                                   _rest255364_)))
                                               (__tmp260785
                                                (let ((__tmp260786
                                                       (let ((__tmp260787
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer255340_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp260787))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp260786 '()))))
                                           (declare (not safe))
                                           (cons __tmp260788 __tmp260785))))
                                    (declare (not safe))
                                    (cons __tmp260789 __tmp260784))))
                             (declare (not safe))
                             (cons '%#if __tmp260783)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest255345255353_))
                       (let ((_hd255350255370_
                              (let ()
                                (declare (not safe))
                                (##car _rest255345255353_)))
                             (_tl255351255372_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest255345255353_))))
                         (let* ((_checkq255375_ _hd255350255370_)
                                (_rest255377_ _tl255351255372_))
                           (declare (not safe))
                           (_K255349255367_ _rest255377_ _checkq255375_)))
                       (let () (declare (not safe)) (_else255347255361_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp260781 '()))))
                                           (declare (not safe))
                                           (cons __tmp260791 __tmp260780))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp260779))
                                 _specializer-impl255333_)))
                        (declare (not safe))
                        (cons __tmp260777 '()))))
                 (declare (not safe))
                 (cons __tmp260795 __tmp260776))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp260775))))
                                           (declare (not safe))
                                           (cons __tmp260774 '()))))
                                    (declare (not safe))
                                    (cons __tmp260798 __tmp260773))))
                             (declare (not safe))
                             (cons '%#lambda __tmp260772))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp260771 _stx252069_))))
                 (_generate-specializer-def252076_
                  (lambda (_id255322_
                           _specializer-id255323_
                           _specializer-impl255324_
                           _lifted-specializer-id255325_
                           _unchecked-specializer-impl255326_)
                    (let ((__tmp260799
                           (let ((__tmp260800
                                  (let ((__tmp260801
                                         (let ((__tmp260821
                                                (let ((__tmp260822
                                                       (let ((__tmp260823
                                                              (let ((__tmp260825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id255323_ '())))
                            (__tmp260824
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl255324_ '()))))
                        (declare (not safe))
                        (cons __tmp260825 __tmp260824))))
                 (declare (not safe))
                 (cons '%#define-values __tmp260823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp260822
                                                   _stx252069_)))
                                               (__tmp260802
                                                (let ((__tmp260809
                                                       (let ((__tmp260810
                                                              (let ((__tmp260811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp260812
                                    (let ((__tmp260819
                                           (let ((__tmp260820
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp260820)))
                                          (__tmp260813
                                           (let ((__tmp260817
                                                  (let ((__tmp260818
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id255322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp260818)))
                                                 (__tmp260814
                                                  (let ((__tmp260815
                                                         (let ((__tmp260816
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id255323_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp260816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp260815 '()))))
                                             (declare (not safe))
                                             (cons __tmp260817 __tmp260814))))
                                      (declare (not safe))
                                      (cons __tmp260819 __tmp260813))))
                               (declare (not safe))
                               (cons '%#call __tmp260812))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp260811 _stx252069_))))
                 (declare (not safe))
                 (cons __tmp260810 '())))
              (__tmp260803
               (if _lifted-specializer-id255325_
                   (let ((__tmp260804
                          (let ((__tmp260805
                                 (let ((__tmp260806
                                        (let ((__tmp260808
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id255325_
                                                       '())))
                                              (__tmp260807
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl255326_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp260808 __tmp260807))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp260806))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp260805 _stx252069_))))
                     (declare (not safe))
                     (cons __tmp260804 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp260809
                                                          __tmp260803))))
                                           (declare (not safe))
                                           (cons __tmp260821 __tmp260802))))
                                    (declare (not safe))
                                    (cons _stx252069_ __tmp260801))))
                             (declare (not safe))
                             (cons '%#begin __tmp260800))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp260799 _stx252069_)))))
          (let* ((___stx259612259613_ _stx252069_)
                 (_g252079252099_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx259612259613_)))))
            (let ((___kont259614259615_
                   (lambda (_L252143_ _L252144_)
                     (let ((_method-calls252163_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs252164_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_class-type-check252165_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-check252166_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-assert252167_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty252168_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?252170_
                                 (lambda ()
                                   (if (let ((__tmp260830
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls252163_))))
                                         (declare (not safe))
                                         (fxzero? __tmp260830))
                                       (if (let ((__tmp260829
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _slot-refs252164_))))
                                             (declare (not safe))
                                             (fxzero? __tmp260829))
                                           (if (let ((__tmp260828
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-length
                                                         _class-type-check252165_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp260828))
                                               (if (let ((__tmp260827
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (hash-length
                                                             _struct-type-check252166_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp260827))
                                                   (let ((__tmp260826
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (hash-length
                                                             _struct-type-assert252167_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp260826))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?252171_
                                 (lambda ()
                                   (let ((_$e255315_
                                          (let ((__tmp260831
                                                 (let ((__tmp260832
                                                        (let ()
                                                          (declare (not safe))
                                                          (hash-length
                                                           _struct-type-check252166_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp260832))))
                                            (declare (not safe))
                                            (not __tmp260831))))
                                     (if _$e255315_
                                         _$e255315_
                                         (let ((__tmp260833
                                                (let ((__tmp260834
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-length
                                                          _struct-type-assert252167_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp260834))))
                                           (declare (not safe))
                                           (not __tmp260833))))))
                                (_lift-unchecked-specializer?252172_
                                 (lambda ()
                                   (if (let ((__tmp260837
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls252163_))))
                                         (declare (not safe))
                                         (fxzero? __tmp260837))
                                       (if (let ((__tmp260836
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _slot-refs252164_))))
                                             (declare (not safe))
                                             (fxzero? __tmp260836))
                                           (let ((__tmp260835
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _class-type-check252165_))))
                                             (declare (not safe))
                                             (fxzero? __tmp260835))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L252143_))
                             (let* ((___stx259526259527_ _L252143_)
                                    (_g252685252703_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx259526259527_)))))
                               (let ((___kont259528259529_
                                      (lambda (_L252739_ _L252740_ _L252741_)
                                        (for-each
                                         (lambda (_g252756252758_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g252756252758_
                                              _L252741_
                                              _method-calls252163_
                                              _slot-refs252164_
                                              _class-type-check252165_
                                              _struct-type-check252166_
                                              _struct-type-assert252167_)))
                                         _L252739_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?252170_))
                                            _stx252069_
                                            (let* ((_specializer-id252767_
                                                    (let* ((_id252761_
                                                            (let ((__tmp260987
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L252144_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp260987 '"::specialize")))
                   (_specializer-id252764_
                    (let ((__tmp260988
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx252069_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id252761_ __tmp260988))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id252764_))
              _specializer-id252764_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id252774_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?252172_))
                                                        (let* ((_id252769_
                                                                (let ((__tmp260989
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L252144_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp260989
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id252771_
                        (let ((__tmp260990
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx252069_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id252769_ __tmp260990))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id252771_))
                  _lifted-specializer-id252771_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t252776_
                                                    (let ((__tmp260991
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp260991)))
                                                   (_methods252778_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls252163_)))
                                                   (_$methods252782_
                                                    (map (lambda (_id252780_)
                                                           (let ((__tmp260992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id252780_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp260992)))
                 _methods252778_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g260993_
                                                    (for-each
                                                     (lambda (_g252783252786_
                                                              _g252784252788_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls252163_
                                                          _g252783252786_
                                                          _g252784252788_)))
                                                     _methods252778_
                                                     _$methods252782_))
                                                   (_methods-bind252799_
                                                    (map (lambda (_g252791252794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g252792252796_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind252071_
                      _$t252776_
                      _g252791252794_
                      _g252792252796_)))
                 _methods252778_
                 _$methods252782_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots252801_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs252164_)))
                                                   (_$slots252805_
                                                    (map (lambda (_id252803_)
                                                           (let ((__tmp260994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id252803_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp260994)))
                 _slots252801_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g260995_
                                                    (for-each
                                                     (lambda (_g252806252809_
                                                              _g252807252811_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs252164_
                                                          _g252806252809_
                                                          _g252807252811_)))
                                                     _slots252801_
                                                     _$slots252805_))
                                                   (_slots-bind252822_
                                                    (map (lambda (_g252814252817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g252815252819_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind252072_
                      _$t252776_
                      _g252814252817_
                      _g252815252819_)))
                 _slots252801_
                 _$slots252805_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check252824_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check252165_)))
                                                   (_$class-check252827_
                                                    (map (lambda (_g260996_)
                                                           (let ((__tmp260997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp260997)))
                 _class-check252824_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g260998_
                                                    (for-each
                                                     (lambda (_g252828252831_
                                                              _g252829252833_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _class-type-check252165_
                                                          _g252828252831_
                                                          _g252829252833_)))
                                                     _class-check252824_
                                                     _$class-check252827_))
                                                   (_class-check-bind252844_
                                                    (map (lambda (_g252836252839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g252837252841_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind252073_
                      _$t252776_
                      _g252836252839_
                      _g252837252841_)))
                 _class-check252824_
                 _$class-check252827_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all252846_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check252166_
                                                       _struct-type-assert252167_)))
                                                   (_struct-check252848_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all252846_)))
                                                   (_$struct-check252851_
                                                    (map (lambda (_g260999_)
                                                           (let ((__tmp261000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp261000)))
                 _struct-check252848_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g261001_
                                                    (for-each
                                                     (lambda (_g252852252855_
                                                              _g252853252857_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _struct-check-all252846_
                                                          _g252852252855_
                                                          _g252853252857_)))
                                                     _struct-check252848_
                                                     _$struct-check252851_))
                                                   (_struct-check-bind252868_
                                                    (map (lambda (_g252860252863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g252861252865_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind252074_
                      _$t252776_
                      _g252860252863_
                      _g252861252865_)))
                 _struct-check252848_
                 _$struct-check252851_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl252879_
                                                    (lambda (_struct-type-check1252870_
                                                             _struct-type-check2252871_)
                                                      (let* ((_specializer-body252877_
                                                              (map (lambda (_g252872252874_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g252872252874_
                                _L252741_
                                _$t252776_
                                _method-calls252163_
                                _slot-refs252164_
                                _class-type-check252165_
                                _struct-type-check1252870_
                                _struct-type-check2252871_)))
                           _L252739_))
                     (__tmp261002
                      (let ((__tmp261003
                             (let ((__tmp261004
                                    (let ()
                                      (declare (not safe))
                                      (cons _L252741_ _L252740_))))
                               (declare (not safe))
                               (cons __tmp261004 _specializer-body252877_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp261003))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp261002 _stx252069_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl252881_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl252879_
                                                       _struct-check-all252846_
                                                       _empty252168_)))
                                                   (_unchecked-specializer-impl252883_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?252171_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl252879_
                                                           _empty252168_
                                                           _struct-check-all252846_))
                                                        '#f))
                                                   (_specializer-impl252885_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl252075_
                                                       _$t252776_
                                                       _methods-bind252799_
                                                       _slots-bind252822_
                                                       _class-check-bind252844_
                                                       _struct-check-bind252868_
                                                       _specializer-impl252881_
                                                       _lifted-specializer-id252774_
                                                       _unchecked-specializer-impl252883_))))
                                              (let ((__tmp261006
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L252144_)))
                                                    (__tmp261005
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id252767_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp261006
                                                 '" => "
                                                 __tmp261005))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def252076_
                                                 _L252144_
                                                 _specializer-id252767_
                                                 _specializer-impl252885_
                                                 _lifted-specializer-id252774_
                                                 _unchecked-specializer-impl252883_))))))
                                     (___kont259530259531_
                                      (lambda () _stx252069_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx259526259527_))
                                     (let ((_e252692252715_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx259526259527_))))
                                       (let ((_tl252690252720_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e252692252715_)))
                                             (_hd252691252718_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e252692252715_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl252690252720_))
                                             (let ((_e252695252723_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl252690252720_))))
                                               (let ((_tl252693252728_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e252695252723_)))
                                                     (_hd252694252726_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e252695252723_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd252694252726_))
                                                     (let ((_e252698252731_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd252694252726_))))
                                                       (let ((_tl252696252736_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e252698252731_)))
                     (_hd252697252734_
                      (let () (declare (not safe)) (##car _e252698252731_))))
                 (___kont259528259529_
                  _tl252693252728_
                  _tl252696252736_
                  _hd252697252734_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont259530259531_))))
                                             (___kont259530259531_))))
                                     (___kont259530259531_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L252143_))
                                 (let* ((_g252891252910_
                                         (lambda (_g252892252907_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g252892252907_))))
                                        (_g252890253261_
                                         (lambda (_g252892252913_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g252892252913_))
                                               (let ((_e252896252915_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g252892252913_))))
                                                 (let ((_hd252895252918_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e252896252915_)))
                                                       (_tl252894252920_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e252896252915_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl252894252920_))
                                                       (let ((_g260963_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl252894252920_ '0))))
                 (begin
                   (let ((_g260964_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g260963_)
                                (##vector-length _g260963_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g260964_ 2)))
                         (error "Context expects 2 values" _g260964_)))
                   (let ((_target252897252923_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g260963_ 0)))
                         (_tl252899252925_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g260963_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl252899252925_))
                         (letrec ((_loop252900252928_
                                   (lambda (_hd252898252931_
                                            _clause252904252933_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd252898252931_))
                                         (let ((_e252901252936_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd252898252931_))))
                                           (let ((_lp-hd252902252939_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e252901252936_)))
                                                 (_lp-tl252903252941_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e252901252936_))))
                                             (let ((__tmp260986
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd252902252939_
                                                            _clause252904252933_))))
                                               (declare (not safe))
                                               (_loop252900252928_
                                                _lp-tl252903252941_
                                                __tmp260986))))
                                         (let ((_clause252905252944_
                                                (reverse _clause252904252933_)))
                                           ((lambda (_L252947_)
                                              (for-each
                                               (lambda (_clause252960_)
                                                 (let* ((___stx259552259553_
                                                         _clause252960_)
                                                        (_g252963252978_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx259552259553_)))))
                                                   (let ((___kont259554259555_
                                                          (lambda (_L253006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L253007_
                           _L253008_)
                    (for-each
                     (lambda (_g253023253025_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g253023253025_
                          _L253008_
                          _method-calls252163_
                          _slot-refs252164_
                          _class-type-check252165_
                          _struct-type-check252166_
                          _struct-type-assert252167_)))
                     _L253006_)))
                 (___kont259556259557_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx259552259553_))
                                                         (let ((_e252970252990_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx259552259553_))))
                   (let ((_tl252968252995_
                          (let ()
                            (declare (not safe))
                            (##cdr _e252970252990_)))
                         (_hd252969252993_
                          (let ()
                            (declare (not safe))
                            (##car _e252970252990_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd252969252993_))
                         (let ((_e252973252998_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd252969252993_))))
                           (let ((_tl252971253003_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e252973252998_)))
                                 (_hd252972253001_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e252973252998_))))
                             (___kont259554259555_
                              _tl252968252995_
                              _tl252971253003_
                              _hd252972253001_)))
                         (___kont259556259557_))))
                 (___kont259556259557_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp260965
                                                      (lambda (_g253030253033_
                                                               _g253031253035_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g253030253033_
                                                                _g253031253035_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp260965
                                                         '()
                                                         _L252947_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?252170_))
                                                  _stx252069_
                                                  (let* ((_specializer-id253044_
                                                          (let* ((_id253038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp260966
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L252144_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp260966 '"::specialize")))
                         (_specializer-id253041_
                          (let ((__tmp260967
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx252069_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id253038_ __tmp260967))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id253041_))
                    _specializer-id253041_))
                 (_lifted-specializer-id253051_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?252172_))
                      (let* ((_id253046_
                              (let ((__tmp260968
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L252144_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp260968
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id253048_
                              (let ((__tmp260969
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx252069_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id253046_
                                 __tmp260969))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id253048_))
                        _lifted-specializer-id253048_)
                      '#f))
                 (_$t253053_
                  (let ((__tmp260970 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp260970)))
                 (_methods253055_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls252163_)))
                 (_$methods253059_
                  (map (lambda (_id253057_)
                         (let ((__tmp260971 (gensym _id253057_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp260971)))
                       _methods253055_))
                 (_g260972_
                  (for-each
                   (lambda (_g253060253063_ _g253061253065_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls252163_
                        _g253060253063_
                        _g253061253065_)))
                   _methods253055_
                   _$methods253059_))
                 (_methods-bind253076_
                  (map (lambda (_g253068253071_ _g253069253073_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind252071_
                            _$t253053_
                            _g253068253071_
                            _g253069253073_)))
                       _methods253055_
                       _$methods253059_))
                 (_slots253078_
                  (let () (declare (not safe)) (hash-keys _slot-refs252164_)))
                 (_$slots253082_
                  (map (lambda (_id253080_)
                         (let ((__tmp260973 (gensym _id253080_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp260973)))
                       _slots253078_))
                 (_g260974_
                  (for-each
                   (lambda (_g253083253086_ _g253084253088_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs252164_
                        _g253083253086_
                        _g253084253088_)))
                   _slots253078_
                   _$slots253082_))
                 (_slots-bind253099_
                  (map (lambda (_g253091253094_ _g253092253096_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind252072_
                            _$t253053_
                            _g253091253094_
                            _g253092253096_)))
                       _slots253078_
                       _$slots253082_))
                 (_class-check253101_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check252165_)))
                 (_$class-check253104_
                  (map (lambda (_g260975_)
                         (let ((__tmp260976 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp260976)))
                       _class-check253101_))
                 (_g260977_
                  (for-each
                   (lambda (_g253105253108_ _g253106253110_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _class-type-check252165_
                        _g253105253108_
                        _g253106253110_)))
                   _class-check253101_
                   _$class-check253104_))
                 (_class-check-bind253121_
                  (map (lambda (_g253113253116_ _g253114253118_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind252073_
                            _$t253053_
                            _g253113253116_
                            _g253114253118_)))
                       _class-check253101_
                       _$class-check253104_))
                 (_struct-check-all253123_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check252166_
                     _struct-type-assert252167_)))
                 (_struct-check253125_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all253123_)))
                 (_$struct-check253128_
                  (map (lambda (_g260978_)
                         (let ((__tmp260979 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp260979)))
                       _struct-check253125_))
                 (_g260980_
                  (for-each
                   (lambda (_g253129253132_ _g253130253134_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _struct-check-all253123_
                        _g253129253132_
                        _g253130253134_)))
                   _struct-check253125_
                   _$struct-check253128_))
                 (_struct-check-bind253145_
                  (map (lambda (_g253137253140_ _g253138253142_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind252074_
                            _$t253053_
                            _g253137253140_
                            _g253138253142_)))
                       _struct-check253125_
                       _$struct-check253128_))
                 (_make-specializer-impl253252_
                  (lambda (_struct-type-check1253147_
                           _struct-type-check2253148_)
                    (let* ((_specializer-clauses253250_
                            (map (lambda (_clause253150_)
                                   (let* ((___stx259572259573_ _clause253150_)
                                          (_g253153253168_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx259572259573_)))))
                                     (let ((___kont259574259575_
                                            (lambda (_L253196_
                                                     _L253197_
                                                     _L253198_)
                                              (let* ((_body253238_
                                                      (map (lambda (_g253233253235_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g253233253235_
                        _L253198_
                        _$t253053_
                        _method-calls252163_
                        _slot-refs252164_
                        _class-type-check252165_
                        _struct-type-check1253147_
                        _struct-type-check2253148_)))
                   _L253196_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp260981
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L253198_
                                                              _L253197_))))
                                                (declare (not safe))
                                                (cons __tmp260981
                                                      _body253238_))))
                                           (___kont259576259577_
                                            (lambda () _clause253150_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx259572259573_))
                                           (let ((_e253160253180_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx259572259573_))))
                                             (let ((_tl253158253185_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e253160253180_)))
                                                   (_hd253159253183_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e253160253180_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd253159253183_))
                                                   (let ((_e253163253188_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd253159253183_))))
                                                     (let ((_tl253161253193_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e253163253188_)))
                                                           (_hd253162253191_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e253163253188_))))
                                                       (___kont259574259575_
                                                        _tl253158253185_
                                                        _tl253161253193_
                                                        _hd253162253191_)))
                                                   (___kont259576259577_))))
                                           (___kont259576259577_)))))
                                 (let ((__tmp260982
                                        (lambda (_g253242253245_
                                                 _g253243253247_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g253242253245_
                                                  _g253243253247_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp260982 '() _L252947_))))
                           (__tmp260983
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses253250_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp260983 _stx252069_))))
                 (_specializer-impl253254_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl253252_
                     _struct-check-all253123_
                     _empty252168_)))
                 (_unchecked-specializer-impl253256_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?252171_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl253252_
                         _empty252168_
                         _struct-check-all253123_))
                      '#f))
                 (_specializer-impl253258_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl252075_
                     _$t253053_
                     _methods-bind253076_
                     _slots-bind253099_
                     _class-check-bind253121_
                     _struct-check-bind253145_
                     _specializer-impl253254_
                     _lifted-specializer-id253051_
                     _unchecked-specializer-impl253256_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp260985
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L252144_)))
                                                          (__tmp260984
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id253044_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp260985
                                                       '" => "
                                                       __tmp260984))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def252076_
                                                       _L252144_
                                                       _specializer-id253044_
                                                       _specializer-impl253258_
                                                       _lifted-specializer-id253051_
                                                       _unchecked-specializer-impl253256_)))))
                                            _clause252905252944_))))))
                           (let ()
                             (declare (not safe))
                             (_loop252900252928_ _target252897252923_ '())))
                         (let ()
                           (declare (not safe))
                           (_g252891252910_ _g252892252913_))))))
               (let ()
                 (declare (not safe))
                 (_g252891252910_ _g252892252913_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g252891252910_
                                                  _g252892252913_))))))
                                   (declare (not safe))
                                   (_g252890253261_ _L252143_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L252143_))
                                     (let* ((_g253264253294_
                                             (lambda (_g253265253291_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g253265253291_))))
                                            (_g253263253982_
                                             (lambda (_g253265253297_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g253265253297_))
                                                   (let ((_e253271253299_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g253265253297_))))
                                                     (let ((_hd253270253302_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e253271253299_)))
                                                           (_tl253269253304_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e253271253299_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl253269253304_))
                                                           (let ((_e253274253307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl253269253304_))))
                     (let ((_hd253273253310_
                            (let ()
                              (declare (not safe))
                              (##car _e253274253307_)))
                           (_tl253272253312_
                            (let ()
                              (declare (not safe))
                              (##cdr _e253274253307_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd253273253310_))
                           (let ((_e253277253315_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd253273253310_))))
                             (let ((_hd253276253318_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e253277253315_)))
                                   (_tl253275253320_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e253277253315_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd253276253318_))
                                   (let ((_e253280253323_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd253276253318_))))
                                     (let ((_hd253279253326_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e253280253323_)))
                                           (_tl253278253328_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e253280253323_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd253279253326_))
                                           (let ((_e253283253331_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd253279253326_))))
                                             (let ((_hd253282253334_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e253283253331_)))
                                                   (_tl253281253336_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e253283253331_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl253281253336_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl253278253328_))
                                                       (let ((_e253286253339_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl253278253328_))))
                 (let ((_hd253285253342_
                        (let () (declare (not safe)) (##car _e253286253339_)))
                       (_tl253284253344_
                        (let () (declare (not safe)) (##cdr _e253286253339_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl253284253344_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl253275253320_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl253272253312_))
                               (let ((_e253289253347_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl253272253312_))))
                                 (let ((_hd253288253350_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e253289253347_)))
                                       (_tl253287253352_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e253289253347_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl253287253352_))
                                       ((lambda (_L253355_ _L253356_ _L253357_)
                                          (let* ((_g253380253398_
                                                  (lambda (_g253381253395_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g253381253395_))))
                                                 (_g253379253449_
                                                  (lambda (_g253381253401_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g253381253401_))
                                                        (let ((_e253387253403_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g253381253401_))))
                  (let ((_hd253386253406_
                         (let () (declare (not safe)) (##car _e253387253403_)))
                        (_tl253385253408_
                         (let ()
                           (declare (not safe))
                           (##cdr _e253387253403_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl253385253408_))
                        (let ((_e253390253411_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl253385253408_))))
                          (let ((_hd253389253414_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e253390253411_)))
                                (_tl253388253416_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e253390253411_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd253389253414_))
                                (let ((_e253393253419_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd253389253414_))))
                                  (let ((_hd253392253422_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e253393253419_)))
                                        (_tl253391253424_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e253393253419_))))
                                    ((lambda (_L253427_ _L253428_ _L253429_)
                                       (for-each
                                        (lambda (_g253444253446_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g253444253446_
                                             _L253429_
                                             _method-calls252163_
                                             _slot-refs252164_
                                             _class-type-check252165_
                                             _struct-type-check252166_
                                             _struct-type-assert252167_)))
                                        _L253427_))
                                     _tl253388253416_
                                     _tl253391253424_
                                     _hd253392253422_)))
                                (let ()
                                  (declare (not safe))
                                  (_g253380253398_ _g253381253401_)))))
                        (let ()
                          (declare (not safe))
                          (_g253380253398_ _g253381253401_)))))
                (let ()
                  (declare (not safe))
                  (_g253380253398_ _g253381253401_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g253379253449_ _L253356_))
                                          (let* ((_g253452253471_
                                                  (lambda (_g253453253468_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g253453253468_))))
                                                 (_g253451253590_
                                                  (lambda (_g253453253474_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g253453253474_))
                                                        (let ((_e253457253476_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g253453253474_))))
                  (let ((_hd253456253479_
                         (let () (declare (not safe)) (##car _e253457253476_)))
                        (_tl253455253481_
                         (let ()
                           (declare (not safe))
                           (##cdr _e253457253476_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl253455253481_))
                        (let ((_g260926_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl253455253481_
                                  '0))))
                          (begin
                            (let ((_g260927_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g260926_)
                                         (##vector-length _g260926_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g260927_ 2)))
                                  (error "Context expects 2 values"
                                         _g260927_)))
                            (let ((_target253458253484_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g260926_ 0)))
                                  (_tl253460253486_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g260926_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl253460253486_))
                                  (letrec ((_loop253461253489_
                                            (lambda (_hd253459253492_
                                                     _clause253465253494_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd253459253492_))
                                                  (let ((_e253462253497_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd253459253492_))))
                                                    (let ((_lp-hd253463253500_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e253462253497_)))
                                                          (_lp-tl253464253502_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e253462253497_))))
                                                      (let ((__tmp260929
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd253463253500_ _clause253465253494_))))
                (declare (not safe))
                (_loop253461253489_ _lp-tl253464253502_ __tmp260929))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause253466253505_
                                                         (reverse _clause253465253494_)))
                                                    ((lambda (_L253508_)
                                                       (for-each
                                                        (lambda (_clause253521_)
                                                          (let* ((_g253523253538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g253524253535_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g253524253535_))))
                         (_g253522253580_
                          (lambda (_g253524253541_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g253524253541_))
                                (let ((_e253530253543_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g253524253541_))))
                                  (let ((_hd253529253546_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e253530253543_)))
                                        (_tl253528253548_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e253530253543_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd253529253546_))
                                        (let ((_e253533253551_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd253529253546_))))
                                          (let ((_hd253532253554_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e253533253551_)))
                                                (_tl253531253556_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e253533253551_))))
                                            ((lambda (_L253559_
                                                      _L253560_
                                                      _L253561_)
                                               (for-each
                                                (lambda (_g253575253577_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g253575253577_
                                                     _L253561_
                                                     _method-calls252163_
                                                     _slot-refs252164_
                                                     _class-type-check252165_
                                                     _struct-type-check252166_
                                                     _struct-type-assert252167_)))
                                                _L253559_))
                                             _tl253528253548_
                                             _tl253531253556_
                                             _hd253532253554_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g253523253538_ _g253524253541_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g253523253538_ _g253524253541_))))))
                    (declare (not safe))
                    (_g253522253580_ _clause253521_)))
                (let ((__tmp260928
                       (lambda (_g253582253585_ _g253583253587_)
                         (let ()
                           (declare (not safe))
                           (cons _g253582253585_ _g253583253587_)))))
                  (declare (not safe))
                  (foldr1 __tmp260928 '() _L253508_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause253466253505_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop253461253489_
                                       _target253458253484_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g253452253471_ _g253453253474_))))))
                        (let ()
                          (declare (not safe))
                          (_g253452253471_ _g253453253474_)))))
                (let ()
                  (declare (not safe))
                  (_g253452253471_ _g253453253474_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g253451253590_ _L253355_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?252170_))
                                              _stx252069_
                                              (let* ((_specializer-id253599_
                                                      (let* ((_id253593_
                                                              (let ((__tmp260930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L252144_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp260930 '"::specialize")))
                     (_specializer-id253596_
                      (let ((__tmp260931
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx252069_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id253593_ __tmp260931))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id253596_))
                _specializer-id253596_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id253606_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?252172_))
                                                          (let* ((_id253601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp260932
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L252144_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp260932
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id253603_
                          (let ((__tmp260933
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx252069_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id253601_ __tmp260933))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id253603_))
                    _lifted-specializer-id253603_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t253608_
                                                      (let ((__tmp260934
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp260934)))
                                                     (_methods253610_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls252163_)))
                                                     (_$methods253614_
                                                      (map (lambda (_id253612_)
                                                             (let ((__tmp260935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id253612_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp260935)))
                   _methods253610_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g260936_
                                                      (for-each
                                                       (lambda (_g253615253618_
                                                                _g253616253620_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls252163_
                                                            _g253615253618_
                                                            _g253616253620_)))
                                                       _methods253610_
                                                       _$methods253614_))
                                                     (_methods-bind253631_
                                                      (map (lambda (_g253623253626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g253624253628_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind252071_
                        _$t253608_
                        _g253623253626_
                        _g253624253628_)))
                   _methods253610_
                   _$methods253614_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots253633_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs252164_)))
                                                     (_$slots253637_
                                                      (map (lambda (_id253635_)
                                                             (let ((__tmp260937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id253635_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp260937)))
                   _slots253633_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g260938_
                                                      (for-each
                                                       (lambda (_g253638253641_
                                                                _g253639253643_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs252164_
                                                            _g253638253641_
                                                            _g253639253643_)))
                                                       _slots253633_
                                                       _$slots253637_))
                                                     (_slots-bind253654_
                                                      (map (lambda (_g253646253649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g253647253651_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind252072_
                        _$t253608_
                        _g253646253649_
                        _g253647253651_)))
                   _slots253633_
                   _$slots253637_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check253656_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check252165_)))
                                                     (_$class-check253659_
                                                      (map (lambda (_g260939_)
                                                             (let ((__tmp260940
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp260940)))
                   _class-check253656_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g260941_
                                                      (for-each
                                                       (lambda (_g253660253663_
                                                                _g253661253665_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _class-type-check252165_
                                                            _g253660253663_
                                                            _g253661253665_)))
                                                       _class-check253656_
                                                       _$class-check253659_))
                                                     (_class-check-bind253676_
                                                      (map (lambda (_g253668253671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g253669253673_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind252073_
                        _$t253608_
                        _g253668253671_
                        _g253669253673_)))
                   _class-check253656_
                   _$class-check253659_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all253678_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check252166_
                                                         _struct-type-assert252167_)))
                                                     (_struct-check253680_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all253678_)))
                                                     (_$struct-check253683_
                                                      (map (lambda (_g260942_)
                                                             (let ((__tmp260943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp260943)))
                   _struct-check253680_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g260944_
                                                      (for-each
                                                       (lambda (_g253684253687_
                                                                _g253685253689_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _struct-check-all253678_
                                                            _g253684253687_
                                                            _g253685253689_)))
                                                       _struct-check253680_
                                                       _$struct-check253683_))
                                                     (_struct-check-bind253700_
                                                      (map (lambda (_g253692253695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g253693253697_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind252074_
                        _$t253608_
                        _g253692253695_
                        _g253693253697_)))
                   _struct-check253680_
                   _$struct-check253683_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr253799_
                                                      (lambda (_struct-type-check1253702_
                                                               _struct-type-check2253703_)
                                                        (let* ((_g253705253723_
                                                                (lambda (_g253706253720_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g253706253720_))))
                       (_g253704253796_
                        (lambda (_g253706253726_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g253706253726_))
                              (let ((_e253712253728_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g253706253726_))))
                                (let ((_hd253711253731_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e253712253728_)))
                                      (_tl253710253733_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e253712253728_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl253710253733_))
                                      (let ((_e253715253736_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl253710253733_))))
                                        (let ((_hd253714253739_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e253715253736_)))
                                              (_tl253713253741_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e253715253736_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd253714253739_))
                                              (let ((_e253718253744_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd253714253739_))))
                                                (let ((_hd253717253747_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e253718253744_)))
                                                      (_tl253716253749_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e253718253744_))))
                                                  ((lambda (_L253752_
                                                            _L253753_
                                                            _L253754_)
                                                     (let* ((_body253794_
                                                             (map (lambda (_g253789253791_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g253789253791_
                               _L253754_
                               _$t253608_
                               _method-calls252163_
                               _slot-refs252164_
                               _class-type-check252165_
                               _struct-type-check1253702_
                               _struct-type-check2253703_)))
                          _L253752_))
                    (__tmp260945
                     (let ((__tmp260946
                            (let ((__tmp260947
                                   (let ()
                                     (declare (not safe))
                                     (cons _L253754_ _L253753_))))
                              (declare (not safe))
                              (cons __tmp260947 _body253794_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp260946))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp260945 _L253356_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl253713253741_
                                                   _tl253716253749_
                                                   _hd253717253747_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g253705253723_
                                                 _g253706253726_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g253705253723_ _g253706253726_)))))
                              (let ()
                                (declare (not safe))
                                (_g253705253723_ _g253706253726_))))))
                  (declare (not safe))
                  (_g253704253796_ _L253356_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr253960_
                                                      (lambda (_struct-type-check1253801_
                                                               _struct-type-check2253802_)
                                                        (let* ((_g253804253823_
                                                                (lambda (_g253805253820_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g253805253820_))))
                       (_g253803253957_
                        (lambda (_g253805253826_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g253805253826_))
                              (let ((_e253809253828_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g253805253826_))))
                                (let ((_hd253808253831_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e253809253828_)))
                                      (_tl253807253833_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e253809253828_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl253807253833_))
                                      (let ((_g260948_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl253807253833_
                                                '0))))
                                        (begin
                                          (let ((_g260949_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g260948_)
                                                       (##vector-length
                                                        _g260948_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g260949_ 2)))
                                                (error "Context expects 2 values"
                                                       _g260949_)))
                                          (let ((_target253810253836_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g260948_ 0)))
                                                (_tl253812253838_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g260948_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl253812253838_))
                                                (letrec ((_loop253813253841_
                                                          (lambda (_hd253811253844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause253817253846_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd253811253844_))
                        (let ((_e253814253849_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd253811253844_))))
                          (let ((_lp-hd253815253852_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e253814253849_)))
                                (_lp-tl253816253854_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e253814253849_))))
                            (let ((__tmp260953
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd253815253852_
                                           _clause253817253846_))))
                              (declare (not safe))
                              (_loop253813253841_
                               _lp-tl253816253854_
                               __tmp260953))))
                        (let ((_clause253818253857_
                               (reverse _clause253817253846_)))
                          ((lambda (_L253860_)
                             (let* ((_clauses253955_
                                     (map (lambda (_clause253875_)
                                            (let* ((___stx259592259593_
                                                    _clause253875_)
                                                   (_g253878253893_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx259592259593_)))))
                                              (let ((___kont259594259595_
                                                     (lambda (_L253921_
                                                              _L253922_
                                                              _L253923_)
                                                       (let* ((_body253943_
                                                               (map (lambda (_g253938253940_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g253938253940_
                                 _L253923_
                                 _$t253608_
                                 _method-calls252163_
                                 _slot-refs252164_
                                 _class-type-check252165_
                                 _struct-type-check1253801_
                                 _struct-type-check2253802_)))
                            _L253921_))
                      (__tmp260950
                       (let ()
                         (declare (not safe))
                         (cons _L253923_ _L253922_))))
                 (declare (not safe))
                 (cons __tmp260950 _body253943_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont259596259597_
                                                     (lambda ()
                                                       _clause253875_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx259592259593_))
                                                    (let ((_e253885253905_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx259592259593_))))
                                                      (let ((_tl253883253910_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e253885253905_)))
                    (_hd253884253908_
                     (let () (declare (not safe)) (##car _e253885253905_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd253884253908_))
                    (let ((_e253888253913_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd253884253908_))))
                      (let ((_tl253886253918_
                             (let ()
                               (declare (not safe))
                               (##cdr _e253888253913_)))
                            (_hd253887253916_
                             (let ()
                               (declare (not safe))
                               (##car _e253888253913_))))
                        (___kont259594259595_
                         _tl253883253910_
                         _tl253886253918_
                         _hd253887253916_)))
                    (___kont259596259597_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont259596259597_)))))
                                          (let ((__tmp260951
                                                 (lambda (_g253947253950_
                                                          _g253948253952_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g253947253950_
                                                           _g253948253952_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp260951
                                                    '()
                                                    _L253860_))))
                                    (__tmp260952
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses253955_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp260952 _L253355_)))
                           _clause253818253857_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop253813253841_
                                                     _target253810253836_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g253804253823_
                                                   _g253805253826_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g253804253823_ _g253805253826_)))))
                              (let ()
                                (declare (not safe))
                                (_g253804253823_ _g253805253826_))))))
                  (declare (not safe))
                  (_g253803253957_ _L253355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl253965_
                                                      (lambda (_specializer-lambda-expr253962_
                                                               _specializer-case-lambda-expr253963_)
                                                        (let ((__tmp260954
                                                               (let ((__tmp260955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp260957
                                     (let ((__tmp260958
                                            (let ((__tmp260960
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L253357_ '())))
                                                  (__tmp260959
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr253962_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp260960 __tmp260959))))
                                       (declare (not safe))
                                       (cons __tmp260958 '())))
                                    (__tmp260956
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr253963_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp260957 __tmp260956))))
                         (declare (not safe))
                         (cons '%#let-values __tmp260955))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp260954 _stx252069_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr253967_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr253799_
                                                         _struct-check-all253678_
                                                         _empty252168_)))
                                                     (_specializer-case-lambda-expr253969_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr253960_
                                                         _struct-check-all253678_
                                                         _empty252168_)))
                                                     (_specializer-impl253971_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl253965_
                                                         _specializer-lambda-expr253967_
                                                         _specializer-case-lambda-expr253969_)))
                                                     (_unchecked-specializer-lambda-expr253973_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?252171_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr253799_
                                                             _empty252168_
                                                             _struct-check-all253678_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr253975_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?252171_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr253960_
                                                             _empty252168_
                                                             _struct-check-all253678_))
                                                          '#f))
                                                     (_unchecked-specializer-impl253977_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?252171_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl253965_
                                                             _unchecked-specializer-lambda-expr253973_
                                                             _unchecked-specializer-case-lambda-expr253975_))
                                                          '#f))
                                                     (_specializer-impl253979_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl252075_
                                                         _$t253608_
                                                         _methods-bind253631_
                                                         _slots-bind253654_
                                                         _class-check-bind253676_
                                                         _struct-check-bind253700_
                                                         _specializer-impl253971_
                                                         _lifted-specializer-id253606_
                                                         _unchecked-specializer-impl253977_))))
                                                (let ((__tmp260962
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L252144_)))
                                                      (__tmp260961
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id253599_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp260962
                                                   '" => "
                                                   __tmp260961))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def252076_
                                                   _L252144_
                                                   _specializer-id253599_
                                                   _specializer-impl253979_
                                                   _lifted-specializer-id253606_
                                                   _unchecked-specializer-impl253977_)))))
                                        _hd253288253350_
                                        _hd253285253342_
                                        _hd253282253334_)
                                       (let ()
                                         (declare (not safe))
                                         (_g253264253294_ _g253265253297_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g253264253294_ _g253265253297_)))
                           (let ()
                             (declare (not safe))
                             (_g253264253294_ _g253265253297_)))
                       (let ()
                         (declare (not safe))
                         (_g253264253294_ _g253265253297_)))))
               (let () (declare (not safe)) (_g253264253294_ _g253265253297_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g253264253294_
                                                      _g253265253297_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g253264253294_
                                              _g253265253297_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g253264253294_ _g253265253297_)))))
                           (let ()
                             (declare (not safe))
                             (_g253264253294_ _g253265253297_)))))
                   (let ()
                     (declare (not safe))
                     (_g253264253294_ _g253265253297_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g253264253294_
                                                      _g253265253297_))))))
                                       (declare (not safe))
                                       (_g253263253982_ _L252143_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L252143_))
                                         (let* ((_g253985254038_
                                                 (lambda (_g253986254035_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g253986254035_))))
                                                (_g253984255310_
                                                 (lambda (_g253986254041_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g253986254041_))
                                                       (let ((_e253994254043_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g253986254041_))))
                 (let ((_hd253993254046_
                        (let () (declare (not safe)) (##car _e253994254043_)))
                       (_tl253992254048_
                        (let () (declare (not safe)) (##cdr _e253994254043_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd253993254046_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd253993254046_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl253992254048_))
                               (let ((_e253997254051_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl253992254048_))))
                                 (let ((_hd253996254054_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e253997254051_)))
                                       (_tl253995254056_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e253997254051_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd253996254054_))
                                       (let ((_e254000254059_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd253996254054_))))
                                         (let ((_hd253999254062_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e254000254059_)))
                                               (_tl253998254064_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e254000254059_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd253999254062_))
                                               (let ((_e254003254067_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd253999254062_))))
                                                 (let ((_hd254002254070_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e254003254067_)))
                                                       (_tl254001254072_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e254003254067_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd254002254070_))
                                                       (let ((_e254006254075_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd254002254070_))))
                 (let ((_hd254005254078_
                        (let () (declare (not safe)) (##car _e254006254075_)))
                       (_tl254004254080_
                        (let () (declare (not safe)) (##cdr _e254006254075_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl254004254080_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl254001254072_))
                           (let ((_e254009254083_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl254001254072_))))
                             (let ((_hd254008254086_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e254009254083_)))
                                   (_tl254007254088_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e254009254083_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd254008254086_))
                                   (let ((_e254012254091_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd254008254086_))))
                                     (let ((_hd254011254094_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e254012254091_)))
                                           (_tl254010254096_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e254012254091_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd254011254094_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd254011254094_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl254010254096_))
                                                   (let ((_e254015254099_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl254010254096_))))
                                                     (let ((_hd254014254102_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e254015254099_)))
                                                           (_tl254013254104_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e254015254099_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd254014254102_))
                                                           (let ((_e254018254107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd254014254102_))))
                     (let ((_hd254017254110_
                            (let ()
                              (declare (not safe))
                              (##car _e254018254107_)))
                           (_tl254016254112_
                            (let ()
                              (declare (not safe))
                              (##cdr _e254018254107_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd254017254110_))
                           (let ((_e254021254115_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd254017254110_))))
                             (let ((_hd254020254118_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e254021254115_)))
                                   (_tl254019254120_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e254021254115_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd254020254118_))
                                   (let ((_e254024254123_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd254020254118_))))
                                     (let ((_hd254023254126_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e254024254123_)))
                                           (_tl254022254128_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e254024254123_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl254022254128_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl254019254120_))
                                               (let ((_e254027254131_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl254019254120_))))
                                                 (let ((_hd254026254134_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e254027254131_)))
                                                       (_tl254025254136_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e254027254131_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl254025254136_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl254016254112_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl254013254104_))
                       (let ((_e254030254139_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl254013254104_))))
                         (let ((_hd254029254142_
                                (let ()
                                  (declare (not safe))
                                  (##car _e254030254139_)))
                               (_tl254028254144_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e254030254139_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl254028254144_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl254007254088_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl253998254064_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl253995254056_))
                                           (let ((_e254033254147_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl253995254056_))))
                                             (let ((_hd254032254150_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e254033254147_)))
                                                   (_tl254031254152_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e254033254147_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl254031254152_))
                                                   ((lambda (_L254155_
                                                             _L254156_
                                                             _L254157_
                                                             _L254158_
                                                             _L254159_)
                                                      (let* ((_g254198254260_
                                                              (lambda (_g254199254257_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g254199254257_))))
                     (_g254197255307_
                      (lambda (_g254199254263_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g254199254263_))
                            (let ((_e254207254265_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g254199254263_))))
                              (let ((_hd254206254268_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e254207254265_)))
                                    (_tl254205254270_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e254207254265_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd254206254268_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd254206254268_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl254205254270_))
                                            (let ((_e254210254273_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl254205254270_))))
                                              (let ((_hd254209254276_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e254210254273_)))
                                                    (_tl254208254278_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e254210254273_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl254208254278_))
                                                    (let ((_e254213254281_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl254208254278_))))
                                                      (let ((_hd254212254284_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e254213254281_)))
                    (_tl254211254286_
                     (let () (declare (not safe)) (##cdr _e254213254281_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd254212254284_))
                    (let ((_e254216254289_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd254212254284_))))
                      (let ((_hd254215254292_
                             (let ()
                               (declare (not safe))
                               (##car _e254216254289_)))
                            (_tl254214254294_
                             (let ()
                               (declare (not safe))
                               (##cdr _e254216254289_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd254215254292_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd254215254292_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl254214254294_))
                                    (let ((_e254219254297_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl254214254294_))))
                                      (let ((_hd254218254300_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e254219254297_)))
                                            (_tl254217254302_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e254219254297_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd254218254300_))
                                            (let ((_e254222254305_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd254218254300_))))
                                              (let ((_hd254221254308_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e254222254305_)))
                                                    (_tl254220254310_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e254222254305_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd254221254308_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd254221254308_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl254220254310_))
                                                            (let ((_e254225254313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl254220254310_))))
                      (let ((_hd254224254316_
                             (let ()
                               (declare (not safe))
                               (##car _e254225254313_)))
                            (_tl254223254318_
                             (let ()
                               (declare (not safe))
                               (##cdr _e254225254313_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl254223254318_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl254217254302_))
                                (let ((_e254228254321_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl254217254302_))))
                                  (let ((_hd254227254324_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e254228254321_)))
                                        (_tl254226254326_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e254228254321_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd254227254324_))
                                        (let ((_e254231254329_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd254227254324_))))
                                          (let ((_hd254230254332_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e254231254329_)))
                                                (_tl254229254334_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e254231254329_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd254230254332_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd254230254332_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl254229254334_))
                                                        (let ((_e254234254337_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl254229254334_))))
                  (let ((_hd254233254340_
                         (let () (declare (not safe)) (##car _e254234254337_)))
                        (_tl254232254342_
                         (let ()
                           (declare (not safe))
                           (##cdr _e254234254337_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl254232254342_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl254226254326_))
                            (let ((_e254237254345_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl254226254326_))))
                              (let ((_hd254236254348_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e254237254345_)))
                                    (_tl254235254350_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e254237254345_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd254236254348_))
                                    (let ((_e254240254353_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd254236254348_))))
                                      (let ((_hd254239254356_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e254240254353_)))
                                            (_tl254238254358_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e254240254353_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd254239254356_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd254239254356_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl254238254358_))
                                                    (let ((_e254243254361_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl254238254358_))))
                                                      (let ((_hd254242254364_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e254243254361_)))
                    (_tl254241254366_
                     (let () (declare (not safe)) (##cdr _e254243254361_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl254241254366_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl254235254350_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl254235254350_))
                                  '1)
                            (let ((_g260838_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl254235254350_
                                      '1))))
                              (begin
                                (let ((_g260839_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g260838_)
                                             (##vector-length _g260838_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g260839_ 2)))
                                      (error "Context expects 2 values"
                                             _g260839_)))
                                (let ((_target254244254369_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g260838_ 0)))
                                      (_tl254246254371_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g260838_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl254246254371_))
                                      (let ((_e254255254374_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl254246254371_))))
                                        (let ((_hd254254254377_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e254255254374_)))
                                              (_tl254253254379_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e254255254374_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl254253254379_))
                                              (letrec ((_loop254247254382_
                                                        (lambda (_hd254245254385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref254251254387_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd254245254385_))
                      (let ((_e254248254390_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd254245254385_))))
                        (let ((_lp-hd254249254393_
                               (let ()
                                 (declare (not safe))
                                 (##car _e254248254390_)))
                              (_lp-tl254250254395_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e254248254390_))))
                          (let ((__tmp260925
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd254249254393_
                                         _kw-ref254251254387_))))
                            (declare (not safe))
                            (_loop254247254382_
                             _lp-tl254250254395_
                             __tmp260925))))
                      (let ((_kw-ref254252254398_
                             (reverse _kw-ref254251254387_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl254211254286_))
                            ((lambda (_L254401_
                                      _L254402_
                                      _L254403_
                                      _L254404_
                                      _L254405_)
                               (let* ((_kw-count254456_
                                       (length (let ((__tmp260840
                                                      (lambda (_g254448254451_
                                                               _g254449254453_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g254448254451_
                                                                _g254449254453_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp260840
                                                         '()
                                                         _L254402_))))
                                      (_self-index254458_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count254456_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L254157_))
                                     (let* ((_g254461254475_
                                             (lambda (_g254462254472_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g254462254472_))))
                                            (_g254460254646_
                                             (lambda (_g254462254478_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g254462254478_))
                                                   (let ((_e254467254480_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g254462254478_))))
                                                     (let ((_hd254466254483_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e254467254480_)))
                                                           (_tl254465254485_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e254467254480_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl254465254485_))
                                                           (let ((_e254470254488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl254465254485_))))
                     (let ((_hd254469254491_
                            (let ()
                              (declare (not safe))
                              (##car _e254470254488_)))
                           (_tl254468254493_
                            (let ()
                              (declare (not safe))
                              (##cdr _e254470254488_))))
                       ((lambda (_L254496_ _L254497_)
                          (let ((_self254513_
                                 (list-ref _L254497_ _self-index254458_)))
                            (for-each
                             (lambda (_g254514254516_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g254514254516_
                                  _self254513_
                                  _method-calls252163_
                                  _slot-refs252164_
                                  _class-type-check252165_
                                  _struct-type-check252166_
                                  _struct-type-assert252167_)))
                             _L254496_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?252170_))
                                _stx252069_
                                (let* ((_specializer-id254525_
                                        (let* ((_id254519_
                                                (let ((__tmp260891
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L252144_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp260891
                                                   '"::specialize")))
                                               (_specializer-id254522_
                                                (let ((__tmp260892
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx252069_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id254519_
                                                   __tmp260892))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id254522_))
                                          _specializer-id254522_))
                                       (_lifted-specializer-id254532_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?252172_))
                                            (let* ((_id254527_
                                                    (let ((__tmp260893
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L252144_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp260893
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id254529_
                                                    (let ((__tmp260894
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx252069_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id254527_
                                                       __tmp260894))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id254529_))
                                              _lifted-specializer-id254529_)
                                            '#f))
                                       (_$t254534_
                                        (let ((__tmp260895 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp260895)))
                                       (_methods254536_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls252163_)))
                                       (_$methods254540_
                                        (map (lambda (_id254538_)
                                               (let ((__tmp260896
                                                      (gensym _id254538_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp260896)))
                                             _methods254536_))
                                       (_g260897_
                                        (for-each
                                         (lambda (_g254541254544_
                                                  _g254542254546_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls252163_
                                              _g254541254544_
                                              _g254542254546_)))
                                         _methods254536_
                                         _$methods254540_))
                                       (_methods-bind254557_
                                        (map (lambda (_g254549254552_
                                                      _g254550254554_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind252071_
                                                  _$t254534_
                                                  _g254549254552_
                                                  _g254550254554_)))
                                             _methods254536_
                                             _$methods254540_))
                                       (_slots254559_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs252164_)))
                                       (_$slots254563_
                                        (map (lambda (_id254561_)
                                               (let ((__tmp260898
                                                      (gensym _id254561_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp260898)))
                                             _slots254559_))
                                       (_g260899_
                                        (for-each
                                         (lambda (_g254564254567_
                                                  _g254565254569_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs252164_
                                              _g254564254567_
                                              _g254565254569_)))
                                         _slots254559_
                                         _$slots254563_))
                                       (_slots-bind254580_
                                        (map (lambda (_g254572254575_
                                                      _g254573254577_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind252072_
                                                  _$t254534_
                                                  _g254572254575_
                                                  _g254573254577_)))
                                             _slots254559_
                                             _$slots254563_))
                                       (_class-check254582_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check252165_)))
                                       (_$class-check254585_
                                        (map (lambda (_g260900_)
                                               (let ((__tmp260901
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp260901)))
                                             _class-check254582_))
                                       (_g260902_
                                        (for-each
                                         (lambda (_g254586254589_
                                                  _g254587254591_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _class-type-check252165_
                                              _g254586254589_
                                              _g254587254591_)))
                                         _class-check254582_
                                         _$class-check254585_))
                                       (_class-check-bind254602_
                                        (map (lambda (_g254594254597_
                                                      _g254595254599_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind252073_
                                                  _$t254534_
                                                  _g254594254597_
                                                  _g254595254599_)))
                                             _class-check254582_
                                             _$class-check254585_))
                                       (_struct-check-all254604_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check252166_
                                           _struct-type-assert252167_)))
                                       (_struct-check254606_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all254604_)))
                                       (_$struct-check254609_
                                        (map (lambda (_g260903_)
                                               (let ((__tmp260904
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp260904)))
                                             _struct-check254606_))
                                       (_g260905_
                                        (for-each
                                         (lambda (_g254610254613_
                                                  _g254611254615_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _struct-check-all254604_
                                              _g254610254613_
                                              _g254611254615_)))
                                         _struct-check254606_
                                         _$struct-check254609_))
                                       (_struct-check-bind254626_
                                        (map (lambda (_g254618254621_
                                                      _g254619254623_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind252074_
                                                  _$t254534_
                                                  _g254618254621_
                                                  _g254619254623_)))
                                             _struct-check254606_
                                             _$struct-check254609_))
                                       (_make-specializer-impl254637_
                                        (lambda (_struct-type-check1254628_
                                                 _struct-type-check2254629_)
                                          (let* ((_specializer-body254635_
                                                  (map (lambda (_g254630254632_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g254630254632_
                                                            _self254513_
                                                            _$t254534_
                                                            _method-calls252163_
                                                            _slot-refs252164_
                                                            _class-type-check252165_
                                                            _struct-type-check1254628_
                                                            _struct-type-check2254629_)))
                                                       _L254496_))
                                                 (__tmp260906
                                                  (let ((__tmp260907
                                                         (let ((__tmp260909
                                                                (let ((__tmp260910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp260922
                                      (let ()
                                        (declare (not safe))
                                        (cons _L254159_ '())))
                                     (__tmp260911
                                      (let ((__tmp260912
                                             (let ((__tmp260913
                                                    (let ((__tmp260915
                                                           (let ((__tmp260916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp260921
                                 (let ()
                                   (declare (not safe))
                                   (cons _L254158_ '())))
                                (__tmp260917
                                 (let ((__tmp260918
                                        (let ((__tmp260919
                                               (let ((__tmp260920
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L254497_
                                                              _specializer-body254635_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp260920))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp260919
                                           _L254157_))))
                                   (declare (not safe))
                                   (cons __tmp260918 '()))))
                            (declare (not safe))
                            (cons __tmp260921 __tmp260917))))
                     (declare (not safe))
                     (cons __tmp260916 '())))
                  (__tmp260914
                   (let () (declare (not safe)) (cons _L254156_ '()))))
              (declare (not safe))
              (cons __tmp260915 __tmp260914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp260913))))
                                        (declare (not safe))
                                        (cons __tmp260912 '()))))
                                 (declare (not safe))
                                 (cons __tmp260922 __tmp260911))))
                          (declare (not safe))
                          (cons __tmp260910 '())))
                       (__tmp260908
                        (let () (declare (not safe)) (cons _L254155_ '()))))
                   (declare (not safe))
                   (cons __tmp260909 __tmp260908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp260907))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp260906
                                             _stx252069_))))
                                       (_specializer-impl254639_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl254637_
                                           _struct-check-all254604_
                                           _empty252168_)))
                                       (_unchecked-specializer-impl254641_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?252171_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl254637_
                                               _empty252168_
                                               _struct-check-all254604_))
                                            '#f))
                                       (_specializer-impl254643_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl252075_
                                           _$t254534_
                                           _methods-bind254557_
                                           _slots-bind254580_
                                           _class-check-bind254602_
                                           _struct-check-bind254626_
                                           _specializer-impl254639_
                                           _lifted-specializer-id254532_
                                           _unchecked-specializer-impl254641_))))
                                  (let ((__tmp260924
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L252144_)))
                                        (__tmp260923
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id254525_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp260924
                                     '" => "
                                     __tmp260923))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def252076_
                                     _L252144_
                                     _specializer-id254525_
                                     _specializer-impl254643_
                                     _lifted-specializer-id254532_
                                     _unchecked-specializer-impl254641_))))))
                        _tl254468254493_
                        _hd254469254491_)))
                   (let ()
                     (declare (not safe))
                     (_g254461254475_ _g254462254478_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g254461254475_
                                                      _g254462254478_))))))
                                       (declare (not safe))
                                       (_g254460254646_ _L254157_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L254157_))
                                         (let* ((_g254649254679_
                                                 (lambda (_g254650254676_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g254650254676_))))
                                                (_g254648255304_
                                                 (lambda (_g254650254682_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g254650254682_))
                                                       (let ((_e254656254684_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g254650254682_))))
                 (let ((_hd254655254687_
                        (let () (declare (not safe)) (##car _e254656254684_)))
                       (_tl254654254689_
                        (let () (declare (not safe)) (##cdr _e254656254684_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl254654254689_))
                       (let ((_e254659254692_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl254654254689_))))
                         (let ((_hd254658254695_
                                (let ()
                                  (declare (not safe))
                                  (##car _e254659254692_)))
                               (_tl254657254697_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e254659254692_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd254658254695_))
                               (let ((_e254662254700_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd254658254695_))))
                                 (let ((_hd254661254703_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e254662254700_)))
                                       (_tl254660254705_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e254662254700_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd254661254703_))
                                       (let ((_e254665254708_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd254661254703_))))
                                         (let ((_hd254664254711_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e254665254708_)))
                                               (_tl254663254713_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e254665254708_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd254664254711_))
                                               (let ((_e254668254716_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd254664254711_))))
                                                 (let ((_hd254667254719_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e254668254716_)))
                                                       (_tl254666254721_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e254668254716_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl254666254721_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl254663254713_))
                                                           (let ((_e254671254724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl254663254713_))))
                     (let ((_hd254670254727_
                            (let ()
                              (declare (not safe))
                              (##car _e254671254724_)))
                           (_tl254669254729_
                            (let ()
                              (declare (not safe))
                              (##cdr _e254671254724_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl254669254729_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl254660254705_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl254657254697_))
                                   (let ((_e254674254732_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl254657254697_))))
                                     (let ((_hd254673254735_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e254674254732_)))
                                           (_tl254672254737_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e254674254732_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl254672254737_))
                                           ((lambda (_L254740_
                                                     _L254741_
                                                     _L254742_)
                                              (let* ((_g254765254779_
                                                      (lambda (_g254766254776_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g254766254776_))))
                                                     (_g254764254820_
                                                      (lambda (_g254766254782_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g254766254782_))
                                                            (let ((_e254771254784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g254766254782_))))
                      (let ((_hd254770254787_
                             (let ()
                               (declare (not safe))
                               (##car _e254771254784_)))
                            (_tl254769254789_
                             (let ()
                               (declare (not safe))
                               (##cdr _e254771254784_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl254769254789_))
                            (let ((_e254774254792_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl254769254789_))))
                              (let ((_hd254773254795_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e254774254792_)))
                                    (_tl254772254797_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e254774254792_))))
                                ((lambda (_L254800_ _L254801_)
                                   (let ((_self254814_
                                          (list-ref
                                           _L254801_
                                           _self-index254458_)))
                                     (for-each
                                      (lambda (_g254815254817_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g254815254817_
                                           _self254814_
                                           _method-calls252163_
                                           _slot-refs252164_
                                           _class-type-check252165_
                                           _struct-type-check252166_
                                           _struct-type-assert252167_)))
                                      _L254800_)))
                                 _tl254772254797_
                                 _hd254773254795_)))
                            (let ()
                              (declare (not safe))
                              (_g254765254779_ _g254766254782_)))))
                    (let ()
                      (declare (not safe))
                      (_g254765254779_ _g254766254782_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g254764254820_ _L254741_))
                                              (let* ((_g254823254842_
                                                      (lambda (_g254824254839_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g254824254839_))))
                                                     (_g254822254947_
                                                      (lambda (_g254824254845_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g254824254845_))
                                                            (let ((_e254828254847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g254824254845_))))
                      (let ((_hd254827254850_
                             (let ()
                               (declare (not safe))
                               (##car _e254828254847_)))
                            (_tl254826254852_
                             (let ()
                               (declare (not safe))
                               (##cdr _e254828254847_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl254826254852_))
                            (let ((_g260841_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl254826254852_
                                      '0))))
                              (begin
                                (let ((_g260842_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g260841_)
                                             (##vector-length _g260841_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g260842_ 2)))
                                      (error "Context expects 2 values"
                                             _g260842_)))
                                (let ((_target254829254855_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g260841_ 0)))
                                      (_tl254831254857_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g260841_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl254831254857_))
                                      (letrec ((_loop254832254860_
                                                (lambda (_hd254830254863_
                                                         _clause254836254865_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd254830254863_))
                                                      (let ((_e254833254868_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd254830254863_))))
                (let ((_lp-hd254834254871_
                       (let () (declare (not safe)) (##car _e254833254868_)))
                      (_lp-tl254835254873_
                       (let () (declare (not safe)) (##cdr _e254833254868_))))
                  (let ((__tmp260844
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd254834254871_ _clause254836254865_))))
                    (declare (not safe))
                    (_loop254832254860_ _lp-tl254835254873_ __tmp260844))))
              (let ((_clause254837254876_ (reverse _clause254836254865_)))
                ((lambda (_L254879_)
                   (for-each
                    (lambda (_clause254892_)
                      (let* ((_g254894254905_
                              (lambda (_g254895254902_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g254895254902_))))
                             (_g254893254937_
                              (lambda (_g254895254908_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g254895254908_))
                                    (let ((_e254900254910_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g254895254908_))))
                                      (let ((_hd254899254913_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e254900254910_)))
                                            (_tl254898254915_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e254900254910_))))
                                        ((lambda (_L254918_ _L254919_)
                                           (let ((_self254931_
                                                  (list-ref
                                                   _L254919_
                                                   _self-index254458_)))
                                             (for-each
                                              (lambda (_g254932254934_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g254932254934_
                                                   _self254931_
                                                   _method-calls252163_
                                                   _slot-refs252164_
                                                   _class-type-check252165_
                                                   _struct-type-check252166_
                                                   _struct-type-assert252167_)))
                                              _L254918_)))
                                         _tl254898254915_
                                         _hd254899254913_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g254894254905_ _g254895254908_))))))
                        (declare (not safe))
                        (_g254893254937_ _clause254892_)))
                    (let ((__tmp260843
                           (lambda (_g254939254942_ _g254940254944_)
                             (let ()
                               (declare (not safe))
                               (cons _g254939254942_ _g254940254944_)))))
                      (declare (not safe))
                      (foldr1 __tmp260843 '() _L254879_))))
                 _clause254837254876_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop254832254860_
                                           _target254829254855_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g254823254842_ _g254824254845_))))))
                            (let ()
                              (declare (not safe))
                              (_g254823254842_ _g254824254845_)))))
                    (let ()
                      (declare (not safe))
                      (_g254823254842_ _g254824254845_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g254822254947_ _L254740_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?252170_))
                                                  _stx252069_
                                                  (let* ((_specializer-id254956_
                                                          (let* ((_id254950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp260845
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L252144_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp260845 '"::specialize")))
                         (_specializer-id254953_
                          (let ((__tmp260846
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx252069_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id254950_ __tmp260846))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id254953_))
                    _specializer-id254953_))
                 (_lifted-specializer-id254963_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?252172_))
                      (let* ((_id254958_
                              (let ((__tmp260847
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L252144_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp260847
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id254960_
                              (let ((__tmp260848
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx252069_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id254958_
                                 __tmp260848))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id254960_))
                        _lifted-specializer-id254960_)
                      '#f))
                 (_$t254965_
                  (let ((__tmp260849 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp260849)))
                 (_methods254967_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls252163_)))
                 (_$methods254971_
                  (map (lambda (_id254969_)
                         (let ((__tmp260850 (gensym _id254969_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp260850)))
                       _methods254967_))
                 (_g260851_
                  (for-each
                   (lambda (_g254972254975_ _g254973254977_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls252163_
                        _g254972254975_
                        _g254973254977_)))
                   _methods254967_
                   _$methods254971_))
                 (_methods-bind254988_
                  (map (lambda (_g254980254983_ _g254981254985_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind252071_
                            _$t254965_
                            _g254980254983_
                            _g254981254985_)))
                       _methods254967_
                       _$methods254971_))
                 (_slots254990_
                  (let () (declare (not safe)) (hash-keys _slot-refs252164_)))
                 (_$slots254994_
                  (map (lambda (_id254992_)
                         (let ((__tmp260852 (gensym _id254992_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp260852)))
                       _slots254990_))
                 (_g260853_
                  (for-each
                   (lambda (_g254995254998_ _g254996255000_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs252164_
                        _g254995254998_
                        _g254996255000_)))
                   _slots254990_
                   _$slots254994_))
                 (_slots-bind255011_
                  (map (lambda (_g255003255006_ _g255004255008_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind252072_
                            _$t254965_
                            _g255003255006_
                            _g255004255008_)))
                       _slots254990_
                       _$slots254994_))
                 (_class-check255013_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check252165_)))
                 (_$class-check255016_
                  (map (lambda (_g260854_)
                         (let ((__tmp260855 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp260855)))
                       _class-check255013_))
                 (_g260856_
                  (for-each
                   (lambda (_g255017255020_ _g255018255022_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _class-type-check252165_
                        _g255017255020_
                        _g255018255022_)))
                   _class-check255013_
                   _$class-check255016_))
                 (_class-check-bind255033_
                  (map (lambda (_g255025255028_ _g255026255030_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind252073_
                            _$t254965_
                            _g255025255028_
                            _g255026255030_)))
                       _class-check255013_
                       _$class-check255016_))
                 (_struct-check-all255035_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check252166_
                     _struct-type-assert252167_)))
                 (_struct-check255037_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all255035_)))
                 (_$struct-check255040_
                  (map (lambda (_g260857_)
                         (let ((__tmp260858 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp260858)))
                       _struct-check255037_))
                 (_g260859_
                  (for-each
                   (lambda (_g255041255044_ _g255042255046_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _struct-check-all255035_
                        _g255041255044_
                        _g255042255046_)))
                   _struct-check255037_
                   _$struct-check255040_))
                 (_struct-check-bind255057_
                  (map (lambda (_g255049255052_ _g255050255054_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind252074_
                            _$t254965_
                            _g255049255052_
                            _g255050255054_)))
                       _struct-check255037_
                       _$struct-check255040_))
                 (_make-specializer-lambda-expr255143_
                  (lambda (_struct-type-check1255059_
                           _struct-type-check2255060_)
                    (let* ((_g255062255076_
                            (lambda (_g255063255073_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g255063255073_))))
                           (_g255061255140_
                            (lambda (_g255063255079_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g255063255079_))
                                  (let ((_e255068255081_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g255063255079_))))
                                    (let ((_hd255067255084_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e255068255081_)))
                                          (_tl255066255086_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e255068255081_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl255066255086_))
                                          (let ((_e255071255089_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl255066255086_))))
                                            (let ((_hd255070255092_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e255071255089_)))
                                                  (_tl255069255094_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e255071255089_))))
                                              ((lambda (_L255097_ _L255098_)
                                                 (let* ((_self255131_
                                                         (list-ref
                                                          _L255098_
                                                          _self-index254458_))
                                                        (_body255137_
                                                         (map (lambda (_g255132255134_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g255132255134_
                           _self255131_
                           _$t254965_
                           _method-calls252163_
                           _slot-refs252164_
                           _class-type-check252165_
                           _struct-type-check1255059_
                           _struct-type-check2255060_)))
                      _L255097_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp260860
                                                          (let ((__tmp260861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L255098_ _body255137_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp260861))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp260860
                                                      _L254741_))))
                                               _tl255069255094_
                                               _hd255070255092_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g255062255076_
                                             _g255063255079_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g255062255076_ _g255063255079_))))))
                      (declare (not safe))
                      (_g255061255140_ _L254741_))))
                 (_make-specializer-case-lambda-expr255282_
                  (lambda (_struct-type-check1255145_
                           _struct-type-check2255146_)
                    (let* ((_g255148255167_
                            (lambda (_g255149255164_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g255149255164_))))
                           (_g255147255279_
                            (lambda (_g255149255170_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g255149255170_))
                                  (let ((_e255153255172_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g255149255170_))))
                                    (let ((_hd255152255175_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e255153255172_)))
                                          (_tl255151255177_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e255153255172_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl255151255177_))
                                          (let ((_g260862_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl255151255177_
                                                    '0))))
                                            (begin
                                              (let ((_g260863_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g260862_)
                                                           (##vector-length
                                                            _g260862_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g260863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g260863_)))
                                              (let ((_target255154255180_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g260862_
                                                        0)))
                                                    (_tl255156255182_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g260862_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl255156255182_))
                                                    (letrec ((_loop255157255185_
                                                              (lambda (_hd255155255188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause255161255190_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd255155255188_))
                            (let ((_e255158255193_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd255155255188_))))
                              (let ((_lp-hd255159255196_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e255158255193_)))
                                    (_lp-tl255160255198_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e255158255193_))))
                                (let ((__tmp260866
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd255159255196_
                                               _clause255161255190_))))
                                  (declare (not safe))
                                  (_loop255157255185_
                                   _lp-tl255160255198_
                                   __tmp260866))))
                            (let ((_clause255162255201_
                                   (reverse _clause255161255190_)))
                              ((lambda (_L255204_)
                                 (let* ((_clauses255277_
                                         (map (lambda (_clause255219_)
                                                (let* ((_g255221255232_
                                                        (lambda (_g255222255229_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g255222255229_))))
                                                       (_g255220255267_
                                                        (lambda (_g255222255235_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g255222255235_))
                      (let ((_e255227255237_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g255222255235_))))
                        (let ((_hd255226255240_
                               (let ()
                                 (declare (not safe))
                                 (##car _e255227255237_)))
                              (_tl255225255242_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e255227255237_))))
                          ((lambda (_L255245_ _L255246_)
                             (let* ((_self255258_
                                     (list-ref _L255246_ _self-index254458_))
                                    (_body255264_
                                     (map (lambda (_g255259255261_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g255259255261_
                                               _self255258_
                                               _$t254965_
                                               _method-calls252163_
                                               _slot-refs252164_
                                               _class-type-check252165_
                                               _struct-type-check1255145_
                                               _struct-type-check2255146_)))
                                          _L255245_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L255246_ _body255264_))))
                           _tl255225255242_
                           _hd255226255240_)))
                      (let ()
                        (declare (not safe))
                        (_g255221255232_ _g255222255235_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g255220255267_
                                                   _clause255219_)))
                                              (let ((__tmp260864
                                                     (lambda (_g255269255272_
                                                              _g255270255274_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g255269255272_
                                                               _g255270255274_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp260864
                                                        '()
                                                        _L255204_))))
                                        (__tmp260865
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses255277_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp260865
                                    _L254740_)))
                               _clause255162255201_))))))
              (let ()
                (declare (not safe))
                (_loop255157255185_ _target255154255180_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g255148255167_
                                                       _g255149255170_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g255148255167_
                                             _g255149255170_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g255148255167_ _g255149255170_))))))
                      (declare (not safe))
                      (_g255147255279_ _L254740_))))
                 (_make-specializer-impl255287_
                  (lambda (_specializer-lambda-expr255284_
                           _specializer-case-lambda-expr255285_)
                    (let ((__tmp260867
                           (let ((__tmp260868
                                  (let ((__tmp260870
                                         (let ((__tmp260871
                                                (let ((__tmp260888
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L254159_ '())))
                                                      (__tmp260872
                                                       (let ((__tmp260873
                                                              (let ((__tmp260874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp260876
                                    (let ((__tmp260877
                                           (let ((__tmp260887
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L254158_ '())))
                                                 (__tmp260878
                                                  (let ((__tmp260879
                                                         (let ((__tmp260880
                                                                (let ((__tmp260881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp260883
                                      (let ((__tmp260884
                                             (let ((__tmp260886
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L254742_ '())))
                                                   (__tmp260885
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr255284_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp260886
                                                     __tmp260885))))
                                        (declare (not safe))
                                        (cons __tmp260884 '())))
                                     (__tmp260882
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr255285_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp260883 __tmp260882))))
                          (declare (not safe))
                          (cons '%#let-values __tmp260881))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp260880 _stx252069_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp260879 '()))))
                                             (declare (not safe))
                                             (cons __tmp260887 __tmp260878))))
                                      (declare (not safe))
                                      (cons __tmp260877 '())))
                                   (__tmp260875
                                    (let ()
                                      (declare (not safe))
                                      (cons _L254156_ '()))))
                               (declare (not safe))
                               (cons __tmp260876 __tmp260875))))
                        (declare (not safe))
                        (cons '%#let-values __tmp260874))))
                 (declare (not safe))
                 (cons __tmp260873 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp260888
                                                        __tmp260872))))
                                           (declare (not safe))
                                           (cons __tmp260871 '())))
                                        (__tmp260869
                                         (let ()
                                           (declare (not safe))
                                           (cons _L254155_ '()))))
                                    (declare (not safe))
                                    (cons __tmp260870 __tmp260869))))
                             (declare (not safe))
                             (cons '%#let-values __tmp260868))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp260867 _stx252069_))))
                 (_specializer-lambda-expr255289_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr255143_
                     _struct-check-all255035_
                     _empty252168_)))
                 (_specializer-case-lambda-expr255291_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr255282_
                     _struct-check-all255035_
                     _empty252168_)))
                 (_specializer-impl255293_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl255287_
                     _specializer-lambda-expr255289_
                     _specializer-case-lambda-expr255291_)))
                 (_unchecked-specializer-lambda-expr255295_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?252171_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr255143_
                         _empty252168_
                         _struct-check-all255035_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr255297_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?252171_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr255282_
                         _empty252168_
                         _struct-check-all255035_))
                      '#f))
                 (_unchecked-specializer-impl255299_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?252171_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl255287_
                         _unchecked-specializer-lambda-expr255295_
                         _unchecked-specializer-case-lambda-expr255297_))
                      '#f))
                 (_specializer-impl255301_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl252075_
                     _$t254965_
                     _methods-bind254988_
                     _slots-bind255011_
                     _class-check-bind255033_
                     _struct-check-bind255057_
                     _specializer-impl255293_
                     _lifted-specializer-id254963_
                     _unchecked-specializer-impl255299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp260890
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L252144_)))
                                                          (__tmp260889
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id254956_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp260890
                                                       '" => "
                                                       __tmp260889))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def252076_
                                                       _L252144_
                                                       _specializer-id254956_
                                                       _specializer-impl255301_
                                                       _lifted-specializer-id254963_
                                                       _unchecked-specializer-impl255299_)))))
                                            _hd254673254735_
                                            _hd254670254727_
                                            _hd254667254719_)
                                           (let ()
                                             (declare (not safe))
                                             (_g254649254679_
                                              _g254650254682_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g254649254679_ _g254650254682_)))
                               (let ()
                                 (declare (not safe))
                                 (_g254649254679_ _g254650254682_)))
                           (let ()
                             (declare (not safe))
                             (_g254649254679_ _g254650254682_)))))
                   (let ()
                     (declare (not safe))
                     (_g254649254679_ _g254650254682_)))
               (let ()
                 (declare (not safe))
                 (_g254649254679_ _g254650254682_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g254649254679_
                                                  _g254650254682_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g254649254679_ _g254650254682_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g254649254679_ _g254650254682_)))))
                       (let ()
                         (declare (not safe))
                         (_g254649254679_ _g254650254682_)))))
               (let ()
                 (declare (not safe))
                 (_g254649254679_ _g254650254682_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g254648255304_ _L254157_))
                                         _stx252069_))))
                             _hd254254254377_
                             _kw-ref254252254398_
                             _hd254242254364_
                             _hd254233254340_
                             _hd254224254316_)
                            (let ()
                              (declare (not safe))
                              (_g254198254260_ _g254199254263_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop254247254382_
                                                   _target254244254369_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g254198254260_
                                                 _g254199254263_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g254198254260_ _g254199254263_))))))
                            (let ()
                              (declare (not safe))
                              (_g254198254260_ _g254199254263_)))
                        (let ()
                          (declare (not safe))
                          (_g254198254260_ _g254199254263_)))
                    (let ()
                      (declare (not safe))
                      (_g254198254260_ _g254199254263_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g254198254260_
                                                       _g254199254263_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g254198254260_
                                                   _g254199254263_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g254198254260_
                                               _g254199254263_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g254198254260_ _g254199254263_)))))
                            (let ()
                              (declare (not safe))
                              (_g254198254260_ _g254199254263_)))
                        (let ()
                          (declare (not safe))
                          (_g254198254260_ _g254199254263_)))))
                (let ()
                  (declare (not safe))
                  (_g254198254260_ _g254199254263_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g254198254260_
                                                       _g254199254263_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g254198254260_
                                                   _g254199254263_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g254198254260_ _g254199254263_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g254198254260_ _g254199254263_)))
                            (let ()
                              (declare (not safe))
                              (_g254198254260_ _g254199254263_)))))
                    (let ()
                      (declare (not safe))
                      (_g254198254260_ _g254199254263_)))
                (let ()
                  (declare (not safe))
                  (_g254198254260_ _g254199254263_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g254198254260_
                                                       _g254199254263_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g254198254260_
                                               _g254199254263_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g254198254260_ _g254199254263_)))
                                (let ()
                                  (declare (not safe))
                                  (_g254198254260_ _g254199254263_)))
                            (let ()
                              (declare (not safe))
                              (_g254198254260_ _g254199254263_)))))
                    (let ()
                      (declare (not safe))
                      (_g254198254260_ _g254199254263_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g254198254260_
                                                       _g254199254263_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g254198254260_
                                               _g254199254263_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g254198254260_ _g254199254263_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g254198254260_ _g254199254263_)))))
                            (let ()
                              (declare (not safe))
                              (_g254198254260_ _g254199254263_))))))
                (declare (not safe))
                (_g254197255307_ _L254156_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd254032254150_
                                                    _hd254029254142_
                                                    _hd254026254134_
                                                    _hd254023254126_
                                                    _hd254005254078_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g253985254038_
                                                      _g253986254041_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g253985254038_
                                              _g253986254041_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g253985254038_ _g253986254041_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g253985254038_ _g253986254041_)))
                               (let ()
                                 (declare (not safe))
                                 (_g253985254038_ _g253986254041_)))))
                       (let ()
                         (declare (not safe))
                         (_g253985254038_ _g253986254041_)))
                   (let ()
                     (declare (not safe))
                     (_g253985254038_ _g253986254041_)))
               (let ()
                 (declare (not safe))
                 (_g253985254038_ _g253986254041_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g253985254038_
                                                  _g253986254041_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g253985254038_
                                              _g253986254041_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g253985254038_ _g253986254041_)))))
                           (let ()
                             (declare (not safe))
                             (_g253985254038_ _g253986254041_)))))
                   (let ()
                     (declare (not safe))
                     (_g253985254038_ _g253986254041_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g253985254038_
                                                      _g253986254041_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g253985254038_
                                                  _g253986254041_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g253985254038_
                                              _g253986254041_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g253985254038_ _g253986254041_)))))
                           (let ()
                             (declare (not safe))
                             (_g253985254038_ _g253986254041_)))
                       (let ()
                         (declare (not safe))
                         (_g253985254038_ _g253986254041_)))))
               (let ()
                 (declare (not safe))
                 (_g253985254038_ _g253986254041_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g253985254038_
                                                  _g253986254041_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g253985254038_ _g253986254041_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g253985254038_ _g253986254041_)))
                           (let ()
                             (declare (not safe))
                             (_g253985254038_ _g253986254041_)))
                       (let ()
                         (declare (not safe))
                         (_g253985254038_ _g253986254041_)))))
               (let ()
                 (declare (not safe))
                 (_g253985254038_ _g253986254041_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g253984255310_ _L252143_))
                                         _stx252069_))))))))
                  (___kont259616259617_ (lambda () _stx252069_)))
              (let ((___match259645259646_
                     (lambda (_e252085252111_
                              _hd252084252114_
                              _tl252083252116_
                              _e252088252119_
                              _hd252087252122_
                              _tl252086252124_
                              _e252091252127_
                              _hd252090252130_
                              _tl252089252132_
                              _e252094252135_
                              _hd252093252138_
                              _tl252092252140_)
                       (let ((_L252143_ _hd252093252138_)
                             (_L252144_ _hd252090252130_))
                         (if (let ((__tmp261007
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L252144_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp261007))
                             (___kont259614259615_ _L252143_ _L252144_)
                             (___kont259616259617_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx259612259613_))
                    (let ((_e252085252111_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx259612259613_))))
                      (let ((_tl252083252116_
                             (let ()
                               (declare (not safe))
                               (##cdr _e252085252111_)))
                            (_hd252084252114_
                             (let ()
                               (declare (not safe))
                               (##car _e252085252111_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl252083252116_))
                            (let ((_e252088252119_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl252083252116_))))
                              (let ((_tl252086252124_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e252088252119_)))
                                    (_hd252087252122_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e252088252119_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd252087252122_))
                                    (let ((_e252091252127_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd252087252122_))))
                                      (let ((_tl252089252132_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e252091252127_)))
                                            (_hd252090252130_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e252091252127_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl252089252132_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl252086252124_))
                                                (let ((_e252094252135_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl252086252124_))))
                                                  (let ((_tl252092252140_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e252094252135_)))
                                                        (_hd252093252138_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e252094252135_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl252092252140_))
                                                        (___match259645259646_
                                                         _e252085252111_
                                                         _hd252084252114_
                                                         _tl252083252116_
                                                         _e252088252119_
                                                         _hd252087252122_
                                                         _tl252086252124_
                                                         _e252091252127_
                                                         _hd252090252130_
                                                         _tl252089252132_
                                                         _e252094252135_
                                                         _hd252093252138_
                                                         _tl252092252140_)
                                                        (___kont259616259617_))))
                                                (___kont259616259617_))
                                            (___kont259616259617_))))
                                    (___kont259616259617_))))
                            (___kont259616259617_))))
                    (___kont259616259617_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx251045_
               _self251046_
               _methods251047_
               _slots251048_
               _class-check251049_
               _struct-check251050_
               _struct-assert251051_)
        (let* ((___stx259648259649_ _stx251045_)
               (_g251059251281_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx259648259649_)))))
          (let ((___kont259650259651_
                 (lambda (_L252018_ _L252019_ _L252020_ _L252021_)
                   (let ((__tmp261008
                          (let () (declare (not safe)) (gx#stx-e _L252019_))))
                     (declare (not safe))
                     (hash-put! _methods251047_ __tmp261008 '#t))
                   (for-each
                    (lambda (_g252054252056_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g252054252056_
                         _self251046_
                         _methods251047_
                         _slots251048_
                         _class-check251049_
                         _struct-check251050_
                         _struct-assert251051_)))
                    (let ((__tmp261009
                           (lambda (_g252058252061_ _g252059252063_)
                             (let ()
                               (declare (not safe))
                               (cons _g252058252061_ _g252059252063_)))))
                      (declare (not safe))
                      (foldr1 __tmp261009 '() _L252018_)))))
                (___kont259654259655_
                 (lambda (_L251853_ _L251854_ _L251855_ _L251856_ _L251857_)
                   (let ((__tmp261010
                          (let () (declare (not safe)) (gx#stx-e _L251854_))))
                     (declare (not safe))
                     (hash-put! _methods251047_ __tmp261010 '#t))
                   (for-each
                    (lambda (_g251897251899_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g251897251899_
                         _self251046_
                         _methods251047_
                         _slots251048_
                         _class-check251049_
                         _struct-check251050_
                         _struct-assert251051_)))
                    (let ((__tmp261011
                           (lambda (_g251901251904_ _g251902251906_)
                             (let ()
                               (declare (not safe))
                               (cons _g251901251904_ _g251902251906_)))))
                      (declare (not safe))
                      (foldr1 __tmp261011 '() _L251853_)))))
                (___kont259658259659_
                 (lambda (_L251686_ _L251687_ _L251688_)
                   (let ((__tmp261012
                          (let () (declare (not safe)) (gx#stx-e _L251686_))))
                     (declare (not safe))
                     (hash-put! _slots251048_ __tmp261012 '#t))))
                (___kont259660259661_
                 (lambda (_L251563_ _L251564_ _L251565_ _L251566_)
                   (let ((__tmp261013
                          (let () (declare (not safe)) (gx#stx-e _L251564_))))
                     (declare (not safe))
                     (hash-put! _slots251048_ __tmp261013 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L251563_
                      _self251046_
                      _methods251047_
                      _slots251048_
                      _class-check251049_
                      _struct-check251050_
                      _struct-assert251051_))))
                (___kont259662259663_
                 (lambda (_L251447_ _L251448_)
                   (let ((__tmp261014
                          (##structure-ref
                           (let ((__tmp261015
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L251448_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp261015))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (hash-put! _slots251048_ __tmp261014 '#t))))
                (___kont259664259665_
                 (lambda (_L251357_ _L251358_ _L251359_)
                   (let ((__tmp261016
                          (##structure-ref
                           (let ((__tmp261017
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L251359_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp261017))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (hash-put! _slots251048_ __tmp261016 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L251357_
                      _self251046_
                      _methods251047_
                      _slots251048_
                      _class-check251049_
                      _struct-check251050_
                      _struct-assert251051_))))
                (___kont259666259667_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx251045_
                      _self251046_
                      _methods251047_
                      _slots251048_
                      _class-check251049_
                      _struct-check251050_
                      _struct-assert251051_)))))
            (let* ((___match260147260148_
                    (lambda (_e251255251293_
                             _hd251254251296_
                             _tl251253251298_
                             _e251258251301_
                             _hd251257251304_
                             _tl251256251306_
                             _e251261251309_
                             _hd251260251312_
                             _tl251259251314_
                             _e251264251317_
                             _hd251263251320_
                             _tl251262251322_
                             _e251267251325_
                             _hd251266251328_
                             _tl251265251330_
                             _e251270251333_
                             _hd251269251336_
                             _tl251268251338_
                             _e251273251341_
                             _hd251272251344_
                             _tl251271251346_
                             _e251276251349_
                             _hd251275251352_
                             _tl251274251354_)
                      (let ((_L251357_ _hd251275251352_)
                            (_L251358_ _hd251272251344_)
                            (_L251359_ _hd251263251320_))
                        (if (and (let ((__tmp261018
                                        (let ((__tmp261019
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L251359_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp261019))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp261018
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L251358_
                                    _self251046_)))
                            (___kont259664259665_
                             _L251357_
                             _L251358_
                             _L251359_)
                            (___kont259666259667_)))))
                   (___match260145260146_
                    (lambda (_e251255251293_
                             _hd251254251296_
                             _tl251253251298_
                             _e251258251301_
                             _hd251257251304_
                             _tl251256251306_
                             _e251261251309_
                             _hd251260251312_
                             _tl251259251314_
                             _e251264251317_
                             _hd251263251320_
                             _tl251262251322_
                             _e251267251325_
                             _hd251266251328_
                             _tl251265251330_
                             _e251270251333_
                             _hd251269251336_
                             _tl251268251338_
                             _e251273251341_
                             _hd251272251344_
                             _tl251271251346_
                             _e251276251349_
                             _hd251275251352_
                             _tl251274251354_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl251274251354_))
                          (___match260147260148_
                           _e251255251293_
                           _hd251254251296_
                           _tl251253251298_
                           _e251258251301_
                           _hd251257251304_
                           _tl251256251306_
                           _e251261251309_
                           _hd251260251312_
                           _tl251259251314_
                           _e251264251317_
                           _hd251263251320_
                           _tl251262251322_
                           _e251267251325_
                           _hd251266251328_
                           _tl251265251330_
                           _e251270251333_
                           _hd251269251336_
                           _tl251268251338_
                           _e251273251341_
                           _hd251272251344_
                           _tl251271251346_
                           _e251276251349_
                           _hd251275251352_
                           _tl251274251354_)
                          (___kont259666259667_))))
                   (___match260139260140_
                    (lambda (_e251255251293_
                             _hd251254251296_
                             _tl251253251298_
                             _e251258251301_
                             _hd251257251304_
                             _tl251256251306_
                             _e251261251309_
                             _hd251260251312_
                             _tl251259251314_
                             _e251264251317_
                             _hd251263251320_
                             _tl251262251322_
                             _e251267251325_
                             _hd251266251328_
                             _tl251265251330_
                             _e251270251333_
                             _hd251269251336_
                             _tl251268251338_
                             _e251273251341_
                             _hd251272251344_
                             _tl251271251346_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl251265251330_))
                          (let ((_e251276251349_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl251265251330_))))
                            (let ((_tl251274251354_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e251276251349_)))
                                  (_hd251275251352_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e251276251349_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl251274251354_))
                                  (___match260147260148_
                                   _e251255251293_
                                   _hd251254251296_
                                   _tl251253251298_
                                   _e251258251301_
                                   _hd251257251304_
                                   _tl251256251306_
                                   _e251261251309_
                                   _hd251260251312_
                                   _tl251259251314_
                                   _e251264251317_
                                   _hd251263251320_
                                   _tl251262251322_
                                   _e251267251325_
                                   _hd251266251328_
                                   _tl251265251330_
                                   _e251270251333_
                                   _hd251269251336_
                                   _tl251268251338_
                                   _e251273251341_
                                   _hd251272251344_
                                   _tl251271251346_
                                   _e251276251349_
                                   _hd251275251352_
                                   _tl251274251354_)
                                  (___kont259666259667_))))
                          (___kont259666259667_))))
                   (___match260085260086_
                    (lambda (_e251231251391_
                             _hd251230251394_
                             _tl251229251396_
                             _e251234251399_
                             _hd251233251402_
                             _tl251232251404_
                             _e251237251407_
                             _hd251236251410_
                             _tl251235251412_
                             _e251240251415_
                             _hd251239251418_
                             _tl251238251420_
                             _e251243251423_
                             _hd251242251426_
                             _tl251241251428_
                             _e251246251431_
                             _hd251245251434_
                             _tl251244251436_
                             _e251249251439_
                             _hd251248251442_
                             _tl251247251444_)
                      (let ((_L251447_ _hd251248251442_)
                            (_L251448_ _hd251239251418_))
                        (if (and (let ((__tmp261020
                                        (let ((__tmp261021
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L251448_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp261021))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp261020
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L251447_
                                    _self251046_)))
                            (___kont259662259663_ _L251447_ _L251448_)
                            (___kont259666259667_)))))
                   (___match260083260084_
                    (lambda (_e251231251391_
                             _hd251230251394_
                             _tl251229251396_
                             _e251234251399_
                             _hd251233251402_
                             _tl251232251404_
                             _e251237251407_
                             _hd251236251410_
                             _tl251235251412_
                             _e251240251415_
                             _hd251239251418_
                             _tl251238251420_
                             _e251243251423_
                             _hd251242251426_
                             _tl251241251428_
                             _e251246251431_
                             _hd251245251434_
                             _tl251244251436_
                             _e251249251439_
                             _hd251248251442_
                             _tl251247251444_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl251241251428_))
                          (___match260085260086_
                           _e251231251391_
                           _hd251230251394_
                           _tl251229251396_
                           _e251234251399_
                           _hd251233251402_
                           _tl251232251404_
                           _e251237251407_
                           _hd251236251410_
                           _tl251235251412_
                           _e251240251415_
                           _hd251239251418_
                           _tl251238251420_
                           _e251243251423_
                           _hd251242251426_
                           _tl251241251428_
                           _e251246251431_
                           _hd251245251434_
                           _tl251244251436_
                           _e251249251439_
                           _hd251248251442_
                           _tl251247251444_)
                          (___match260139260140_
                           _e251231251391_
                           _hd251230251394_
                           _tl251229251396_
                           _e251234251399_
                           _hd251233251402_
                           _tl251232251404_
                           _e251237251407_
                           _hd251236251410_
                           _tl251235251412_
                           _e251240251415_
                           _hd251239251418_
                           _tl251238251420_
                           _e251243251423_
                           _hd251242251426_
                           _tl251241251428_
                           _e251246251431_
                           _hd251245251434_
                           _tl251244251436_
                           _e251249251439_
                           _hd251248251442_
                           _tl251247251444_))))
                   (___match260029260030_
                    (lambda (_e251196251475_
                             _hd251195251478_
                             _tl251194251480_
                             _e251199251483_
                             _hd251198251486_
                             _tl251197251488_
                             _e251202251491_
                             _hd251201251494_
                             _tl251200251496_
                             _e251205251499_
                             _hd251204251502_
                             _tl251203251504_
                             _e251208251507_
                             _hd251207251510_
                             _tl251206251512_
                             _e251211251515_
                             _hd251210251518_
                             _tl251209251520_
                             _e251214251523_
                             _hd251213251526_
                             _tl251212251528_
                             _e251217251531_
                             _hd251216251534_
                             _tl251215251536_
                             _e251220251539_
                             _hd251219251542_
                             _tl251218251544_
                             _e251223251547_
                             _hd251222251550_
                             _tl251221251552_
                             _e251226251555_
                             _hd251225251558_
                             _tl251224251560_)
                      (let ((_L251563_ _hd251225251558_)
                            (_L251564_ _hd251222251550_)
                            (_L251565_ _hd251213251526_)
                            (_L251566_ _hd251204251502_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L251566_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L251566_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L251565_
                                    _self251046_)))
                            (___kont259660259661_
                             _L251563_
                             _L251564_
                             _L251565_
                             _L251566_)
                            (___kont259666259667_)))))
                   (___match260021260022_
                    (lambda (_e251196251475_
                             _hd251195251478_
                             _tl251194251480_
                             _e251199251483_
                             _hd251198251486_
                             _tl251197251488_
                             _e251202251491_
                             _hd251201251494_
                             _tl251200251496_
                             _e251205251499_
                             _hd251204251502_
                             _tl251203251504_
                             _e251208251507_
                             _hd251207251510_
                             _tl251206251512_
                             _e251211251515_
                             _hd251210251518_
                             _tl251209251520_
                             _e251214251523_
                             _hd251213251526_
                             _tl251212251528_
                             _e251217251531_
                             _hd251216251534_
                             _tl251215251536_
                             _e251220251539_
                             _hd251219251542_
                             _tl251218251544_
                             _e251223251547_
                             _hd251222251550_
                             _tl251221251552_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl251215251536_))
                          (let ((_e251226251555_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl251215251536_))))
                            (let ((_tl251224251560_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e251226251555_)))
                                  (_hd251225251558_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e251226251555_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl251224251560_))
                                  (___match260029260030_
                                   _e251196251475_
                                   _hd251195251478_
                                   _tl251194251480_
                                   _e251199251483_
                                   _hd251198251486_
                                   _tl251197251488_
                                   _e251202251491_
                                   _hd251201251494_
                                   _tl251200251496_
                                   _e251205251499_
                                   _hd251204251502_
                                   _tl251203251504_
                                   _e251208251507_
                                   _hd251207251510_
                                   _tl251206251512_
                                   _e251211251515_
                                   _hd251210251518_
                                   _tl251209251520_
                                   _e251214251523_
                                   _hd251213251526_
                                   _tl251212251528_
                                   _e251217251531_
                                   _hd251216251534_
                                   _tl251215251536_
                                   _e251220251539_
                                   _hd251219251542_
                                   _tl251218251544_
                                   _e251223251547_
                                   _hd251222251550_
                                   _tl251221251552_
                                   _e251226251555_
                                   _hd251225251558_
                                   _tl251224251560_)
                                  (___kont259666259667_))))
                          (___match260145260146_
                           _e251196251475_
                           _hd251195251478_
                           _tl251194251480_
                           _e251199251483_
                           _hd251198251486_
                           _tl251197251488_
                           _e251202251491_
                           _hd251201251494_
                           _tl251200251496_
                           _e251205251499_
                           _hd251204251502_
                           _tl251203251504_
                           _e251208251507_
                           _hd251207251510_
                           _tl251206251512_
                           _e251211251515_
                           _hd251210251518_
                           _tl251209251520_
                           _e251214251523_
                           _hd251213251526_
                           _tl251212251528_
                           _e251217251531_
                           _hd251216251534_
                           _tl251215251536_))))
                   (___match259943259944_
                    (lambda (_e251162251606_
                             _hd251161251609_
                             _tl251160251611_
                             _e251165251614_
                             _hd251164251617_
                             _tl251163251619_
                             _e251168251622_
                             _hd251167251625_
                             _tl251166251627_
                             _e251171251630_
                             _hd251170251633_
                             _tl251169251635_
                             _e251174251638_
                             _hd251173251641_
                             _tl251172251643_
                             _e251177251646_
                             _hd251176251649_
                             _tl251175251651_
                             _e251180251654_
                             _hd251179251657_
                             _tl251178251659_
                             _e251183251662_
                             _hd251182251665_
                             _tl251181251667_
                             _e251186251670_
                             _hd251185251673_
                             _tl251184251675_
                             _e251189251678_
                             _hd251188251681_
                             _tl251187251683_)
                      (let ((_L251686_ _hd251188251681_)
                            (_L251687_ _hd251179251657_)
                            (_L251688_ _hd251170251633_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L251688_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L251688_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L251687_
                                    _self251046_)))
                            (___kont259658259659_
                             _L251686_
                             _L251687_
                             _L251688_)
                            (___match260147260148_
                             _e251162251606_
                             _hd251161251609_
                             _tl251160251611_
                             _e251165251614_
                             _hd251164251617_
                             _tl251163251619_
                             _e251168251622_
                             _hd251167251625_
                             _tl251166251627_
                             _e251171251630_
                             _hd251170251633_
                             _tl251169251635_
                             _e251174251638_
                             _hd251173251641_
                             _tl251172251643_
                             _e251177251646_
                             _hd251176251649_
                             _tl251175251651_
                             _e251180251654_
                             _hd251179251657_
                             _tl251178251659_
                             _e251183251662_
                             _hd251182251665_
                             _tl251181251667_)))))
                   (___match259941259942_
                    (lambda (_e251162251606_
                             _hd251161251609_
                             _tl251160251611_
                             _e251165251614_
                             _hd251164251617_
                             _tl251163251619_
                             _e251168251622_
                             _hd251167251625_
                             _tl251166251627_
                             _e251171251630_
                             _hd251170251633_
                             _tl251169251635_
                             _e251174251638_
                             _hd251173251641_
                             _tl251172251643_
                             _e251177251646_
                             _hd251176251649_
                             _tl251175251651_
                             _e251180251654_
                             _hd251179251657_
                             _tl251178251659_
                             _e251183251662_
                             _hd251182251665_
                             _tl251181251667_
                             _e251186251670_
                             _hd251185251673_
                             _tl251184251675_
                             _e251189251678_
                             _hd251188251681_
                             _tl251187251683_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl251181251667_))
                          (___match259943259944_
                           _e251162251606_
                           _hd251161251609_
                           _tl251160251611_
                           _e251165251614_
                           _hd251164251617_
                           _tl251163251619_
                           _e251168251622_
                           _hd251167251625_
                           _tl251166251627_
                           _e251171251630_
                           _hd251170251633_
                           _tl251169251635_
                           _e251174251638_
                           _hd251173251641_
                           _tl251172251643_
                           _e251177251646_
                           _hd251176251649_
                           _tl251175251651_
                           _e251180251654_
                           _hd251179251657_
                           _tl251178251659_
                           _e251183251662_
                           _hd251182251665_
                           _tl251181251667_
                           _e251186251670_
                           _hd251185251673_
                           _tl251184251675_
                           _e251189251678_
                           _hd251188251681_
                           _tl251187251683_)
                          (___match260021260022_
                           _e251162251606_
                           _hd251161251609_
                           _tl251160251611_
                           _e251165251614_
                           _hd251164251617_
                           _tl251163251619_
                           _e251168251622_
                           _hd251167251625_
                           _tl251166251627_
                           _e251171251630_
                           _hd251170251633_
                           _tl251169251635_
                           _e251174251638_
                           _hd251173251641_
                           _tl251172251643_
                           _e251177251646_
                           _hd251176251649_
                           _tl251175251651_
                           _e251180251654_
                           _hd251179251657_
                           _tl251178251659_
                           _e251183251662_
                           _hd251182251665_
                           _tl251181251667_
                           _e251186251670_
                           _hd251185251673_
                           _tl251184251675_
                           _e251189251678_
                           _hd251188251681_
                           _tl251187251683_))))
                   (___match259931259932_
                    (lambda (_e251162251606_
                             _hd251161251609_
                             _tl251160251611_
                             _e251165251614_
                             _hd251164251617_
                             _tl251163251619_
                             _e251168251622_
                             _hd251167251625_
                             _tl251166251627_
                             _e251171251630_
                             _hd251170251633_
                             _tl251169251635_
                             _e251174251638_
                             _hd251173251641_
                             _tl251172251643_
                             _e251177251646_
                             _hd251176251649_
                             _tl251175251651_
                             _e251180251654_
                             _hd251179251657_
                             _tl251178251659_
                             _e251183251662_
                             _hd251182251665_
                             _tl251181251667_
                             _e251186251670_
                             _hd251185251673_
                             _tl251184251675_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd251185251673_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl251184251675_))
                              (let ((_e251189251678_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl251184251675_))))
                                (let ((_tl251187251683_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e251189251678_)))
                                      (_hd251188251681_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e251189251678_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl251187251683_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl251181251667_))
                                          (___match259943259944_
                                           _e251162251606_
                                           _hd251161251609_
                                           _tl251160251611_
                                           _e251165251614_
                                           _hd251164251617_
                                           _tl251163251619_
                                           _e251168251622_
                                           _hd251167251625_
                                           _tl251166251627_
                                           _e251171251630_
                                           _hd251170251633_
                                           _tl251169251635_
                                           _e251174251638_
                                           _hd251173251641_
                                           _tl251172251643_
                                           _e251177251646_
                                           _hd251176251649_
                                           _tl251175251651_
                                           _e251180251654_
                                           _hd251179251657_
                                           _tl251178251659_
                                           _e251183251662_
                                           _hd251182251665_
                                           _tl251181251667_
                                           _e251186251670_
                                           _hd251185251673_
                                           _tl251184251675_
                                           _e251189251678_
                                           _hd251188251681_
                                           _tl251187251683_)
                                          (___match260021260022_
                                           _e251162251606_
                                           _hd251161251609_
                                           _tl251160251611_
                                           _e251165251614_
                                           _hd251164251617_
                                           _tl251163251619_
                                           _e251168251622_
                                           _hd251167251625_
                                           _tl251166251627_
                                           _e251171251630_
                                           _hd251170251633_
                                           _tl251169251635_
                                           _e251174251638_
                                           _hd251173251641_
                                           _tl251172251643_
                                           _e251177251646_
                                           _hd251176251649_
                                           _tl251175251651_
                                           _e251180251654_
                                           _hd251179251657_
                                           _tl251178251659_
                                           _e251183251662_
                                           _hd251182251665_
                                           _tl251181251667_
                                           _e251186251670_
                                           _hd251185251673_
                                           _tl251184251675_
                                           _e251189251678_
                                           _hd251188251681_
                                           _tl251187251683_))
                                      (___match260145260146_
                                       _e251162251606_
                                       _hd251161251609_
                                       _tl251160251611_
                                       _e251165251614_
                                       _hd251164251617_
                                       _tl251163251619_
                                       _e251168251622_
                                       _hd251167251625_
                                       _tl251166251627_
                                       _e251171251630_
                                       _hd251170251633_
                                       _tl251169251635_
                                       _e251174251638_
                                       _hd251173251641_
                                       _tl251172251643_
                                       _e251177251646_
                                       _hd251176251649_
                                       _tl251175251651_
                                       _e251180251654_
                                       _hd251179251657_
                                       _tl251178251659_
                                       _e251183251662_
                                       _hd251182251665_
                                       _tl251181251667_))))
                              (___match260145260146_
                               _e251162251606_
                               _hd251161251609_
                               _tl251160251611_
                               _e251165251614_
                               _hd251164251617_
                               _tl251163251619_
                               _e251168251622_
                               _hd251167251625_
                               _tl251166251627_
                               _e251171251630_
                               _hd251170251633_
                               _tl251169251635_
                               _e251174251638_
                               _hd251173251641_
                               _tl251172251643_
                               _e251177251646_
                               _hd251176251649_
                               _tl251175251651_
                               _e251180251654_
                               _hd251179251657_
                               _tl251178251659_
                               _e251183251662_
                               _hd251182251665_
                               _tl251181251667_))
                          (___match260145260146_
                           _e251162251606_
                           _hd251161251609_
                           _tl251160251611_
                           _e251165251614_
                           _hd251164251617_
                           _tl251163251619_
                           _e251168251622_
                           _hd251167251625_
                           _tl251166251627_
                           _e251171251630_
                           _hd251170251633_
                           _tl251169251635_
                           _e251174251638_
                           _hd251173251641_
                           _tl251172251643_
                           _e251177251646_
                           _hd251176251649_
                           _tl251175251651_
                           _e251180251654_
                           _hd251179251657_
                           _tl251178251659_
                           _e251183251662_
                           _hd251182251665_
                           _tl251181251667_))))
                   (___match259863259864_
                    (lambda (_e251111251725_
                             _hd251110251728_
                             _tl251109251730_
                             _e251114251733_
                             _hd251113251736_
                             _tl251112251738_
                             _e251117251741_
                             _hd251116251744_
                             _tl251115251746_
                             _e251120251749_
                             _hd251119251752_
                             _tl251118251754_
                             _e251123251757_
                             _hd251122251760_
                             _tl251121251762_
                             _e251126251765_
                             _hd251125251768_
                             _tl251124251770_
                             _e251129251773_
                             _hd251128251776_
                             _tl251127251778_
                             _e251132251781_
                             _hd251131251784_
                             _tl251130251786_
                             _e251135251789_
                             _hd251134251792_
                             _tl251133251794_
                             _e251138251797_
                             _hd251137251800_
                             _tl251136251802_
                             _e251141251805_
                             _hd251140251808_
                             _tl251139251810_
                             _e251144251813_
                             _hd251143251816_
                             _tl251142251818_
                             _e251147251821_
                             _hd251146251824_
                             _tl251145251826_
                             ___splice259656259657_
                             _target251148251829_
                             _tl251150251831_)
                      (letrec ((_loop251151251834_
                                (lambda (_hd251149251837_ _args251155251839_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd251149251837_))
                                      (let ((_e251152251842_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd251149251837_))))
                                        (let ((_lp-tl251154251847_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e251152251842_)))
                                              (_lp-hd251153251845_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e251152251842_))))
                                          (let ((__tmp261022
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd251153251845_
                                                         _args251155251839_))))
                                            (declare (not safe))
                                            (_loop251151251834_
                                             _lp-tl251154251847_
                                             __tmp261022))))
                                      (let ((_args251156251850_
                                             (reverse _args251155251839_)))
                                        (let ((_L251853_ _args251156251850_)
                                              (_L251854_ _hd251146251824_)
                                              (_L251855_ _hd251137251800_)
                                              (_L251856_ _hd251128251776_)
                                              (_L251857_ _hd251119251752_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L251857_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L251856_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L251855_
                                                      _self251046_)))
                                              (___kont259654259655_
                                               _L251853_
                                               _L251854_
                                               _L251855_
                                               _L251856_
                                               _L251857_)
                                              (___kont259666259667_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop251151251834_ _target251148251829_ '())))))
                   (___match259821259822_
                    (lambda (_e251111251725_
                             _hd251110251728_
                             _tl251109251730_
                             _e251114251733_
                             _hd251113251736_
                             _tl251112251738_
                             _e251117251741_
                             _hd251116251744_
                             _tl251115251746_
                             _e251120251749_
                             _hd251119251752_
                             _tl251118251754_
                             _e251123251757_
                             _hd251122251760_
                             _tl251121251762_
                             _e251126251765_
                             _hd251125251768_
                             _tl251124251770_
                             _e251129251773_
                             _hd251128251776_
                             _tl251127251778_
                             _e251132251781_
                             _hd251131251784_
                             _tl251130251786_
                             _e251135251789_
                             _hd251134251792_
                             _tl251133251794_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd251134251792_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl251133251794_))
                              (let ((_e251138251797_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl251133251794_))))
                                (let ((_tl251136251802_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e251138251797_)))
                                      (_hd251137251800_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e251138251797_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl251136251802_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl251130251786_))
                                          (let ((_e251141251805_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl251130251786_))))
                                            (let ((_tl251139251810_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e251141251805_)))
                                                  (_hd251140251808_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e251141251805_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd251140251808_))
                                                  (let ((_e251144251813_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd251140251808_))))
                                                    (let ((_tl251142251818_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e251144251813_)))
                                                          (_hd251143251816_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e251144251813_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd251143251816_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd251143251816_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl251142251818_))
                          (let ((_e251147251821_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl251142251818_))))
                            (let ((_tl251145251826_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e251147251821_)))
                                  (_hd251146251824_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e251147251821_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl251145251826_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl251139251810_))
                                      (let ((___splice259656259657_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl251139251810_
                                                '0))))
                                        (let ((_tl251150251831_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice259656259657_
                                                  '1)))
                                              (_target251148251829_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice259656259657_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl251150251831_))
                                              (___match259863259864_
                                               _e251111251725_
                                               _hd251110251728_
                                               _tl251109251730_
                                               _e251114251733_
                                               _hd251113251736_
                                               _tl251112251738_
                                               _e251117251741_
                                               _hd251116251744_
                                               _tl251115251746_
                                               _e251120251749_
                                               _hd251119251752_
                                               _tl251118251754_
                                               _e251123251757_
                                               _hd251122251760_
                                               _tl251121251762_
                                               _e251126251765_
                                               _hd251125251768_
                                               _tl251124251770_
                                               _e251129251773_
                                               _hd251128251776_
                                               _tl251127251778_
                                               _e251132251781_
                                               _hd251131251784_
                                               _tl251130251786_
                                               _e251135251789_
                                               _hd251134251792_
                                               _tl251133251794_
                                               _e251138251797_
                                               _hd251137251800_
                                               _tl251136251802_
                                               _e251141251805_
                                               _hd251140251808_
                                               _tl251139251810_
                                               _e251144251813_
                                               _hd251143251816_
                                               _tl251142251818_
                                               _e251147251821_
                                               _hd251146251824_
                                               _tl251145251826_
                                               ___splice259656259657_
                                               _target251148251829_
                                               _tl251150251831_)
                                              (___kont259666259667_))))
                                      (___kont259666259667_))
                                  (___kont259666259667_))))
                          (___kont259666259667_))
                      (___kont259666259667_))
                  (___kont259666259667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont259666259667_))))
                                          (___match260145260146_
                                           _e251111251725_
                                           _hd251110251728_
                                           _tl251109251730_
                                           _e251114251733_
                                           _hd251113251736_
                                           _tl251112251738_
                                           _e251117251741_
                                           _hd251116251744_
                                           _tl251115251746_
                                           _e251120251749_
                                           _hd251119251752_
                                           _tl251118251754_
                                           _e251123251757_
                                           _hd251122251760_
                                           _tl251121251762_
                                           _e251126251765_
                                           _hd251125251768_
                                           _tl251124251770_
                                           _e251129251773_
                                           _hd251128251776_
                                           _tl251127251778_
                                           _e251132251781_
                                           _hd251131251784_
                                           _tl251130251786_))
                                      (___match260145260146_
                                       _e251111251725_
                                       _hd251110251728_
                                       _tl251109251730_
                                       _e251114251733_
                                       _hd251113251736_
                                       _tl251112251738_
                                       _e251117251741_
                                       _hd251116251744_
                                       _tl251115251746_
                                       _e251120251749_
                                       _hd251119251752_
                                       _tl251118251754_
                                       _e251123251757_
                                       _hd251122251760_
                                       _tl251121251762_
                                       _e251126251765_
                                       _hd251125251768_
                                       _tl251124251770_
                                       _e251129251773_
                                       _hd251128251776_
                                       _tl251127251778_
                                       _e251132251781_
                                       _hd251131251784_
                                       _tl251130251786_))))
                              (___match260145260146_
                               _e251111251725_
                               _hd251110251728_
                               _tl251109251730_
                               _e251114251733_
                               _hd251113251736_
                               _tl251112251738_
                               _e251117251741_
                               _hd251116251744_
                               _tl251115251746_
                               _e251120251749_
                               _hd251119251752_
                               _tl251118251754_
                               _e251123251757_
                               _hd251122251760_
                               _tl251121251762_
                               _e251126251765_
                               _hd251125251768_
                               _tl251124251770_
                               _e251129251773_
                               _hd251128251776_
                               _tl251127251778_
                               _e251132251781_
                               _hd251131251784_
                               _tl251130251786_))
                          (___match259931259932_
                           _e251111251725_
                           _hd251110251728_
                           _tl251109251730_
                           _e251114251733_
                           _hd251113251736_
                           _tl251112251738_
                           _e251117251741_
                           _hd251116251744_
                           _tl251115251746_
                           _e251120251749_
                           _hd251119251752_
                           _tl251118251754_
                           _e251123251757_
                           _hd251122251760_
                           _tl251121251762_
                           _e251126251765_
                           _hd251125251768_
                           _tl251124251770_
                           _e251129251773_
                           _hd251128251776_
                           _tl251127251778_
                           _e251132251781_
                           _hd251131251784_
                           _tl251130251786_
                           _e251135251789_
                           _hd251134251792_
                           _tl251133251794_))))
                   (___match259753259754_
                    (lambda (_e251067251914_
                             _hd251066251917_
                             _tl251065251919_
                             _e251070251922_
                             _hd251069251925_
                             _tl251068251927_
                             _e251073251930_
                             _hd251072251933_
                             _tl251071251935_
                             _e251076251938_
                             _hd251075251941_
                             _tl251074251943_
                             _e251079251946_
                             _hd251078251949_
                             _tl251077251951_
                             _e251082251954_
                             _hd251081251957_
                             _tl251080251959_
                             _e251085251962_
                             _hd251084251965_
                             _tl251083251967_
                             _e251088251970_
                             _hd251087251973_
                             _tl251086251975_
                             _e251091251978_
                             _hd251090251981_
                             _tl251089251983_
                             _e251094251986_
                             _hd251093251989_
                             _tl251092251991_
                             ___splice259652259653_
                             _target251095251994_
                             _tl251097251996_)
                      (letrec ((_loop251098251999_
                                (lambda (_hd251096252002_ _args251102252004_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd251096252002_))
                                      (let ((_e251099252007_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd251096252002_))))
                                        (let ((_lp-tl251101252012_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e251099252007_)))
                                              (_lp-hd251100252010_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e251099252007_))))
                                          (let ((__tmp261023
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd251100252010_
                                                         _args251102252004_))))
                                            (declare (not safe))
                                            (_loop251098251999_
                                             _lp-tl251101252012_
                                             __tmp261023))))
                                      (let ((_args251103252015_
                                             (reverse _args251102252004_)))
                                        (let ((_L252018_ _args251103252015_)
                                              (_L252019_ _hd251093251989_)
                                              (_L252020_ _hd251084251965_)
                                              (_L252021_ _hd251075251941_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L252021_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L252020_
                                                      _self251046_)))
                                              (___kont259650259651_
                                               _L252018_
                                               _L252019_
                                               _L252020_
                                               _L252021_)
                                              (___match259941259942_
                                               _e251067251914_
                                               _hd251066251917_
                                               _tl251065251919_
                                               _e251070251922_
                                               _hd251069251925_
                                               _tl251068251927_
                                               _e251073251930_
                                               _hd251072251933_
                                               _tl251071251935_
                                               _e251076251938_
                                               _hd251075251941_
                                               _tl251074251943_
                                               _e251079251946_
                                               _hd251078251949_
                                               _tl251077251951_
                                               _e251082251954_
                                               _hd251081251957_
                                               _tl251080251959_
                                               _e251085251962_
                                               _hd251084251965_
                                               _tl251083251967_
                                               _e251088251970_
                                               _hd251087251973_
                                               _tl251086251975_
                                               _e251091251978_
                                               _hd251090251981_
                                               _tl251089251983_
                                               _e251094251986_
                                               _hd251093251989_
                                               _tl251092251991_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop251098251999_ _target251095251994_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx259648259649_))
                  (let ((_e251067251914_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx259648259649_))))
                    (let ((_tl251065251919_
                           (let ()
                             (declare (not safe))
                             (##cdr _e251067251914_)))
                          (_hd251066251917_
                           (let ()
                             (declare (not safe))
                             (##car _e251067251914_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl251065251919_))
                          (let ((_e251070251922_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl251065251919_))))
                            (let ((_tl251068251927_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e251070251922_)))
                                  (_hd251069251925_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e251070251922_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd251069251925_))
                                  (let ((_e251073251930_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd251069251925_))))
                                    (let ((_tl251071251935_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e251073251930_)))
                                          (_hd251072251933_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e251073251930_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd251072251933_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd251072251933_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl251071251935_))
                                                  (let ((_e251076251938_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl251071251935_))))
                                                    (let ((_tl251074251943_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e251076251938_)))
                                                          (_hd251075251941_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e251076251938_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl251074251943_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl251068251927_))
                      (let ((_e251079251946_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl251068251927_))))
                        (let ((_tl251077251951_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e251079251946_)))
                              (_hd251078251949_
                               (let ()
                                 (declare (not safe))
                                 (##car _e251079251946_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd251078251949_))
                              (let ((_e251082251954_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd251078251949_))))
                                (let ((_tl251080251959_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e251082251954_)))
                                      (_hd251081251957_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e251082251954_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd251081251957_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd251081251957_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl251080251959_))
                                              (let ((_e251085251962_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl251080251959_))))
                                                (let ((_tl251083251967_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e251085251962_)))
                                                      (_hd251084251965_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e251085251962_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl251083251967_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl251077251951_))
                                                          (let ((_e251088251970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl251077251951_))))
                    (let ((_tl251086251975_
                           (let ()
                             (declare (not safe))
                             (##cdr _e251088251970_)))
                          (_hd251087251973_
                           (let ()
                             (declare (not safe))
                             (##car _e251088251970_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd251087251973_))
                          (let ((_e251091251978_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd251087251973_))))
                            (let ((_tl251089251983_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e251091251978_)))
                                  (_hd251090251981_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e251091251978_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd251090251981_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd251090251981_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl251089251983_))
                                          (let ((_e251094251986_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl251089251983_))))
                                            (let ((_tl251092251991_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e251094251986_)))
                                                  (_hd251093251989_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e251094251986_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl251092251991_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl251086251975_))
                                                      (let ((___splice259652259653_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl251086251975_ '0))))
                (let ((_tl251097251996_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice259652259653_ '1)))
                      (_target251095251994_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice259652259653_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl251097251996_))
                      (___match259753259754_
                       _e251067251914_
                       _hd251066251917_
                       _tl251065251919_
                       _e251070251922_
                       _hd251069251925_
                       _tl251068251927_
                       _e251073251930_
                       _hd251072251933_
                       _tl251071251935_
                       _e251076251938_
                       _hd251075251941_
                       _tl251074251943_
                       _e251079251946_
                       _hd251078251949_
                       _tl251077251951_
                       _e251082251954_
                       _hd251081251957_
                       _tl251080251959_
                       _e251085251962_
                       _hd251084251965_
                       _tl251083251967_
                       _e251088251970_
                       _hd251087251973_
                       _tl251086251975_
                       _e251091251978_
                       _hd251090251981_
                       _tl251089251983_
                       _e251094251986_
                       _hd251093251989_
                       _tl251092251991_
                       ___splice259652259653_
                       _target251095251994_
                       _tl251097251996_)
                      (___match259941259942_
                       _e251067251914_
                       _hd251066251917_
                       _tl251065251919_
                       _e251070251922_
                       _hd251069251925_
                       _tl251068251927_
                       _e251073251930_
                       _hd251072251933_
                       _tl251071251935_
                       _e251076251938_
                       _hd251075251941_
                       _tl251074251943_
                       _e251079251946_
                       _hd251078251949_
                       _tl251077251951_
                       _e251082251954_
                       _hd251081251957_
                       _tl251080251959_
                       _e251085251962_
                       _hd251084251965_
                       _tl251083251967_
                       _e251088251970_
                       _hd251087251973_
                       _tl251086251975_
                       _e251091251978_
                       _hd251090251981_
                       _tl251089251983_
                       _e251094251986_
                       _hd251093251989_
                       _tl251092251991_))))
              (___match259941259942_
               _e251067251914_
               _hd251066251917_
               _tl251065251919_
               _e251070251922_
               _hd251069251925_
               _tl251068251927_
               _e251073251930_
               _hd251072251933_
               _tl251071251935_
               _e251076251938_
               _hd251075251941_
               _tl251074251943_
               _e251079251946_
               _hd251078251949_
               _tl251077251951_
               _e251082251954_
               _hd251081251957_
               _tl251080251959_
               _e251085251962_
               _hd251084251965_
               _tl251083251967_
               _e251088251970_
               _hd251087251973_
               _tl251086251975_
               _e251091251978_
               _hd251090251981_
               _tl251089251983_
               _e251094251986_
               _hd251093251989_
               _tl251092251991_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match260145260146_
                                                   _e251067251914_
                                                   _hd251066251917_
                                                   _tl251065251919_
                                                   _e251070251922_
                                                   _hd251069251925_
                                                   _tl251068251927_
                                                   _e251073251930_
                                                   _hd251072251933_
                                                   _tl251071251935_
                                                   _e251076251938_
                                                   _hd251075251941_
                                                   _tl251074251943_
                                                   _e251079251946_
                                                   _hd251078251949_
                                                   _tl251077251951_
                                                   _e251082251954_
                                                   _hd251081251957_
                                                   _tl251080251959_
                                                   _e251085251962_
                                                   _hd251084251965_
                                                   _tl251083251967_
                                                   _e251088251970_
                                                   _hd251087251973_
                                                   _tl251086251975_))))
                                          (___match260145260146_
                                           _e251067251914_
                                           _hd251066251917_
                                           _tl251065251919_
                                           _e251070251922_
                                           _hd251069251925_
                                           _tl251068251927_
                                           _e251073251930_
                                           _hd251072251933_
                                           _tl251071251935_
                                           _e251076251938_
                                           _hd251075251941_
                                           _tl251074251943_
                                           _e251079251946_
                                           _hd251078251949_
                                           _tl251077251951_
                                           _e251082251954_
                                           _hd251081251957_
                                           _tl251080251959_
                                           _e251085251962_
                                           _hd251084251965_
                                           _tl251083251967_
                                           _e251088251970_
                                           _hd251087251973_
                                           _tl251086251975_))
                                      (___match259821259822_
                                       _e251067251914_
                                       _hd251066251917_
                                       _tl251065251919_
                                       _e251070251922_
                                       _hd251069251925_
                                       _tl251068251927_
                                       _e251073251930_
                                       _hd251072251933_
                                       _tl251071251935_
                                       _e251076251938_
                                       _hd251075251941_
                                       _tl251074251943_
                                       _e251079251946_
                                       _hd251078251949_
                                       _tl251077251951_
                                       _e251082251954_
                                       _hd251081251957_
                                       _tl251080251959_
                                       _e251085251962_
                                       _hd251084251965_
                                       _tl251083251967_
                                       _e251088251970_
                                       _hd251087251973_
                                       _tl251086251975_
                                       _e251091251978_
                                       _hd251090251981_
                                       _tl251089251983_))
                                  (___match260145260146_
                                   _e251067251914_
                                   _hd251066251917_
                                   _tl251065251919_
                                   _e251070251922_
                                   _hd251069251925_
                                   _tl251068251927_
                                   _e251073251930_
                                   _hd251072251933_
                                   _tl251071251935_
                                   _e251076251938_
                                   _hd251075251941_
                                   _tl251074251943_
                                   _e251079251946_
                                   _hd251078251949_
                                   _tl251077251951_
                                   _e251082251954_
                                   _hd251081251957_
                                   _tl251080251959_
                                   _e251085251962_
                                   _hd251084251965_
                                   _tl251083251967_
                                   _e251088251970_
                                   _hd251087251973_
                                   _tl251086251975_))))
                          (___match260145260146_
                           _e251067251914_
                           _hd251066251917_
                           _tl251065251919_
                           _e251070251922_
                           _hd251069251925_
                           _tl251068251927_
                           _e251073251930_
                           _hd251072251933_
                           _tl251071251935_
                           _e251076251938_
                           _hd251075251941_
                           _tl251074251943_
                           _e251079251946_
                           _hd251078251949_
                           _tl251077251951_
                           _e251082251954_
                           _hd251081251957_
                           _tl251080251959_
                           _e251085251962_
                           _hd251084251965_
                           _tl251083251967_
                           _e251088251970_
                           _hd251087251973_
                           _tl251086251975_))))
                  (___match260083260084_
                   _e251067251914_
                   _hd251066251917_
                   _tl251065251919_
                   _e251070251922_
                   _hd251069251925_
                   _tl251068251927_
                   _e251073251930_
                   _hd251072251933_
                   _tl251071251935_
                   _e251076251938_
                   _hd251075251941_
                   _tl251074251943_
                   _e251079251946_
                   _hd251078251949_
                   _tl251077251951_
                   _e251082251954_
                   _hd251081251957_
                   _tl251080251959_
                   _e251085251962_
                   _hd251084251965_
                   _tl251083251967_))
              (___kont259666259667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont259666259667_))
                                          (___kont259666259667_))
                                      (___kont259666259667_))))
                              (___kont259666259667_))))
                      (___kont259666259667_))
                  (___kont259666259667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont259666259667_))
                                              (___kont259666259667_))
                                          (___kont259666259667_))))
                                  (___kont259666259667_))))
                          (___kont259666259667_))))
                  (___kont259666259667_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx249991_
               _self249992_
               _$t249993_
               _methods249994_
               _slots249995_
               _class-check249996_
               _struct-check249997_
               _struct-assert249998_)
        (letrec ((_force-e250000_
                  (lambda (_what251043_)
                    (let ((__tmp261024
                           (let ((__tmp261028
                                  (let ((__tmp261029
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp261029)))
                                 (__tmp261025
                                  (let ((__tmp261026
                                         (let ((__tmp261027
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what251043_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp261027))))
                                    (declare (not safe))
                                    (cons __tmp261026 '()))))
                             (declare (not safe))
                             (cons __tmp261028 __tmp261025))))
                      (declare (not safe))
                      (cons '%#call __tmp261024)))))
          (let* ((___stx260150260151_ _stx249991_)
                 (_g250008250230_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx260150260151_)))))
            (let ((___kont260152260153_
                   (lambda (_L250989_ _L250990_ _L250991_ _L250992_)
                     (let ((_$method251037_
                            (let ((__tmp261030
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L250990_))))
                              (declare (not safe))
                              (hash-ref__0 _methods249994_ __tmp261030)))
                           (_args251038_
                            (map (lambda (_g251025251027_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g251025251027_
                                      _self249992_
                                      _$t249993_
                                      _methods249994_
                                      _slots249995_
                                      _class-check249996_
                                      _struct-check249997_
                                      _struct-assert249998_)))
                                 (let ((__tmp261031
                                        (lambda (_g251029251032_
                                                 _g251030251034_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g251029251032_
                                                  _g251030251034_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp261031 '() _L250989_)))))
                       (let ((__tmp261032
                              (let ((__tmp261033
                                     (let ((__tmp261037
                                            (let ()
                                              (declare (not safe))
                                              (_force-e250000_
                                               _$method251037_)))
                                           (__tmp261034
                                            (let ((__tmp261035
                                                   (let ((__tmp261036
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self249992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp261036))))
                                              (declare (not safe))
                                              (cons __tmp261035
                                                    _args251038_))))
                                       (declare (not safe))
                                       (cons __tmp261037 __tmp261034))))
                                (declare (not safe))
                                (cons '%#call __tmp261033))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp261032 _stx249991_)))))
                  (___kont260156260157_
                   (lambda (_L250821_ _L250822_ _L250823_ _L250824_ _L250825_)
                     (let ((_$method250877_
                            (let ((__tmp261038
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L250822_))))
                              (declare (not safe))
                              (hash-ref__0 _methods249994_ __tmp261038)))
                           (_args250878_
                            (map (lambda (_g250865250867_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g250865250867_
                                      _self249992_
                                      _$t249993_
                                      _methods249994_
                                      _slots249995_
                                      _class-check249996_
                                      _struct-check249997_
                                      _struct-assert249998_)))
                                 (let ((__tmp261039
                                        (lambda (_g250869250872_
                                                 _g250870250874_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g250869250872_
                                                  _g250870250874_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp261039 '() _L250821_)))))
                       (let ((__tmp261040
                              (let ((__tmp261041
                                     (let ((__tmp261047
                                            (let ((__tmp261048
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp261048)))
                                           (__tmp261042
                                            (let ((__tmp261046
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e250000_
                                                      _$method250877_)))
                                                  (__tmp261043
                                                   (let ((__tmp261044
                                                          (let ((__tmp261045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self249992_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp261045))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp261044
                                                           _args250878_))))
                                              (declare (not safe))
                                              (cons __tmp261046 __tmp261043))))
                                       (declare (not safe))
                                       (cons __tmp261047 __tmp261042))))
                                (declare (not safe))
                                (cons '%#call __tmp261041))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp261040 _stx249991_)))))
                  (___kont260160260161_
                   (lambda (_L250652_ _L250653_ _L250654_)
                     (let* ((_$field250686_
                             (let ((__tmp261049
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L250652_))))
                               (declare (not safe))
                               (hash-ref__0 _slots249995_ __tmp261049)))
                            (__tmp261050
                             (let ((__tmp261051
                                    (let ((__tmp261058
                                           (let ((__tmp261059
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t249993_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp261059)))
                                          (__tmp261052
                                           (let ((__tmp261056
                                                  (let ((__tmp261057
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field250686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp261057)))
                                                 (__tmp261053
                                                  (let ((__tmp261054
                                                         (let ((__tmp261055
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self249992_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp261055))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp261054 '()))))
                                             (declare (not safe))
                                             (cons __tmp261056 __tmp261053))))
                                      (declare (not safe))
                                      (cons __tmp261058 __tmp261052))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp261051))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp261050 _stx249991_))))
                  (___kont260162260163_
                   (lambda (_L250526_ _L250527_ _L250528_ _L250529_)
                     (let ((_$field250564_
                            (let ((__tmp261060
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L250527_))))
                              (declare (not safe))
                              (hash-ref__0 _slots249995_ __tmp261060)))
                           (_expr250565_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L250526_
                               _self249992_
                               _$t249993_
                               _methods249994_
                               _slots249995_
                               _class-check249996_
                               _struct-check249997_
                               _struct-assert249998_))))
                       (let ((__tmp261061
                              (let ((__tmp261062
                                     (let ((__tmp261070
                                            (let ((__tmp261071
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t249993_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp261071)))
                                           (__tmp261063
                                            (let ((__tmp261068
                                                   (let ((__tmp261069
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field250564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp261069)))
                                                  (__tmp261064
                                                   (let ((__tmp261066
                                                          (let ((__tmp261067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self249992_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp261067)))
                 (__tmp261065
                  (let () (declare (not safe)) (cons _expr250565_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp261066
                                                           __tmp261065))))
                                              (declare (not safe))
                                              (cons __tmp261068 __tmp261064))))
                                       (declare (not safe))
                                       (cons __tmp261070 __tmp261063))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp261062))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp261061 _stx249991_)))))
                  (___kont260164260165_
                   (lambda (_L250405_ _L250406_)
                     (let* ((_slot250428_
                             (##structure-ref
                              (let ((__tmp261072
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L250406_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp261072))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field250430_
                             (let ()
                               (declare (not safe))
                               (hash-ref__0 _slots249995_ _slot250428_))))
                       (let ((__tmp261073
                              (let ((__tmp261074
                                     (let ((__tmp261081
                                            (let ((__tmp261082
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t249993_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp261082)))
                                           (__tmp261075
                                            (let ((__tmp261079
                                                   (let ((__tmp261080
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field250430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp261080)))
                                                  (__tmp261076
                                                   (let ((__tmp261077
                                                          (let ((__tmp261078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self249992_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp261078))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp261077 '()))))
                                              (declare (not safe))
                                              (cons __tmp261079 __tmp261076))))
                                       (declare (not safe))
                                       (cons __tmp261081 __tmp261075))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp261074))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp261073 _stx249991_)))))
                  (___kont260166260167_
                   (lambda (_L250306_ _L250307_ _L250308_)
                     (let* ((_slot250337_
                             (##structure-ref
                              (let ((__tmp261083
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L250308_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp261083))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field250339_
                             (let ()
                               (declare (not safe))
                               (hash-ref__0 _slots249995_ _slot250337_)))
                            (_expr250341_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L250306_
                                _self249992_
                                _$t249993_
                                _methods249994_
                                _slots249995_
                                _class-check249996_
                                _struct-check249997_
                                _struct-assert249998_))))
                       (let ((__tmp261084
                              (let ((__tmp261085
                                     (let ((__tmp261093
                                            (let ((__tmp261094
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t249993_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp261094)))
                                           (__tmp261086
                                            (let ((__tmp261091
                                                   (let ((__tmp261092
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field250339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp261092)))
                                                  (__tmp261087
                                                   (let ((__tmp261089
                                                          (let ((__tmp261090
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self249992_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp261090)))
                 (__tmp261088
                  (let () (declare (not safe)) (cons _expr250341_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp261089
                                                           __tmp261088))))
                                              (declare (not safe))
                                              (cons __tmp261091 __tmp261087))))
                                       (declare (not safe))
                                       (cons __tmp261093 __tmp261086))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp261085))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp261084 _stx249991_)))))
                  (___kont260168260169_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx249991_
                        _self249992_
                        _$t249993_
                        _methods249994_
                        _slots249995_
                        _class-check249996_
                        _struct-check249997_
                        _struct-assert249998_)))))
              (let* ((___match260649260650_
                      (lambda (_e250204250242_
                               _hd250203250245_
                               _tl250202250247_
                               _e250207250250_
                               _hd250206250253_
                               _tl250205250255_
                               _e250210250258_
                               _hd250209250261_
                               _tl250208250263_
                               _e250213250266_
                               _hd250212250269_
                               _tl250211250271_
                               _e250216250274_
                               _hd250215250277_
                               _tl250214250279_
                               _e250219250282_
                               _hd250218250285_
                               _tl250217250287_
                               _e250222250290_
                               _hd250221250293_
                               _tl250220250295_
                               _e250225250298_
                               _hd250224250301_
                               _tl250223250303_)
                        (let ((_L250306_ _hd250224250301_)
                              (_L250307_ _hd250221250293_)
                              (_L250308_ _hd250212250269_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L250307_
                                      _self249992_))
                                   (let ((__tmp261095
                                          (let ((__tmp261096
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L250308_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp261096))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp261095
                                      'gxc#!mutator::t)))
                              (___kont260166260167_
                               _L250306_
                               _L250307_
                               _L250308_)
                              (___kont260168260169_)))))
                     (___match260647260648_
                      (lambda (_e250204250242_
                               _hd250203250245_
                               _tl250202250247_
                               _e250207250250_
                               _hd250206250253_
                               _tl250205250255_
                               _e250210250258_
                               _hd250209250261_
                               _tl250208250263_
                               _e250213250266_
                               _hd250212250269_
                               _tl250211250271_
                               _e250216250274_
                               _hd250215250277_
                               _tl250214250279_
                               _e250219250282_
                               _hd250218250285_
                               _tl250217250287_
                               _e250222250290_
                               _hd250221250293_
                               _tl250220250295_
                               _e250225250298_
                               _hd250224250301_
                               _tl250223250303_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl250223250303_))
                            (___match260649260650_
                             _e250204250242_
                             _hd250203250245_
                             _tl250202250247_
                             _e250207250250_
                             _hd250206250253_
                             _tl250205250255_
                             _e250210250258_
                             _hd250209250261_
                             _tl250208250263_
                             _e250213250266_
                             _hd250212250269_
                             _tl250211250271_
                             _e250216250274_
                             _hd250215250277_
                             _tl250214250279_
                             _e250219250282_
                             _hd250218250285_
                             _tl250217250287_
                             _e250222250290_
                             _hd250221250293_
                             _tl250220250295_
                             _e250225250298_
                             _hd250224250301_
                             _tl250223250303_)
                            (___kont260168260169_))))
                     (___match260641260642_
                      (lambda (_e250204250242_
                               _hd250203250245_
                               _tl250202250247_
                               _e250207250250_
                               _hd250206250253_
                               _tl250205250255_
                               _e250210250258_
                               _hd250209250261_
                               _tl250208250263_
                               _e250213250266_
                               _hd250212250269_
                               _tl250211250271_
                               _e250216250274_
                               _hd250215250277_
                               _tl250214250279_
                               _e250219250282_
                               _hd250218250285_
                               _tl250217250287_
                               _e250222250290_
                               _hd250221250293_
                               _tl250220250295_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl250214250279_))
                            (let ((_e250225250298_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl250214250279_))))
                              (let ((_tl250223250303_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e250225250298_)))
                                    (_hd250224250301_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e250225250298_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl250223250303_))
                                    (___match260649260650_
                                     _e250204250242_
                                     _hd250203250245_
                                     _tl250202250247_
                                     _e250207250250_
                                     _hd250206250253_
                                     _tl250205250255_
                                     _e250210250258_
                                     _hd250209250261_
                                     _tl250208250263_
                                     _e250213250266_
                                     _hd250212250269_
                                     _tl250211250271_
                                     _e250216250274_
                                     _hd250215250277_
                                     _tl250214250279_
                                     _e250219250282_
                                     _hd250218250285_
                                     _tl250217250287_
                                     _e250222250290_
                                     _hd250221250293_
                                     _tl250220250295_
                                     _e250225250298_
                                     _hd250224250301_
                                     _tl250223250303_)
                                    (___kont260168260169_))))
                            (___kont260168260169_))))
                     (___match260587260588_
                      (lambda (_e250180250349_
                               _hd250179250352_
                               _tl250178250354_
                               _e250183250357_
                               _hd250182250360_
                               _tl250181250362_
                               _e250186250365_
                               _hd250185250368_
                               _tl250184250370_
                               _e250189250373_
                               _hd250188250376_
                               _tl250187250378_
                               _e250192250381_
                               _hd250191250384_
                               _tl250190250386_
                               _e250195250389_
                               _hd250194250392_
                               _tl250193250394_
                               _e250198250397_
                               _hd250197250400_
                               _tl250196250402_)
                        (let ((_L250405_ _hd250197250400_)
                              (_L250406_ _hd250188250376_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L250405_
                                      _self249992_))
                                   (let ((__tmp261097
                                          (let ((__tmp261098
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L250406_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp261098))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp261097
                                      'gxc#!accessor::t)))
                              (___kont260164260165_ _L250405_ _L250406_)
                              (___kont260168260169_)))))
                     (___match260585260586_
                      (lambda (_e250180250349_
                               _hd250179250352_
                               _tl250178250354_
                               _e250183250357_
                               _hd250182250360_
                               _tl250181250362_
                               _e250186250365_
                               _hd250185250368_
                               _tl250184250370_
                               _e250189250373_
                               _hd250188250376_
                               _tl250187250378_
                               _e250192250381_
                               _hd250191250384_
                               _tl250190250386_
                               _e250195250389_
                               _hd250194250392_
                               _tl250193250394_
                               _e250198250397_
                               _hd250197250400_
                               _tl250196250402_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl250190250386_))
                            (___match260587260588_
                             _e250180250349_
                             _hd250179250352_
                             _tl250178250354_
                             _e250183250357_
                             _hd250182250360_
                             _tl250181250362_
                             _e250186250365_
                             _hd250185250368_
                             _tl250184250370_
                             _e250189250373_
                             _hd250188250376_
                             _tl250187250378_
                             _e250192250381_
                             _hd250191250384_
                             _tl250190250386_
                             _e250195250389_
                             _hd250194250392_
                             _tl250193250394_
                             _e250198250397_
                             _hd250197250400_
                             _tl250196250402_)
                            (___match260641260642_
                             _e250180250349_
                             _hd250179250352_
                             _tl250178250354_
                             _e250183250357_
                             _hd250182250360_
                             _tl250181250362_
                             _e250186250365_
                             _hd250185250368_
                             _tl250184250370_
                             _e250189250373_
                             _hd250188250376_
                             _tl250187250378_
                             _e250192250381_
                             _hd250191250384_
                             _tl250190250386_
                             _e250195250389_
                             _hd250194250392_
                             _tl250193250394_
                             _e250198250397_
                             _hd250197250400_
                             _tl250196250402_))))
                     (___match260531260532_
                      (lambda (_e250145250438_
                               _hd250144250441_
                               _tl250143250443_
                               _e250148250446_
                               _hd250147250449_
                               _tl250146250451_
                               _e250151250454_
                               _hd250150250457_
                               _tl250149250459_
                               _e250154250462_
                               _hd250153250465_
                               _tl250152250467_
                               _e250157250470_
                               _hd250156250473_
                               _tl250155250475_
                               _e250160250478_
                               _hd250159250481_
                               _tl250158250483_
                               _e250163250486_
                               _hd250162250489_
                               _tl250161250491_
                               _e250166250494_
                               _hd250165250497_
                               _tl250164250499_
                               _e250169250502_
                               _hd250168250505_
                               _tl250167250507_
                               _e250172250510_
                               _hd250171250513_
                               _tl250170250515_
                               _e250175250518_
                               _hd250174250521_
                               _tl250173250523_)
                        (let ((_L250526_ _hd250174250521_)
                              (_L250527_ _hd250171250513_)
                              (_L250528_ _hd250162250489_)
                              (_L250529_ _hd250153250465_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L250529_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L250529_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L250528_
                                      _self249992_)))
                              (___kont260162260163_
                               _L250526_
                               _L250527_
                               _L250528_
                               _L250529_)
                              (___kont260168260169_)))))
                     (___match260523260524_
                      (lambda (_e250145250438_
                               _hd250144250441_
                               _tl250143250443_
                               _e250148250446_
                               _hd250147250449_
                               _tl250146250451_
                               _e250151250454_
                               _hd250150250457_
                               _tl250149250459_
                               _e250154250462_
                               _hd250153250465_
                               _tl250152250467_
                               _e250157250470_
                               _hd250156250473_
                               _tl250155250475_
                               _e250160250478_
                               _hd250159250481_
                               _tl250158250483_
                               _e250163250486_
                               _hd250162250489_
                               _tl250161250491_
                               _e250166250494_
                               _hd250165250497_
                               _tl250164250499_
                               _e250169250502_
                               _hd250168250505_
                               _tl250167250507_
                               _e250172250510_
                               _hd250171250513_
                               _tl250170250515_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl250164250499_))
                            (let ((_e250175250518_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl250164250499_))))
                              (let ((_tl250173250523_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e250175250518_)))
                                    (_hd250174250521_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e250175250518_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl250173250523_))
                                    (___match260531260532_
                                     _e250145250438_
                                     _hd250144250441_
                                     _tl250143250443_
                                     _e250148250446_
                                     _hd250147250449_
                                     _tl250146250451_
                                     _e250151250454_
                                     _hd250150250457_
                                     _tl250149250459_
                                     _e250154250462_
                                     _hd250153250465_
                                     _tl250152250467_
                                     _e250157250470_
                                     _hd250156250473_
                                     _tl250155250475_
                                     _e250160250478_
                                     _hd250159250481_
                                     _tl250158250483_
                                     _e250163250486_
                                     _hd250162250489_
                                     _tl250161250491_
                                     _e250166250494_
                                     _hd250165250497_
                                     _tl250164250499_
                                     _e250169250502_
                                     _hd250168250505_
                                     _tl250167250507_
                                     _e250172250510_
                                     _hd250171250513_
                                     _tl250170250515_
                                     _e250175250518_
                                     _hd250174250521_
                                     _tl250173250523_)
                                    (___kont260168260169_))))
                            (___match260647260648_
                             _e250145250438_
                             _hd250144250441_
                             _tl250143250443_
                             _e250148250446_
                             _hd250147250449_
                             _tl250146250451_
                             _e250151250454_
                             _hd250150250457_
                             _tl250149250459_
                             _e250154250462_
                             _hd250153250465_
                             _tl250152250467_
                             _e250157250470_
                             _hd250156250473_
                             _tl250155250475_
                             _e250160250478_
                             _hd250159250481_
                             _tl250158250483_
                             _e250163250486_
                             _hd250162250489_
                             _tl250161250491_
                             _e250166250494_
                             _hd250165250497_
                             _tl250164250499_))))
                     (___match260445260446_
                      (lambda (_e250111250572_
                               _hd250110250575_
                               _tl250109250577_
                               _e250114250580_
                               _hd250113250583_
                               _tl250112250585_
                               _e250117250588_
                               _hd250116250591_
                               _tl250115250593_
                               _e250120250596_
                               _hd250119250599_
                               _tl250118250601_
                               _e250123250604_
                               _hd250122250607_
                               _tl250121250609_
                               _e250126250612_
                               _hd250125250615_
                               _tl250124250617_
                               _e250129250620_
                               _hd250128250623_
                               _tl250127250625_
                               _e250132250628_
                               _hd250131250631_
                               _tl250130250633_
                               _e250135250636_
                               _hd250134250639_
                               _tl250133250641_
                               _e250138250644_
                               _hd250137250647_
                               _tl250136250649_)
                        (let ((_L250652_ _hd250137250647_)
                              (_L250653_ _hd250128250623_)
                              (_L250654_ _hd250119250599_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L250654_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L250654_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L250653_
                                      _self249992_)))
                              (___kont260160260161_
                               _L250652_
                               _L250653_
                               _L250654_)
                              (___match260649260650_
                               _e250111250572_
                               _hd250110250575_
                               _tl250109250577_
                               _e250114250580_
                               _hd250113250583_
                               _tl250112250585_
                               _e250117250588_
                               _hd250116250591_
                               _tl250115250593_
                               _e250120250596_
                               _hd250119250599_
                               _tl250118250601_
                               _e250123250604_
                               _hd250122250607_
                               _tl250121250609_
                               _e250126250612_
                               _hd250125250615_
                               _tl250124250617_
                               _e250129250620_
                               _hd250128250623_
                               _tl250127250625_
                               _e250132250628_
                               _hd250131250631_
                               _tl250130250633_)))))
                     (___match260443260444_
                      (lambda (_e250111250572_
                               _hd250110250575_
                               _tl250109250577_
                               _e250114250580_
                               _hd250113250583_
                               _tl250112250585_
                               _e250117250588_
                               _hd250116250591_
                               _tl250115250593_
                               _e250120250596_
                               _hd250119250599_
                               _tl250118250601_
                               _e250123250604_
                               _hd250122250607_
                               _tl250121250609_
                               _e250126250612_
                               _hd250125250615_
                               _tl250124250617_
                               _e250129250620_
                               _hd250128250623_
                               _tl250127250625_
                               _e250132250628_
                               _hd250131250631_
                               _tl250130250633_
                               _e250135250636_
                               _hd250134250639_
                               _tl250133250641_
                               _e250138250644_
                               _hd250137250647_
                               _tl250136250649_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl250130250633_))
                            (___match260445260446_
                             _e250111250572_
                             _hd250110250575_
                             _tl250109250577_
                             _e250114250580_
                             _hd250113250583_
                             _tl250112250585_
                             _e250117250588_
                             _hd250116250591_
                             _tl250115250593_
                             _e250120250596_
                             _hd250119250599_
                             _tl250118250601_
                             _e250123250604_
                             _hd250122250607_
                             _tl250121250609_
                             _e250126250612_
                             _hd250125250615_
                             _tl250124250617_
                             _e250129250620_
                             _hd250128250623_
                             _tl250127250625_
                             _e250132250628_
                             _hd250131250631_
                             _tl250130250633_
                             _e250135250636_
                             _hd250134250639_
                             _tl250133250641_
                             _e250138250644_
                             _hd250137250647_
                             _tl250136250649_)
                            (___match260523260524_
                             _e250111250572_
                             _hd250110250575_
                             _tl250109250577_
                             _e250114250580_
                             _hd250113250583_
                             _tl250112250585_
                             _e250117250588_
                             _hd250116250591_
                             _tl250115250593_
                             _e250120250596_
                             _hd250119250599_
                             _tl250118250601_
                             _e250123250604_
                             _hd250122250607_
                             _tl250121250609_
                             _e250126250612_
                             _hd250125250615_
                             _tl250124250617_
                             _e250129250620_
                             _hd250128250623_
                             _tl250127250625_
                             _e250132250628_
                             _hd250131250631_
                             _tl250130250633_
                             _e250135250636_
                             _hd250134250639_
                             _tl250133250641_
                             _e250138250644_
                             _hd250137250647_
                             _tl250136250649_))))
                     (___match260433260434_
                      (lambda (_e250111250572_
                               _hd250110250575_
                               _tl250109250577_
                               _e250114250580_
                               _hd250113250583_
                               _tl250112250585_
                               _e250117250588_
                               _hd250116250591_
                               _tl250115250593_
                               _e250120250596_
                               _hd250119250599_
                               _tl250118250601_
                               _e250123250604_
                               _hd250122250607_
                               _tl250121250609_
                               _e250126250612_
                               _hd250125250615_
                               _tl250124250617_
                               _e250129250620_
                               _hd250128250623_
                               _tl250127250625_
                               _e250132250628_
                               _hd250131250631_
                               _tl250130250633_
                               _e250135250636_
                               _hd250134250639_
                               _tl250133250641_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd250134250639_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl250133250641_))
                                (let ((_e250138250644_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl250133250641_))))
                                  (let ((_tl250136250649_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e250138250644_)))
                                        (_hd250137250647_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e250138250644_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl250136250649_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl250130250633_))
                                            (___match260445260446_
                                             _e250111250572_
                                             _hd250110250575_
                                             _tl250109250577_
                                             _e250114250580_
                                             _hd250113250583_
                                             _tl250112250585_
                                             _e250117250588_
                                             _hd250116250591_
                                             _tl250115250593_
                                             _e250120250596_
                                             _hd250119250599_
                                             _tl250118250601_
                                             _e250123250604_
                                             _hd250122250607_
                                             _tl250121250609_
                                             _e250126250612_
                                             _hd250125250615_
                                             _tl250124250617_
                                             _e250129250620_
                                             _hd250128250623_
                                             _tl250127250625_
                                             _e250132250628_
                                             _hd250131250631_
                                             _tl250130250633_
                                             _e250135250636_
                                             _hd250134250639_
                                             _tl250133250641_
                                             _e250138250644_
                                             _hd250137250647_
                                             _tl250136250649_)
                                            (___match260523260524_
                                             _e250111250572_
                                             _hd250110250575_
                                             _tl250109250577_
                                             _e250114250580_
                                             _hd250113250583_
                                             _tl250112250585_
                                             _e250117250588_
                                             _hd250116250591_
                                             _tl250115250593_
                                             _e250120250596_
                                             _hd250119250599_
                                             _tl250118250601_
                                             _e250123250604_
                                             _hd250122250607_
                                             _tl250121250609_
                                             _e250126250612_
                                             _hd250125250615_
                                             _tl250124250617_
                                             _e250129250620_
                                             _hd250128250623_
                                             _tl250127250625_
                                             _e250132250628_
                                             _hd250131250631_
                                             _tl250130250633_
                                             _e250135250636_
                                             _hd250134250639_
                                             _tl250133250641_
                                             _e250138250644_
                                             _hd250137250647_
                                             _tl250136250649_))
                                        (___match260647260648_
                                         _e250111250572_
                                         _hd250110250575_
                                         _tl250109250577_
                                         _e250114250580_
                                         _hd250113250583_
                                         _tl250112250585_
                                         _e250117250588_
                                         _hd250116250591_
                                         _tl250115250593_
                                         _e250120250596_
                                         _hd250119250599_
                                         _tl250118250601_
                                         _e250123250604_
                                         _hd250122250607_
                                         _tl250121250609_
                                         _e250126250612_
                                         _hd250125250615_
                                         _tl250124250617_
                                         _e250129250620_
                                         _hd250128250623_
                                         _tl250127250625_
                                         _e250132250628_
                                         _hd250131250631_
                                         _tl250130250633_))))
                                (___match260647260648_
                                 _e250111250572_
                                 _hd250110250575_
                                 _tl250109250577_
                                 _e250114250580_
                                 _hd250113250583_
                                 _tl250112250585_
                                 _e250117250588_
                                 _hd250116250591_
                                 _tl250115250593_
                                 _e250120250596_
                                 _hd250119250599_
                                 _tl250118250601_
                                 _e250123250604_
                                 _hd250122250607_
                                 _tl250121250609_
                                 _e250126250612_
                                 _hd250125250615_
                                 _tl250124250617_
                                 _e250129250620_
                                 _hd250128250623_
                                 _tl250127250625_
                                 _e250132250628_
                                 _hd250131250631_
                                 _tl250130250633_))
                            (___match260647260648_
                             _e250111250572_
                             _hd250110250575_
                             _tl250109250577_
                             _e250114250580_
                             _hd250113250583_
                             _tl250112250585_
                             _e250117250588_
                             _hd250116250591_
                             _tl250115250593_
                             _e250120250596_
                             _hd250119250599_
                             _tl250118250601_
                             _e250123250604_
                             _hd250122250607_
                             _tl250121250609_
                             _e250126250612_
                             _hd250125250615_
                             _tl250124250617_
                             _e250129250620_
                             _hd250128250623_
                             _tl250127250625_
                             _e250132250628_
                             _hd250131250631_
                             _tl250130250633_))))
                     (___match260365260366_
                      (lambda (_e250060250693_
                               _hd250059250696_
                               _tl250058250698_
                               _e250063250701_
                               _hd250062250704_
                               _tl250061250706_
                               _e250066250709_
                               _hd250065250712_
                               _tl250064250714_
                               _e250069250717_
                               _hd250068250720_
                               _tl250067250722_
                               _e250072250725_
                               _hd250071250728_
                               _tl250070250730_
                               _e250075250733_
                               _hd250074250736_
                               _tl250073250738_
                               _e250078250741_
                               _hd250077250744_
                               _tl250076250746_
                               _e250081250749_
                               _hd250080250752_
                               _tl250079250754_
                               _e250084250757_
                               _hd250083250760_
                               _tl250082250762_
                               _e250087250765_
                               _hd250086250768_
                               _tl250085250770_
                               _e250090250773_
                               _hd250089250776_
                               _tl250088250778_
                               _e250093250781_
                               _hd250092250784_
                               _tl250091250786_
                               _e250096250789_
                               _hd250095250792_
                               _tl250094250794_
                               ___splice260158260159_
                               _target250097250797_
                               _tl250099250799_)
                        (letrec ((_loop250100250802_
                                  (lambda (_hd250098250805_ _args250104250807_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd250098250805_))
                                        (let ((_e250101250810_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd250098250805_))))
                                          (let ((_lp-tl250103250815_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e250101250810_)))
                                                (_lp-hd250102250813_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e250101250810_))))
                                            (let ((__tmp261099
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd250102250813_
                                                           _args250104250807_))))
                                              (declare (not safe))
                                              (_loop250100250802_
                                               _lp-tl250103250815_
                                               __tmp261099))))
                                        (let ((_args250105250818_
                                               (reverse _args250104250807_)))
                                          (let ((_L250821_ _args250105250818_)
                                                (_L250822_ _hd250095250792_)
                                                (_L250823_ _hd250086250768_)
                                                (_L250824_ _hd250077250744_)
                                                (_L250825_ _hd250068250720_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L250825_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L250824_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L250823_
                                                        _self249992_)))
                                                (___kont260156260157_
                                                 _L250821_
                                                 _L250822_
                                                 _L250823_
                                                 _L250824_
                                                 _L250825_)
                                                (___kont260168260169_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop250100250802_ _target250097250797_ '())))))
                     (___match260323260324_
                      (lambda (_e250060250693_
                               _hd250059250696_
                               _tl250058250698_
                               _e250063250701_
                               _hd250062250704_
                               _tl250061250706_
                               _e250066250709_
                               _hd250065250712_
                               _tl250064250714_
                               _e250069250717_
                               _hd250068250720_
                               _tl250067250722_
                               _e250072250725_
                               _hd250071250728_
                               _tl250070250730_
                               _e250075250733_
                               _hd250074250736_
                               _tl250073250738_
                               _e250078250741_
                               _hd250077250744_
                               _tl250076250746_
                               _e250081250749_
                               _hd250080250752_
                               _tl250079250754_
                               _e250084250757_
                               _hd250083250760_
                               _tl250082250762_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd250083250760_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl250082250762_))
                                (let ((_e250087250765_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl250082250762_))))
                                  (let ((_tl250085250770_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e250087250765_)))
                                        (_hd250086250768_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e250087250765_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl250085250770_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl250079250754_))
                                            (let ((_e250090250773_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl250079250754_))))
                                              (let ((_tl250088250778_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e250090250773_)))
                                                    (_hd250089250776_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e250090250773_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd250089250776_))
                                                    (let ((_e250093250781_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd250089250776_))))
                                                      (let ((_tl250091250786_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e250093250781_)))
                    (_hd250092250784_
                     (let () (declare (not safe)) (##car _e250093250781_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd250092250784_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd250092250784_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl250091250786_))
                            (let ((_e250096250789_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl250091250786_))))
                              (let ((_tl250094250794_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e250096250789_)))
                                    (_hd250095250792_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e250096250789_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl250094250794_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl250088250778_))
                                        (let ((___splice260158260159_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl250088250778_
                                                  '0))))
                                          (let ((_tl250099250799_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice260158260159_
                                                    '1)))
                                                (_target250097250797_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice260158260159_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl250099250799_))
                                                (___match260365260366_
                                                 _e250060250693_
                                                 _hd250059250696_
                                                 _tl250058250698_
                                                 _e250063250701_
                                                 _hd250062250704_
                                                 _tl250061250706_
                                                 _e250066250709_
                                                 _hd250065250712_
                                                 _tl250064250714_
                                                 _e250069250717_
                                                 _hd250068250720_
                                                 _tl250067250722_
                                                 _e250072250725_
                                                 _hd250071250728_
                                                 _tl250070250730_
                                                 _e250075250733_
                                                 _hd250074250736_
                                                 _tl250073250738_
                                                 _e250078250741_
                                                 _hd250077250744_
                                                 _tl250076250746_
                                                 _e250081250749_
                                                 _hd250080250752_
                                                 _tl250079250754_
                                                 _e250084250757_
                                                 _hd250083250760_
                                                 _tl250082250762_
                                                 _e250087250765_
                                                 _hd250086250768_
                                                 _tl250085250770_
                                                 _e250090250773_
                                                 _hd250089250776_
                                                 _tl250088250778_
                                                 _e250093250781_
                                                 _hd250092250784_
                                                 _tl250091250786_
                                                 _e250096250789_
                                                 _hd250095250792_
                                                 _tl250094250794_
                                                 ___splice260158260159_
                                                 _target250097250797_
                                                 _tl250099250799_)
                                                (___kont260168260169_))))
                                        (___kont260168260169_))
                                    (___kont260168260169_))))
                            (___kont260168260169_))
                        (___kont260168260169_))
                    (___kont260168260169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont260168260169_))))
                                            (___match260647260648_
                                             _e250060250693_
                                             _hd250059250696_
                                             _tl250058250698_
                                             _e250063250701_
                                             _hd250062250704_
                                             _tl250061250706_
                                             _e250066250709_
                                             _hd250065250712_
                                             _tl250064250714_
                                             _e250069250717_
                                             _hd250068250720_
                                             _tl250067250722_
                                             _e250072250725_
                                             _hd250071250728_
                                             _tl250070250730_
                                             _e250075250733_
                                             _hd250074250736_
                                             _tl250073250738_
                                             _e250078250741_
                                             _hd250077250744_
                                             _tl250076250746_
                                             _e250081250749_
                                             _hd250080250752_
                                             _tl250079250754_))
                                        (___match260647260648_
                                         _e250060250693_
                                         _hd250059250696_
                                         _tl250058250698_
                                         _e250063250701_
                                         _hd250062250704_
                                         _tl250061250706_
                                         _e250066250709_
                                         _hd250065250712_
                                         _tl250064250714_
                                         _e250069250717_
                                         _hd250068250720_
                                         _tl250067250722_
                                         _e250072250725_
                                         _hd250071250728_
                                         _tl250070250730_
                                         _e250075250733_
                                         _hd250074250736_
                                         _tl250073250738_
                                         _e250078250741_
                                         _hd250077250744_
                                         _tl250076250746_
                                         _e250081250749_
                                         _hd250080250752_
                                         _tl250079250754_))))
                                (___match260647260648_
                                 _e250060250693_
                                 _hd250059250696_
                                 _tl250058250698_
                                 _e250063250701_
                                 _hd250062250704_
                                 _tl250061250706_
                                 _e250066250709_
                                 _hd250065250712_
                                 _tl250064250714_
                                 _e250069250717_
                                 _hd250068250720_
                                 _tl250067250722_
                                 _e250072250725_
                                 _hd250071250728_
                                 _tl250070250730_
                                 _e250075250733_
                                 _hd250074250736_
                                 _tl250073250738_
                                 _e250078250741_
                                 _hd250077250744_
                                 _tl250076250746_
                                 _e250081250749_
                                 _hd250080250752_
                                 _tl250079250754_))
                            (___match260433260434_
                             _e250060250693_
                             _hd250059250696_
                             _tl250058250698_
                             _e250063250701_
                             _hd250062250704_
                             _tl250061250706_
                             _e250066250709_
                             _hd250065250712_
                             _tl250064250714_
                             _e250069250717_
                             _hd250068250720_
                             _tl250067250722_
                             _e250072250725_
                             _hd250071250728_
                             _tl250070250730_
                             _e250075250733_
                             _hd250074250736_
                             _tl250073250738_
                             _e250078250741_
                             _hd250077250744_
                             _tl250076250746_
                             _e250081250749_
                             _hd250080250752_
                             _tl250079250754_
                             _e250084250757_
                             _hd250083250760_
                             _tl250082250762_))))
                     (___match260255260256_
                      (lambda (_e250016250885_
                               _hd250015250888_
                               _tl250014250890_
                               _e250019250893_
                               _hd250018250896_
                               _tl250017250898_
                               _e250022250901_
                               _hd250021250904_
                               _tl250020250906_
                               _e250025250909_
                               _hd250024250912_
                               _tl250023250914_
                               _e250028250917_
                               _hd250027250920_
                               _tl250026250922_
                               _e250031250925_
                               _hd250030250928_
                               _tl250029250930_
                               _e250034250933_
                               _hd250033250936_
                               _tl250032250938_
                               _e250037250941_
                               _hd250036250944_
                               _tl250035250946_
                               _e250040250949_
                               _hd250039250952_
                               _tl250038250954_
                               _e250043250957_
                               _hd250042250960_
                               _tl250041250962_
                               ___splice260154260155_
                               _target250044250965_
                               _tl250046250967_)
                        (letrec ((_loop250047250970_
                                  (lambda (_hd250045250973_ _args250051250975_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd250045250973_))
                                        (let ((_e250048250978_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd250045250973_))))
                                          (let ((_lp-tl250050250983_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e250048250978_)))
                                                (_lp-hd250049250981_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e250048250978_))))
                                            (let ((__tmp261100
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd250049250981_
                                                           _args250051250975_))))
                                              (declare (not safe))
                                              (_loop250047250970_
                                               _lp-tl250050250983_
                                               __tmp261100))))
                                        (let ((_args250052250986_
                                               (reverse _args250051250975_)))
                                          (let ((_L250989_ _args250052250986_)
                                                (_L250990_ _hd250042250960_)
                                                (_L250991_ _hd250033250936_)
                                                (_L250992_ _hd250024250912_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L250992_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L250991_
                                                        _self249992_)))
                                                (___kont260152260153_
                                                 _L250989_
                                                 _L250990_
                                                 _L250991_
                                                 _L250992_)
                                                (___match260443260444_
                                                 _e250016250885_
                                                 _hd250015250888_
                                                 _tl250014250890_
                                                 _e250019250893_
                                                 _hd250018250896_
                                                 _tl250017250898_
                                                 _e250022250901_
                                                 _hd250021250904_
                                                 _tl250020250906_
                                                 _e250025250909_
                                                 _hd250024250912_
                                                 _tl250023250914_
                                                 _e250028250917_
                                                 _hd250027250920_
                                                 _tl250026250922_
                                                 _e250031250925_
                                                 _hd250030250928_
                                                 _tl250029250930_
                                                 _e250034250933_
                                                 _hd250033250936_
                                                 _tl250032250938_
                                                 _e250037250941_
                                                 _hd250036250944_
                                                 _tl250035250946_
                                                 _e250040250949_
                                                 _hd250039250952_
                                                 _tl250038250954_
                                                 _e250043250957_
                                                 _hd250042250960_
                                                 _tl250041250962_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop250047250970_ _target250044250965_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx260150260151_))
                    (let ((_e250016250885_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx260150260151_))))
                      (let ((_tl250014250890_
                             (let ()
                               (declare (not safe))
                               (##cdr _e250016250885_)))
                            (_hd250015250888_
                             (let ()
                               (declare (not safe))
                               (##car _e250016250885_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl250014250890_))
                            (let ((_e250019250893_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl250014250890_))))
                              (let ((_tl250017250898_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e250019250893_)))
                                    (_hd250018250896_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e250019250893_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd250018250896_))
                                    (let ((_e250022250901_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd250018250896_))))
                                      (let ((_tl250020250906_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e250022250901_)))
                                            (_hd250021250904_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e250022250901_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd250021250904_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd250021250904_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl250020250906_))
                                                    (let ((_e250025250909_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl250020250906_))))
                                                      (let ((_tl250023250914_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e250025250909_)))
                    (_hd250024250912_
                     (let () (declare (not safe)) (##car _e250025250909_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl250023250914_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl250017250898_))
                        (let ((_e250028250917_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl250017250898_))))
                          (let ((_tl250026250922_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e250028250917_)))
                                (_hd250027250920_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e250028250917_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd250027250920_))
                                (let ((_e250031250925_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd250027250920_))))
                                  (let ((_tl250029250930_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e250031250925_)))
                                        (_hd250030250928_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e250031250925_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd250030250928_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd250030250928_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl250029250930_))
                                                (let ((_e250034250933_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl250029250930_))))
                                                  (let ((_tl250032250938_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e250034250933_)))
                                                        (_hd250033250936_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e250034250933_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl250032250938_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl250026250922_))
                                                            (let ((_e250037250941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl250026250922_))))
                      (let ((_tl250035250946_
                             (let ()
                               (declare (not safe))
                               (##cdr _e250037250941_)))
                            (_hd250036250944_
                             (let ()
                               (declare (not safe))
                               (##car _e250037250941_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd250036250944_))
                            (let ((_e250040250949_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd250036250944_))))
                              (let ((_tl250038250954_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e250040250949_)))
                                    (_hd250039250952_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e250040250949_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd250039250952_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd250039250952_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl250038250954_))
                                            (let ((_e250043250957_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl250038250954_))))
                                              (let ((_tl250041250962_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e250043250957_)))
                                                    (_hd250042250960_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e250043250957_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl250041250962_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl250035250946_))
                                                        (let ((___splice260154260155_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl250035250946_ '0))))
                  (let ((_tl250046250967_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice260154260155_ '1)))
                        (_target250044250965_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice260154260155_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl250046250967_))
                        (___match260255260256_
                         _e250016250885_
                         _hd250015250888_
                         _tl250014250890_
                         _e250019250893_
                         _hd250018250896_
                         _tl250017250898_
                         _e250022250901_
                         _hd250021250904_
                         _tl250020250906_
                         _e250025250909_
                         _hd250024250912_
                         _tl250023250914_
                         _e250028250917_
                         _hd250027250920_
                         _tl250026250922_
                         _e250031250925_
                         _hd250030250928_
                         _tl250029250930_
                         _e250034250933_
                         _hd250033250936_
                         _tl250032250938_
                         _e250037250941_
                         _hd250036250944_
                         _tl250035250946_
                         _e250040250949_
                         _hd250039250952_
                         _tl250038250954_
                         _e250043250957_
                         _hd250042250960_
                         _tl250041250962_
                         ___splice260154260155_
                         _target250044250965_
                         _tl250046250967_)
                        (___match260443260444_
                         _e250016250885_
                         _hd250015250888_
                         _tl250014250890_
                         _e250019250893_
                         _hd250018250896_
                         _tl250017250898_
                         _e250022250901_
                         _hd250021250904_
                         _tl250020250906_
                         _e250025250909_
                         _hd250024250912_
                         _tl250023250914_
                         _e250028250917_
                         _hd250027250920_
                         _tl250026250922_
                         _e250031250925_
                         _hd250030250928_
                         _tl250029250930_
                         _e250034250933_
                         _hd250033250936_
                         _tl250032250938_
                         _e250037250941_
                         _hd250036250944_
                         _tl250035250946_
                         _e250040250949_
                         _hd250039250952_
                         _tl250038250954_
                         _e250043250957_
                         _hd250042250960_
                         _tl250041250962_))))
                (___match260443260444_
                 _e250016250885_
                 _hd250015250888_
                 _tl250014250890_
                 _e250019250893_
                 _hd250018250896_
                 _tl250017250898_
                 _e250022250901_
                 _hd250021250904_
                 _tl250020250906_
                 _e250025250909_
                 _hd250024250912_
                 _tl250023250914_
                 _e250028250917_
                 _hd250027250920_
                 _tl250026250922_
                 _e250031250925_
                 _hd250030250928_
                 _tl250029250930_
                 _e250034250933_
                 _hd250033250936_
                 _tl250032250938_
                 _e250037250941_
                 _hd250036250944_
                 _tl250035250946_
                 _e250040250949_
                 _hd250039250952_
                 _tl250038250954_
                 _e250043250957_
                 _hd250042250960_
                 _tl250041250962_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match260647260648_
                                                     _e250016250885_
                                                     _hd250015250888_
                                                     _tl250014250890_
                                                     _e250019250893_
                                                     _hd250018250896_
                                                     _tl250017250898_
                                                     _e250022250901_
                                                     _hd250021250904_
                                                     _tl250020250906_
                                                     _e250025250909_
                                                     _hd250024250912_
                                                     _tl250023250914_
                                                     _e250028250917_
                                                     _hd250027250920_
                                                     _tl250026250922_
                                                     _e250031250925_
                                                     _hd250030250928_
                                                     _tl250029250930_
                                                     _e250034250933_
                                                     _hd250033250936_
                                                     _tl250032250938_
                                                     _e250037250941_
                                                     _hd250036250944_
                                                     _tl250035250946_))))
                                            (___match260647260648_
                                             _e250016250885_
                                             _hd250015250888_
                                             _tl250014250890_
                                             _e250019250893_
                                             _hd250018250896_
                                             _tl250017250898_
                                             _e250022250901_
                                             _hd250021250904_
                                             _tl250020250906_
                                             _e250025250909_
                                             _hd250024250912_
                                             _tl250023250914_
                                             _e250028250917_
                                             _hd250027250920_
                                             _tl250026250922_
                                             _e250031250925_
                                             _hd250030250928_
                                             _tl250029250930_
                                             _e250034250933_
                                             _hd250033250936_
                                             _tl250032250938_
                                             _e250037250941_
                                             _hd250036250944_
                                             _tl250035250946_))
                                        (___match260323260324_
                                         _e250016250885_
                                         _hd250015250888_
                                         _tl250014250890_
                                         _e250019250893_
                                         _hd250018250896_
                                         _tl250017250898_
                                         _e250022250901_
                                         _hd250021250904_
                                         _tl250020250906_
                                         _e250025250909_
                                         _hd250024250912_
                                         _tl250023250914_
                                         _e250028250917_
                                         _hd250027250920_
                                         _tl250026250922_
                                         _e250031250925_
                                         _hd250030250928_
                                         _tl250029250930_
                                         _e250034250933_
                                         _hd250033250936_
                                         _tl250032250938_
                                         _e250037250941_
                                         _hd250036250944_
                                         _tl250035250946_
                                         _e250040250949_
                                         _hd250039250952_
                                         _tl250038250954_))
                                    (___match260647260648_
                                     _e250016250885_
                                     _hd250015250888_
                                     _tl250014250890_
                                     _e250019250893_
                                     _hd250018250896_
                                     _tl250017250898_
                                     _e250022250901_
                                     _hd250021250904_
                                     _tl250020250906_
                                     _e250025250909_
                                     _hd250024250912_
                                     _tl250023250914_
                                     _e250028250917_
                                     _hd250027250920_
                                     _tl250026250922_
                                     _e250031250925_
                                     _hd250030250928_
                                     _tl250029250930_
                                     _e250034250933_
                                     _hd250033250936_
                                     _tl250032250938_
                                     _e250037250941_
                                     _hd250036250944_
                                     _tl250035250946_))))
                            (___match260647260648_
                             _e250016250885_
                             _hd250015250888_
                             _tl250014250890_
                             _e250019250893_
                             _hd250018250896_
                             _tl250017250898_
                             _e250022250901_
                             _hd250021250904_
                             _tl250020250906_
                             _e250025250909_
                             _hd250024250912_
                             _tl250023250914_
                             _e250028250917_
                             _hd250027250920_
                             _tl250026250922_
                             _e250031250925_
                             _hd250030250928_
                             _tl250029250930_
                             _e250034250933_
                             _hd250033250936_
                             _tl250032250938_
                             _e250037250941_
                             _hd250036250944_
                             _tl250035250946_))))
                    (___match260585260586_
                     _e250016250885_
                     _hd250015250888_
                     _tl250014250890_
                     _e250019250893_
                     _hd250018250896_
                     _tl250017250898_
                     _e250022250901_
                     _hd250021250904_
                     _tl250020250906_
                     _e250025250909_
                     _hd250024250912_
                     _tl250023250914_
                     _e250028250917_
                     _hd250027250920_
                     _tl250026250922_
                     _e250031250925_
                     _hd250030250928_
                     _tl250029250930_
                     _e250034250933_
                     _hd250033250936_
                     _tl250032250938_))
                (___kont260168260169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont260168260169_))
                                            (___kont260168260169_))
                                        (___kont260168260169_))))
                                (___kont260168260169_))))
                        (___kont260168260169_))
                    (___kont260168260169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont260168260169_))
                                                (___kont260168260169_))
                                            (___kont260168260169_))))
                                    (___kont260168260169_))))
                            (___kont260168260169_))))
                    (___kont260168260169_))))))))))
