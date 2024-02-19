(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1708337968)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl254474_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp259588 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl254474_ __tmp259588))
           (let ()
             (declare (not safe))
             (hash-put! _tbl254474_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl254474_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl254474_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl254474_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl254474_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx254457_ . _args254459_)
        (let ((__tmp259590
               (lambda ()
                 (declare (not safe))
                 (if (null? _args254459_)
                     (gxc#compile-e__0 _stx254457_)
                     (let ((_arg1254464_ (car _args254459_))
                           (_rest254466_ (cdr _args254459_)))
                       (if (null? _rest254466_)
                           (gxc#compile-e__1 _stx254457_ _arg1254464_)
                           (let ((_arg2254469_ (car _rest254466_))
                                 (_rest254471_ (cdr _rest254466_)))
                             (if (null? _rest254471_)
                                 (gxc#compile-e__2
                                  _stx254457_
                                  _arg1254464_
                                  _arg2254469_)
                                 (apply gxc#compile-e
                                        _stx254457_
                                        _arg1254464_
                                        _arg2254469_
                                        _rest254471_))))))))
              (__tmp259589 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp259590
           gxc#current-compile-methods
           __tmp259589))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl254454_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp259591 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl254454_ __tmp259591))
           (let ()
             (declare (not safe))
             (hash-put! _tbl254454_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl254454_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl254454_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl254454_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl254454_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl254454_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl254454_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl254454_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl254454_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl254454_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl254454_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl254454_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl254454_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl254454_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl254454_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl254454_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl254454_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx254437_ . _args254439_)
        (let ((__tmp259593
               (lambda ()
                 (declare (not safe))
                 (if (null? _args254439_)
                     (gxc#compile-e__0 _stx254437_)
                     (let ((_arg1254444_ (car _args254439_))
                           (_rest254446_ (cdr _args254439_)))
                       (if (null? _rest254446_)
                           (gxc#compile-e__1 _stx254437_ _arg1254444_)
                           (let ((_arg2254449_ (car _rest254446_))
                                 (_rest254451_ (cdr _rest254446_)))
                             (if (null? _rest254451_)
                                 (gxc#compile-e__2
                                  _stx254437_
                                  _arg1254444_
                                  _arg2254449_)
                                 (apply gxc#compile-e
                                        _stx254437_
                                        _arg1254444_
                                        _arg2254449_
                                        _rest254451_))))))))
              (__tmp259592 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp259593
           gxc#current-compile-methods
           __tmp259592))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl254434_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp259594 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl254434_ __tmp259594))
           (let ()
             (declare (not safe))
             (hash-put! _tbl254434_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl254434_ '%#call gxc#subst-object-refs-call%))
           _tbl254434_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx254417_ . _args254419_)
        (let ((__tmp259596
               (lambda ()
                 (declare (not safe))
                 (if (null? _args254419_)
                     (gxc#compile-e__0 _stx254417_)
                     (let ((_arg1254424_ (car _args254419_))
                           (_rest254426_ (cdr _args254419_)))
                       (if (null? _rest254426_)
                           (gxc#compile-e__1 _stx254417_ _arg1254424_)
                           (let ((_arg2254429_ (car _rest254426_))
                                 (_rest254431_ (cdr _rest254426_)))
                             (if (null? _rest254431_)
                                 (gxc#compile-e__2
                                  _stx254417_
                                  _arg1254424_
                                  _arg2254429_)
                                 (apply gxc#compile-e
                                        _stx254417_
                                        _arg1254424_
                                        _arg2254429_
                                        _rest254431_))))))))
              (__tmp259595 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp259596
           gxc#current-compile-methods
           __tmp259595))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx251087_)
        (letrec ((_generate-method-bind251089_
                  (lambda (_$t254411_ _id254412_ _$id254413_)
                    (let ((_$tmp254415_
                           (let ((__tmp259597 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp259597))))
                      (let ((__tmp259645
                             (let ()
                               (declare (not safe))
                               (cons _$id254413_ '())))
                            (__tmp259598
                             (let ((__tmp259599
                                    (let ((__tmp259600
                                           (let ((__tmp259643
                                                  (let ((__tmp259644
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp259644)))
                                                 (__tmp259601
                                                  (let ((__tmp259602
                                                         (let ((__tmp259603
                                                                (let ((__tmp259604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp259605
                                      (let ((__tmp259606
                                             (let ((__tmp259626
                                                    (let ((__tmp259627
                                                           (let ((__tmp259642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp254415_ '())))
                         (__tmp259628
                          (let ((__tmp259629
                                 (let ((__tmp259630
                                        (let ((__tmp259640
                                               (let ((__tmp259641
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp259641)))
                                              (__tmp259631
                                               (let ((__tmp259638
                                                      (let ((__tmp259639
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t254411_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp259639)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp259632
                                                      (let ((__tmp259636
                                                             (let ((__tmp259637
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp259637)))
                    (__tmp259633
                     (let ((__tmp259634
                            (let ((__tmp259635
                                   (let ()
                                     (declare (not safe))
                                     (cons _id254412_ '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp259635))))
                       (declare (not safe))
                       (cons __tmp259634 '()))))
                (declare (not safe))
                (cons __tmp259636 __tmp259633))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp259638
                                                       __tmp259632))))
                                          (declare (not safe))
                                          (cons __tmp259640 __tmp259631))))
                                   (declare (not safe))
                                   (cons '%#call __tmp259630))))
                            (declare (not safe))
                            (cons __tmp259629 '()))))
                     (declare (not safe))
                     (cons __tmp259642 __tmp259628))))
              (declare (not safe))
              (cons __tmp259627 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp259607
                                                    (let ((__tmp259608
                                                           (let ((__tmp259609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp259624
                                 (let ((__tmp259625
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp254415_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp259625)))
                                (__tmp259610
                                 (let ((__tmp259622
                                        (let ((__tmp259623
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp254415_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp259623)))
                                       (__tmp259611
                                        (let ((__tmp259612
                                               (let ((__tmp259613
                                                      (let ((__tmp259620
                                                             (let ((__tmp259621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp259621)))
                    (__tmp259614
                     (let ((__tmp259618
                            (let ((__tmp259619
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp259619)))
                           (__tmp259615
                            (let ((__tmp259616
                                   (let ((__tmp259617
                                          (let ()
                                            (declare (not safe))
                                            (cons _id254412_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp259617))))
                              (declare (not safe))
                              (cons __tmp259616 '()))))
                       (declare (not safe))
                       (cons __tmp259618 __tmp259615))))
                (declare (not safe))
                (cons __tmp259620 __tmp259614))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp259613))))
                                          (declare (not safe))
                                          (cons __tmp259612 '()))))
                                   (declare (not safe))
                                   (cons __tmp259622 __tmp259611))))
                            (declare (not safe))
                            (cons __tmp259624 __tmp259610))))
                     (declare (not safe))
                     (cons '%#if __tmp259609))))
              (declare (not safe))
              (cons __tmp259608 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp259626
                                                     __tmp259607))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp259606))))
                                 (declare (not safe))
                                 (cons __tmp259605 '()))))
                          (declare (not safe))
                          (cons '() __tmp259604))))
                   (declare (not safe))
                   (cons '%#lambda __tmp259603))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp259602 '()))))
                                             (declare (not safe))
                                             (cons __tmp259643 __tmp259601))))
                                      (declare (not safe))
                                      (cons '%#call __tmp259600))))
                               (declare (not safe))
                               (cons __tmp259599 '()))))
                        (declare (not safe))
                        (cons __tmp259645 __tmp259598)))))
                 (_generate-slot-bind251090_
                  (lambda (_$t254405_ _id254406_ _$id254407_)
                    (let ((_$tmp254409_
                           (let ((__tmp259646 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp259646))))
                      (let ((__tmp259683
                             (let ()
                               (declare (not safe))
                               (cons _$id254407_ '())))
                            (__tmp259647
                             (let ((__tmp259648
                                    (let ((__tmp259649
                                           (let ((__tmp259669
                                                  (let ((__tmp259670
                                                         (let ((__tmp259682
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp254409_ '())))
                       (__tmp259671
                        (let ((__tmp259672
                               (let ((__tmp259673
                                      (let ((__tmp259680
                                             (let ((__tmp259681
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp259681)))
                                            (__tmp259674
                                             (let ((__tmp259678
                                                    (let ((__tmp259679
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t254405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp259679)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp259675
                                                    (let ((__tmp259676
                                                           (let ((__tmp259677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id254406_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp259677))))
              (declare (not safe))
              (cons __tmp259676 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp259678
                                                     __tmp259675))))
                                        (declare (not safe))
                                        (cons __tmp259680 __tmp259674))))
                                 (declare (not safe))
                                 (cons '%#call __tmp259673))))
                          (declare (not safe))
                          (cons __tmp259672 '()))))
                   (declare (not safe))
                   (cons __tmp259682 __tmp259671))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp259670 '())))
                                                 (__tmp259650
                                                  (let ((__tmp259651
                                                         (let ((__tmp259652
                                                                (let ((__tmp259667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp259668
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp254409_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp259668)))
                              (__tmp259653
                               (let ((__tmp259665
                                      (let ((__tmp259666
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp254409_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp259666)))
                                     (__tmp259654
                                      (let ((__tmp259655
                                             (let ((__tmp259656
                                                    (let ((__tmp259663
                                                           (let ((__tmp259664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp259664)))
                  (__tmp259657
                   (let ((__tmp259661
                          (let ((__tmp259662
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp259662)))
                         (__tmp259658
                          (let ((__tmp259659
                                 (let ((__tmp259660
                                        (let ()
                                          (declare (not safe))
                                          (cons _id254406_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp259660))))
                            (declare (not safe))
                            (cons __tmp259659 '()))))
                     (declare (not safe))
                     (cons __tmp259661 __tmp259658))))
              (declare (not safe))
              (cons __tmp259663 __tmp259657))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp259656))))
                                        (declare (not safe))
                                        (cons __tmp259655 '()))))
                                 (declare (not safe))
                                 (cons __tmp259665 __tmp259654))))
                          (declare (not safe))
                          (cons __tmp259667 __tmp259653))))
                   (declare (not safe))
                   (cons '%#if __tmp259652))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp259651 '()))))
                                             (declare (not safe))
                                             (cons __tmp259669 __tmp259650))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp259649))))
                               (declare (not safe))
                               (cons __tmp259648 '()))))
                        (declare (not safe))
                        (cons __tmp259683 __tmp259647)))))
                 (_generate-class-check-bind251091_
                  (lambda (_$t254401_ _class-type254402_ _$class-type254403_)
                    (let ((__tmp259695
                           (let ()
                             (declare (not safe))
                             (cons _$class-type254403_ '())))
                          (__tmp259684
                           (let ((__tmp259685
                                  (let ((__tmp259686
                                         (let ((__tmp259693
                                                (let ((__tmp259694
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp259694)))
                                               (__tmp259687
                                                (let ((__tmp259691
                                                       (let ((__tmp259692
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t254401_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp259692)))
              (__tmp259688
               (let ((__tmp259689
                      (let ((__tmp259690
                             (let ()
                               (declare (not safe))
                               (cons _class-type254402_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp259690))))
                 (declare (not safe))
                 (cons __tmp259689 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp259691
                                                        __tmp259688))))
                                           (declare (not safe))
                                           (cons __tmp259693 __tmp259687))))
                                    (declare (not safe))
                                    (cons '%#call __tmp259686))))
                             (declare (not safe))
                             (cons __tmp259685 '()))))
                      (declare (not safe))
                      (cons __tmp259695 __tmp259684))))
                 (_generate-struct-check-bind251092_
                  (lambda (_$t254397_ _class-type254398_ _$class-type254399_)
                    (let ((__tmp259707
                           (let ()
                             (declare (not safe))
                             (cons _$class-type254399_ '())))
                          (__tmp259696
                           (let ((__tmp259697
                                  (let ((__tmp259698
                                         (let ((__tmp259705
                                                (let ((__tmp259706
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp259706)))
                                               (__tmp259699
                                                (let ((__tmp259703
                                                       (let ((__tmp259704
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t254397_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp259704)))
              (__tmp259700
               (let ((__tmp259701
                      (let ((__tmp259702
                             (let ()
                               (declare (not safe))
                               (cons _class-type254398_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp259702))))
                 (declare (not safe))
                 (cons __tmp259701 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp259703
                                                        __tmp259700))))
                                           (declare (not safe))
                                           (cons __tmp259705 __tmp259699))))
                                    (declare (not safe))
                                    (cons '%#call __tmp259698))))
                             (declare (not safe))
                             (cons __tmp259697 '()))))
                      (declare (not safe))
                      (cons __tmp259707 __tmp259696))))
                 (_generate-specializer-impl251093_
                  (lambda (_$t254346_
                           _methods-bind254347_
                           _slots-bind254348_
                           _class-check-bind254349_
                           _struct-check-bind254350_
                           _specializer-impl254351_
                           _lifted-specializer-id254352_
                           _unchecked-specializer-impl254353_)
                    (let ((__tmp259708
                           (let ((__tmp259709
                                  (let ((__tmp259735
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t254346_ '())))
                                        (__tmp259710
                                         (let ((__tmp259711
                                                (let ((__tmp259712
                                                       (let ((__tmp259732
                                                              (let ((__tmp259733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp259734
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind254350_
                                              _class-check-bind254349_))))
                               (declare (not safe))
                               (foldr1 cons __tmp259734 _slots-bind254348_))))
                        (declare (not safe))
                        (foldr1 cons __tmp259733 _methods-bind254347_)))
                     (__tmp259713
                      (let ((__tmp259714
                             (if (or _lifted-specializer-id254352_
                                     _unchecked-specializer-impl254353_)
                                 (let* ((_$specializer254358_
                                         (let ((__tmp259715
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp259715)))
                                        (__tmp259716
                                         (let ((__tmp259728
                                                (let ((__tmp259729
                                                       (let ((__tmp259731
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer254358_ '())))
                     (__tmp259730
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl254351_ '()))))
                 (declare (not safe))
                 (cons __tmp259731 __tmp259730))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp259729 '())))
                                               (__tmp259717
                                                (let ((__tmp259718
                                                       (let _recur254360_ ((_rest254362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind254350_)))
                 (let* ((_rest254363254371_ _rest254362_)
                        (_else254365254379_
                         (lambda ()
                           (if _lifted-specializer-id254352_
                               (let ((__tmp259719
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id254352_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp259719))
                               _unchecked-specializer-impl254353_)))
                        (_K254367254385_
                         (lambda (_rest254382_ _checkq254383_)
                           (let ((__tmp259720
                                  (let ((__tmp259726
                                         (let ((__tmp259727
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq254383_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp259727)))
                                        (__tmp259721
                                         (let ((__tmp259725
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur254360_
                                                   _rest254382_)))
                                               (__tmp259722
                                                (let ((__tmp259723
                                                       (let ((__tmp259724
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer254358_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp259724))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp259723 '()))))
                                           (declare (not safe))
                                           (cons __tmp259725 __tmp259722))))
                                    (declare (not safe))
                                    (cons __tmp259726 __tmp259721))))
                             (declare (not safe))
                             (cons '%#if __tmp259720)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest254363254371_))
                       (let ((_hd254368254388_
                              (let ()
                                (declare (not safe))
                                (##car _rest254363254371_)))
                             (_tl254369254390_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest254363254371_))))
                         (let* ((_checkq254393_ _hd254368254388_)
                                (_rest254395_ _tl254369254390_))
                           (declare (not safe))
                           (_K254367254385_ _rest254395_ _checkq254393_)))
                       (let () (declare (not safe)) (_else254365254379_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp259718 '()))))
                                           (declare (not safe))
                                           (cons __tmp259728 __tmp259717))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp259716))
                                 _specializer-impl254351_)))
                        (declare (not safe))
                        (cons __tmp259714 '()))))
                 (declare (not safe))
                 (cons __tmp259732 __tmp259713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp259712))))
                                           (declare (not safe))
                                           (cons __tmp259711 '()))))
                                    (declare (not safe))
                                    (cons __tmp259735 __tmp259710))))
                             (declare (not safe))
                             (cons '%#lambda __tmp259709))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp259708 _stx251087_))))
                 (_generate-specializer-def251094_
                  (lambda (_id254340_
                           _specializer-id254341_
                           _specializer-impl254342_
                           _lifted-specializer-id254343_
                           _unchecked-specializer-impl254344_)
                    (let ((__tmp259736
                           (let ((__tmp259737
                                  (let ((__tmp259738
                                         (let ((__tmp259758
                                                (let ((__tmp259759
                                                       (let ((__tmp259760
                                                              (let ((__tmp259762
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id254341_ '())))
                            (__tmp259761
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl254342_ '()))))
                        (declare (not safe))
                        (cons __tmp259762 __tmp259761))))
                 (declare (not safe))
                 (cons '%#define-values __tmp259760))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp259759
                                                   _stx251087_)))
                                               (__tmp259739
                                                (let ((__tmp259746
                                                       (let ((__tmp259747
                                                              (let ((__tmp259748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp259749
                                    (let ((__tmp259756
                                           (let ((__tmp259757
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp259757)))
                                          (__tmp259750
                                           (let ((__tmp259754
                                                  (let ((__tmp259755
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id254340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp259755)))
                                                 (__tmp259751
                                                  (let ((__tmp259752
                                                         (let ((__tmp259753
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id254341_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp259753))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp259752 '()))))
                                             (declare (not safe))
                                             (cons __tmp259754 __tmp259751))))
                                      (declare (not safe))
                                      (cons __tmp259756 __tmp259750))))
                               (declare (not safe))
                               (cons '%#call __tmp259749))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp259748 _stx251087_))))
                 (declare (not safe))
                 (cons __tmp259747 '())))
              (__tmp259740
               (if _lifted-specializer-id254343_
                   (let ((__tmp259741
                          (let ((__tmp259742
                                 (let ((__tmp259743
                                        (let ((__tmp259745
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id254343_
                                                       '())))
                                              (__tmp259744
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl254344_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp259745 __tmp259744))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp259743))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp259742 _stx251087_))))
                     (declare (not safe))
                     (cons __tmp259741 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp259746
                                                          __tmp259740))))
                                           (declare (not safe))
                                           (cons __tmp259758 __tmp259739))))
                                    (declare (not safe))
                                    (cons _stx251087_ __tmp259738))))
                             (declare (not safe))
                             (cons '%#begin __tmp259737))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp259736 _stx251087_)))))
          (let* ((___stx258549258550_ _stx251087_)
                 (_g251097251117_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx258549258550_)))))
            (let ((___kont258551258552_
                   (lambda (_L251161_ _L251162_)
                     (let ((_method-calls251181_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs251182_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_class-type-check251183_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-check251184_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-assert251185_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty251186_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?251188_
                                 (lambda ()
                                   (if (let ((__tmp259767
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls251181_))))
                                         (declare (not safe))
                                         (fxzero? __tmp259767))
                                       (if (let ((__tmp259766
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _slot-refs251182_))))
                                             (declare (not safe))
                                             (fxzero? __tmp259766))
                                           (if (let ((__tmp259765
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-length
                                                         _class-type-check251183_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp259765))
                                               (if (let ((__tmp259764
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (hash-length
                                                             _struct-type-check251184_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp259764))
                                                   (let ((__tmp259763
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (hash-length
                                                             _struct-type-assert251185_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp259763))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?251189_
                                 (lambda ()
                                   (let ((_$e254333_
                                          (let ((__tmp259768
                                                 (let ((__tmp259769
                                                        (let ()
                                                          (declare (not safe))
                                                          (hash-length
                                                           _struct-type-check251184_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp259769))))
                                            (declare (not safe))
                                            (not __tmp259768))))
                                     (if _$e254333_
                                         _$e254333_
                                         (let ((__tmp259770
                                                (let ((__tmp259771
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-length
                                                          _struct-type-assert251185_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp259771))))
                                           (declare (not safe))
                                           (not __tmp259770))))))
                                (_lift-unchecked-specializer?251190_
                                 (lambda ()
                                   (if (let ((__tmp259774
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls251181_))))
                                         (declare (not safe))
                                         (fxzero? __tmp259774))
                                       (if (let ((__tmp259773
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _slot-refs251182_))))
                                             (declare (not safe))
                                             (fxzero? __tmp259773))
                                           (let ((__tmp259772
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _class-type-check251183_))))
                                             (declare (not safe))
                                             (fxzero? __tmp259772))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L251161_))
                             (let* ((___stx258463258464_ _L251161_)
                                    (_g251703251721_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx258463258464_)))))
                               (let ((___kont258465258466_
                                      (lambda (_L251757_ _L251758_ _L251759_)
                                        (for-each
                                         (lambda (_g251774251776_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g251774251776_
                                              _L251759_
                                              _method-calls251181_
                                              _slot-refs251182_
                                              _class-type-check251183_
                                              _struct-type-check251184_
                                              _struct-type-assert251185_)))
                                         _L251757_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?251188_))
                                            _stx251087_
                                            (let* ((_specializer-id251785_
                                                    (let* ((_id251779_
                                                            (let ((__tmp259924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L251162_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp259924 '"::specialize")))
                   (_specializer-id251782_
                    (let ((__tmp259925
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx251087_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id251779_ __tmp259925))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id251782_))
              _specializer-id251782_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id251792_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?251190_))
                                                        (let* ((_id251787_
                                                                (let ((__tmp259926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L251162_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp259926
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id251789_
                        (let ((__tmp259927
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx251087_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id251787_ __tmp259927))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id251789_))
                  _lifted-specializer-id251789_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t251794_
                                                    (let ((__tmp259928
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp259928)))
                                                   (_methods251796_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls251181_)))
                                                   (_$methods251800_
                                                    (map (lambda (_id251798_)
                                                           (let ((__tmp259929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id251798_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp259929)))
                 _methods251796_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g259930_
                                                    (for-each
                                                     (lambda (_g251801251804_
                                                              _g251802251806_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls251181_
                                                          _g251801251804_
                                                          _g251802251806_)))
                                                     _methods251796_
                                                     _$methods251800_))
                                                   (_methods-bind251817_
                                                    (map (lambda (_g251809251812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g251810251814_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind251089_
                      _$t251794_
                      _g251809251812_
                      _g251810251814_)))
                 _methods251796_
                 _$methods251800_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots251819_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs251182_)))
                                                   (_$slots251823_
                                                    (map (lambda (_id251821_)
                                                           (let ((__tmp259931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id251821_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp259931)))
                 _slots251819_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g259932_
                                                    (for-each
                                                     (lambda (_g251824251827_
                                                              _g251825251829_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs251182_
                                                          _g251824251827_
                                                          _g251825251829_)))
                                                     _slots251819_
                                                     _$slots251823_))
                                                   (_slots-bind251840_
                                                    (map (lambda (_g251832251835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g251833251837_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind251090_
                      _$t251794_
                      _g251832251835_
                      _g251833251837_)))
                 _slots251819_
                 _$slots251823_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check251842_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check251183_)))
                                                   (_$class-check251845_
                                                    (map (lambda (_g259933_)
                                                           (let ((__tmp259934
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp259934)))
                 _class-check251842_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g259935_
                                                    (for-each
                                                     (lambda (_g251846251849_
                                                              _g251847251851_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _class-type-check251183_
                                                          _g251846251849_
                                                          _g251847251851_)))
                                                     _class-check251842_
                                                     _$class-check251845_))
                                                   (_class-check-bind251862_
                                                    (map (lambda (_g251854251857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g251855251859_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind251091_
                      _$t251794_
                      _g251854251857_
                      _g251855251859_)))
                 _class-check251842_
                 _$class-check251845_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all251864_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check251184_
                                                       _struct-type-assert251185_)))
                                                   (_struct-check251866_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all251864_)))
                                                   (_$struct-check251869_
                                                    (map (lambda (_g259936_)
                                                           (let ((__tmp259937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp259937)))
                 _struct-check251866_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g259938_
                                                    (for-each
                                                     (lambda (_g251870251873_
                                                              _g251871251875_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _struct-check-all251864_
                                                          _g251870251873_
                                                          _g251871251875_)))
                                                     _struct-check251866_
                                                     _$struct-check251869_))
                                                   (_struct-check-bind251886_
                                                    (map (lambda (_g251878251881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g251879251883_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind251092_
                      _$t251794_
                      _g251878251881_
                      _g251879251883_)))
                 _struct-check251866_
                 _$struct-check251869_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl251897_
                                                    (lambda (_struct-type-check1251888_
                                                             _struct-type-check2251889_)
                                                      (let* ((_specializer-body251895_
                                                              (map (lambda (_g251890251892_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g251890251892_
                                _L251759_
                                _$t251794_
                                _method-calls251181_
                                _slot-refs251182_
                                _class-type-check251183_
                                _struct-type-check1251888_
                                _struct-type-check2251889_)))
                           _L251757_))
                     (__tmp259939
                      (let ((__tmp259940
                             (let ((__tmp259941
                                    (let ()
                                      (declare (not safe))
                                      (cons _L251759_ _L251758_))))
                               (declare (not safe))
                               (cons __tmp259941 _specializer-body251895_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp259940))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp259939 _stx251087_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl251899_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl251897_
                                                       _struct-check-all251864_
                                                       _empty251186_)))
                                                   (_unchecked-specializer-impl251901_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?251189_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl251897_
                                                           _empty251186_
                                                           _struct-check-all251864_))
                                                        '#f))
                                                   (_specializer-impl251903_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl251093_
                                                       _$t251794_
                                                       _methods-bind251817_
                                                       _slots-bind251840_
                                                       _class-check-bind251862_
                                                       _struct-check-bind251886_
                                                       _specializer-impl251899_
                                                       _lifted-specializer-id251792_
                                                       _unchecked-specializer-impl251901_))))
                                              (let ((__tmp259943
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L251162_)))
                                                    (__tmp259942
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id251785_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp259943
                                                 '" => "
                                                 __tmp259942))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def251094_
                                                 _L251162_
                                                 _specializer-id251785_
                                                 _specializer-impl251903_
                                                 _lifted-specializer-id251792_
                                                 _unchecked-specializer-impl251901_))))))
                                     (___kont258467258468_
                                      (lambda () _stx251087_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx258463258464_))
                                     (let ((_e251710251733_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx258463258464_))))
                                       (let ((_tl251708251738_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e251710251733_)))
                                             (_hd251709251736_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e251710251733_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl251708251738_))
                                             (let ((_e251713251741_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl251708251738_))))
                                               (let ((_tl251711251746_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e251713251741_)))
                                                     (_hd251712251744_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e251713251741_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd251712251744_))
                                                     (let ((_e251716251749_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd251712251744_))))
                                                       (let ((_tl251714251754_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e251716251749_)))
                     (_hd251715251752_
                      (let () (declare (not safe)) (##car _e251716251749_))))
                 (___kont258465258466_
                  _tl251711251746_
                  _tl251714251754_
                  _hd251715251752_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont258467258468_))))
                                             (___kont258467258468_))))
                                     (___kont258467258468_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L251161_))
                                 (let* ((_g251909251928_
                                         (lambda (_g251910251925_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g251910251925_))))
                                        (_g251908252279_
                                         (lambda (_g251910251931_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g251910251931_))
                                               (let ((_e251914251933_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g251910251931_))))
                                                 (let ((_hd251913251936_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e251914251933_)))
                                                       (_tl251912251938_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e251914251933_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl251912251938_))
                                                       (let ((_g259900_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl251912251938_ '0))))
                 (begin
                   (let ((_g259901_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g259900_)
                                (##vector-length _g259900_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g259901_ 2)))
                         (error "Context expects 2 values" _g259901_)))
                   (let ((_target251915251941_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g259900_ 0)))
                         (_tl251917251943_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g259900_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl251917251943_))
                         (letrec ((_loop251918251946_
                                   (lambda (_hd251916251949_
                                            _clause251922251951_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd251916251949_))
                                         (let ((_e251919251954_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd251916251949_))))
                                           (let ((_lp-hd251920251957_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e251919251954_)))
                                                 (_lp-tl251921251959_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e251919251954_))))
                                             (let ((__tmp259923
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd251920251957_
                                                            _clause251922251951_))))
                                               (declare (not safe))
                                               (_loop251918251946_
                                                _lp-tl251921251959_
                                                __tmp259923))))
                                         (let ((_clause251923251962_
                                                (reverse _clause251922251951_)))
                                           ((lambda (_L251965_)
                                              (for-each
                                               (lambda (_clause251978_)
                                                 (let* ((___stx258489258490_
                                                         _clause251978_)
                                                        (_g251981251996_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx258489258490_)))))
                                                   (let ((___kont258491258492_
                                                          (lambda (_L252024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L252025_
                           _L252026_)
                    (for-each
                     (lambda (_g252041252043_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g252041252043_
                          _L252026_
                          _method-calls251181_
                          _slot-refs251182_
                          _class-type-check251183_
                          _struct-type-check251184_
                          _struct-type-assert251185_)))
                     _L252024_)))
                 (___kont258493258494_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx258489258490_))
                                                         (let ((_e251988252008_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx258489258490_))))
                   (let ((_tl251986252013_
                          (let ()
                            (declare (not safe))
                            (##cdr _e251988252008_)))
                         (_hd251987252011_
                          (let ()
                            (declare (not safe))
                            (##car _e251988252008_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd251987252011_))
                         (let ((_e251991252016_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd251987252011_))))
                           (let ((_tl251989252021_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e251991252016_)))
                                 (_hd251990252019_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e251991252016_))))
                             (___kont258491258492_
                              _tl251986252013_
                              _tl251989252021_
                              _hd251990252019_)))
                         (___kont258493258494_))))
                 (___kont258493258494_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp259902
                                                      (lambda (_g252048252051_
                                                               _g252049252053_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g252048252051_
                                                                _g252049252053_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp259902
                                                         '()
                                                         _L251965_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?251188_))
                                                  _stx251087_
                                                  (let* ((_specializer-id252062_
                                                          (let* ((_id252056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp259903
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L251162_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp259903 '"::specialize")))
                         (_specializer-id252059_
                          (let ((__tmp259904
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx251087_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id252056_ __tmp259904))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id252059_))
                    _specializer-id252059_))
                 (_lifted-specializer-id252069_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?251190_))
                      (let* ((_id252064_
                              (let ((__tmp259905
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L251162_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp259905
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id252066_
                              (let ((__tmp259906
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx251087_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id252064_
                                 __tmp259906))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id252066_))
                        _lifted-specializer-id252066_)
                      '#f))
                 (_$t252071_
                  (let ((__tmp259907 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp259907)))
                 (_methods252073_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls251181_)))
                 (_$methods252077_
                  (map (lambda (_id252075_)
                         (let ((__tmp259908 (gensym _id252075_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp259908)))
                       _methods252073_))
                 (_g259909_
                  (for-each
                   (lambda (_g252078252081_ _g252079252083_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls251181_
                        _g252078252081_
                        _g252079252083_)))
                   _methods252073_
                   _$methods252077_))
                 (_methods-bind252094_
                  (map (lambda (_g252086252089_ _g252087252091_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind251089_
                            _$t252071_
                            _g252086252089_
                            _g252087252091_)))
                       _methods252073_
                       _$methods252077_))
                 (_slots252096_
                  (let () (declare (not safe)) (hash-keys _slot-refs251182_)))
                 (_$slots252100_
                  (map (lambda (_id252098_)
                         (let ((__tmp259910 (gensym _id252098_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp259910)))
                       _slots252096_))
                 (_g259911_
                  (for-each
                   (lambda (_g252101252104_ _g252102252106_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs251182_
                        _g252101252104_
                        _g252102252106_)))
                   _slots252096_
                   _$slots252100_))
                 (_slots-bind252117_
                  (map (lambda (_g252109252112_ _g252110252114_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind251090_
                            _$t252071_
                            _g252109252112_
                            _g252110252114_)))
                       _slots252096_
                       _$slots252100_))
                 (_class-check252119_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check251183_)))
                 (_$class-check252122_
                  (map (lambda (_g259912_)
                         (let ((__tmp259913 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp259913)))
                       _class-check252119_))
                 (_g259914_
                  (for-each
                   (lambda (_g252123252126_ _g252124252128_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _class-type-check251183_
                        _g252123252126_
                        _g252124252128_)))
                   _class-check252119_
                   _$class-check252122_))
                 (_class-check-bind252139_
                  (map (lambda (_g252131252134_ _g252132252136_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind251091_
                            _$t252071_
                            _g252131252134_
                            _g252132252136_)))
                       _class-check252119_
                       _$class-check252122_))
                 (_struct-check-all252141_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check251184_
                     _struct-type-assert251185_)))
                 (_struct-check252143_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all252141_)))
                 (_$struct-check252146_
                  (map (lambda (_g259915_)
                         (let ((__tmp259916 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp259916)))
                       _struct-check252143_))
                 (_g259917_
                  (for-each
                   (lambda (_g252147252150_ _g252148252152_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _struct-check-all252141_
                        _g252147252150_
                        _g252148252152_)))
                   _struct-check252143_
                   _$struct-check252146_))
                 (_struct-check-bind252163_
                  (map (lambda (_g252155252158_ _g252156252160_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind251092_
                            _$t252071_
                            _g252155252158_
                            _g252156252160_)))
                       _struct-check252143_
                       _$struct-check252146_))
                 (_make-specializer-impl252270_
                  (lambda (_struct-type-check1252165_
                           _struct-type-check2252166_)
                    (let* ((_specializer-clauses252268_
                            (map (lambda (_clause252168_)
                                   (let* ((___stx258509258510_ _clause252168_)
                                          (_g252171252186_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx258509258510_)))))
                                     (let ((___kont258511258512_
                                            (lambda (_L252214_
                                                     _L252215_
                                                     _L252216_)
                                              (let* ((_body252256_
                                                      (map (lambda (_g252251252253_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g252251252253_
                        _L252216_
                        _$t252071_
                        _method-calls251181_
                        _slot-refs251182_
                        _class-type-check251183_
                        _struct-type-check1252165_
                        _struct-type-check2252166_)))
                   _L252214_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp259918
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L252216_
                                                              _L252215_))))
                                                (declare (not safe))
                                                (cons __tmp259918
                                                      _body252256_))))
                                           (___kont258513258514_
                                            (lambda () _clause252168_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx258509258510_))
                                           (let ((_e252178252198_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx258509258510_))))
                                             (let ((_tl252176252203_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e252178252198_)))
                                                   (_hd252177252201_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e252178252198_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd252177252201_))
                                                   (let ((_e252181252206_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd252177252201_))))
                                                     (let ((_tl252179252211_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e252181252206_)))
                                                           (_hd252180252209_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e252181252206_))))
                                                       (___kont258511258512_
                                                        _tl252176252203_
                                                        _tl252179252211_
                                                        _hd252180252209_)))
                                                   (___kont258513258514_))))
                                           (___kont258513258514_)))))
                                 (let ((__tmp259919
                                        (lambda (_g252260252263_
                                                 _g252261252265_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g252260252263_
                                                  _g252261252265_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp259919 '() _L251965_))))
                           (__tmp259920
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses252268_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp259920 _stx251087_))))
                 (_specializer-impl252272_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl252270_
                     _struct-check-all252141_
                     _empty251186_)))
                 (_unchecked-specializer-impl252274_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?251189_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl252270_
                         _empty251186_
                         _struct-check-all252141_))
                      '#f))
                 (_specializer-impl252276_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl251093_
                     _$t252071_
                     _methods-bind252094_
                     _slots-bind252117_
                     _class-check-bind252139_
                     _struct-check-bind252163_
                     _specializer-impl252272_
                     _lifted-specializer-id252069_
                     _unchecked-specializer-impl252274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp259922
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L251162_)))
                                                          (__tmp259921
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id252062_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp259922
                                                       '" => "
                                                       __tmp259921))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def251094_
                                                       _L251162_
                                                       _specializer-id252062_
                                                       _specializer-impl252276_
                                                       _lifted-specializer-id252069_
                                                       _unchecked-specializer-impl252274_)))))
                                            _clause251923251962_))))))
                           (let ()
                             (declare (not safe))
                             (_loop251918251946_ _target251915251941_ '())))
                         (let ()
                           (declare (not safe))
                           (_g251909251928_ _g251910251931_))))))
               (let ()
                 (declare (not safe))
                 (_g251909251928_ _g251910251931_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g251909251928_
                                                  _g251910251931_))))))
                                   (declare (not safe))
                                   (_g251908252279_ _L251161_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L251161_))
                                     (let* ((_g252282252312_
                                             (lambda (_g252283252309_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g252283252309_))))
                                            (_g252281253000_
                                             (lambda (_g252283252315_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g252283252315_))
                                                   (let ((_e252289252317_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g252283252315_))))
                                                     (let ((_hd252288252320_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e252289252317_)))
                                                           (_tl252287252322_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e252289252317_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl252287252322_))
                                                           (let ((_e252292252325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl252287252322_))))
                     (let ((_hd252291252328_
                            (let ()
                              (declare (not safe))
                              (##car _e252292252325_)))
                           (_tl252290252330_
                            (let ()
                              (declare (not safe))
                              (##cdr _e252292252325_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd252291252328_))
                           (let ((_e252295252333_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd252291252328_))))
                             (let ((_hd252294252336_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e252295252333_)))
                                   (_tl252293252338_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e252295252333_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd252294252336_))
                                   (let ((_e252298252341_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd252294252336_))))
                                     (let ((_hd252297252344_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e252298252341_)))
                                           (_tl252296252346_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e252298252341_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd252297252344_))
                                           (let ((_e252301252349_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd252297252344_))))
                                             (let ((_hd252300252352_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e252301252349_)))
                                                   (_tl252299252354_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e252301252349_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl252299252354_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl252296252346_))
                                                       (let ((_e252304252357_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl252296252346_))))
                 (let ((_hd252303252360_
                        (let () (declare (not safe)) (##car _e252304252357_)))
                       (_tl252302252362_
                        (let () (declare (not safe)) (##cdr _e252304252357_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl252302252362_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl252293252338_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl252290252330_))
                               (let ((_e252307252365_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl252290252330_))))
                                 (let ((_hd252306252368_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e252307252365_)))
                                       (_tl252305252370_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e252307252365_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl252305252370_))
                                       ((lambda (_L252373_ _L252374_ _L252375_)
                                          (let* ((_g252398252416_
                                                  (lambda (_g252399252413_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g252399252413_))))
                                                 (_g252397252467_
                                                  (lambda (_g252399252419_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g252399252419_))
                                                        (let ((_e252405252421_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g252399252419_))))
                  (let ((_hd252404252424_
                         (let () (declare (not safe)) (##car _e252405252421_)))
                        (_tl252403252426_
                         (let ()
                           (declare (not safe))
                           (##cdr _e252405252421_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl252403252426_))
                        (let ((_e252408252429_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl252403252426_))))
                          (let ((_hd252407252432_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e252408252429_)))
                                (_tl252406252434_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e252408252429_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd252407252432_))
                                (let ((_e252411252437_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd252407252432_))))
                                  (let ((_hd252410252440_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e252411252437_)))
                                        (_tl252409252442_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e252411252437_))))
                                    ((lambda (_L252445_ _L252446_ _L252447_)
                                       (for-each
                                        (lambda (_g252462252464_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g252462252464_
                                             _L252447_
                                             _method-calls251181_
                                             _slot-refs251182_
                                             _class-type-check251183_
                                             _struct-type-check251184_
                                             _struct-type-assert251185_)))
                                        _L252445_))
                                     _tl252406252434_
                                     _tl252409252442_
                                     _hd252410252440_)))
                                (let ()
                                  (declare (not safe))
                                  (_g252398252416_ _g252399252419_)))))
                        (let ()
                          (declare (not safe))
                          (_g252398252416_ _g252399252419_)))))
                (let ()
                  (declare (not safe))
                  (_g252398252416_ _g252399252419_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g252397252467_ _L252374_))
                                          (let* ((_g252470252489_
                                                  (lambda (_g252471252486_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g252471252486_))))
                                                 (_g252469252608_
                                                  (lambda (_g252471252492_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g252471252492_))
                                                        (let ((_e252475252494_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g252471252492_))))
                  (let ((_hd252474252497_
                         (let () (declare (not safe)) (##car _e252475252494_)))
                        (_tl252473252499_
                         (let ()
                           (declare (not safe))
                           (##cdr _e252475252494_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl252473252499_))
                        (let ((_g259863_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl252473252499_
                                  '0))))
                          (begin
                            (let ((_g259864_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g259863_)
                                         (##vector-length _g259863_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g259864_ 2)))
                                  (error "Context expects 2 values"
                                         _g259864_)))
                            (let ((_target252476252502_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g259863_ 0)))
                                  (_tl252478252504_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g259863_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl252478252504_))
                                  (letrec ((_loop252479252507_
                                            (lambda (_hd252477252510_
                                                     _clause252483252512_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd252477252510_))
                                                  (let ((_e252480252515_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd252477252510_))))
                                                    (let ((_lp-hd252481252518_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e252480252515_)))
                                                          (_lp-tl252482252520_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e252480252515_))))
                                                      (let ((__tmp259866
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd252481252518_ _clause252483252512_))))
                (declare (not safe))
                (_loop252479252507_ _lp-tl252482252520_ __tmp259866))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause252484252523_
                                                         (reverse _clause252483252512_)))
                                                    ((lambda (_L252526_)
                                                       (for-each
                                                        (lambda (_clause252539_)
                                                          (let* ((_g252541252556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g252542252553_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g252542252553_))))
                         (_g252540252598_
                          (lambda (_g252542252559_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g252542252559_))
                                (let ((_e252548252561_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g252542252559_))))
                                  (let ((_hd252547252564_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e252548252561_)))
                                        (_tl252546252566_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e252548252561_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd252547252564_))
                                        (let ((_e252551252569_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd252547252564_))))
                                          (let ((_hd252550252572_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e252551252569_)))
                                                (_tl252549252574_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e252551252569_))))
                                            ((lambda (_L252577_
                                                      _L252578_
                                                      _L252579_)
                                               (for-each
                                                (lambda (_g252593252595_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g252593252595_
                                                     _L252579_
                                                     _method-calls251181_
                                                     _slot-refs251182_
                                                     _class-type-check251183_
                                                     _struct-type-check251184_
                                                     _struct-type-assert251185_)))
                                                _L252577_))
                                             _tl252546252566_
                                             _tl252549252574_
                                             _hd252550252572_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g252541252556_ _g252542252559_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g252541252556_ _g252542252559_))))))
                    (declare (not safe))
                    (_g252540252598_ _clause252539_)))
                (let ((__tmp259865
                       (lambda (_g252600252603_ _g252601252605_)
                         (let ()
                           (declare (not safe))
                           (cons _g252600252603_ _g252601252605_)))))
                  (declare (not safe))
                  (foldr1 __tmp259865 '() _L252526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause252484252523_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop252479252507_
                                       _target252476252502_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g252470252489_ _g252471252492_))))))
                        (let ()
                          (declare (not safe))
                          (_g252470252489_ _g252471252492_)))))
                (let ()
                  (declare (not safe))
                  (_g252470252489_ _g252471252492_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g252469252608_ _L252373_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?251188_))
                                              _stx251087_
                                              (let* ((_specializer-id252617_
                                                      (let* ((_id252611_
                                                              (let ((__tmp259867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L251162_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp259867 '"::specialize")))
                     (_specializer-id252614_
                      (let ((__tmp259868
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx251087_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id252611_ __tmp259868))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id252614_))
                _specializer-id252614_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id252624_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?251190_))
                                                          (let* ((_id252619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp259869
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L251162_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp259869
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id252621_
                          (let ((__tmp259870
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx251087_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id252619_ __tmp259870))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id252621_))
                    _lifted-specializer-id252621_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t252626_
                                                      (let ((__tmp259871
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp259871)))
                                                     (_methods252628_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls251181_)))
                                                     (_$methods252632_
                                                      (map (lambda (_id252630_)
                                                             (let ((__tmp259872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id252630_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp259872)))
                   _methods252628_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g259873_
                                                      (for-each
                                                       (lambda (_g252633252636_
                                                                _g252634252638_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls251181_
                                                            _g252633252636_
                                                            _g252634252638_)))
                                                       _methods252628_
                                                       _$methods252632_))
                                                     (_methods-bind252649_
                                                      (map (lambda (_g252641252644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g252642252646_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind251089_
                        _$t252626_
                        _g252641252644_
                        _g252642252646_)))
                   _methods252628_
                   _$methods252632_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots252651_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs251182_)))
                                                     (_$slots252655_
                                                      (map (lambda (_id252653_)
                                                             (let ((__tmp259874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id252653_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp259874)))
                   _slots252651_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g259875_
                                                      (for-each
                                                       (lambda (_g252656252659_
                                                                _g252657252661_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs251182_
                                                            _g252656252659_
                                                            _g252657252661_)))
                                                       _slots252651_
                                                       _$slots252655_))
                                                     (_slots-bind252672_
                                                      (map (lambda (_g252664252667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g252665252669_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind251090_
                        _$t252626_
                        _g252664252667_
                        _g252665252669_)))
                   _slots252651_
                   _$slots252655_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check252674_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check251183_)))
                                                     (_$class-check252677_
                                                      (map (lambda (_g259876_)
                                                             (let ((__tmp259877
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp259877)))
                   _class-check252674_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g259878_
                                                      (for-each
                                                       (lambda (_g252678252681_
                                                                _g252679252683_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _class-type-check251183_
                                                            _g252678252681_
                                                            _g252679252683_)))
                                                       _class-check252674_
                                                       _$class-check252677_))
                                                     (_class-check-bind252694_
                                                      (map (lambda (_g252686252689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g252687252691_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind251091_
                        _$t252626_
                        _g252686252689_
                        _g252687252691_)))
                   _class-check252674_
                   _$class-check252677_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all252696_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check251184_
                                                         _struct-type-assert251185_)))
                                                     (_struct-check252698_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all252696_)))
                                                     (_$struct-check252701_
                                                      (map (lambda (_g259879_)
                                                             (let ((__tmp259880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp259880)))
                   _struct-check252698_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g259881_
                                                      (for-each
                                                       (lambda (_g252702252705_
                                                                _g252703252707_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _struct-check-all252696_
                                                            _g252702252705_
                                                            _g252703252707_)))
                                                       _struct-check252698_
                                                       _$struct-check252701_))
                                                     (_struct-check-bind252718_
                                                      (map (lambda (_g252710252713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g252711252715_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind251092_
                        _$t252626_
                        _g252710252713_
                        _g252711252715_)))
                   _struct-check252698_
                   _$struct-check252701_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr252817_
                                                      (lambda (_struct-type-check1252720_
                                                               _struct-type-check2252721_)
                                                        (let* ((_g252723252741_
                                                                (lambda (_g252724252738_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g252724252738_))))
                       (_g252722252814_
                        (lambda (_g252724252744_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g252724252744_))
                              (let ((_e252730252746_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g252724252744_))))
                                (let ((_hd252729252749_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e252730252746_)))
                                      (_tl252728252751_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e252730252746_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl252728252751_))
                                      (let ((_e252733252754_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl252728252751_))))
                                        (let ((_hd252732252757_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e252733252754_)))
                                              (_tl252731252759_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e252733252754_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd252732252757_))
                                              (let ((_e252736252762_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd252732252757_))))
                                                (let ((_hd252735252765_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e252736252762_)))
                                                      (_tl252734252767_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e252736252762_))))
                                                  ((lambda (_L252770_
                                                            _L252771_
                                                            _L252772_)
                                                     (let* ((_body252812_
                                                             (map (lambda (_g252807252809_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g252807252809_
                               _L252772_
                               _$t252626_
                               _method-calls251181_
                               _slot-refs251182_
                               _class-type-check251183_
                               _struct-type-check1252720_
                               _struct-type-check2252721_)))
                          _L252770_))
                    (__tmp259882
                     (let ((__tmp259883
                            (let ((__tmp259884
                                   (let ()
                                     (declare (not safe))
                                     (cons _L252772_ _L252771_))))
                              (declare (not safe))
                              (cons __tmp259884 _body252812_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp259883))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp259882 _L252374_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl252731252759_
                                                   _tl252734252767_
                                                   _hd252735252765_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g252723252741_
                                                 _g252724252744_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g252723252741_ _g252724252744_)))))
                              (let ()
                                (declare (not safe))
                                (_g252723252741_ _g252724252744_))))))
                  (declare (not safe))
                  (_g252722252814_ _L252374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr252978_
                                                      (lambda (_struct-type-check1252819_
                                                               _struct-type-check2252820_)
                                                        (let* ((_g252822252841_
                                                                (lambda (_g252823252838_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g252823252838_))))
                       (_g252821252975_
                        (lambda (_g252823252844_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g252823252844_))
                              (let ((_e252827252846_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g252823252844_))))
                                (let ((_hd252826252849_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e252827252846_)))
                                      (_tl252825252851_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e252827252846_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl252825252851_))
                                      (let ((_g259885_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl252825252851_
                                                '0))))
                                        (begin
                                          (let ((_g259886_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g259885_)
                                                       (##vector-length
                                                        _g259885_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g259886_ 2)))
                                                (error "Context expects 2 values"
                                                       _g259886_)))
                                          (let ((_target252828252854_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g259885_ 0)))
                                                (_tl252830252856_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g259885_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl252830252856_))
                                                (letrec ((_loop252831252859_
                                                          (lambda (_hd252829252862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause252835252864_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd252829252862_))
                        (let ((_e252832252867_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd252829252862_))))
                          (let ((_lp-hd252833252870_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e252832252867_)))
                                (_lp-tl252834252872_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e252832252867_))))
                            (let ((__tmp259890
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd252833252870_
                                           _clause252835252864_))))
                              (declare (not safe))
                              (_loop252831252859_
                               _lp-tl252834252872_
                               __tmp259890))))
                        (let ((_clause252836252875_
                               (reverse _clause252835252864_)))
                          ((lambda (_L252878_)
                             (let* ((_clauses252973_
                                     (map (lambda (_clause252893_)
                                            (let* ((___stx258529258530_
                                                    _clause252893_)
                                                   (_g252896252911_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx258529258530_)))))
                                              (let ((___kont258531258532_
                                                     (lambda (_L252939_
                                                              _L252940_
                                                              _L252941_)
                                                       (let* ((_body252961_
                                                               (map (lambda (_g252956252958_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g252956252958_
                                 _L252941_
                                 _$t252626_
                                 _method-calls251181_
                                 _slot-refs251182_
                                 _class-type-check251183_
                                 _struct-type-check1252819_
                                 _struct-type-check2252820_)))
                            _L252939_))
                      (__tmp259887
                       (let ()
                         (declare (not safe))
                         (cons _L252941_ _L252940_))))
                 (declare (not safe))
                 (cons __tmp259887 _body252961_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont258533258534_
                                                     (lambda ()
                                                       _clause252893_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx258529258530_))
                                                    (let ((_e252903252923_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx258529258530_))))
                                                      (let ((_tl252901252928_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e252903252923_)))
                    (_hd252902252926_
                     (let () (declare (not safe)) (##car _e252903252923_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd252902252926_))
                    (let ((_e252906252931_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd252902252926_))))
                      (let ((_tl252904252936_
                             (let ()
                               (declare (not safe))
                               (##cdr _e252906252931_)))
                            (_hd252905252934_
                             (let ()
                               (declare (not safe))
                               (##car _e252906252931_))))
                        (___kont258531258532_
                         _tl252901252928_
                         _tl252904252936_
                         _hd252905252934_)))
                    (___kont258533258534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont258533258534_)))))
                                          (let ((__tmp259888
                                                 (lambda (_g252965252968_
                                                          _g252966252970_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g252965252968_
                                                           _g252966252970_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp259888
                                                    '()
                                                    _L252878_))))
                                    (__tmp259889
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses252973_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp259889 _L252373_)))
                           _clause252836252875_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop252831252859_
                                                     _target252828252854_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g252822252841_
                                                   _g252823252844_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g252822252841_ _g252823252844_)))))
                              (let ()
                                (declare (not safe))
                                (_g252822252841_ _g252823252844_))))))
                  (declare (not safe))
                  (_g252821252975_ _L252373_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl252983_
                                                      (lambda (_specializer-lambda-expr252980_
                                                               _specializer-case-lambda-expr252981_)
                                                        (let ((__tmp259891
                                                               (let ((__tmp259892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp259894
                                     (let ((__tmp259895
                                            (let ((__tmp259897
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L252375_ '())))
                                                  (__tmp259896
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr252980_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp259897 __tmp259896))))
                                       (declare (not safe))
                                       (cons __tmp259895 '())))
                                    (__tmp259893
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr252981_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp259894 __tmp259893))))
                         (declare (not safe))
                         (cons '%#let-values __tmp259892))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp259891 _stx251087_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr252985_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr252817_
                                                         _struct-check-all252696_
                                                         _empty251186_)))
                                                     (_specializer-case-lambda-expr252987_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr252978_
                                                         _struct-check-all252696_
                                                         _empty251186_)))
                                                     (_specializer-impl252989_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl252983_
                                                         _specializer-lambda-expr252985_
                                                         _specializer-case-lambda-expr252987_)))
                                                     (_unchecked-specializer-lambda-expr252991_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?251189_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr252817_
                                                             _empty251186_
                                                             _struct-check-all252696_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr252993_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?251189_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr252978_
                                                             _empty251186_
                                                             _struct-check-all252696_))
                                                          '#f))
                                                     (_unchecked-specializer-impl252995_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?251189_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl252983_
                                                             _unchecked-specializer-lambda-expr252991_
                                                             _unchecked-specializer-case-lambda-expr252993_))
                                                          '#f))
                                                     (_specializer-impl252997_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl251093_
                                                         _$t252626_
                                                         _methods-bind252649_
                                                         _slots-bind252672_
                                                         _class-check-bind252694_
                                                         _struct-check-bind252718_
                                                         _specializer-impl252989_
                                                         _lifted-specializer-id252624_
                                                         _unchecked-specializer-impl252995_))))
                                                (let ((__tmp259899
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L251162_)))
                                                      (__tmp259898
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id252617_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp259899
                                                   '" => "
                                                   __tmp259898))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def251094_
                                                   _L251162_
                                                   _specializer-id252617_
                                                   _specializer-impl252997_
                                                   _lifted-specializer-id252624_
                                                   _unchecked-specializer-impl252995_)))))
                                        _hd252306252368_
                                        _hd252303252360_
                                        _hd252300252352_)
                                       (let ()
                                         (declare (not safe))
                                         (_g252282252312_ _g252283252315_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g252282252312_ _g252283252315_)))
                           (let ()
                             (declare (not safe))
                             (_g252282252312_ _g252283252315_)))
                       (let ()
                         (declare (not safe))
                         (_g252282252312_ _g252283252315_)))))
               (let () (declare (not safe)) (_g252282252312_ _g252283252315_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g252282252312_
                                                      _g252283252315_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g252282252312_
                                              _g252283252315_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g252282252312_ _g252283252315_)))))
                           (let ()
                             (declare (not safe))
                             (_g252282252312_ _g252283252315_)))))
                   (let ()
                     (declare (not safe))
                     (_g252282252312_ _g252283252315_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g252282252312_
                                                      _g252283252315_))))))
                                       (declare (not safe))
                                       (_g252281253000_ _L251161_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L251161_))
                                         (let* ((_g253003253056_
                                                 (lambda (_g253004253053_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g253004253053_))))
                                                (_g253002254328_
                                                 (lambda (_g253004253059_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g253004253059_))
                                                       (let ((_e253012253061_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g253004253059_))))
                 (let ((_hd253011253064_
                        (let () (declare (not safe)) (##car _e253012253061_)))
                       (_tl253010253066_
                        (let () (declare (not safe)) (##cdr _e253012253061_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd253011253064_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd253011253064_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl253010253066_))
                               (let ((_e253015253069_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl253010253066_))))
                                 (let ((_hd253014253072_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e253015253069_)))
                                       (_tl253013253074_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e253015253069_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd253014253072_))
                                       (let ((_e253018253077_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd253014253072_))))
                                         (let ((_hd253017253080_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e253018253077_)))
                                               (_tl253016253082_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e253018253077_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd253017253080_))
                                               (let ((_e253021253085_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd253017253080_))))
                                                 (let ((_hd253020253088_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e253021253085_)))
                                                       (_tl253019253090_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e253021253085_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd253020253088_))
                                                       (let ((_e253024253093_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd253020253088_))))
                 (let ((_hd253023253096_
                        (let () (declare (not safe)) (##car _e253024253093_)))
                       (_tl253022253098_
                        (let () (declare (not safe)) (##cdr _e253024253093_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl253022253098_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl253019253090_))
                           (let ((_e253027253101_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl253019253090_))))
                             (let ((_hd253026253104_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e253027253101_)))
                                   (_tl253025253106_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e253027253101_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd253026253104_))
                                   (let ((_e253030253109_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd253026253104_))))
                                     (let ((_hd253029253112_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e253030253109_)))
                                           (_tl253028253114_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e253030253109_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd253029253112_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd253029253112_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl253028253114_))
                                                   (let ((_e253033253117_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl253028253114_))))
                                                     (let ((_hd253032253120_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e253033253117_)))
                                                           (_tl253031253122_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e253033253117_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd253032253120_))
                                                           (let ((_e253036253125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd253032253120_))))
                     (let ((_hd253035253128_
                            (let ()
                              (declare (not safe))
                              (##car _e253036253125_)))
                           (_tl253034253130_
                            (let ()
                              (declare (not safe))
                              (##cdr _e253036253125_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd253035253128_))
                           (let ((_e253039253133_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd253035253128_))))
                             (let ((_hd253038253136_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e253039253133_)))
                                   (_tl253037253138_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e253039253133_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd253038253136_))
                                   (let ((_e253042253141_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd253038253136_))))
                                     (let ((_hd253041253144_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e253042253141_)))
                                           (_tl253040253146_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e253042253141_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl253040253146_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl253037253138_))
                                               (let ((_e253045253149_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl253037253138_))))
                                                 (let ((_hd253044253152_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e253045253149_)))
                                                       (_tl253043253154_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e253045253149_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl253043253154_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl253034253130_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl253031253122_))
                       (let ((_e253048253157_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl253031253122_))))
                         (let ((_hd253047253160_
                                (let ()
                                  (declare (not safe))
                                  (##car _e253048253157_)))
                               (_tl253046253162_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e253048253157_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl253046253162_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl253025253106_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl253016253082_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl253013253074_))
                                           (let ((_e253051253165_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl253013253074_))))
                                             (let ((_hd253050253168_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e253051253165_)))
                                                   (_tl253049253170_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e253051253165_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl253049253170_))
                                                   ((lambda (_L253173_
                                                             _L253174_
                                                             _L253175_
                                                             _L253176_
                                                             _L253177_)
                                                      (let* ((_g253216253278_
                                                              (lambda (_g253217253275_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g253217253275_))))
                     (_g253215254325_
                      (lambda (_g253217253281_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g253217253281_))
                            (let ((_e253225253283_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g253217253281_))))
                              (let ((_hd253224253286_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e253225253283_)))
                                    (_tl253223253288_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e253225253283_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd253224253286_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd253224253286_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl253223253288_))
                                            (let ((_e253228253291_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl253223253288_))))
                                              (let ((_hd253227253294_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e253228253291_)))
                                                    (_tl253226253296_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e253228253291_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl253226253296_))
                                                    (let ((_e253231253299_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl253226253296_))))
                                                      (let ((_hd253230253302_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e253231253299_)))
                    (_tl253229253304_
                     (let () (declare (not safe)) (##cdr _e253231253299_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd253230253302_))
                    (let ((_e253234253307_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd253230253302_))))
                      (let ((_hd253233253310_
                             (let ()
                               (declare (not safe))
                               (##car _e253234253307_)))
                            (_tl253232253312_
                             (let ()
                               (declare (not safe))
                               (##cdr _e253234253307_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd253233253310_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd253233253310_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl253232253312_))
                                    (let ((_e253237253315_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl253232253312_))))
                                      (let ((_hd253236253318_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e253237253315_)))
                                            (_tl253235253320_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e253237253315_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd253236253318_))
                                            (let ((_e253240253323_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd253236253318_))))
                                              (let ((_hd253239253326_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e253240253323_)))
                                                    (_tl253238253328_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e253240253323_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd253239253326_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd253239253326_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl253238253328_))
                                                            (let ((_e253243253331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl253238253328_))))
                      (let ((_hd253242253334_
                             (let ()
                               (declare (not safe))
                               (##car _e253243253331_)))
                            (_tl253241253336_
                             (let ()
                               (declare (not safe))
                               (##cdr _e253243253331_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl253241253336_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl253235253320_))
                                (let ((_e253246253339_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl253235253320_))))
                                  (let ((_hd253245253342_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e253246253339_)))
                                        (_tl253244253344_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e253246253339_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd253245253342_))
                                        (let ((_e253249253347_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd253245253342_))))
                                          (let ((_hd253248253350_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e253249253347_)))
                                                (_tl253247253352_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e253249253347_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd253248253350_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd253248253350_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl253247253352_))
                                                        (let ((_e253252253355_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl253247253352_))))
                  (let ((_hd253251253358_
                         (let () (declare (not safe)) (##car _e253252253355_)))
                        (_tl253250253360_
                         (let ()
                           (declare (not safe))
                           (##cdr _e253252253355_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl253250253360_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl253244253344_))
                            (let ((_e253255253363_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl253244253344_))))
                              (let ((_hd253254253366_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e253255253363_)))
                                    (_tl253253253368_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e253255253363_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd253254253366_))
                                    (let ((_e253258253371_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd253254253366_))))
                                      (let ((_hd253257253374_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e253258253371_)))
                                            (_tl253256253376_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e253258253371_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd253257253374_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd253257253374_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl253256253376_))
                                                    (let ((_e253261253379_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl253256253376_))))
                                                      (let ((_hd253260253382_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e253261253379_)))
                    (_tl253259253384_
                     (let () (declare (not safe)) (##cdr _e253261253379_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl253259253384_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl253253253368_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl253253253368_))
                                  '1)
                            (let ((_g259775_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl253253253368_
                                      '1))))
                              (begin
                                (let ((_g259776_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g259775_)
                                             (##vector-length _g259775_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g259776_ 2)))
                                      (error "Context expects 2 values"
                                             _g259776_)))
                                (let ((_target253262253387_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g259775_ 0)))
                                      (_tl253264253389_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g259775_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl253264253389_))
                                      (let ((_e253273253392_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl253264253389_))))
                                        (let ((_hd253272253395_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e253273253392_)))
                                              (_tl253271253397_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e253273253392_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl253271253397_))
                                              (letrec ((_loop253265253400_
                                                        (lambda (_hd253263253403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref253269253405_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd253263253403_))
                      (let ((_e253266253408_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd253263253403_))))
                        (let ((_lp-hd253267253411_
                               (let ()
                                 (declare (not safe))
                                 (##car _e253266253408_)))
                              (_lp-tl253268253413_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e253266253408_))))
                          (let ((__tmp259862
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd253267253411_
                                         _kw-ref253269253405_))))
                            (declare (not safe))
                            (_loop253265253400_
                             _lp-tl253268253413_
                             __tmp259862))))
                      (let ((_kw-ref253270253416_
                             (reverse _kw-ref253269253405_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl253229253304_))
                            ((lambda (_L253419_
                                      _L253420_
                                      _L253421_
                                      _L253422_
                                      _L253423_)
                               (let* ((_kw-count253474_
                                       (length (let ((__tmp259777
                                                      (lambda (_g253466253469_
                                                               _g253467253471_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g253466253469_
                                                                _g253467253471_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp259777
                                                         '()
                                                         _L253420_))))
                                      (_self-index253476_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count253474_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L253175_))
                                     (let* ((_g253479253493_
                                             (lambda (_g253480253490_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g253480253490_))))
                                            (_g253478253664_
                                             (lambda (_g253480253496_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g253480253496_))
                                                   (let ((_e253485253498_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g253480253496_))))
                                                     (let ((_hd253484253501_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e253485253498_)))
                                                           (_tl253483253503_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e253485253498_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl253483253503_))
                                                           (let ((_e253488253506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl253483253503_))))
                     (let ((_hd253487253509_
                            (let ()
                              (declare (not safe))
                              (##car _e253488253506_)))
                           (_tl253486253511_
                            (let ()
                              (declare (not safe))
                              (##cdr _e253488253506_))))
                       ((lambda (_L253514_ _L253515_)
                          (let ((_self253531_
                                 (list-ref _L253515_ _self-index253476_)))
                            (for-each
                             (lambda (_g253532253534_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g253532253534_
                                  _self253531_
                                  _method-calls251181_
                                  _slot-refs251182_
                                  _class-type-check251183_
                                  _struct-type-check251184_
                                  _struct-type-assert251185_)))
                             _L253514_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?251188_))
                                _stx251087_
                                (let* ((_specializer-id253543_
                                        (let* ((_id253537_
                                                (let ((__tmp259828
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L251162_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp259828
                                                   '"::specialize")))
                                               (_specializer-id253540_
                                                (let ((__tmp259829
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx251087_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id253537_
                                                   __tmp259829))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id253540_))
                                          _specializer-id253540_))
                                       (_lifted-specializer-id253550_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?251190_))
                                            (let* ((_id253545_
                                                    (let ((__tmp259830
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L251162_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp259830
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id253547_
                                                    (let ((__tmp259831
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx251087_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id253545_
                                                       __tmp259831))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id253547_))
                                              _lifted-specializer-id253547_)
                                            '#f))
                                       (_$t253552_
                                        (let ((__tmp259832 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp259832)))
                                       (_methods253554_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls251181_)))
                                       (_$methods253558_
                                        (map (lambda (_id253556_)
                                               (let ((__tmp259833
                                                      (gensym _id253556_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp259833)))
                                             _methods253554_))
                                       (_g259834_
                                        (for-each
                                         (lambda (_g253559253562_
                                                  _g253560253564_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls251181_
                                              _g253559253562_
                                              _g253560253564_)))
                                         _methods253554_
                                         _$methods253558_))
                                       (_methods-bind253575_
                                        (map (lambda (_g253567253570_
                                                      _g253568253572_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind251089_
                                                  _$t253552_
                                                  _g253567253570_
                                                  _g253568253572_)))
                                             _methods253554_
                                             _$methods253558_))
                                       (_slots253577_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs251182_)))
                                       (_$slots253581_
                                        (map (lambda (_id253579_)
                                               (let ((__tmp259835
                                                      (gensym _id253579_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp259835)))
                                             _slots253577_))
                                       (_g259836_
                                        (for-each
                                         (lambda (_g253582253585_
                                                  _g253583253587_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs251182_
                                              _g253582253585_
                                              _g253583253587_)))
                                         _slots253577_
                                         _$slots253581_))
                                       (_slots-bind253598_
                                        (map (lambda (_g253590253593_
                                                      _g253591253595_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind251090_
                                                  _$t253552_
                                                  _g253590253593_
                                                  _g253591253595_)))
                                             _slots253577_
                                             _$slots253581_))
                                       (_class-check253600_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check251183_)))
                                       (_$class-check253603_
                                        (map (lambda (_g259837_)
                                               (let ((__tmp259838
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp259838)))
                                             _class-check253600_))
                                       (_g259839_
                                        (for-each
                                         (lambda (_g253604253607_
                                                  _g253605253609_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _class-type-check251183_
                                              _g253604253607_
                                              _g253605253609_)))
                                         _class-check253600_
                                         _$class-check253603_))
                                       (_class-check-bind253620_
                                        (map (lambda (_g253612253615_
                                                      _g253613253617_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind251091_
                                                  _$t253552_
                                                  _g253612253615_
                                                  _g253613253617_)))
                                             _class-check253600_
                                             _$class-check253603_))
                                       (_struct-check-all253622_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check251184_
                                           _struct-type-assert251185_)))
                                       (_struct-check253624_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all253622_)))
                                       (_$struct-check253627_
                                        (map (lambda (_g259840_)
                                               (let ((__tmp259841
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp259841)))
                                             _struct-check253624_))
                                       (_g259842_
                                        (for-each
                                         (lambda (_g253628253631_
                                                  _g253629253633_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _struct-check-all253622_
                                              _g253628253631_
                                              _g253629253633_)))
                                         _struct-check253624_
                                         _$struct-check253627_))
                                       (_struct-check-bind253644_
                                        (map (lambda (_g253636253639_
                                                      _g253637253641_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind251092_
                                                  _$t253552_
                                                  _g253636253639_
                                                  _g253637253641_)))
                                             _struct-check253624_
                                             _$struct-check253627_))
                                       (_make-specializer-impl253655_
                                        (lambda (_struct-type-check1253646_
                                                 _struct-type-check2253647_)
                                          (let* ((_specializer-body253653_
                                                  (map (lambda (_g253648253650_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g253648253650_
                                                            _self253531_
                                                            _$t253552_
                                                            _method-calls251181_
                                                            _slot-refs251182_
                                                            _class-type-check251183_
                                                            _struct-type-check1253646_
                                                            _struct-type-check2253647_)))
                                                       _L253514_))
                                                 (__tmp259843
                                                  (let ((__tmp259844
                                                         (let ((__tmp259846
                                                                (let ((__tmp259847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp259859
                                      (let ()
                                        (declare (not safe))
                                        (cons _L253177_ '())))
                                     (__tmp259848
                                      (let ((__tmp259849
                                             (let ((__tmp259850
                                                    (let ((__tmp259852
                                                           (let ((__tmp259853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp259858
                                 (let ()
                                   (declare (not safe))
                                   (cons _L253176_ '())))
                                (__tmp259854
                                 (let ((__tmp259855
                                        (let ((__tmp259856
                                               (let ((__tmp259857
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L253515_
                                                              _specializer-body253653_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp259857))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp259856
                                           _L253175_))))
                                   (declare (not safe))
                                   (cons __tmp259855 '()))))
                            (declare (not safe))
                            (cons __tmp259858 __tmp259854))))
                     (declare (not safe))
                     (cons __tmp259853 '())))
                  (__tmp259851
                   (let () (declare (not safe)) (cons _L253174_ '()))))
              (declare (not safe))
              (cons __tmp259852 __tmp259851))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp259850))))
                                        (declare (not safe))
                                        (cons __tmp259849 '()))))
                                 (declare (not safe))
                                 (cons __tmp259859 __tmp259848))))
                          (declare (not safe))
                          (cons __tmp259847 '())))
                       (__tmp259845
                        (let () (declare (not safe)) (cons _L253173_ '()))))
                   (declare (not safe))
                   (cons __tmp259846 __tmp259845))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp259844))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp259843
                                             _stx251087_))))
                                       (_specializer-impl253657_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl253655_
                                           _struct-check-all253622_
                                           _empty251186_)))
                                       (_unchecked-specializer-impl253659_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?251189_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl253655_
                                               _empty251186_
                                               _struct-check-all253622_))
                                            '#f))
                                       (_specializer-impl253661_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl251093_
                                           _$t253552_
                                           _methods-bind253575_
                                           _slots-bind253598_
                                           _class-check-bind253620_
                                           _struct-check-bind253644_
                                           _specializer-impl253657_
                                           _lifted-specializer-id253550_
                                           _unchecked-specializer-impl253659_))))
                                  (let ((__tmp259861
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L251162_)))
                                        (__tmp259860
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id253543_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp259861
                                     '" => "
                                     __tmp259860))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def251094_
                                     _L251162_
                                     _specializer-id253543_
                                     _specializer-impl253661_
                                     _lifted-specializer-id253550_
                                     _unchecked-specializer-impl253659_))))))
                        _tl253486253511_
                        _hd253487253509_)))
                   (let ()
                     (declare (not safe))
                     (_g253479253493_ _g253480253496_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g253479253493_
                                                      _g253480253496_))))))
                                       (declare (not safe))
                                       (_g253478253664_ _L253175_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L253175_))
                                         (let* ((_g253667253697_
                                                 (lambda (_g253668253694_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g253668253694_))))
                                                (_g253666254322_
                                                 (lambda (_g253668253700_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g253668253700_))
                                                       (let ((_e253674253702_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g253668253700_))))
                 (let ((_hd253673253705_
                        (let () (declare (not safe)) (##car _e253674253702_)))
                       (_tl253672253707_
                        (let () (declare (not safe)) (##cdr _e253674253702_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl253672253707_))
                       (let ((_e253677253710_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl253672253707_))))
                         (let ((_hd253676253713_
                                (let ()
                                  (declare (not safe))
                                  (##car _e253677253710_)))
                               (_tl253675253715_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e253677253710_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd253676253713_))
                               (let ((_e253680253718_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd253676253713_))))
                                 (let ((_hd253679253721_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e253680253718_)))
                                       (_tl253678253723_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e253680253718_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd253679253721_))
                                       (let ((_e253683253726_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd253679253721_))))
                                         (let ((_hd253682253729_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e253683253726_)))
                                               (_tl253681253731_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e253683253726_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd253682253729_))
                                               (let ((_e253686253734_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd253682253729_))))
                                                 (let ((_hd253685253737_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e253686253734_)))
                                                       (_tl253684253739_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e253686253734_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl253684253739_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl253681253731_))
                                                           (let ((_e253689253742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl253681253731_))))
                     (let ((_hd253688253745_
                            (let ()
                              (declare (not safe))
                              (##car _e253689253742_)))
                           (_tl253687253747_
                            (let ()
                              (declare (not safe))
                              (##cdr _e253689253742_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl253687253747_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl253678253723_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl253675253715_))
                                   (let ((_e253692253750_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl253675253715_))))
                                     (let ((_hd253691253753_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e253692253750_)))
                                           (_tl253690253755_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e253692253750_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl253690253755_))
                                           ((lambda (_L253758_
                                                     _L253759_
                                                     _L253760_)
                                              (let* ((_g253783253797_
                                                      (lambda (_g253784253794_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g253784253794_))))
                                                     (_g253782253838_
                                                      (lambda (_g253784253800_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g253784253800_))
                                                            (let ((_e253789253802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g253784253800_))))
                      (let ((_hd253788253805_
                             (let ()
                               (declare (not safe))
                               (##car _e253789253802_)))
                            (_tl253787253807_
                             (let ()
                               (declare (not safe))
                               (##cdr _e253789253802_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl253787253807_))
                            (let ((_e253792253810_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl253787253807_))))
                              (let ((_hd253791253813_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e253792253810_)))
                                    (_tl253790253815_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e253792253810_))))
                                ((lambda (_L253818_ _L253819_)
                                   (let ((_self253832_
                                          (list-ref
                                           _L253819_
                                           _self-index253476_)))
                                     (for-each
                                      (lambda (_g253833253835_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g253833253835_
                                           _self253832_
                                           _method-calls251181_
                                           _slot-refs251182_
                                           _class-type-check251183_
                                           _struct-type-check251184_
                                           _struct-type-assert251185_)))
                                      _L253818_)))
                                 _tl253790253815_
                                 _hd253791253813_)))
                            (let ()
                              (declare (not safe))
                              (_g253783253797_ _g253784253800_)))))
                    (let ()
                      (declare (not safe))
                      (_g253783253797_ _g253784253800_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g253782253838_ _L253759_))
                                              (let* ((_g253841253860_
                                                      (lambda (_g253842253857_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g253842253857_))))
                                                     (_g253840253965_
                                                      (lambda (_g253842253863_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g253842253863_))
                                                            (let ((_e253846253865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g253842253863_))))
                      (let ((_hd253845253868_
                             (let ()
                               (declare (not safe))
                               (##car _e253846253865_)))
                            (_tl253844253870_
                             (let ()
                               (declare (not safe))
                               (##cdr _e253846253865_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl253844253870_))
                            (let ((_g259778_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl253844253870_
                                      '0))))
                              (begin
                                (let ((_g259779_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g259778_)
                                             (##vector-length _g259778_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g259779_ 2)))
                                      (error "Context expects 2 values"
                                             _g259779_)))
                                (let ((_target253847253873_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g259778_ 0)))
                                      (_tl253849253875_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g259778_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl253849253875_))
                                      (letrec ((_loop253850253878_
                                                (lambda (_hd253848253881_
                                                         _clause253854253883_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd253848253881_))
                                                      (let ((_e253851253886_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd253848253881_))))
                (let ((_lp-hd253852253889_
                       (let () (declare (not safe)) (##car _e253851253886_)))
                      (_lp-tl253853253891_
                       (let () (declare (not safe)) (##cdr _e253851253886_))))
                  (let ((__tmp259781
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd253852253889_ _clause253854253883_))))
                    (declare (not safe))
                    (_loop253850253878_ _lp-tl253853253891_ __tmp259781))))
              (let ((_clause253855253894_ (reverse _clause253854253883_)))
                ((lambda (_L253897_)
                   (for-each
                    (lambda (_clause253910_)
                      (let* ((_g253912253923_
                              (lambda (_g253913253920_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g253913253920_))))
                             (_g253911253955_
                              (lambda (_g253913253926_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g253913253926_))
                                    (let ((_e253918253928_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g253913253926_))))
                                      (let ((_hd253917253931_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e253918253928_)))
                                            (_tl253916253933_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e253918253928_))))
                                        ((lambda (_L253936_ _L253937_)
                                           (let ((_self253949_
                                                  (list-ref
                                                   _L253937_
                                                   _self-index253476_)))
                                             (for-each
                                              (lambda (_g253950253952_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g253950253952_
                                                   _self253949_
                                                   _method-calls251181_
                                                   _slot-refs251182_
                                                   _class-type-check251183_
                                                   _struct-type-check251184_
                                                   _struct-type-assert251185_)))
                                              _L253936_)))
                                         _tl253916253933_
                                         _hd253917253931_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g253912253923_ _g253913253926_))))))
                        (declare (not safe))
                        (_g253911253955_ _clause253910_)))
                    (let ((__tmp259780
                           (lambda (_g253957253960_ _g253958253962_)
                             (let ()
                               (declare (not safe))
                               (cons _g253957253960_ _g253958253962_)))))
                      (declare (not safe))
                      (foldr1 __tmp259780 '() _L253897_))))
                 _clause253855253894_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop253850253878_
                                           _target253847253873_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g253841253860_ _g253842253863_))))))
                            (let ()
                              (declare (not safe))
                              (_g253841253860_ _g253842253863_)))))
                    (let ()
                      (declare (not safe))
                      (_g253841253860_ _g253842253863_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g253840253965_ _L253758_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?251188_))
                                                  _stx251087_
                                                  (let* ((_specializer-id253974_
                                                          (let* ((_id253968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp259782
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L251162_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp259782 '"::specialize")))
                         (_specializer-id253971_
                          (let ((__tmp259783
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx251087_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id253968_ __tmp259783))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id253971_))
                    _specializer-id253971_))
                 (_lifted-specializer-id253981_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?251190_))
                      (let* ((_id253976_
                              (let ((__tmp259784
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L251162_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp259784
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id253978_
                              (let ((__tmp259785
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx251087_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id253976_
                                 __tmp259785))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id253978_))
                        _lifted-specializer-id253978_)
                      '#f))
                 (_$t253983_
                  (let ((__tmp259786 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp259786)))
                 (_methods253985_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls251181_)))
                 (_$methods253989_
                  (map (lambda (_id253987_)
                         (let ((__tmp259787 (gensym _id253987_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp259787)))
                       _methods253985_))
                 (_g259788_
                  (for-each
                   (lambda (_g253990253993_ _g253991253995_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls251181_
                        _g253990253993_
                        _g253991253995_)))
                   _methods253985_
                   _$methods253989_))
                 (_methods-bind254006_
                  (map (lambda (_g253998254001_ _g253999254003_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind251089_
                            _$t253983_
                            _g253998254001_
                            _g253999254003_)))
                       _methods253985_
                       _$methods253989_))
                 (_slots254008_
                  (let () (declare (not safe)) (hash-keys _slot-refs251182_)))
                 (_$slots254012_
                  (map (lambda (_id254010_)
                         (let ((__tmp259789 (gensym _id254010_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp259789)))
                       _slots254008_))
                 (_g259790_
                  (for-each
                   (lambda (_g254013254016_ _g254014254018_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs251182_
                        _g254013254016_
                        _g254014254018_)))
                   _slots254008_
                   _$slots254012_))
                 (_slots-bind254029_
                  (map (lambda (_g254021254024_ _g254022254026_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind251090_
                            _$t253983_
                            _g254021254024_
                            _g254022254026_)))
                       _slots254008_
                       _$slots254012_))
                 (_class-check254031_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check251183_)))
                 (_$class-check254034_
                  (map (lambda (_g259791_)
                         (let ((__tmp259792 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp259792)))
                       _class-check254031_))
                 (_g259793_
                  (for-each
                   (lambda (_g254035254038_ _g254036254040_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _class-type-check251183_
                        _g254035254038_
                        _g254036254040_)))
                   _class-check254031_
                   _$class-check254034_))
                 (_class-check-bind254051_
                  (map (lambda (_g254043254046_ _g254044254048_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind251091_
                            _$t253983_
                            _g254043254046_
                            _g254044254048_)))
                       _class-check254031_
                       _$class-check254034_))
                 (_struct-check-all254053_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check251184_
                     _struct-type-assert251185_)))
                 (_struct-check254055_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all254053_)))
                 (_$struct-check254058_
                  (map (lambda (_g259794_)
                         (let ((__tmp259795 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp259795)))
                       _struct-check254055_))
                 (_g259796_
                  (for-each
                   (lambda (_g254059254062_ _g254060254064_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _struct-check-all254053_
                        _g254059254062_
                        _g254060254064_)))
                   _struct-check254055_
                   _$struct-check254058_))
                 (_struct-check-bind254075_
                  (map (lambda (_g254067254070_ _g254068254072_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind251092_
                            _$t253983_
                            _g254067254070_
                            _g254068254072_)))
                       _struct-check254055_
                       _$struct-check254058_))
                 (_make-specializer-lambda-expr254161_
                  (lambda (_struct-type-check1254077_
                           _struct-type-check2254078_)
                    (let* ((_g254080254094_
                            (lambda (_g254081254091_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g254081254091_))))
                           (_g254079254158_
                            (lambda (_g254081254097_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g254081254097_))
                                  (let ((_e254086254099_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g254081254097_))))
                                    (let ((_hd254085254102_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e254086254099_)))
                                          (_tl254084254104_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e254086254099_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl254084254104_))
                                          (let ((_e254089254107_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl254084254104_))))
                                            (let ((_hd254088254110_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e254089254107_)))
                                                  (_tl254087254112_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e254089254107_))))
                                              ((lambda (_L254115_ _L254116_)
                                                 (let* ((_self254149_
                                                         (list-ref
                                                          _L254116_
                                                          _self-index253476_))
                                                        (_body254155_
                                                         (map (lambda (_g254150254152_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g254150254152_
                           _self254149_
                           _$t253983_
                           _method-calls251181_
                           _slot-refs251182_
                           _class-type-check251183_
                           _struct-type-check1254077_
                           _struct-type-check2254078_)))
                      _L254115_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp259797
                                                          (let ((__tmp259798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L254116_ _body254155_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp259798))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp259797
                                                      _L253759_))))
                                               _tl254087254112_
                                               _hd254088254110_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g254080254094_
                                             _g254081254097_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g254080254094_ _g254081254097_))))))
                      (declare (not safe))
                      (_g254079254158_ _L253759_))))
                 (_make-specializer-case-lambda-expr254300_
                  (lambda (_struct-type-check1254163_
                           _struct-type-check2254164_)
                    (let* ((_g254166254185_
                            (lambda (_g254167254182_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g254167254182_))))
                           (_g254165254297_
                            (lambda (_g254167254188_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g254167254188_))
                                  (let ((_e254171254190_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g254167254188_))))
                                    (let ((_hd254170254193_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e254171254190_)))
                                          (_tl254169254195_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e254171254190_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl254169254195_))
                                          (let ((_g259799_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl254169254195_
                                                    '0))))
                                            (begin
                                              (let ((_g259800_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g259799_)
                                                           (##vector-length
                                                            _g259799_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g259800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g259800_)))
                                              (let ((_target254172254198_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g259799_
                                                        0)))
                                                    (_tl254174254200_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g259799_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl254174254200_))
                                                    (letrec ((_loop254175254203_
                                                              (lambda (_hd254173254206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause254179254208_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd254173254206_))
                            (let ((_e254176254211_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd254173254206_))))
                              (let ((_lp-hd254177254214_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e254176254211_)))
                                    (_lp-tl254178254216_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e254176254211_))))
                                (let ((__tmp259803
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd254177254214_
                                               _clause254179254208_))))
                                  (declare (not safe))
                                  (_loop254175254203_
                                   _lp-tl254178254216_
                                   __tmp259803))))
                            (let ((_clause254180254219_
                                   (reverse _clause254179254208_)))
                              ((lambda (_L254222_)
                                 (let* ((_clauses254295_
                                         (map (lambda (_clause254237_)
                                                (let* ((_g254239254250_
                                                        (lambda (_g254240254247_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g254240254247_))))
                                                       (_g254238254285_
                                                        (lambda (_g254240254253_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g254240254253_))
                      (let ((_e254245254255_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g254240254253_))))
                        (let ((_hd254244254258_
                               (let ()
                                 (declare (not safe))
                                 (##car _e254245254255_)))
                              (_tl254243254260_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e254245254255_))))
                          ((lambda (_L254263_ _L254264_)
                             (let* ((_self254276_
                                     (list-ref _L254264_ _self-index253476_))
                                    (_body254282_
                                     (map (lambda (_g254277254279_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g254277254279_
                                               _self254276_
                                               _$t253983_
                                               _method-calls251181_
                                               _slot-refs251182_
                                               _class-type-check251183_
                                               _struct-type-check1254163_
                                               _struct-type-check2254164_)))
                                          _L254263_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L254264_ _body254282_))))
                           _tl254243254260_
                           _hd254244254258_)))
                      (let ()
                        (declare (not safe))
                        (_g254239254250_ _g254240254253_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g254238254285_
                                                   _clause254237_)))
                                              (let ((__tmp259801
                                                     (lambda (_g254287254290_
                                                              _g254288254292_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g254287254290_
                                                               _g254288254292_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp259801
                                                        '()
                                                        _L254222_))))
                                        (__tmp259802
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses254295_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp259802
                                    _L253758_)))
                               _clause254180254219_))))))
              (let ()
                (declare (not safe))
                (_loop254175254203_ _target254172254198_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g254166254185_
                                                       _g254167254188_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g254166254185_
                                             _g254167254188_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g254166254185_ _g254167254188_))))))
                      (declare (not safe))
                      (_g254165254297_ _L253758_))))
                 (_make-specializer-impl254305_
                  (lambda (_specializer-lambda-expr254302_
                           _specializer-case-lambda-expr254303_)
                    (let ((__tmp259804
                           (let ((__tmp259805
                                  (let ((__tmp259807
                                         (let ((__tmp259808
                                                (let ((__tmp259825
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L253177_ '())))
                                                      (__tmp259809
                                                       (let ((__tmp259810
                                                              (let ((__tmp259811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp259813
                                    (let ((__tmp259814
                                           (let ((__tmp259824
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L253176_ '())))
                                                 (__tmp259815
                                                  (let ((__tmp259816
                                                         (let ((__tmp259817
                                                                (let ((__tmp259818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp259820
                                      (let ((__tmp259821
                                             (let ((__tmp259823
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L253760_ '())))
                                                   (__tmp259822
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr254302_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp259823
                                                     __tmp259822))))
                                        (declare (not safe))
                                        (cons __tmp259821 '())))
                                     (__tmp259819
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr254303_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp259820 __tmp259819))))
                          (declare (not safe))
                          (cons '%#let-values __tmp259818))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp259817 _stx251087_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp259816 '()))))
                                             (declare (not safe))
                                             (cons __tmp259824 __tmp259815))))
                                      (declare (not safe))
                                      (cons __tmp259814 '())))
                                   (__tmp259812
                                    (let ()
                                      (declare (not safe))
                                      (cons _L253174_ '()))))
                               (declare (not safe))
                               (cons __tmp259813 __tmp259812))))
                        (declare (not safe))
                        (cons '%#let-values __tmp259811))))
                 (declare (not safe))
                 (cons __tmp259810 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp259825
                                                        __tmp259809))))
                                           (declare (not safe))
                                           (cons __tmp259808 '())))
                                        (__tmp259806
                                         (let ()
                                           (declare (not safe))
                                           (cons _L253173_ '()))))
                                    (declare (not safe))
                                    (cons __tmp259807 __tmp259806))))
                             (declare (not safe))
                             (cons '%#let-values __tmp259805))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp259804 _stx251087_))))
                 (_specializer-lambda-expr254307_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr254161_
                     _struct-check-all254053_
                     _empty251186_)))
                 (_specializer-case-lambda-expr254309_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr254300_
                     _struct-check-all254053_
                     _empty251186_)))
                 (_specializer-impl254311_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl254305_
                     _specializer-lambda-expr254307_
                     _specializer-case-lambda-expr254309_)))
                 (_unchecked-specializer-lambda-expr254313_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?251189_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr254161_
                         _empty251186_
                         _struct-check-all254053_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr254315_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?251189_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr254300_
                         _empty251186_
                         _struct-check-all254053_))
                      '#f))
                 (_unchecked-specializer-impl254317_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?251189_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl254305_
                         _unchecked-specializer-lambda-expr254313_
                         _unchecked-specializer-case-lambda-expr254315_))
                      '#f))
                 (_specializer-impl254319_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl251093_
                     _$t253983_
                     _methods-bind254006_
                     _slots-bind254029_
                     _class-check-bind254051_
                     _struct-check-bind254075_
                     _specializer-impl254311_
                     _lifted-specializer-id253981_
                     _unchecked-specializer-impl254317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp259827
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L251162_)))
                                                          (__tmp259826
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id253974_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp259827
                                                       '" => "
                                                       __tmp259826))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def251094_
                                                       _L251162_
                                                       _specializer-id253974_
                                                       _specializer-impl254319_
                                                       _lifted-specializer-id253981_
                                                       _unchecked-specializer-impl254317_)))))
                                            _hd253691253753_
                                            _hd253688253745_
                                            _hd253685253737_)
                                           (let ()
                                             (declare (not safe))
                                             (_g253667253697_
                                              _g253668253700_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g253667253697_ _g253668253700_)))
                               (let ()
                                 (declare (not safe))
                                 (_g253667253697_ _g253668253700_)))
                           (let ()
                             (declare (not safe))
                             (_g253667253697_ _g253668253700_)))))
                   (let ()
                     (declare (not safe))
                     (_g253667253697_ _g253668253700_)))
               (let ()
                 (declare (not safe))
                 (_g253667253697_ _g253668253700_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g253667253697_
                                                  _g253668253700_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g253667253697_ _g253668253700_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g253667253697_ _g253668253700_)))))
                       (let ()
                         (declare (not safe))
                         (_g253667253697_ _g253668253700_)))))
               (let ()
                 (declare (not safe))
                 (_g253667253697_ _g253668253700_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g253666254322_ _L253175_))
                                         _stx251087_))))
                             _hd253272253395_
                             _kw-ref253270253416_
                             _hd253260253382_
                             _hd253251253358_
                             _hd253242253334_)
                            (let ()
                              (declare (not safe))
                              (_g253216253278_ _g253217253281_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop253265253400_
                                                   _target253262253387_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g253216253278_
                                                 _g253217253281_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g253216253278_ _g253217253281_))))))
                            (let ()
                              (declare (not safe))
                              (_g253216253278_ _g253217253281_)))
                        (let ()
                          (declare (not safe))
                          (_g253216253278_ _g253217253281_)))
                    (let ()
                      (declare (not safe))
                      (_g253216253278_ _g253217253281_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g253216253278_
                                                       _g253217253281_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g253216253278_
                                                   _g253217253281_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g253216253278_
                                               _g253217253281_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g253216253278_ _g253217253281_)))))
                            (let ()
                              (declare (not safe))
                              (_g253216253278_ _g253217253281_)))
                        (let ()
                          (declare (not safe))
                          (_g253216253278_ _g253217253281_)))))
                (let ()
                  (declare (not safe))
                  (_g253216253278_ _g253217253281_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g253216253278_
                                                       _g253217253281_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g253216253278_
                                                   _g253217253281_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g253216253278_ _g253217253281_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g253216253278_ _g253217253281_)))
                            (let ()
                              (declare (not safe))
                              (_g253216253278_ _g253217253281_)))))
                    (let ()
                      (declare (not safe))
                      (_g253216253278_ _g253217253281_)))
                (let ()
                  (declare (not safe))
                  (_g253216253278_ _g253217253281_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g253216253278_
                                                       _g253217253281_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g253216253278_
                                               _g253217253281_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g253216253278_ _g253217253281_)))
                                (let ()
                                  (declare (not safe))
                                  (_g253216253278_ _g253217253281_)))
                            (let ()
                              (declare (not safe))
                              (_g253216253278_ _g253217253281_)))))
                    (let ()
                      (declare (not safe))
                      (_g253216253278_ _g253217253281_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g253216253278_
                                                       _g253217253281_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g253216253278_
                                               _g253217253281_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g253216253278_ _g253217253281_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g253216253278_ _g253217253281_)))))
                            (let ()
                              (declare (not safe))
                              (_g253216253278_ _g253217253281_))))))
                (declare (not safe))
                (_g253215254325_ _L253174_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd253050253168_
                                                    _hd253047253160_
                                                    _hd253044253152_
                                                    _hd253041253144_
                                                    _hd253023253096_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g253003253056_
                                                      _g253004253059_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g253003253056_
                                              _g253004253059_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g253003253056_ _g253004253059_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g253003253056_ _g253004253059_)))
                               (let ()
                                 (declare (not safe))
                                 (_g253003253056_ _g253004253059_)))))
                       (let ()
                         (declare (not safe))
                         (_g253003253056_ _g253004253059_)))
                   (let ()
                     (declare (not safe))
                     (_g253003253056_ _g253004253059_)))
               (let ()
                 (declare (not safe))
                 (_g253003253056_ _g253004253059_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g253003253056_
                                                  _g253004253059_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g253003253056_
                                              _g253004253059_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g253003253056_ _g253004253059_)))))
                           (let ()
                             (declare (not safe))
                             (_g253003253056_ _g253004253059_)))))
                   (let ()
                     (declare (not safe))
                     (_g253003253056_ _g253004253059_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g253003253056_
                                                      _g253004253059_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g253003253056_
                                                  _g253004253059_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g253003253056_
                                              _g253004253059_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g253003253056_ _g253004253059_)))))
                           (let ()
                             (declare (not safe))
                             (_g253003253056_ _g253004253059_)))
                       (let ()
                         (declare (not safe))
                         (_g253003253056_ _g253004253059_)))))
               (let ()
                 (declare (not safe))
                 (_g253003253056_ _g253004253059_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g253003253056_
                                                  _g253004253059_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g253003253056_ _g253004253059_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g253003253056_ _g253004253059_)))
                           (let ()
                             (declare (not safe))
                             (_g253003253056_ _g253004253059_)))
                       (let ()
                         (declare (not safe))
                         (_g253003253056_ _g253004253059_)))))
               (let ()
                 (declare (not safe))
                 (_g253003253056_ _g253004253059_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g253002254328_ _L251161_))
                                         _stx251087_))))))))
                  (___kont258553258554_ (lambda () _stx251087_)))
              (let ((___match258582258583_
                     (lambda (_e251103251129_
                              _hd251102251132_
                              _tl251101251134_
                              _e251106251137_
                              _hd251105251140_
                              _tl251104251142_
                              _e251109251145_
                              _hd251108251148_
                              _tl251107251150_
                              _e251112251153_
                              _hd251111251156_
                              _tl251110251158_)
                       (let ((_L251161_ _hd251111251156_)
                             (_L251162_ _hd251108251148_))
                         (if (let ((__tmp259944
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L251162_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp259944))
                             (___kont258551258552_ _L251161_ _L251162_)
                             (___kont258553258554_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx258549258550_))
                    (let ((_e251103251129_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx258549258550_))))
                      (let ((_tl251101251134_
                             (let ()
                               (declare (not safe))
                               (##cdr _e251103251129_)))
                            (_hd251102251132_
                             (let ()
                               (declare (not safe))
                               (##car _e251103251129_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl251101251134_))
                            (let ((_e251106251137_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl251101251134_))))
                              (let ((_tl251104251142_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e251106251137_)))
                                    (_hd251105251140_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e251106251137_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd251105251140_))
                                    (let ((_e251109251145_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd251105251140_))))
                                      (let ((_tl251107251150_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e251109251145_)))
                                            (_hd251108251148_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e251109251145_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl251107251150_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl251104251142_))
                                                (let ((_e251112251153_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl251104251142_))))
                                                  (let ((_tl251110251158_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e251112251153_)))
                                                        (_hd251111251156_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e251112251153_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl251110251158_))
                                                        (___match258582258583_
                                                         _e251103251129_
                                                         _hd251102251132_
                                                         _tl251101251134_
                                                         _e251106251137_
                                                         _hd251105251140_
                                                         _tl251104251142_
                                                         _e251109251145_
                                                         _hd251108251148_
                                                         _tl251107251150_
                                                         _e251112251153_
                                                         _hd251111251156_
                                                         _tl251110251158_)
                                                        (___kont258553258554_))))
                                                (___kont258553258554_))
                                            (___kont258553258554_))))
                                    (___kont258553258554_))))
                            (___kont258553258554_))))
                    (___kont258553258554_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx250063_
               _self250064_
               _methods250065_
               _slots250066_
               _class-check250067_
               _struct-check250068_
               _struct-assert250069_)
        (let* ((___stx258585258586_ _stx250063_)
               (_g250077250299_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx258585258586_)))))
          (let ((___kont258587258588_
                 (lambda (_L251036_ _L251037_ _L251038_ _L251039_)
                   (let ((__tmp259945
                          (let () (declare (not safe)) (gx#stx-e _L251037_))))
                     (declare (not safe))
                     (hash-put! _methods250065_ __tmp259945 '#t))
                   (for-each
                    (lambda (_g251072251074_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g251072251074_
                         _self250064_
                         _methods250065_
                         _slots250066_
                         _class-check250067_
                         _struct-check250068_
                         _struct-assert250069_)))
                    (let ((__tmp259946
                           (lambda (_g251076251079_ _g251077251081_)
                             (let ()
                               (declare (not safe))
                               (cons _g251076251079_ _g251077251081_)))))
                      (declare (not safe))
                      (foldr1 __tmp259946 '() _L251036_)))))
                (___kont258591258592_
                 (lambda (_L250871_ _L250872_ _L250873_ _L250874_ _L250875_)
                   (let ((__tmp259947
                          (let () (declare (not safe)) (gx#stx-e _L250872_))))
                     (declare (not safe))
                     (hash-put! _methods250065_ __tmp259947 '#t))
                   (for-each
                    (lambda (_g250915250917_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g250915250917_
                         _self250064_
                         _methods250065_
                         _slots250066_
                         _class-check250067_
                         _struct-check250068_
                         _struct-assert250069_)))
                    (let ((__tmp259948
                           (lambda (_g250919250922_ _g250920250924_)
                             (let ()
                               (declare (not safe))
                               (cons _g250919250922_ _g250920250924_)))))
                      (declare (not safe))
                      (foldr1 __tmp259948 '() _L250871_)))))
                (___kont258595258596_
                 (lambda (_L250704_ _L250705_ _L250706_)
                   (let ((__tmp259949
                          (let () (declare (not safe)) (gx#stx-e _L250704_))))
                     (declare (not safe))
                     (hash-put! _slots250066_ __tmp259949 '#t))))
                (___kont258597258598_
                 (lambda (_L250581_ _L250582_ _L250583_ _L250584_)
                   (let ((__tmp259950
                          (let () (declare (not safe)) (gx#stx-e _L250582_))))
                     (declare (not safe))
                     (hash-put! _slots250066_ __tmp259950 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L250581_
                      _self250064_
                      _methods250065_
                      _slots250066_
                      _class-check250067_
                      _struct-check250068_
                      _struct-assert250069_))))
                (___kont258599258600_
                 (lambda (_L250465_ _L250466_)
                   (let ((__tmp259951
                          (##structure-ref
                           (let ((__tmp259952
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L250466_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp259952))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (hash-put! _slots250066_ __tmp259951 '#t))))
                (___kont258601258602_
                 (lambda (_L250375_ _L250376_ _L250377_)
                   (let ((__tmp259953
                          (##structure-ref
                           (let ((__tmp259954
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L250377_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp259954))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (hash-put! _slots250066_ __tmp259953 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L250375_
                      _self250064_
                      _methods250065_
                      _slots250066_
                      _class-check250067_
                      _struct-check250068_
                      _struct-assert250069_))))
                (___kont258603258604_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx250063_
                      _self250064_
                      _methods250065_
                      _slots250066_
                      _class-check250067_
                      _struct-check250068_
                      _struct-assert250069_)))))
            (let* ((___match259084259085_
                    (lambda (_e250273250311_
                             _hd250272250314_
                             _tl250271250316_
                             _e250276250319_
                             _hd250275250322_
                             _tl250274250324_
                             _e250279250327_
                             _hd250278250330_
                             _tl250277250332_
                             _e250282250335_
                             _hd250281250338_
                             _tl250280250340_
                             _e250285250343_
                             _hd250284250346_
                             _tl250283250348_
                             _e250288250351_
                             _hd250287250354_
                             _tl250286250356_
                             _e250291250359_
                             _hd250290250362_
                             _tl250289250364_
                             _e250294250367_
                             _hd250293250370_
                             _tl250292250372_)
                      (let ((_L250375_ _hd250293250370_)
                            (_L250376_ _hd250290250362_)
                            (_L250377_ _hd250281250338_))
                        (if (and (let ((__tmp259955
                                        (let ((__tmp259956
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L250377_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp259956))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp259955
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L250376_
                                    _self250064_)))
                            (___kont258601258602_
                             _L250375_
                             _L250376_
                             _L250377_)
                            (___kont258603258604_)))))
                   (___match259082259083_
                    (lambda (_e250273250311_
                             _hd250272250314_
                             _tl250271250316_
                             _e250276250319_
                             _hd250275250322_
                             _tl250274250324_
                             _e250279250327_
                             _hd250278250330_
                             _tl250277250332_
                             _e250282250335_
                             _hd250281250338_
                             _tl250280250340_
                             _e250285250343_
                             _hd250284250346_
                             _tl250283250348_
                             _e250288250351_
                             _hd250287250354_
                             _tl250286250356_
                             _e250291250359_
                             _hd250290250362_
                             _tl250289250364_
                             _e250294250367_
                             _hd250293250370_
                             _tl250292250372_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl250292250372_))
                          (___match259084259085_
                           _e250273250311_
                           _hd250272250314_
                           _tl250271250316_
                           _e250276250319_
                           _hd250275250322_
                           _tl250274250324_
                           _e250279250327_
                           _hd250278250330_
                           _tl250277250332_
                           _e250282250335_
                           _hd250281250338_
                           _tl250280250340_
                           _e250285250343_
                           _hd250284250346_
                           _tl250283250348_
                           _e250288250351_
                           _hd250287250354_
                           _tl250286250356_
                           _e250291250359_
                           _hd250290250362_
                           _tl250289250364_
                           _e250294250367_
                           _hd250293250370_
                           _tl250292250372_)
                          (___kont258603258604_))))
                   (___match259076259077_
                    (lambda (_e250273250311_
                             _hd250272250314_
                             _tl250271250316_
                             _e250276250319_
                             _hd250275250322_
                             _tl250274250324_
                             _e250279250327_
                             _hd250278250330_
                             _tl250277250332_
                             _e250282250335_
                             _hd250281250338_
                             _tl250280250340_
                             _e250285250343_
                             _hd250284250346_
                             _tl250283250348_
                             _e250288250351_
                             _hd250287250354_
                             _tl250286250356_
                             _e250291250359_
                             _hd250290250362_
                             _tl250289250364_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl250283250348_))
                          (let ((_e250294250367_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl250283250348_))))
                            (let ((_tl250292250372_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e250294250367_)))
                                  (_hd250293250370_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e250294250367_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl250292250372_))
                                  (___match259084259085_
                                   _e250273250311_
                                   _hd250272250314_
                                   _tl250271250316_
                                   _e250276250319_
                                   _hd250275250322_
                                   _tl250274250324_
                                   _e250279250327_
                                   _hd250278250330_
                                   _tl250277250332_
                                   _e250282250335_
                                   _hd250281250338_
                                   _tl250280250340_
                                   _e250285250343_
                                   _hd250284250346_
                                   _tl250283250348_
                                   _e250288250351_
                                   _hd250287250354_
                                   _tl250286250356_
                                   _e250291250359_
                                   _hd250290250362_
                                   _tl250289250364_
                                   _e250294250367_
                                   _hd250293250370_
                                   _tl250292250372_)
                                  (___kont258603258604_))))
                          (___kont258603258604_))))
                   (___match259022259023_
                    (lambda (_e250249250409_
                             _hd250248250412_
                             _tl250247250414_
                             _e250252250417_
                             _hd250251250420_
                             _tl250250250422_
                             _e250255250425_
                             _hd250254250428_
                             _tl250253250430_
                             _e250258250433_
                             _hd250257250436_
                             _tl250256250438_
                             _e250261250441_
                             _hd250260250444_
                             _tl250259250446_
                             _e250264250449_
                             _hd250263250452_
                             _tl250262250454_
                             _e250267250457_
                             _hd250266250460_
                             _tl250265250462_)
                      (let ((_L250465_ _hd250266250460_)
                            (_L250466_ _hd250257250436_))
                        (if (and (let ((__tmp259957
                                        (let ((__tmp259958
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L250466_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp259958))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp259957
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L250465_
                                    _self250064_)))
                            (___kont258599258600_ _L250465_ _L250466_)
                            (___kont258603258604_)))))
                   (___match259020259021_
                    (lambda (_e250249250409_
                             _hd250248250412_
                             _tl250247250414_
                             _e250252250417_
                             _hd250251250420_
                             _tl250250250422_
                             _e250255250425_
                             _hd250254250428_
                             _tl250253250430_
                             _e250258250433_
                             _hd250257250436_
                             _tl250256250438_
                             _e250261250441_
                             _hd250260250444_
                             _tl250259250446_
                             _e250264250449_
                             _hd250263250452_
                             _tl250262250454_
                             _e250267250457_
                             _hd250266250460_
                             _tl250265250462_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl250259250446_))
                          (___match259022259023_
                           _e250249250409_
                           _hd250248250412_
                           _tl250247250414_
                           _e250252250417_
                           _hd250251250420_
                           _tl250250250422_
                           _e250255250425_
                           _hd250254250428_
                           _tl250253250430_
                           _e250258250433_
                           _hd250257250436_
                           _tl250256250438_
                           _e250261250441_
                           _hd250260250444_
                           _tl250259250446_
                           _e250264250449_
                           _hd250263250452_
                           _tl250262250454_
                           _e250267250457_
                           _hd250266250460_
                           _tl250265250462_)
                          (___match259076259077_
                           _e250249250409_
                           _hd250248250412_
                           _tl250247250414_
                           _e250252250417_
                           _hd250251250420_
                           _tl250250250422_
                           _e250255250425_
                           _hd250254250428_
                           _tl250253250430_
                           _e250258250433_
                           _hd250257250436_
                           _tl250256250438_
                           _e250261250441_
                           _hd250260250444_
                           _tl250259250446_
                           _e250264250449_
                           _hd250263250452_
                           _tl250262250454_
                           _e250267250457_
                           _hd250266250460_
                           _tl250265250462_))))
                   (___match258966258967_
                    (lambda (_e250214250493_
                             _hd250213250496_
                             _tl250212250498_
                             _e250217250501_
                             _hd250216250504_
                             _tl250215250506_
                             _e250220250509_
                             _hd250219250512_
                             _tl250218250514_
                             _e250223250517_
                             _hd250222250520_
                             _tl250221250522_
                             _e250226250525_
                             _hd250225250528_
                             _tl250224250530_
                             _e250229250533_
                             _hd250228250536_
                             _tl250227250538_
                             _e250232250541_
                             _hd250231250544_
                             _tl250230250546_
                             _e250235250549_
                             _hd250234250552_
                             _tl250233250554_
                             _e250238250557_
                             _hd250237250560_
                             _tl250236250562_
                             _e250241250565_
                             _hd250240250568_
                             _tl250239250570_
                             _e250244250573_
                             _hd250243250576_
                             _tl250242250578_)
                      (let ((_L250581_ _hd250243250576_)
                            (_L250582_ _hd250240250568_)
                            (_L250583_ _hd250231250544_)
                            (_L250584_ _hd250222250520_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L250584_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L250584_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L250583_
                                    _self250064_)))
                            (___kont258597258598_
                             _L250581_
                             _L250582_
                             _L250583_
                             _L250584_)
                            (___kont258603258604_)))))
                   (___match258958258959_
                    (lambda (_e250214250493_
                             _hd250213250496_
                             _tl250212250498_
                             _e250217250501_
                             _hd250216250504_
                             _tl250215250506_
                             _e250220250509_
                             _hd250219250512_
                             _tl250218250514_
                             _e250223250517_
                             _hd250222250520_
                             _tl250221250522_
                             _e250226250525_
                             _hd250225250528_
                             _tl250224250530_
                             _e250229250533_
                             _hd250228250536_
                             _tl250227250538_
                             _e250232250541_
                             _hd250231250544_
                             _tl250230250546_
                             _e250235250549_
                             _hd250234250552_
                             _tl250233250554_
                             _e250238250557_
                             _hd250237250560_
                             _tl250236250562_
                             _e250241250565_
                             _hd250240250568_
                             _tl250239250570_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl250233250554_))
                          (let ((_e250244250573_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl250233250554_))))
                            (let ((_tl250242250578_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e250244250573_)))
                                  (_hd250243250576_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e250244250573_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl250242250578_))
                                  (___match258966258967_
                                   _e250214250493_
                                   _hd250213250496_
                                   _tl250212250498_
                                   _e250217250501_
                                   _hd250216250504_
                                   _tl250215250506_
                                   _e250220250509_
                                   _hd250219250512_
                                   _tl250218250514_
                                   _e250223250517_
                                   _hd250222250520_
                                   _tl250221250522_
                                   _e250226250525_
                                   _hd250225250528_
                                   _tl250224250530_
                                   _e250229250533_
                                   _hd250228250536_
                                   _tl250227250538_
                                   _e250232250541_
                                   _hd250231250544_
                                   _tl250230250546_
                                   _e250235250549_
                                   _hd250234250552_
                                   _tl250233250554_
                                   _e250238250557_
                                   _hd250237250560_
                                   _tl250236250562_
                                   _e250241250565_
                                   _hd250240250568_
                                   _tl250239250570_
                                   _e250244250573_
                                   _hd250243250576_
                                   _tl250242250578_)
                                  (___kont258603258604_))))
                          (___match259082259083_
                           _e250214250493_
                           _hd250213250496_
                           _tl250212250498_
                           _e250217250501_
                           _hd250216250504_
                           _tl250215250506_
                           _e250220250509_
                           _hd250219250512_
                           _tl250218250514_
                           _e250223250517_
                           _hd250222250520_
                           _tl250221250522_
                           _e250226250525_
                           _hd250225250528_
                           _tl250224250530_
                           _e250229250533_
                           _hd250228250536_
                           _tl250227250538_
                           _e250232250541_
                           _hd250231250544_
                           _tl250230250546_
                           _e250235250549_
                           _hd250234250552_
                           _tl250233250554_))))
                   (___match258880258881_
                    (lambda (_e250180250624_
                             _hd250179250627_
                             _tl250178250629_
                             _e250183250632_
                             _hd250182250635_
                             _tl250181250637_
                             _e250186250640_
                             _hd250185250643_
                             _tl250184250645_
                             _e250189250648_
                             _hd250188250651_
                             _tl250187250653_
                             _e250192250656_
                             _hd250191250659_
                             _tl250190250661_
                             _e250195250664_
                             _hd250194250667_
                             _tl250193250669_
                             _e250198250672_
                             _hd250197250675_
                             _tl250196250677_
                             _e250201250680_
                             _hd250200250683_
                             _tl250199250685_
                             _e250204250688_
                             _hd250203250691_
                             _tl250202250693_
                             _e250207250696_
                             _hd250206250699_
                             _tl250205250701_)
                      (let ((_L250704_ _hd250206250699_)
                            (_L250705_ _hd250197250675_)
                            (_L250706_ _hd250188250651_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L250706_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L250706_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L250705_
                                    _self250064_)))
                            (___kont258595258596_
                             _L250704_
                             _L250705_
                             _L250706_)
                            (___match259084259085_
                             _e250180250624_
                             _hd250179250627_
                             _tl250178250629_
                             _e250183250632_
                             _hd250182250635_
                             _tl250181250637_
                             _e250186250640_
                             _hd250185250643_
                             _tl250184250645_
                             _e250189250648_
                             _hd250188250651_
                             _tl250187250653_
                             _e250192250656_
                             _hd250191250659_
                             _tl250190250661_
                             _e250195250664_
                             _hd250194250667_
                             _tl250193250669_
                             _e250198250672_
                             _hd250197250675_
                             _tl250196250677_
                             _e250201250680_
                             _hd250200250683_
                             _tl250199250685_)))))
                   (___match258878258879_
                    (lambda (_e250180250624_
                             _hd250179250627_
                             _tl250178250629_
                             _e250183250632_
                             _hd250182250635_
                             _tl250181250637_
                             _e250186250640_
                             _hd250185250643_
                             _tl250184250645_
                             _e250189250648_
                             _hd250188250651_
                             _tl250187250653_
                             _e250192250656_
                             _hd250191250659_
                             _tl250190250661_
                             _e250195250664_
                             _hd250194250667_
                             _tl250193250669_
                             _e250198250672_
                             _hd250197250675_
                             _tl250196250677_
                             _e250201250680_
                             _hd250200250683_
                             _tl250199250685_
                             _e250204250688_
                             _hd250203250691_
                             _tl250202250693_
                             _e250207250696_
                             _hd250206250699_
                             _tl250205250701_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl250199250685_))
                          (___match258880258881_
                           _e250180250624_
                           _hd250179250627_
                           _tl250178250629_
                           _e250183250632_
                           _hd250182250635_
                           _tl250181250637_
                           _e250186250640_
                           _hd250185250643_
                           _tl250184250645_
                           _e250189250648_
                           _hd250188250651_
                           _tl250187250653_
                           _e250192250656_
                           _hd250191250659_
                           _tl250190250661_
                           _e250195250664_
                           _hd250194250667_
                           _tl250193250669_
                           _e250198250672_
                           _hd250197250675_
                           _tl250196250677_
                           _e250201250680_
                           _hd250200250683_
                           _tl250199250685_
                           _e250204250688_
                           _hd250203250691_
                           _tl250202250693_
                           _e250207250696_
                           _hd250206250699_
                           _tl250205250701_)
                          (___match258958258959_
                           _e250180250624_
                           _hd250179250627_
                           _tl250178250629_
                           _e250183250632_
                           _hd250182250635_
                           _tl250181250637_
                           _e250186250640_
                           _hd250185250643_
                           _tl250184250645_
                           _e250189250648_
                           _hd250188250651_
                           _tl250187250653_
                           _e250192250656_
                           _hd250191250659_
                           _tl250190250661_
                           _e250195250664_
                           _hd250194250667_
                           _tl250193250669_
                           _e250198250672_
                           _hd250197250675_
                           _tl250196250677_
                           _e250201250680_
                           _hd250200250683_
                           _tl250199250685_
                           _e250204250688_
                           _hd250203250691_
                           _tl250202250693_
                           _e250207250696_
                           _hd250206250699_
                           _tl250205250701_))))
                   (___match258868258869_
                    (lambda (_e250180250624_
                             _hd250179250627_
                             _tl250178250629_
                             _e250183250632_
                             _hd250182250635_
                             _tl250181250637_
                             _e250186250640_
                             _hd250185250643_
                             _tl250184250645_
                             _e250189250648_
                             _hd250188250651_
                             _tl250187250653_
                             _e250192250656_
                             _hd250191250659_
                             _tl250190250661_
                             _e250195250664_
                             _hd250194250667_
                             _tl250193250669_
                             _e250198250672_
                             _hd250197250675_
                             _tl250196250677_
                             _e250201250680_
                             _hd250200250683_
                             _tl250199250685_
                             _e250204250688_
                             _hd250203250691_
                             _tl250202250693_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd250203250691_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl250202250693_))
                              (let ((_e250207250696_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl250202250693_))))
                                (let ((_tl250205250701_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e250207250696_)))
                                      (_hd250206250699_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e250207250696_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl250205250701_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl250199250685_))
                                          (___match258880258881_
                                           _e250180250624_
                                           _hd250179250627_
                                           _tl250178250629_
                                           _e250183250632_
                                           _hd250182250635_
                                           _tl250181250637_
                                           _e250186250640_
                                           _hd250185250643_
                                           _tl250184250645_
                                           _e250189250648_
                                           _hd250188250651_
                                           _tl250187250653_
                                           _e250192250656_
                                           _hd250191250659_
                                           _tl250190250661_
                                           _e250195250664_
                                           _hd250194250667_
                                           _tl250193250669_
                                           _e250198250672_
                                           _hd250197250675_
                                           _tl250196250677_
                                           _e250201250680_
                                           _hd250200250683_
                                           _tl250199250685_
                                           _e250204250688_
                                           _hd250203250691_
                                           _tl250202250693_
                                           _e250207250696_
                                           _hd250206250699_
                                           _tl250205250701_)
                                          (___match258958258959_
                                           _e250180250624_
                                           _hd250179250627_
                                           _tl250178250629_
                                           _e250183250632_
                                           _hd250182250635_
                                           _tl250181250637_
                                           _e250186250640_
                                           _hd250185250643_
                                           _tl250184250645_
                                           _e250189250648_
                                           _hd250188250651_
                                           _tl250187250653_
                                           _e250192250656_
                                           _hd250191250659_
                                           _tl250190250661_
                                           _e250195250664_
                                           _hd250194250667_
                                           _tl250193250669_
                                           _e250198250672_
                                           _hd250197250675_
                                           _tl250196250677_
                                           _e250201250680_
                                           _hd250200250683_
                                           _tl250199250685_
                                           _e250204250688_
                                           _hd250203250691_
                                           _tl250202250693_
                                           _e250207250696_
                                           _hd250206250699_
                                           _tl250205250701_))
                                      (___match259082259083_
                                       _e250180250624_
                                       _hd250179250627_
                                       _tl250178250629_
                                       _e250183250632_
                                       _hd250182250635_
                                       _tl250181250637_
                                       _e250186250640_
                                       _hd250185250643_
                                       _tl250184250645_
                                       _e250189250648_
                                       _hd250188250651_
                                       _tl250187250653_
                                       _e250192250656_
                                       _hd250191250659_
                                       _tl250190250661_
                                       _e250195250664_
                                       _hd250194250667_
                                       _tl250193250669_
                                       _e250198250672_
                                       _hd250197250675_
                                       _tl250196250677_
                                       _e250201250680_
                                       _hd250200250683_
                                       _tl250199250685_))))
                              (___match259082259083_
                               _e250180250624_
                               _hd250179250627_
                               _tl250178250629_
                               _e250183250632_
                               _hd250182250635_
                               _tl250181250637_
                               _e250186250640_
                               _hd250185250643_
                               _tl250184250645_
                               _e250189250648_
                               _hd250188250651_
                               _tl250187250653_
                               _e250192250656_
                               _hd250191250659_
                               _tl250190250661_
                               _e250195250664_
                               _hd250194250667_
                               _tl250193250669_
                               _e250198250672_
                               _hd250197250675_
                               _tl250196250677_
                               _e250201250680_
                               _hd250200250683_
                               _tl250199250685_))
                          (___match259082259083_
                           _e250180250624_
                           _hd250179250627_
                           _tl250178250629_
                           _e250183250632_
                           _hd250182250635_
                           _tl250181250637_
                           _e250186250640_
                           _hd250185250643_
                           _tl250184250645_
                           _e250189250648_
                           _hd250188250651_
                           _tl250187250653_
                           _e250192250656_
                           _hd250191250659_
                           _tl250190250661_
                           _e250195250664_
                           _hd250194250667_
                           _tl250193250669_
                           _e250198250672_
                           _hd250197250675_
                           _tl250196250677_
                           _e250201250680_
                           _hd250200250683_
                           _tl250199250685_))))
                   (___match258800258801_
                    (lambda (_e250129250743_
                             _hd250128250746_
                             _tl250127250748_
                             _e250132250751_
                             _hd250131250754_
                             _tl250130250756_
                             _e250135250759_
                             _hd250134250762_
                             _tl250133250764_
                             _e250138250767_
                             _hd250137250770_
                             _tl250136250772_
                             _e250141250775_
                             _hd250140250778_
                             _tl250139250780_
                             _e250144250783_
                             _hd250143250786_
                             _tl250142250788_
                             _e250147250791_
                             _hd250146250794_
                             _tl250145250796_
                             _e250150250799_
                             _hd250149250802_
                             _tl250148250804_
                             _e250153250807_
                             _hd250152250810_
                             _tl250151250812_
                             _e250156250815_
                             _hd250155250818_
                             _tl250154250820_
                             _e250159250823_
                             _hd250158250826_
                             _tl250157250828_
                             _e250162250831_
                             _hd250161250834_
                             _tl250160250836_
                             _e250165250839_
                             _hd250164250842_
                             _tl250163250844_
                             ___splice258593258594_
                             _target250166250847_
                             _tl250168250849_)
                      (letrec ((_loop250169250852_
                                (lambda (_hd250167250855_ _args250173250857_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd250167250855_))
                                      (let ((_e250170250860_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd250167250855_))))
                                        (let ((_lp-tl250172250865_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e250170250860_)))
                                              (_lp-hd250171250863_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e250170250860_))))
                                          (let ((__tmp259959
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd250171250863_
                                                         _args250173250857_))))
                                            (declare (not safe))
                                            (_loop250169250852_
                                             _lp-tl250172250865_
                                             __tmp259959))))
                                      (let ((_args250174250868_
                                             (reverse _args250173250857_)))
                                        (let ((_L250871_ _args250174250868_)
                                              (_L250872_ _hd250164250842_)
                                              (_L250873_ _hd250155250818_)
                                              (_L250874_ _hd250146250794_)
                                              (_L250875_ _hd250137250770_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L250875_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L250874_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L250873_
                                                      _self250064_)))
                                              (___kont258591258592_
                                               _L250871_
                                               _L250872_
                                               _L250873_
                                               _L250874_
                                               _L250875_)
                                              (___kont258603258604_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop250169250852_ _target250166250847_ '())))))
                   (___match258758258759_
                    (lambda (_e250129250743_
                             _hd250128250746_
                             _tl250127250748_
                             _e250132250751_
                             _hd250131250754_
                             _tl250130250756_
                             _e250135250759_
                             _hd250134250762_
                             _tl250133250764_
                             _e250138250767_
                             _hd250137250770_
                             _tl250136250772_
                             _e250141250775_
                             _hd250140250778_
                             _tl250139250780_
                             _e250144250783_
                             _hd250143250786_
                             _tl250142250788_
                             _e250147250791_
                             _hd250146250794_
                             _tl250145250796_
                             _e250150250799_
                             _hd250149250802_
                             _tl250148250804_
                             _e250153250807_
                             _hd250152250810_
                             _tl250151250812_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd250152250810_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl250151250812_))
                              (let ((_e250156250815_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl250151250812_))))
                                (let ((_tl250154250820_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e250156250815_)))
                                      (_hd250155250818_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e250156250815_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl250154250820_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl250148250804_))
                                          (let ((_e250159250823_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl250148250804_))))
                                            (let ((_tl250157250828_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e250159250823_)))
                                                  (_hd250158250826_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e250159250823_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd250158250826_))
                                                  (let ((_e250162250831_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd250158250826_))))
                                                    (let ((_tl250160250836_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e250162250831_)))
                                                          (_hd250161250834_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e250162250831_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd250161250834_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd250161250834_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl250160250836_))
                          (let ((_e250165250839_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl250160250836_))))
                            (let ((_tl250163250844_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e250165250839_)))
                                  (_hd250164250842_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e250165250839_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl250163250844_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl250157250828_))
                                      (let ((___splice258593258594_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl250157250828_
                                                '0))))
                                        (let ((_tl250168250849_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice258593258594_
                                                  '1)))
                                              (_target250166250847_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice258593258594_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl250168250849_))
                                              (___match258800258801_
                                               _e250129250743_
                                               _hd250128250746_
                                               _tl250127250748_
                                               _e250132250751_
                                               _hd250131250754_
                                               _tl250130250756_
                                               _e250135250759_
                                               _hd250134250762_
                                               _tl250133250764_
                                               _e250138250767_
                                               _hd250137250770_
                                               _tl250136250772_
                                               _e250141250775_
                                               _hd250140250778_
                                               _tl250139250780_
                                               _e250144250783_
                                               _hd250143250786_
                                               _tl250142250788_
                                               _e250147250791_
                                               _hd250146250794_
                                               _tl250145250796_
                                               _e250150250799_
                                               _hd250149250802_
                                               _tl250148250804_
                                               _e250153250807_
                                               _hd250152250810_
                                               _tl250151250812_
                                               _e250156250815_
                                               _hd250155250818_
                                               _tl250154250820_
                                               _e250159250823_
                                               _hd250158250826_
                                               _tl250157250828_
                                               _e250162250831_
                                               _hd250161250834_
                                               _tl250160250836_
                                               _e250165250839_
                                               _hd250164250842_
                                               _tl250163250844_
                                               ___splice258593258594_
                                               _target250166250847_
                                               _tl250168250849_)
                                              (___kont258603258604_))))
                                      (___kont258603258604_))
                                  (___kont258603258604_))))
                          (___kont258603258604_))
                      (___kont258603258604_))
                  (___kont258603258604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont258603258604_))))
                                          (___match259082259083_
                                           _e250129250743_
                                           _hd250128250746_
                                           _tl250127250748_
                                           _e250132250751_
                                           _hd250131250754_
                                           _tl250130250756_
                                           _e250135250759_
                                           _hd250134250762_
                                           _tl250133250764_
                                           _e250138250767_
                                           _hd250137250770_
                                           _tl250136250772_
                                           _e250141250775_
                                           _hd250140250778_
                                           _tl250139250780_
                                           _e250144250783_
                                           _hd250143250786_
                                           _tl250142250788_
                                           _e250147250791_
                                           _hd250146250794_
                                           _tl250145250796_
                                           _e250150250799_
                                           _hd250149250802_
                                           _tl250148250804_))
                                      (___match259082259083_
                                       _e250129250743_
                                       _hd250128250746_
                                       _tl250127250748_
                                       _e250132250751_
                                       _hd250131250754_
                                       _tl250130250756_
                                       _e250135250759_
                                       _hd250134250762_
                                       _tl250133250764_
                                       _e250138250767_
                                       _hd250137250770_
                                       _tl250136250772_
                                       _e250141250775_
                                       _hd250140250778_
                                       _tl250139250780_
                                       _e250144250783_
                                       _hd250143250786_
                                       _tl250142250788_
                                       _e250147250791_
                                       _hd250146250794_
                                       _tl250145250796_
                                       _e250150250799_
                                       _hd250149250802_
                                       _tl250148250804_))))
                              (___match259082259083_
                               _e250129250743_
                               _hd250128250746_
                               _tl250127250748_
                               _e250132250751_
                               _hd250131250754_
                               _tl250130250756_
                               _e250135250759_
                               _hd250134250762_
                               _tl250133250764_
                               _e250138250767_
                               _hd250137250770_
                               _tl250136250772_
                               _e250141250775_
                               _hd250140250778_
                               _tl250139250780_
                               _e250144250783_
                               _hd250143250786_
                               _tl250142250788_
                               _e250147250791_
                               _hd250146250794_
                               _tl250145250796_
                               _e250150250799_
                               _hd250149250802_
                               _tl250148250804_))
                          (___match258868258869_
                           _e250129250743_
                           _hd250128250746_
                           _tl250127250748_
                           _e250132250751_
                           _hd250131250754_
                           _tl250130250756_
                           _e250135250759_
                           _hd250134250762_
                           _tl250133250764_
                           _e250138250767_
                           _hd250137250770_
                           _tl250136250772_
                           _e250141250775_
                           _hd250140250778_
                           _tl250139250780_
                           _e250144250783_
                           _hd250143250786_
                           _tl250142250788_
                           _e250147250791_
                           _hd250146250794_
                           _tl250145250796_
                           _e250150250799_
                           _hd250149250802_
                           _tl250148250804_
                           _e250153250807_
                           _hd250152250810_
                           _tl250151250812_))))
                   (___match258690258691_
                    (lambda (_e250085250932_
                             _hd250084250935_
                             _tl250083250937_
                             _e250088250940_
                             _hd250087250943_
                             _tl250086250945_
                             _e250091250948_
                             _hd250090250951_
                             _tl250089250953_
                             _e250094250956_
                             _hd250093250959_
                             _tl250092250961_
                             _e250097250964_
                             _hd250096250967_
                             _tl250095250969_
                             _e250100250972_
                             _hd250099250975_
                             _tl250098250977_
                             _e250103250980_
                             _hd250102250983_
                             _tl250101250985_
                             _e250106250988_
                             _hd250105250991_
                             _tl250104250993_
                             _e250109250996_
                             _hd250108250999_
                             _tl250107251001_
                             _e250112251004_
                             _hd250111251007_
                             _tl250110251009_
                             ___splice258589258590_
                             _target250113251012_
                             _tl250115251014_)
                      (letrec ((_loop250116251017_
                                (lambda (_hd250114251020_ _args250120251022_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd250114251020_))
                                      (let ((_e250117251025_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd250114251020_))))
                                        (let ((_lp-tl250119251030_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e250117251025_)))
                                              (_lp-hd250118251028_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e250117251025_))))
                                          (let ((__tmp259960
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd250118251028_
                                                         _args250120251022_))))
                                            (declare (not safe))
                                            (_loop250116251017_
                                             _lp-tl250119251030_
                                             __tmp259960))))
                                      (let ((_args250121251033_
                                             (reverse _args250120251022_)))
                                        (let ((_L251036_ _args250121251033_)
                                              (_L251037_ _hd250111251007_)
                                              (_L251038_ _hd250102250983_)
                                              (_L251039_ _hd250093250959_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L251039_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L251038_
                                                      _self250064_)))
                                              (___kont258587258588_
                                               _L251036_
                                               _L251037_
                                               _L251038_
                                               _L251039_)
                                              (___match258878258879_
                                               _e250085250932_
                                               _hd250084250935_
                                               _tl250083250937_
                                               _e250088250940_
                                               _hd250087250943_
                                               _tl250086250945_
                                               _e250091250948_
                                               _hd250090250951_
                                               _tl250089250953_
                                               _e250094250956_
                                               _hd250093250959_
                                               _tl250092250961_
                                               _e250097250964_
                                               _hd250096250967_
                                               _tl250095250969_
                                               _e250100250972_
                                               _hd250099250975_
                                               _tl250098250977_
                                               _e250103250980_
                                               _hd250102250983_
                                               _tl250101250985_
                                               _e250106250988_
                                               _hd250105250991_
                                               _tl250104250993_
                                               _e250109250996_
                                               _hd250108250999_
                                               _tl250107251001_
                                               _e250112251004_
                                               _hd250111251007_
                                               _tl250110251009_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop250116251017_ _target250113251012_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx258585258586_))
                  (let ((_e250085250932_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx258585258586_))))
                    (let ((_tl250083250937_
                           (let ()
                             (declare (not safe))
                             (##cdr _e250085250932_)))
                          (_hd250084250935_
                           (let ()
                             (declare (not safe))
                             (##car _e250085250932_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl250083250937_))
                          (let ((_e250088250940_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl250083250937_))))
                            (let ((_tl250086250945_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e250088250940_)))
                                  (_hd250087250943_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e250088250940_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd250087250943_))
                                  (let ((_e250091250948_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd250087250943_))))
                                    (let ((_tl250089250953_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e250091250948_)))
                                          (_hd250090250951_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e250091250948_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd250090250951_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd250090250951_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl250089250953_))
                                                  (let ((_e250094250956_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl250089250953_))))
                                                    (let ((_tl250092250961_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e250094250956_)))
                                                          (_hd250093250959_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e250094250956_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl250092250961_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl250086250945_))
                      (let ((_e250097250964_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl250086250945_))))
                        (let ((_tl250095250969_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e250097250964_)))
                              (_hd250096250967_
                               (let ()
                                 (declare (not safe))
                                 (##car _e250097250964_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd250096250967_))
                              (let ((_e250100250972_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd250096250967_))))
                                (let ((_tl250098250977_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e250100250972_)))
                                      (_hd250099250975_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e250100250972_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd250099250975_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd250099250975_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl250098250977_))
                                              (let ((_e250103250980_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl250098250977_))))
                                                (let ((_tl250101250985_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e250103250980_)))
                                                      (_hd250102250983_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e250103250980_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl250101250985_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl250095250969_))
                                                          (let ((_e250106250988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl250095250969_))))
                    (let ((_tl250104250993_
                           (let ()
                             (declare (not safe))
                             (##cdr _e250106250988_)))
                          (_hd250105250991_
                           (let ()
                             (declare (not safe))
                             (##car _e250106250988_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd250105250991_))
                          (let ((_e250109250996_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd250105250991_))))
                            (let ((_tl250107251001_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e250109250996_)))
                                  (_hd250108250999_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e250109250996_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd250108250999_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd250108250999_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl250107251001_))
                                          (let ((_e250112251004_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl250107251001_))))
                                            (let ((_tl250110251009_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e250112251004_)))
                                                  (_hd250111251007_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e250112251004_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl250110251009_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl250104250993_))
                                                      (let ((___splice258589258590_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl250104250993_ '0))))
                (let ((_tl250115251014_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice258589258590_ '1)))
                      (_target250113251012_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice258589258590_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl250115251014_))
                      (___match258690258691_
                       _e250085250932_
                       _hd250084250935_
                       _tl250083250937_
                       _e250088250940_
                       _hd250087250943_
                       _tl250086250945_
                       _e250091250948_
                       _hd250090250951_
                       _tl250089250953_
                       _e250094250956_
                       _hd250093250959_
                       _tl250092250961_
                       _e250097250964_
                       _hd250096250967_
                       _tl250095250969_
                       _e250100250972_
                       _hd250099250975_
                       _tl250098250977_
                       _e250103250980_
                       _hd250102250983_
                       _tl250101250985_
                       _e250106250988_
                       _hd250105250991_
                       _tl250104250993_
                       _e250109250996_
                       _hd250108250999_
                       _tl250107251001_
                       _e250112251004_
                       _hd250111251007_
                       _tl250110251009_
                       ___splice258589258590_
                       _target250113251012_
                       _tl250115251014_)
                      (___match258878258879_
                       _e250085250932_
                       _hd250084250935_
                       _tl250083250937_
                       _e250088250940_
                       _hd250087250943_
                       _tl250086250945_
                       _e250091250948_
                       _hd250090250951_
                       _tl250089250953_
                       _e250094250956_
                       _hd250093250959_
                       _tl250092250961_
                       _e250097250964_
                       _hd250096250967_
                       _tl250095250969_
                       _e250100250972_
                       _hd250099250975_
                       _tl250098250977_
                       _e250103250980_
                       _hd250102250983_
                       _tl250101250985_
                       _e250106250988_
                       _hd250105250991_
                       _tl250104250993_
                       _e250109250996_
                       _hd250108250999_
                       _tl250107251001_
                       _e250112251004_
                       _hd250111251007_
                       _tl250110251009_))))
              (___match258878258879_
               _e250085250932_
               _hd250084250935_
               _tl250083250937_
               _e250088250940_
               _hd250087250943_
               _tl250086250945_
               _e250091250948_
               _hd250090250951_
               _tl250089250953_
               _e250094250956_
               _hd250093250959_
               _tl250092250961_
               _e250097250964_
               _hd250096250967_
               _tl250095250969_
               _e250100250972_
               _hd250099250975_
               _tl250098250977_
               _e250103250980_
               _hd250102250983_
               _tl250101250985_
               _e250106250988_
               _hd250105250991_
               _tl250104250993_
               _e250109250996_
               _hd250108250999_
               _tl250107251001_
               _e250112251004_
               _hd250111251007_
               _tl250110251009_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match259082259083_
                                                   _e250085250932_
                                                   _hd250084250935_
                                                   _tl250083250937_
                                                   _e250088250940_
                                                   _hd250087250943_
                                                   _tl250086250945_
                                                   _e250091250948_
                                                   _hd250090250951_
                                                   _tl250089250953_
                                                   _e250094250956_
                                                   _hd250093250959_
                                                   _tl250092250961_
                                                   _e250097250964_
                                                   _hd250096250967_
                                                   _tl250095250969_
                                                   _e250100250972_
                                                   _hd250099250975_
                                                   _tl250098250977_
                                                   _e250103250980_
                                                   _hd250102250983_
                                                   _tl250101250985_
                                                   _e250106250988_
                                                   _hd250105250991_
                                                   _tl250104250993_))))
                                          (___match259082259083_
                                           _e250085250932_
                                           _hd250084250935_
                                           _tl250083250937_
                                           _e250088250940_
                                           _hd250087250943_
                                           _tl250086250945_
                                           _e250091250948_
                                           _hd250090250951_
                                           _tl250089250953_
                                           _e250094250956_
                                           _hd250093250959_
                                           _tl250092250961_
                                           _e250097250964_
                                           _hd250096250967_
                                           _tl250095250969_
                                           _e250100250972_
                                           _hd250099250975_
                                           _tl250098250977_
                                           _e250103250980_
                                           _hd250102250983_
                                           _tl250101250985_
                                           _e250106250988_
                                           _hd250105250991_
                                           _tl250104250993_))
                                      (___match258758258759_
                                       _e250085250932_
                                       _hd250084250935_
                                       _tl250083250937_
                                       _e250088250940_
                                       _hd250087250943_
                                       _tl250086250945_
                                       _e250091250948_
                                       _hd250090250951_
                                       _tl250089250953_
                                       _e250094250956_
                                       _hd250093250959_
                                       _tl250092250961_
                                       _e250097250964_
                                       _hd250096250967_
                                       _tl250095250969_
                                       _e250100250972_
                                       _hd250099250975_
                                       _tl250098250977_
                                       _e250103250980_
                                       _hd250102250983_
                                       _tl250101250985_
                                       _e250106250988_
                                       _hd250105250991_
                                       _tl250104250993_
                                       _e250109250996_
                                       _hd250108250999_
                                       _tl250107251001_))
                                  (___match259082259083_
                                   _e250085250932_
                                   _hd250084250935_
                                   _tl250083250937_
                                   _e250088250940_
                                   _hd250087250943_
                                   _tl250086250945_
                                   _e250091250948_
                                   _hd250090250951_
                                   _tl250089250953_
                                   _e250094250956_
                                   _hd250093250959_
                                   _tl250092250961_
                                   _e250097250964_
                                   _hd250096250967_
                                   _tl250095250969_
                                   _e250100250972_
                                   _hd250099250975_
                                   _tl250098250977_
                                   _e250103250980_
                                   _hd250102250983_
                                   _tl250101250985_
                                   _e250106250988_
                                   _hd250105250991_
                                   _tl250104250993_))))
                          (___match259082259083_
                           _e250085250932_
                           _hd250084250935_
                           _tl250083250937_
                           _e250088250940_
                           _hd250087250943_
                           _tl250086250945_
                           _e250091250948_
                           _hd250090250951_
                           _tl250089250953_
                           _e250094250956_
                           _hd250093250959_
                           _tl250092250961_
                           _e250097250964_
                           _hd250096250967_
                           _tl250095250969_
                           _e250100250972_
                           _hd250099250975_
                           _tl250098250977_
                           _e250103250980_
                           _hd250102250983_
                           _tl250101250985_
                           _e250106250988_
                           _hd250105250991_
                           _tl250104250993_))))
                  (___match259020259021_
                   _e250085250932_
                   _hd250084250935_
                   _tl250083250937_
                   _e250088250940_
                   _hd250087250943_
                   _tl250086250945_
                   _e250091250948_
                   _hd250090250951_
                   _tl250089250953_
                   _e250094250956_
                   _hd250093250959_
                   _tl250092250961_
                   _e250097250964_
                   _hd250096250967_
                   _tl250095250969_
                   _e250100250972_
                   _hd250099250975_
                   _tl250098250977_
                   _e250103250980_
                   _hd250102250983_
                   _tl250101250985_))
              (___kont258603258604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont258603258604_))
                                          (___kont258603258604_))
                                      (___kont258603258604_))))
                              (___kont258603258604_))))
                      (___kont258603258604_))
                  (___kont258603258604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont258603258604_))
                                              (___kont258603258604_))
                                          (___kont258603258604_))))
                                  (___kont258603258604_))))
                          (___kont258603258604_))))
                  (___kont258603258604_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx249009_
               _self249010_
               _$t249011_
               _methods249012_
               _slots249013_
               _class-check249014_
               _struct-check249015_
               _struct-assert249016_)
        (letrec ((_force-e249018_
                  (lambda (_what250061_)
                    (let ((__tmp259961
                           (let ((__tmp259965
                                  (let ((__tmp259966
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp259966)))
                                 (__tmp259962
                                  (let ((__tmp259963
                                         (let ((__tmp259964
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what250061_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp259964))))
                                    (declare (not safe))
                                    (cons __tmp259963 '()))))
                             (declare (not safe))
                             (cons __tmp259965 __tmp259962))))
                      (declare (not safe))
                      (cons '%#call __tmp259961)))))
          (let* ((___stx259087259088_ _stx249009_)
                 (_g249026249248_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx259087259088_)))))
            (let ((___kont259089259090_
                   (lambda (_L250007_ _L250008_ _L250009_ _L250010_)
                     (let ((_$method250055_
                            (let ((__tmp259967
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L250008_))))
                              (declare (not safe))
                              (hash-ref__0 _methods249012_ __tmp259967)))
                           (_args250056_
                            (map (lambda (_g250043250045_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g250043250045_
                                      _self249010_
                                      _$t249011_
                                      _methods249012_
                                      _slots249013_
                                      _class-check249014_
                                      _struct-check249015_
                                      _struct-assert249016_)))
                                 (let ((__tmp259968
                                        (lambda (_g250047250050_
                                                 _g250048250052_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g250047250050_
                                                  _g250048250052_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp259968 '() _L250007_)))))
                       (let ((__tmp259969
                              (let ((__tmp259970
                                     (let ((__tmp259974
                                            (let ()
                                              (declare (not safe))
                                              (_force-e249018_
                                               _$method250055_)))
                                           (__tmp259971
                                            (let ((__tmp259972
                                                   (let ((__tmp259973
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self249010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp259973))))
                                              (declare (not safe))
                                              (cons __tmp259972
                                                    _args250056_))))
                                       (declare (not safe))
                                       (cons __tmp259974 __tmp259971))))
                                (declare (not safe))
                                (cons '%#call __tmp259970))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp259969 _stx249009_)))))
                  (___kont259093259094_
                   (lambda (_L249839_ _L249840_ _L249841_ _L249842_ _L249843_)
                     (let ((_$method249895_
                            (let ((__tmp259975
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L249840_))))
                              (declare (not safe))
                              (hash-ref__0 _methods249012_ __tmp259975)))
                           (_args249896_
                            (map (lambda (_g249883249885_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g249883249885_
                                      _self249010_
                                      _$t249011_
                                      _methods249012_
                                      _slots249013_
                                      _class-check249014_
                                      _struct-check249015_
                                      _struct-assert249016_)))
                                 (let ((__tmp259976
                                        (lambda (_g249887249890_
                                                 _g249888249892_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g249887249890_
                                                  _g249888249892_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp259976 '() _L249839_)))))
                       (let ((__tmp259977
                              (let ((__tmp259978
                                     (let ((__tmp259984
                                            (let ((__tmp259985
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp259985)))
                                           (__tmp259979
                                            (let ((__tmp259983
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e249018_
                                                      _$method249895_)))
                                                  (__tmp259980
                                                   (let ((__tmp259981
                                                          (let ((__tmp259982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self249010_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp259982))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp259981
                                                           _args249896_))))
                                              (declare (not safe))
                                              (cons __tmp259983 __tmp259980))))
                                       (declare (not safe))
                                       (cons __tmp259984 __tmp259979))))
                                (declare (not safe))
                                (cons '%#call __tmp259978))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp259977 _stx249009_)))))
                  (___kont259097259098_
                   (lambda (_L249670_ _L249671_ _L249672_)
                     (let* ((_$field249704_
                             (let ((__tmp259986
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L249670_))))
                               (declare (not safe))
                               (hash-ref__0 _slots249013_ __tmp259986)))
                            (__tmp259987
                             (let ((__tmp259988
                                    (let ((__tmp259995
                                           (let ((__tmp259996
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t249011_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp259996)))
                                          (__tmp259989
                                           (let ((__tmp259993
                                                  (let ((__tmp259994
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field249704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp259994)))
                                                 (__tmp259990
                                                  (let ((__tmp259991
                                                         (let ((__tmp259992
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self249010_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp259992))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp259991 '()))))
                                             (declare (not safe))
                                             (cons __tmp259993 __tmp259990))))
                                      (declare (not safe))
                                      (cons __tmp259995 __tmp259989))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp259988))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp259987 _stx249009_))))
                  (___kont259099259100_
                   (lambda (_L249544_ _L249545_ _L249546_ _L249547_)
                     (let ((_$field249582_
                            (let ((__tmp259997
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L249545_))))
                              (declare (not safe))
                              (hash-ref__0 _slots249013_ __tmp259997)))
                           (_expr249583_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L249544_
                               _self249010_
                               _$t249011_
                               _methods249012_
                               _slots249013_
                               _class-check249014_
                               _struct-check249015_
                               _struct-assert249016_))))
                       (let ((__tmp259998
                              (let ((__tmp259999
                                     (let ((__tmp260007
                                            (let ((__tmp260008
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t249011_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp260008)))
                                           (__tmp260000
                                            (let ((__tmp260005
                                                   (let ((__tmp260006
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field249582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp260006)))
                                                  (__tmp260001
                                                   (let ((__tmp260003
                                                          (let ((__tmp260004
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self249010_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp260004)))
                 (__tmp260002
                  (let () (declare (not safe)) (cons _expr249583_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp260003
                                                           __tmp260002))))
                                              (declare (not safe))
                                              (cons __tmp260005 __tmp260001))))
                                       (declare (not safe))
                                       (cons __tmp260007 __tmp260000))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp259999))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp259998 _stx249009_)))))
                  (___kont259101259102_
                   (lambda (_L249423_ _L249424_)
                     (let* ((_slot249446_
                             (##structure-ref
                              (let ((__tmp260009
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L249424_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp260009))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field249448_
                             (let ()
                               (declare (not safe))
                               (hash-ref__0 _slots249013_ _slot249446_))))
                       (let ((__tmp260010
                              (let ((__tmp260011
                                     (let ((__tmp260018
                                            (let ((__tmp260019
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t249011_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp260019)))
                                           (__tmp260012
                                            (let ((__tmp260016
                                                   (let ((__tmp260017
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field249448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp260017)))
                                                  (__tmp260013
                                                   (let ((__tmp260014
                                                          (let ((__tmp260015
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self249010_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp260015))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp260014 '()))))
                                              (declare (not safe))
                                              (cons __tmp260016 __tmp260013))))
                                       (declare (not safe))
                                       (cons __tmp260018 __tmp260012))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp260011))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp260010 _stx249009_)))))
                  (___kont259103259104_
                   (lambda (_L249324_ _L249325_ _L249326_)
                     (let* ((_slot249355_
                             (##structure-ref
                              (let ((__tmp260020
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L249326_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp260020))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field249357_
                             (let ()
                               (declare (not safe))
                               (hash-ref__0 _slots249013_ _slot249355_)))
                            (_expr249359_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L249324_
                                _self249010_
                                _$t249011_
                                _methods249012_
                                _slots249013_
                                _class-check249014_
                                _struct-check249015_
                                _struct-assert249016_))))
                       (let ((__tmp260021
                              (let ((__tmp260022
                                     (let ((__tmp260030
                                            (let ((__tmp260031
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t249011_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp260031)))
                                           (__tmp260023
                                            (let ((__tmp260028
                                                   (let ((__tmp260029
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field249357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp260029)))
                                                  (__tmp260024
                                                   (let ((__tmp260026
                                                          (let ((__tmp260027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self249010_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp260027)))
                 (__tmp260025
                  (let () (declare (not safe)) (cons _expr249359_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp260026
                                                           __tmp260025))))
                                              (declare (not safe))
                                              (cons __tmp260028 __tmp260024))))
                                       (declare (not safe))
                                       (cons __tmp260030 __tmp260023))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp260022))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp260021 _stx249009_)))))
                  (___kont259105259106_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx249009_
                        _self249010_
                        _$t249011_
                        _methods249012_
                        _slots249013_
                        _class-check249014_
                        _struct-check249015_
                        _struct-assert249016_)))))
              (let* ((___match259586259587_
                      (lambda (_e249222249260_
                               _hd249221249263_
                               _tl249220249265_
                               _e249225249268_
                               _hd249224249271_
                               _tl249223249273_
                               _e249228249276_
                               _hd249227249279_
                               _tl249226249281_
                               _e249231249284_
                               _hd249230249287_
                               _tl249229249289_
                               _e249234249292_
                               _hd249233249295_
                               _tl249232249297_
                               _e249237249300_
                               _hd249236249303_
                               _tl249235249305_
                               _e249240249308_
                               _hd249239249311_
                               _tl249238249313_
                               _e249243249316_
                               _hd249242249319_
                               _tl249241249321_)
                        (let ((_L249324_ _hd249242249319_)
                              (_L249325_ _hd249239249311_)
                              (_L249326_ _hd249230249287_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L249325_
                                      _self249010_))
                                   (let ((__tmp260032
                                          (let ((__tmp260033
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L249326_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp260033))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp260032
                                      'gxc#!mutator::t)))
                              (___kont259103259104_
                               _L249324_
                               _L249325_
                               _L249326_)
                              (___kont259105259106_)))))
                     (___match259584259585_
                      (lambda (_e249222249260_
                               _hd249221249263_
                               _tl249220249265_
                               _e249225249268_
                               _hd249224249271_
                               _tl249223249273_
                               _e249228249276_
                               _hd249227249279_
                               _tl249226249281_
                               _e249231249284_
                               _hd249230249287_
                               _tl249229249289_
                               _e249234249292_
                               _hd249233249295_
                               _tl249232249297_
                               _e249237249300_
                               _hd249236249303_
                               _tl249235249305_
                               _e249240249308_
                               _hd249239249311_
                               _tl249238249313_
                               _e249243249316_
                               _hd249242249319_
                               _tl249241249321_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl249241249321_))
                            (___match259586259587_
                             _e249222249260_
                             _hd249221249263_
                             _tl249220249265_
                             _e249225249268_
                             _hd249224249271_
                             _tl249223249273_
                             _e249228249276_
                             _hd249227249279_
                             _tl249226249281_
                             _e249231249284_
                             _hd249230249287_
                             _tl249229249289_
                             _e249234249292_
                             _hd249233249295_
                             _tl249232249297_
                             _e249237249300_
                             _hd249236249303_
                             _tl249235249305_
                             _e249240249308_
                             _hd249239249311_
                             _tl249238249313_
                             _e249243249316_
                             _hd249242249319_
                             _tl249241249321_)
                            (___kont259105259106_))))
                     (___match259578259579_
                      (lambda (_e249222249260_
                               _hd249221249263_
                               _tl249220249265_
                               _e249225249268_
                               _hd249224249271_
                               _tl249223249273_
                               _e249228249276_
                               _hd249227249279_
                               _tl249226249281_
                               _e249231249284_
                               _hd249230249287_
                               _tl249229249289_
                               _e249234249292_
                               _hd249233249295_
                               _tl249232249297_
                               _e249237249300_
                               _hd249236249303_
                               _tl249235249305_
                               _e249240249308_
                               _hd249239249311_
                               _tl249238249313_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl249232249297_))
                            (let ((_e249243249316_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl249232249297_))))
                              (let ((_tl249241249321_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249243249316_)))
                                    (_hd249242249319_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249243249316_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl249241249321_))
                                    (___match259586259587_
                                     _e249222249260_
                                     _hd249221249263_
                                     _tl249220249265_
                                     _e249225249268_
                                     _hd249224249271_
                                     _tl249223249273_
                                     _e249228249276_
                                     _hd249227249279_
                                     _tl249226249281_
                                     _e249231249284_
                                     _hd249230249287_
                                     _tl249229249289_
                                     _e249234249292_
                                     _hd249233249295_
                                     _tl249232249297_
                                     _e249237249300_
                                     _hd249236249303_
                                     _tl249235249305_
                                     _e249240249308_
                                     _hd249239249311_
                                     _tl249238249313_
                                     _e249243249316_
                                     _hd249242249319_
                                     _tl249241249321_)
                                    (___kont259105259106_))))
                            (___kont259105259106_))))
                     (___match259524259525_
                      (lambda (_e249198249367_
                               _hd249197249370_
                               _tl249196249372_
                               _e249201249375_
                               _hd249200249378_
                               _tl249199249380_
                               _e249204249383_
                               _hd249203249386_
                               _tl249202249388_
                               _e249207249391_
                               _hd249206249394_
                               _tl249205249396_
                               _e249210249399_
                               _hd249209249402_
                               _tl249208249404_
                               _e249213249407_
                               _hd249212249410_
                               _tl249211249412_
                               _e249216249415_
                               _hd249215249418_
                               _tl249214249420_)
                        (let ((_L249423_ _hd249215249418_)
                              (_L249424_ _hd249206249394_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L249423_
                                      _self249010_))
                                   (let ((__tmp260034
                                          (let ((__tmp260035
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L249424_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp260035))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp260034
                                      'gxc#!accessor::t)))
                              (___kont259101259102_ _L249423_ _L249424_)
                              (___kont259105259106_)))))
                     (___match259522259523_
                      (lambda (_e249198249367_
                               _hd249197249370_
                               _tl249196249372_
                               _e249201249375_
                               _hd249200249378_
                               _tl249199249380_
                               _e249204249383_
                               _hd249203249386_
                               _tl249202249388_
                               _e249207249391_
                               _hd249206249394_
                               _tl249205249396_
                               _e249210249399_
                               _hd249209249402_
                               _tl249208249404_
                               _e249213249407_
                               _hd249212249410_
                               _tl249211249412_
                               _e249216249415_
                               _hd249215249418_
                               _tl249214249420_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl249208249404_))
                            (___match259524259525_
                             _e249198249367_
                             _hd249197249370_
                             _tl249196249372_
                             _e249201249375_
                             _hd249200249378_
                             _tl249199249380_
                             _e249204249383_
                             _hd249203249386_
                             _tl249202249388_
                             _e249207249391_
                             _hd249206249394_
                             _tl249205249396_
                             _e249210249399_
                             _hd249209249402_
                             _tl249208249404_
                             _e249213249407_
                             _hd249212249410_
                             _tl249211249412_
                             _e249216249415_
                             _hd249215249418_
                             _tl249214249420_)
                            (___match259578259579_
                             _e249198249367_
                             _hd249197249370_
                             _tl249196249372_
                             _e249201249375_
                             _hd249200249378_
                             _tl249199249380_
                             _e249204249383_
                             _hd249203249386_
                             _tl249202249388_
                             _e249207249391_
                             _hd249206249394_
                             _tl249205249396_
                             _e249210249399_
                             _hd249209249402_
                             _tl249208249404_
                             _e249213249407_
                             _hd249212249410_
                             _tl249211249412_
                             _e249216249415_
                             _hd249215249418_
                             _tl249214249420_))))
                     (___match259468259469_
                      (lambda (_e249163249456_
                               _hd249162249459_
                               _tl249161249461_
                               _e249166249464_
                               _hd249165249467_
                               _tl249164249469_
                               _e249169249472_
                               _hd249168249475_
                               _tl249167249477_
                               _e249172249480_
                               _hd249171249483_
                               _tl249170249485_
                               _e249175249488_
                               _hd249174249491_
                               _tl249173249493_
                               _e249178249496_
                               _hd249177249499_
                               _tl249176249501_
                               _e249181249504_
                               _hd249180249507_
                               _tl249179249509_
                               _e249184249512_
                               _hd249183249515_
                               _tl249182249517_
                               _e249187249520_
                               _hd249186249523_
                               _tl249185249525_
                               _e249190249528_
                               _hd249189249531_
                               _tl249188249533_
                               _e249193249536_
                               _hd249192249539_
                               _tl249191249541_)
                        (let ((_L249544_ _hd249192249539_)
                              (_L249545_ _hd249189249531_)
                              (_L249546_ _hd249180249507_)
                              (_L249547_ _hd249171249483_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L249547_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L249547_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L249546_
                                      _self249010_)))
                              (___kont259099259100_
                               _L249544_
                               _L249545_
                               _L249546_
                               _L249547_)
                              (___kont259105259106_)))))
                     (___match259460259461_
                      (lambda (_e249163249456_
                               _hd249162249459_
                               _tl249161249461_
                               _e249166249464_
                               _hd249165249467_
                               _tl249164249469_
                               _e249169249472_
                               _hd249168249475_
                               _tl249167249477_
                               _e249172249480_
                               _hd249171249483_
                               _tl249170249485_
                               _e249175249488_
                               _hd249174249491_
                               _tl249173249493_
                               _e249178249496_
                               _hd249177249499_
                               _tl249176249501_
                               _e249181249504_
                               _hd249180249507_
                               _tl249179249509_
                               _e249184249512_
                               _hd249183249515_
                               _tl249182249517_
                               _e249187249520_
                               _hd249186249523_
                               _tl249185249525_
                               _e249190249528_
                               _hd249189249531_
                               _tl249188249533_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl249182249517_))
                            (let ((_e249193249536_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl249182249517_))))
                              (let ((_tl249191249541_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249193249536_)))
                                    (_hd249192249539_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249193249536_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl249191249541_))
                                    (___match259468259469_
                                     _e249163249456_
                                     _hd249162249459_
                                     _tl249161249461_
                                     _e249166249464_
                                     _hd249165249467_
                                     _tl249164249469_
                                     _e249169249472_
                                     _hd249168249475_
                                     _tl249167249477_
                                     _e249172249480_
                                     _hd249171249483_
                                     _tl249170249485_
                                     _e249175249488_
                                     _hd249174249491_
                                     _tl249173249493_
                                     _e249178249496_
                                     _hd249177249499_
                                     _tl249176249501_
                                     _e249181249504_
                                     _hd249180249507_
                                     _tl249179249509_
                                     _e249184249512_
                                     _hd249183249515_
                                     _tl249182249517_
                                     _e249187249520_
                                     _hd249186249523_
                                     _tl249185249525_
                                     _e249190249528_
                                     _hd249189249531_
                                     _tl249188249533_
                                     _e249193249536_
                                     _hd249192249539_
                                     _tl249191249541_)
                                    (___kont259105259106_))))
                            (___match259584259585_
                             _e249163249456_
                             _hd249162249459_
                             _tl249161249461_
                             _e249166249464_
                             _hd249165249467_
                             _tl249164249469_
                             _e249169249472_
                             _hd249168249475_
                             _tl249167249477_
                             _e249172249480_
                             _hd249171249483_
                             _tl249170249485_
                             _e249175249488_
                             _hd249174249491_
                             _tl249173249493_
                             _e249178249496_
                             _hd249177249499_
                             _tl249176249501_
                             _e249181249504_
                             _hd249180249507_
                             _tl249179249509_
                             _e249184249512_
                             _hd249183249515_
                             _tl249182249517_))))
                     (___match259382259383_
                      (lambda (_e249129249590_
                               _hd249128249593_
                               _tl249127249595_
                               _e249132249598_
                               _hd249131249601_
                               _tl249130249603_
                               _e249135249606_
                               _hd249134249609_
                               _tl249133249611_
                               _e249138249614_
                               _hd249137249617_
                               _tl249136249619_
                               _e249141249622_
                               _hd249140249625_
                               _tl249139249627_
                               _e249144249630_
                               _hd249143249633_
                               _tl249142249635_
                               _e249147249638_
                               _hd249146249641_
                               _tl249145249643_
                               _e249150249646_
                               _hd249149249649_
                               _tl249148249651_
                               _e249153249654_
                               _hd249152249657_
                               _tl249151249659_
                               _e249156249662_
                               _hd249155249665_
                               _tl249154249667_)
                        (let ((_L249670_ _hd249155249665_)
                              (_L249671_ _hd249146249641_)
                              (_L249672_ _hd249137249617_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L249672_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L249672_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L249671_
                                      _self249010_)))
                              (___kont259097259098_
                               _L249670_
                               _L249671_
                               _L249672_)
                              (___match259586259587_
                               _e249129249590_
                               _hd249128249593_
                               _tl249127249595_
                               _e249132249598_
                               _hd249131249601_
                               _tl249130249603_
                               _e249135249606_
                               _hd249134249609_
                               _tl249133249611_
                               _e249138249614_
                               _hd249137249617_
                               _tl249136249619_
                               _e249141249622_
                               _hd249140249625_
                               _tl249139249627_
                               _e249144249630_
                               _hd249143249633_
                               _tl249142249635_
                               _e249147249638_
                               _hd249146249641_
                               _tl249145249643_
                               _e249150249646_
                               _hd249149249649_
                               _tl249148249651_)))))
                     (___match259380259381_
                      (lambda (_e249129249590_
                               _hd249128249593_
                               _tl249127249595_
                               _e249132249598_
                               _hd249131249601_
                               _tl249130249603_
                               _e249135249606_
                               _hd249134249609_
                               _tl249133249611_
                               _e249138249614_
                               _hd249137249617_
                               _tl249136249619_
                               _e249141249622_
                               _hd249140249625_
                               _tl249139249627_
                               _e249144249630_
                               _hd249143249633_
                               _tl249142249635_
                               _e249147249638_
                               _hd249146249641_
                               _tl249145249643_
                               _e249150249646_
                               _hd249149249649_
                               _tl249148249651_
                               _e249153249654_
                               _hd249152249657_
                               _tl249151249659_
                               _e249156249662_
                               _hd249155249665_
                               _tl249154249667_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl249148249651_))
                            (___match259382259383_
                             _e249129249590_
                             _hd249128249593_
                             _tl249127249595_
                             _e249132249598_
                             _hd249131249601_
                             _tl249130249603_
                             _e249135249606_
                             _hd249134249609_
                             _tl249133249611_
                             _e249138249614_
                             _hd249137249617_
                             _tl249136249619_
                             _e249141249622_
                             _hd249140249625_
                             _tl249139249627_
                             _e249144249630_
                             _hd249143249633_
                             _tl249142249635_
                             _e249147249638_
                             _hd249146249641_
                             _tl249145249643_
                             _e249150249646_
                             _hd249149249649_
                             _tl249148249651_
                             _e249153249654_
                             _hd249152249657_
                             _tl249151249659_
                             _e249156249662_
                             _hd249155249665_
                             _tl249154249667_)
                            (___match259460259461_
                             _e249129249590_
                             _hd249128249593_
                             _tl249127249595_
                             _e249132249598_
                             _hd249131249601_
                             _tl249130249603_
                             _e249135249606_
                             _hd249134249609_
                             _tl249133249611_
                             _e249138249614_
                             _hd249137249617_
                             _tl249136249619_
                             _e249141249622_
                             _hd249140249625_
                             _tl249139249627_
                             _e249144249630_
                             _hd249143249633_
                             _tl249142249635_
                             _e249147249638_
                             _hd249146249641_
                             _tl249145249643_
                             _e249150249646_
                             _hd249149249649_
                             _tl249148249651_
                             _e249153249654_
                             _hd249152249657_
                             _tl249151249659_
                             _e249156249662_
                             _hd249155249665_
                             _tl249154249667_))))
                     (___match259370259371_
                      (lambda (_e249129249590_
                               _hd249128249593_
                               _tl249127249595_
                               _e249132249598_
                               _hd249131249601_
                               _tl249130249603_
                               _e249135249606_
                               _hd249134249609_
                               _tl249133249611_
                               _e249138249614_
                               _hd249137249617_
                               _tl249136249619_
                               _e249141249622_
                               _hd249140249625_
                               _tl249139249627_
                               _e249144249630_
                               _hd249143249633_
                               _tl249142249635_
                               _e249147249638_
                               _hd249146249641_
                               _tl249145249643_
                               _e249150249646_
                               _hd249149249649_
                               _tl249148249651_
                               _e249153249654_
                               _hd249152249657_
                               _tl249151249659_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd249152249657_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl249151249659_))
                                (let ((_e249156249662_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl249151249659_))))
                                  (let ((_tl249154249667_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e249156249662_)))
                                        (_hd249155249665_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e249156249662_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl249154249667_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl249148249651_))
                                            (___match259382259383_
                                             _e249129249590_
                                             _hd249128249593_
                                             _tl249127249595_
                                             _e249132249598_
                                             _hd249131249601_
                                             _tl249130249603_
                                             _e249135249606_
                                             _hd249134249609_
                                             _tl249133249611_
                                             _e249138249614_
                                             _hd249137249617_
                                             _tl249136249619_
                                             _e249141249622_
                                             _hd249140249625_
                                             _tl249139249627_
                                             _e249144249630_
                                             _hd249143249633_
                                             _tl249142249635_
                                             _e249147249638_
                                             _hd249146249641_
                                             _tl249145249643_
                                             _e249150249646_
                                             _hd249149249649_
                                             _tl249148249651_
                                             _e249153249654_
                                             _hd249152249657_
                                             _tl249151249659_
                                             _e249156249662_
                                             _hd249155249665_
                                             _tl249154249667_)
                                            (___match259460259461_
                                             _e249129249590_
                                             _hd249128249593_
                                             _tl249127249595_
                                             _e249132249598_
                                             _hd249131249601_
                                             _tl249130249603_
                                             _e249135249606_
                                             _hd249134249609_
                                             _tl249133249611_
                                             _e249138249614_
                                             _hd249137249617_
                                             _tl249136249619_
                                             _e249141249622_
                                             _hd249140249625_
                                             _tl249139249627_
                                             _e249144249630_
                                             _hd249143249633_
                                             _tl249142249635_
                                             _e249147249638_
                                             _hd249146249641_
                                             _tl249145249643_
                                             _e249150249646_
                                             _hd249149249649_
                                             _tl249148249651_
                                             _e249153249654_
                                             _hd249152249657_
                                             _tl249151249659_
                                             _e249156249662_
                                             _hd249155249665_
                                             _tl249154249667_))
                                        (___match259584259585_
                                         _e249129249590_
                                         _hd249128249593_
                                         _tl249127249595_
                                         _e249132249598_
                                         _hd249131249601_
                                         _tl249130249603_
                                         _e249135249606_
                                         _hd249134249609_
                                         _tl249133249611_
                                         _e249138249614_
                                         _hd249137249617_
                                         _tl249136249619_
                                         _e249141249622_
                                         _hd249140249625_
                                         _tl249139249627_
                                         _e249144249630_
                                         _hd249143249633_
                                         _tl249142249635_
                                         _e249147249638_
                                         _hd249146249641_
                                         _tl249145249643_
                                         _e249150249646_
                                         _hd249149249649_
                                         _tl249148249651_))))
                                (___match259584259585_
                                 _e249129249590_
                                 _hd249128249593_
                                 _tl249127249595_
                                 _e249132249598_
                                 _hd249131249601_
                                 _tl249130249603_
                                 _e249135249606_
                                 _hd249134249609_
                                 _tl249133249611_
                                 _e249138249614_
                                 _hd249137249617_
                                 _tl249136249619_
                                 _e249141249622_
                                 _hd249140249625_
                                 _tl249139249627_
                                 _e249144249630_
                                 _hd249143249633_
                                 _tl249142249635_
                                 _e249147249638_
                                 _hd249146249641_
                                 _tl249145249643_
                                 _e249150249646_
                                 _hd249149249649_
                                 _tl249148249651_))
                            (___match259584259585_
                             _e249129249590_
                             _hd249128249593_
                             _tl249127249595_
                             _e249132249598_
                             _hd249131249601_
                             _tl249130249603_
                             _e249135249606_
                             _hd249134249609_
                             _tl249133249611_
                             _e249138249614_
                             _hd249137249617_
                             _tl249136249619_
                             _e249141249622_
                             _hd249140249625_
                             _tl249139249627_
                             _e249144249630_
                             _hd249143249633_
                             _tl249142249635_
                             _e249147249638_
                             _hd249146249641_
                             _tl249145249643_
                             _e249150249646_
                             _hd249149249649_
                             _tl249148249651_))))
                     (___match259302259303_
                      (lambda (_e249078249711_
                               _hd249077249714_
                               _tl249076249716_
                               _e249081249719_
                               _hd249080249722_
                               _tl249079249724_
                               _e249084249727_
                               _hd249083249730_
                               _tl249082249732_
                               _e249087249735_
                               _hd249086249738_
                               _tl249085249740_
                               _e249090249743_
                               _hd249089249746_
                               _tl249088249748_
                               _e249093249751_
                               _hd249092249754_
                               _tl249091249756_
                               _e249096249759_
                               _hd249095249762_
                               _tl249094249764_
                               _e249099249767_
                               _hd249098249770_
                               _tl249097249772_
                               _e249102249775_
                               _hd249101249778_
                               _tl249100249780_
                               _e249105249783_
                               _hd249104249786_
                               _tl249103249788_
                               _e249108249791_
                               _hd249107249794_
                               _tl249106249796_
                               _e249111249799_
                               _hd249110249802_
                               _tl249109249804_
                               _e249114249807_
                               _hd249113249810_
                               _tl249112249812_
                               ___splice259095259096_
                               _target249115249815_
                               _tl249117249817_)
                        (letrec ((_loop249118249820_
                                  (lambda (_hd249116249823_ _args249122249825_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd249116249823_))
                                        (let ((_e249119249828_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd249116249823_))))
                                          (let ((_lp-tl249121249833_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e249119249828_)))
                                                (_lp-hd249120249831_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e249119249828_))))
                                            (let ((__tmp260036
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd249120249831_
                                                           _args249122249825_))))
                                              (declare (not safe))
                                              (_loop249118249820_
                                               _lp-tl249121249833_
                                               __tmp260036))))
                                        (let ((_args249123249836_
                                               (reverse _args249122249825_)))
                                          (let ((_L249839_ _args249123249836_)
                                                (_L249840_ _hd249113249810_)
                                                (_L249841_ _hd249104249786_)
                                                (_L249842_ _hd249095249762_)
                                                (_L249843_ _hd249086249738_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L249843_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L249842_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L249841_
                                                        _self249010_)))
                                                (___kont259093259094_
                                                 _L249839_
                                                 _L249840_
                                                 _L249841_
                                                 _L249842_
                                                 _L249843_)
                                                (___kont259105259106_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop249118249820_ _target249115249815_ '())))))
                     (___match259260259261_
                      (lambda (_e249078249711_
                               _hd249077249714_
                               _tl249076249716_
                               _e249081249719_
                               _hd249080249722_
                               _tl249079249724_
                               _e249084249727_
                               _hd249083249730_
                               _tl249082249732_
                               _e249087249735_
                               _hd249086249738_
                               _tl249085249740_
                               _e249090249743_
                               _hd249089249746_
                               _tl249088249748_
                               _e249093249751_
                               _hd249092249754_
                               _tl249091249756_
                               _e249096249759_
                               _hd249095249762_
                               _tl249094249764_
                               _e249099249767_
                               _hd249098249770_
                               _tl249097249772_
                               _e249102249775_
                               _hd249101249778_
                               _tl249100249780_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd249101249778_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl249100249780_))
                                (let ((_e249105249783_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl249100249780_))))
                                  (let ((_tl249103249788_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e249105249783_)))
                                        (_hd249104249786_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e249105249783_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl249103249788_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl249097249772_))
                                            (let ((_e249108249791_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl249097249772_))))
                                              (let ((_tl249106249796_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e249108249791_)))
                                                    (_hd249107249794_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e249108249791_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd249107249794_))
                                                    (let ((_e249111249799_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd249107249794_))))
                                                      (let ((_tl249109249804_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e249111249799_)))
                    (_hd249110249802_
                     (let () (declare (not safe)) (##car _e249111249799_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd249110249802_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd249110249802_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl249109249804_))
                            (let ((_e249114249807_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl249109249804_))))
                              (let ((_tl249112249812_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249114249807_)))
                                    (_hd249113249810_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249114249807_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl249112249812_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl249106249796_))
                                        (let ((___splice259095259096_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl249106249796_
                                                  '0))))
                                          (let ((_tl249117249817_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice259095259096_
                                                    '1)))
                                                (_target249115249815_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice259095259096_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl249117249817_))
                                                (___match259302259303_
                                                 _e249078249711_
                                                 _hd249077249714_
                                                 _tl249076249716_
                                                 _e249081249719_
                                                 _hd249080249722_
                                                 _tl249079249724_
                                                 _e249084249727_
                                                 _hd249083249730_
                                                 _tl249082249732_
                                                 _e249087249735_
                                                 _hd249086249738_
                                                 _tl249085249740_
                                                 _e249090249743_
                                                 _hd249089249746_
                                                 _tl249088249748_
                                                 _e249093249751_
                                                 _hd249092249754_
                                                 _tl249091249756_
                                                 _e249096249759_
                                                 _hd249095249762_
                                                 _tl249094249764_
                                                 _e249099249767_
                                                 _hd249098249770_
                                                 _tl249097249772_
                                                 _e249102249775_
                                                 _hd249101249778_
                                                 _tl249100249780_
                                                 _e249105249783_
                                                 _hd249104249786_
                                                 _tl249103249788_
                                                 _e249108249791_
                                                 _hd249107249794_
                                                 _tl249106249796_
                                                 _e249111249799_
                                                 _hd249110249802_
                                                 _tl249109249804_
                                                 _e249114249807_
                                                 _hd249113249810_
                                                 _tl249112249812_
                                                 ___splice259095259096_
                                                 _target249115249815_
                                                 _tl249117249817_)
                                                (___kont259105259106_))))
                                        (___kont259105259106_))
                                    (___kont259105259106_))))
                            (___kont259105259106_))
                        (___kont259105259106_))
                    (___kont259105259106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont259105259106_))))
                                            (___match259584259585_
                                             _e249078249711_
                                             _hd249077249714_
                                             _tl249076249716_
                                             _e249081249719_
                                             _hd249080249722_
                                             _tl249079249724_
                                             _e249084249727_
                                             _hd249083249730_
                                             _tl249082249732_
                                             _e249087249735_
                                             _hd249086249738_
                                             _tl249085249740_
                                             _e249090249743_
                                             _hd249089249746_
                                             _tl249088249748_
                                             _e249093249751_
                                             _hd249092249754_
                                             _tl249091249756_
                                             _e249096249759_
                                             _hd249095249762_
                                             _tl249094249764_
                                             _e249099249767_
                                             _hd249098249770_
                                             _tl249097249772_))
                                        (___match259584259585_
                                         _e249078249711_
                                         _hd249077249714_
                                         _tl249076249716_
                                         _e249081249719_
                                         _hd249080249722_
                                         _tl249079249724_
                                         _e249084249727_
                                         _hd249083249730_
                                         _tl249082249732_
                                         _e249087249735_
                                         _hd249086249738_
                                         _tl249085249740_
                                         _e249090249743_
                                         _hd249089249746_
                                         _tl249088249748_
                                         _e249093249751_
                                         _hd249092249754_
                                         _tl249091249756_
                                         _e249096249759_
                                         _hd249095249762_
                                         _tl249094249764_
                                         _e249099249767_
                                         _hd249098249770_
                                         _tl249097249772_))))
                                (___match259584259585_
                                 _e249078249711_
                                 _hd249077249714_
                                 _tl249076249716_
                                 _e249081249719_
                                 _hd249080249722_
                                 _tl249079249724_
                                 _e249084249727_
                                 _hd249083249730_
                                 _tl249082249732_
                                 _e249087249735_
                                 _hd249086249738_
                                 _tl249085249740_
                                 _e249090249743_
                                 _hd249089249746_
                                 _tl249088249748_
                                 _e249093249751_
                                 _hd249092249754_
                                 _tl249091249756_
                                 _e249096249759_
                                 _hd249095249762_
                                 _tl249094249764_
                                 _e249099249767_
                                 _hd249098249770_
                                 _tl249097249772_))
                            (___match259370259371_
                             _e249078249711_
                             _hd249077249714_
                             _tl249076249716_
                             _e249081249719_
                             _hd249080249722_
                             _tl249079249724_
                             _e249084249727_
                             _hd249083249730_
                             _tl249082249732_
                             _e249087249735_
                             _hd249086249738_
                             _tl249085249740_
                             _e249090249743_
                             _hd249089249746_
                             _tl249088249748_
                             _e249093249751_
                             _hd249092249754_
                             _tl249091249756_
                             _e249096249759_
                             _hd249095249762_
                             _tl249094249764_
                             _e249099249767_
                             _hd249098249770_
                             _tl249097249772_
                             _e249102249775_
                             _hd249101249778_
                             _tl249100249780_))))
                     (___match259192259193_
                      (lambda (_e249034249903_
                               _hd249033249906_
                               _tl249032249908_
                               _e249037249911_
                               _hd249036249914_
                               _tl249035249916_
                               _e249040249919_
                               _hd249039249922_
                               _tl249038249924_
                               _e249043249927_
                               _hd249042249930_
                               _tl249041249932_
                               _e249046249935_
                               _hd249045249938_
                               _tl249044249940_
                               _e249049249943_
                               _hd249048249946_
                               _tl249047249948_
                               _e249052249951_
                               _hd249051249954_
                               _tl249050249956_
                               _e249055249959_
                               _hd249054249962_
                               _tl249053249964_
                               _e249058249967_
                               _hd249057249970_
                               _tl249056249972_
                               _e249061249975_
                               _hd249060249978_
                               _tl249059249980_
                               ___splice259091259092_
                               _target249062249983_
                               _tl249064249985_)
                        (letrec ((_loop249065249988_
                                  (lambda (_hd249063249991_ _args249069249993_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd249063249991_))
                                        (let ((_e249066249996_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd249063249991_))))
                                          (let ((_lp-tl249068250001_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e249066249996_)))
                                                (_lp-hd249067249999_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e249066249996_))))
                                            (let ((__tmp260037
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd249067249999_
                                                           _args249069249993_))))
                                              (declare (not safe))
                                              (_loop249065249988_
                                               _lp-tl249068250001_
                                               __tmp260037))))
                                        (let ((_args249070250004_
                                               (reverse _args249069249993_)))
                                          (let ((_L250007_ _args249070250004_)
                                                (_L250008_ _hd249060249978_)
                                                (_L250009_ _hd249051249954_)
                                                (_L250010_ _hd249042249930_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L250010_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L250009_
                                                        _self249010_)))
                                                (___kont259089259090_
                                                 _L250007_
                                                 _L250008_
                                                 _L250009_
                                                 _L250010_)
                                                (___match259380259381_
                                                 _e249034249903_
                                                 _hd249033249906_
                                                 _tl249032249908_
                                                 _e249037249911_
                                                 _hd249036249914_
                                                 _tl249035249916_
                                                 _e249040249919_
                                                 _hd249039249922_
                                                 _tl249038249924_
                                                 _e249043249927_
                                                 _hd249042249930_
                                                 _tl249041249932_
                                                 _e249046249935_
                                                 _hd249045249938_
                                                 _tl249044249940_
                                                 _e249049249943_
                                                 _hd249048249946_
                                                 _tl249047249948_
                                                 _e249052249951_
                                                 _hd249051249954_
                                                 _tl249050249956_
                                                 _e249055249959_
                                                 _hd249054249962_
                                                 _tl249053249964_
                                                 _e249058249967_
                                                 _hd249057249970_
                                                 _tl249056249972_
                                                 _e249061249975_
                                                 _hd249060249978_
                                                 _tl249059249980_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop249065249988_ _target249062249983_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx259087259088_))
                    (let ((_e249034249903_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx259087259088_))))
                      (let ((_tl249032249908_
                             (let ()
                               (declare (not safe))
                               (##cdr _e249034249903_)))
                            (_hd249033249906_
                             (let ()
                               (declare (not safe))
                               (##car _e249034249903_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl249032249908_))
                            (let ((_e249037249911_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl249032249908_))))
                              (let ((_tl249035249916_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249037249911_)))
                                    (_hd249036249914_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249037249911_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd249036249914_))
                                    (let ((_e249040249919_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd249036249914_))))
                                      (let ((_tl249038249924_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e249040249919_)))
                                            (_hd249039249922_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e249040249919_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd249039249922_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd249039249922_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl249038249924_))
                                                    (let ((_e249043249927_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl249038249924_))))
                                                      (let ((_tl249041249932_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e249043249927_)))
                    (_hd249042249930_
                     (let () (declare (not safe)) (##car _e249043249927_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl249041249932_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl249035249916_))
                        (let ((_e249046249935_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl249035249916_))))
                          (let ((_tl249044249940_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e249046249935_)))
                                (_hd249045249938_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e249046249935_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd249045249938_))
                                (let ((_e249049249943_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd249045249938_))))
                                  (let ((_tl249047249948_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e249049249943_)))
                                        (_hd249048249946_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e249049249943_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd249048249946_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd249048249946_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl249047249948_))
                                                (let ((_e249052249951_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl249047249948_))))
                                                  (let ((_tl249050249956_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e249052249951_)))
                                                        (_hd249051249954_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e249052249951_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl249050249956_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl249044249940_))
                                                            (let ((_e249055249959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl249044249940_))))
                      (let ((_tl249053249964_
                             (let ()
                               (declare (not safe))
                               (##cdr _e249055249959_)))
                            (_hd249054249962_
                             (let ()
                               (declare (not safe))
                               (##car _e249055249959_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd249054249962_))
                            (let ((_e249058249967_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd249054249962_))))
                              (let ((_tl249056249972_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249058249967_)))
                                    (_hd249057249970_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249058249967_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd249057249970_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd249057249970_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl249056249972_))
                                            (let ((_e249061249975_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl249056249972_))))
                                              (let ((_tl249059249980_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e249061249975_)))
                                                    (_hd249060249978_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e249061249975_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl249059249980_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl249053249964_))
                                                        (let ((___splice259091259092_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl249053249964_ '0))))
                  (let ((_tl249064249985_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice259091259092_ '1)))
                        (_target249062249983_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice259091259092_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl249064249985_))
                        (___match259192259193_
                         _e249034249903_
                         _hd249033249906_
                         _tl249032249908_
                         _e249037249911_
                         _hd249036249914_
                         _tl249035249916_
                         _e249040249919_
                         _hd249039249922_
                         _tl249038249924_
                         _e249043249927_
                         _hd249042249930_
                         _tl249041249932_
                         _e249046249935_
                         _hd249045249938_
                         _tl249044249940_
                         _e249049249943_
                         _hd249048249946_
                         _tl249047249948_
                         _e249052249951_
                         _hd249051249954_
                         _tl249050249956_
                         _e249055249959_
                         _hd249054249962_
                         _tl249053249964_
                         _e249058249967_
                         _hd249057249970_
                         _tl249056249972_
                         _e249061249975_
                         _hd249060249978_
                         _tl249059249980_
                         ___splice259091259092_
                         _target249062249983_
                         _tl249064249985_)
                        (___match259380259381_
                         _e249034249903_
                         _hd249033249906_
                         _tl249032249908_
                         _e249037249911_
                         _hd249036249914_
                         _tl249035249916_
                         _e249040249919_
                         _hd249039249922_
                         _tl249038249924_
                         _e249043249927_
                         _hd249042249930_
                         _tl249041249932_
                         _e249046249935_
                         _hd249045249938_
                         _tl249044249940_
                         _e249049249943_
                         _hd249048249946_
                         _tl249047249948_
                         _e249052249951_
                         _hd249051249954_
                         _tl249050249956_
                         _e249055249959_
                         _hd249054249962_
                         _tl249053249964_
                         _e249058249967_
                         _hd249057249970_
                         _tl249056249972_
                         _e249061249975_
                         _hd249060249978_
                         _tl249059249980_))))
                (___match259380259381_
                 _e249034249903_
                 _hd249033249906_
                 _tl249032249908_
                 _e249037249911_
                 _hd249036249914_
                 _tl249035249916_
                 _e249040249919_
                 _hd249039249922_
                 _tl249038249924_
                 _e249043249927_
                 _hd249042249930_
                 _tl249041249932_
                 _e249046249935_
                 _hd249045249938_
                 _tl249044249940_
                 _e249049249943_
                 _hd249048249946_
                 _tl249047249948_
                 _e249052249951_
                 _hd249051249954_
                 _tl249050249956_
                 _e249055249959_
                 _hd249054249962_
                 _tl249053249964_
                 _e249058249967_
                 _hd249057249970_
                 _tl249056249972_
                 _e249061249975_
                 _hd249060249978_
                 _tl249059249980_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match259584259585_
                                                     _e249034249903_
                                                     _hd249033249906_
                                                     _tl249032249908_
                                                     _e249037249911_
                                                     _hd249036249914_
                                                     _tl249035249916_
                                                     _e249040249919_
                                                     _hd249039249922_
                                                     _tl249038249924_
                                                     _e249043249927_
                                                     _hd249042249930_
                                                     _tl249041249932_
                                                     _e249046249935_
                                                     _hd249045249938_
                                                     _tl249044249940_
                                                     _e249049249943_
                                                     _hd249048249946_
                                                     _tl249047249948_
                                                     _e249052249951_
                                                     _hd249051249954_
                                                     _tl249050249956_
                                                     _e249055249959_
                                                     _hd249054249962_
                                                     _tl249053249964_))))
                                            (___match259584259585_
                                             _e249034249903_
                                             _hd249033249906_
                                             _tl249032249908_
                                             _e249037249911_
                                             _hd249036249914_
                                             _tl249035249916_
                                             _e249040249919_
                                             _hd249039249922_
                                             _tl249038249924_
                                             _e249043249927_
                                             _hd249042249930_
                                             _tl249041249932_
                                             _e249046249935_
                                             _hd249045249938_
                                             _tl249044249940_
                                             _e249049249943_
                                             _hd249048249946_
                                             _tl249047249948_
                                             _e249052249951_
                                             _hd249051249954_
                                             _tl249050249956_
                                             _e249055249959_
                                             _hd249054249962_
                                             _tl249053249964_))
                                        (___match259260259261_
                                         _e249034249903_
                                         _hd249033249906_
                                         _tl249032249908_
                                         _e249037249911_
                                         _hd249036249914_
                                         _tl249035249916_
                                         _e249040249919_
                                         _hd249039249922_
                                         _tl249038249924_
                                         _e249043249927_
                                         _hd249042249930_
                                         _tl249041249932_
                                         _e249046249935_
                                         _hd249045249938_
                                         _tl249044249940_
                                         _e249049249943_
                                         _hd249048249946_
                                         _tl249047249948_
                                         _e249052249951_
                                         _hd249051249954_
                                         _tl249050249956_
                                         _e249055249959_
                                         _hd249054249962_
                                         _tl249053249964_
                                         _e249058249967_
                                         _hd249057249970_
                                         _tl249056249972_))
                                    (___match259584259585_
                                     _e249034249903_
                                     _hd249033249906_
                                     _tl249032249908_
                                     _e249037249911_
                                     _hd249036249914_
                                     _tl249035249916_
                                     _e249040249919_
                                     _hd249039249922_
                                     _tl249038249924_
                                     _e249043249927_
                                     _hd249042249930_
                                     _tl249041249932_
                                     _e249046249935_
                                     _hd249045249938_
                                     _tl249044249940_
                                     _e249049249943_
                                     _hd249048249946_
                                     _tl249047249948_
                                     _e249052249951_
                                     _hd249051249954_
                                     _tl249050249956_
                                     _e249055249959_
                                     _hd249054249962_
                                     _tl249053249964_))))
                            (___match259584259585_
                             _e249034249903_
                             _hd249033249906_
                             _tl249032249908_
                             _e249037249911_
                             _hd249036249914_
                             _tl249035249916_
                             _e249040249919_
                             _hd249039249922_
                             _tl249038249924_
                             _e249043249927_
                             _hd249042249930_
                             _tl249041249932_
                             _e249046249935_
                             _hd249045249938_
                             _tl249044249940_
                             _e249049249943_
                             _hd249048249946_
                             _tl249047249948_
                             _e249052249951_
                             _hd249051249954_
                             _tl249050249956_
                             _e249055249959_
                             _hd249054249962_
                             _tl249053249964_))))
                    (___match259522259523_
                     _e249034249903_
                     _hd249033249906_
                     _tl249032249908_
                     _e249037249911_
                     _hd249036249914_
                     _tl249035249916_
                     _e249040249919_
                     _hd249039249922_
                     _tl249038249924_
                     _e249043249927_
                     _hd249042249930_
                     _tl249041249932_
                     _e249046249935_
                     _hd249045249938_
                     _tl249044249940_
                     _e249049249943_
                     _hd249048249946_
                     _tl249047249948_
                     _e249052249951_
                     _hd249051249954_
                     _tl249050249956_))
                (___kont259105259106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont259105259106_))
                                            (___kont259105259106_))
                                        (___kont259105259106_))))
                                (___kont259105259106_))))
                        (___kont259105259106_))
                    (___kont259105259106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont259105259106_))
                                                (___kont259105259106_))
                                            (___kont259105259106_))))
                                    (___kont259105259106_))))
                            (___kont259105259106_))))
                    (___kont259105259106_))))))))))
