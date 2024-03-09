(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1709994215)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl134441_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp135569 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl134441_ __tmp135569))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134441_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134441_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134441_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134441_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl134441_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx134424_ . _args134426_)
        (let ((__tmp135571
               (lambda ()
                 (declare (not safe))
                 (if (null? _args134426_)
                     (gxc#compile-e__0 _stx134424_)
                     (let ((_arg1134431_ (car _args134426_))
                           (_rest134433_ (cdr _args134426_)))
                       (if (null? _rest134433_)
                           (gxc#compile-e__1 _stx134424_ _arg1134431_)
                           (let ((_arg2134436_ (car _rest134433_))
                                 (_rest134438_ (cdr _rest134433_)))
                             (if (null? _rest134438_)
                                 (gxc#compile-e__2
                                  _stx134424_
                                  _arg1134431_
                                  _arg2134436_)
                                 (apply gxc#compile-e
                                        _stx134424_
                                        _arg1134431_
                                        _arg2134436_
                                        _rest134438_))))))))
              (__tmp135570 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp135571
           gxc#current-compile-methods
           __tmp135570))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl134421_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp135572 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl134421_ __tmp135572))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134421_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134421_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134421_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134421_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134421_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134421_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134421_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134421_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134421_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134421_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134421_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134421_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134421_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134421_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134421_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134421_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl134421_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx134404_ . _args134406_)
        (let ((__tmp135574
               (lambda ()
                 (declare (not safe))
                 (if (null? _args134406_)
                     (gxc#compile-e__0 _stx134404_)
                     (let ((_arg1134411_ (car _args134406_))
                           (_rest134413_ (cdr _args134406_)))
                       (if (null? _rest134413_)
                           (gxc#compile-e__1 _stx134404_ _arg1134411_)
                           (let ((_arg2134416_ (car _rest134413_))
                                 (_rest134418_ (cdr _rest134413_)))
                             (if (null? _rest134418_)
                                 (gxc#compile-e__2
                                  _stx134404_
                                  _arg1134411_
                                  _arg2134416_)
                                 (apply gxc#compile-e
                                        _stx134404_
                                        _arg1134411_
                                        _arg2134416_
                                        _rest134418_))))))))
              (__tmp135573 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp135574
           gxc#current-compile-methods
           __tmp135573))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl134401_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp135575 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl134401_ __tmp135575))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134401_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134401_ '%#call gxc#subst-object-refs-call%))
           _tbl134401_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx134384_ . _args134386_)
        (let ((__tmp135577
               (lambda ()
                 (declare (not safe))
                 (if (null? _args134386_)
                     (gxc#compile-e__0 _stx134384_)
                     (let ((_arg1134391_ (car _args134386_))
                           (_rest134393_ (cdr _args134386_)))
                       (if (null? _rest134393_)
                           (gxc#compile-e__1 _stx134384_ _arg1134391_)
                           (let ((_arg2134396_ (car _rest134393_))
                                 (_rest134398_ (cdr _rest134393_)))
                             (if (null? _rest134398_)
                                 (gxc#compile-e__2
                                  _stx134384_
                                  _arg1134391_
                                  _arg2134396_)
                                 (apply gxc#compile-e
                                        _stx134384_
                                        _arg1134391_
                                        _arg2134396_
                                        _rest134398_))))))))
              (__tmp135576 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp135577
           gxc#current-compile-methods
           __tmp135576))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx131596_)
        (letrec ((_generate-method-bind131598_
                  (lambda (_$klass134377_
                           _$method-table134378_
                           _id134379_
                           _$id134380_)
                    (let ((_$tmp134382_
                           (let ((__tmp135578 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp135578))))
                      (let ((__tmp135626
                             (let ()
                               (declare (not safe))
                               (cons _$id134380_ '())))
                            (__tmp135579
                             (let ((__tmp135580
                                    (let ((__tmp135581
                                           (let ((__tmp135624
                                                  (let ((__tmp135625
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135625)))
                                                 (__tmp135582
                                                  (let ((__tmp135583
                                                         (let ((__tmp135584
                                                                (let ((__tmp135585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135586
                                      (let ((__tmp135587
                                             (let ((__tmp135607
                                                    (let ((__tmp135608
                                                           (let ((__tmp135623
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp134382_ '())))
                         (__tmp135609
                          (let ((__tmp135610
                                 (let ((__tmp135611
                                        (let ((__tmp135621
                                               (let ((__tmp135622
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp135622)))
                                              (__tmp135612
                                               (let ((__tmp135619
                                                      (let ((__tmp135620
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table134378_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp135620)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp135613
                                                      (let ((__tmp135617
                                                             (let ((__tmp135618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id134379_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp135618)))
                    (__tmp135614
                     (let ((__tmp135615
                            (let ((__tmp135616
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp135616))))
                       (declare (not safe))
                       (cons __tmp135615 '()))))
                (declare (not safe))
                (cons __tmp135617 __tmp135614))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp135619
                                                       __tmp135613))))
                                          (declare (not safe))
                                          (cons __tmp135621 __tmp135612))))
                                   (declare (not safe))
                                   (cons '%#call __tmp135611))))
                            (declare (not safe))
                            (cons __tmp135610 '()))))
                     (declare (not safe))
                     (cons __tmp135623 __tmp135609))))
              (declare (not safe))
              (cons __tmp135608 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135588
                                                    (let ((__tmp135589
                                                           (let ((__tmp135590
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135605
                                 (let ((__tmp135606
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp134382_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp135606)))
                                (__tmp135591
                                 (let ((__tmp135603
                                        (let ((__tmp135604
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp134382_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp135604)))
                                       (__tmp135592
                                        (let ((__tmp135593
                                               (let ((__tmp135594
                                                      (let ((__tmp135601
                                                             (let ((__tmp135602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp135602)))
                    (__tmp135595
                     (let ((__tmp135599
                            (let ((__tmp135600
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp135600)))
                           (__tmp135596
                            (let ((__tmp135597
                                   (let ((__tmp135598
                                          (let ()
                                            (declare (not safe))
                                            (cons _id134379_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp135598))))
                              (declare (not safe))
                              (cons __tmp135597 '()))))
                       (declare (not safe))
                       (cons __tmp135599 __tmp135596))))
                (declare (not safe))
                (cons __tmp135601 __tmp135595))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp135594))))
                                          (declare (not safe))
                                          (cons __tmp135593 '()))))
                                   (declare (not safe))
                                   (cons __tmp135603 __tmp135592))))
                            (declare (not safe))
                            (cons __tmp135605 __tmp135591))))
                     (declare (not safe))
                     (cons '%#if __tmp135590))))
              (declare (not safe))
              (cons __tmp135589 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135607
                                                     __tmp135588))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp135587))))
                                 (declare (not safe))
                                 (cons __tmp135586 '()))))
                          (declare (not safe))
                          (cons '() __tmp135585))))
                   (declare (not safe))
                   (cons '%#lambda __tmp135584))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135583 '()))))
                                             (declare (not safe))
                                             (cons __tmp135624 __tmp135582))))
                                      (declare (not safe))
                                      (cons '%#call __tmp135581))))
                               (declare (not safe))
                               (cons __tmp135580 '()))))
                        (declare (not safe))
                        (cons __tmp135626 __tmp135579)))))
                 (_generate-slot-bind131599_
                  (lambda (_$klass134371_ _id134372_ _$id134373_)
                    (let ((_$tmp134375_
                           (let ((__tmp135627 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp135627))))
                      (let ((__tmp135664
                             (let ()
                               (declare (not safe))
                               (cons _$id134373_ '())))
                            (__tmp135628
                             (let ((__tmp135629
                                    (let ((__tmp135630
                                           (let ((__tmp135650
                                                  (let ((__tmp135651
                                                         (let ((__tmp135663
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp134375_ '())))
                       (__tmp135652
                        (let ((__tmp135653
                               (let ((__tmp135654
                                      (let ((__tmp135661
                                             (let ((__tmp135662
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp135662)))
                                            (__tmp135655
                                             (let ((__tmp135659
                                                    (let ((__tmp135660
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass134371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp135660)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135656
                                                    (let ((__tmp135657
                                                           (let ((__tmp135658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id134372_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp135658))))
              (declare (not safe))
              (cons __tmp135657 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135659
                                                     __tmp135656))))
                                        (declare (not safe))
                                        (cons __tmp135661 __tmp135655))))
                                 (declare (not safe))
                                 (cons '%#call __tmp135654))))
                          (declare (not safe))
                          (cons __tmp135653 '()))))
                   (declare (not safe))
                   (cons __tmp135663 __tmp135652))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135651 '())))
                                                 (__tmp135631
                                                  (let ((__tmp135632
                                                         (let ((__tmp135633
                                                                (let ((__tmp135648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135649
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp134375_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp135649)))
                              (__tmp135634
                               (let ((__tmp135646
                                      (let ((__tmp135647
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp134375_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp135647)))
                                     (__tmp135635
                                      (let ((__tmp135636
                                             (let ((__tmp135637
                                                    (let ((__tmp135644
                                                           (let ((__tmp135645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp135645)))
                  (__tmp135638
                   (let ((__tmp135642
                          (let ((__tmp135643
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp135643)))
                         (__tmp135639
                          (let ((__tmp135640
                                 (let ((__tmp135641
                                        (let ()
                                          (declare (not safe))
                                          (cons _id134372_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp135641))))
                            (declare (not safe))
                            (cons __tmp135640 '()))))
                     (declare (not safe))
                     (cons __tmp135642 __tmp135639))))
              (declare (not safe))
              (cons __tmp135644 __tmp135638))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp135637))))
                                        (declare (not safe))
                                        (cons __tmp135636 '()))))
                                 (declare (not safe))
                                 (cons __tmp135646 __tmp135635))))
                          (declare (not safe))
                          (cons __tmp135648 __tmp135634))))
                   (declare (not safe))
                   (cons '%#if __tmp135633))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135632 '()))))
                                             (declare (not safe))
                                             (cons __tmp135650 __tmp135631))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp135630))))
                               (declare (not safe))
                               (cons __tmp135629 '()))))
                        (declare (not safe))
                        (cons __tmp135664 __tmp135628)))))
                 (_generate-specializer-impl131600_
                  (lambda (_$klass134365_
                           _$method-table134366_
                           _methods-bind134367_
                           _slots-bind134368_
                           _specializer-impl134369_)
                    (let ((__tmp135665
                           (let ((__tmp135666
                                  (let ((__tmp135672
                                         (let ((__tmp135673
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table134366_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass134365_ __tmp135673)))
                                        (__tmp135667
                                         (let ((__tmp135668
                                                (let ((__tmp135669
                                                       (let ((__tmp135671
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind134368_ _methods-bind134367_)))
                     (__tmp135670
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl134369_ '()))))
                 (declare (not safe))
                 (cons __tmp135671 __tmp135670))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp135669))))
                                           (declare (not safe))
                                           (cons __tmp135668 '()))))
                                    (declare (not safe))
                                    (cons __tmp135672 __tmp135667))))
                             (declare (not safe))
                             (cons '%#lambda __tmp135666))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135665 _stx131596_))))
                 (_generate-specializer-def131601_
                  (lambda (_id134361_
                           _specializer-id134362_
                           _specializer-impl134363_)
                    (let ((__tmp135674
                           (let ((__tmp135675
                                  (let ((__tmp135676
                                         (let ((__tmp135689
                                                (let ((__tmp135690
                                                       (let ((__tmp135691
                                                              (let ((__tmp135693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id134362_ '())))
                            (__tmp135692
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl134363_ '()))))
                        (declare (not safe))
                        (cons __tmp135693 __tmp135692))))
                 (declare (not safe))
                 (cons '%#define-values __tmp135691))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp135690
                                                   _stx131596_)))
                                               (__tmp135677
                                                (let ((__tmp135678
                                                       (let ((__tmp135679
                                                              (let ((__tmp135680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135687
                                    (let ((__tmp135688
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp135688)))
                                   (__tmp135681
                                    (let ((__tmp135685
                                           (let ((__tmp135686
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id134361_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135686)))
                                          (__tmp135682
                                           (let ((__tmp135683
                                                  (let ((__tmp135684
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id134362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp135684))))
                                             (declare (not safe))
                                             (cons __tmp135683 '()))))
                                      (declare (not safe))
                                      (cons __tmp135685 __tmp135682))))
                               (declare (not safe))
                               (cons __tmp135687 __tmp135681))))
                        (declare (not safe))
                        (cons '%#call __tmp135680))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp135679 _stx131596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135678 '()))))
                                           (declare (not safe))
                                           (cons __tmp135689 __tmp135677))))
                                    (declare (not safe))
                                    (cons _stx131596_ __tmp135676))))
                             (declare (not safe))
                             (cons '%#begin __tmp135675))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135674 _stx131596_)))))
          (let* ((___stx134530134531_ _stx131596_)
                 (_g131604131624_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134530134531_)))))
            (let ((___kont134532134533_
                   (lambda (_L131668_ _L131669_)
                     (let ((_method-calls131688_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs131689_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty131690_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?131692_
                                 (lambda ()
                                   (if (let ((__tmp135695
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls131688_))))
                                         (declare (not safe))
                                         (fxzero? __tmp135695))
                                       (let ((__tmp135694
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs131689_))))
                                         (declare (not safe))
                                         (fxzero? __tmp135694))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L131668_))
                             (let* ((___stx134444134445_ _L131668_)
                                    (_g132079132097_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx134444134445_)))))
                               (let ((___kont134446134447_
                                      (lambda (_L132133_ _L132134_ _L132135_)
                                        (for-each
                                         (lambda (_g132150132152_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g132150132152_
                                              _L132135_
                                              _method-calls131688_
                                              _slot-refs131689_)))
                                         _L132133_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?131692_))
                                            _stx131596_
                                            (let* ((_specializer-id132161_
                                                    (let* ((_id132155_
                                                            (let ((__tmp135817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L131669_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp135817 '"::specialize")))
                   (_specializer-id132158_
                    (let ((__tmp135818
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx131596_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id132155_ __tmp135818))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id132158_))
              _specializer-id132158_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass132163_
                                                    (let ((__tmp135819
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135819)))
                                                   (_$method-table132165_
                                                    (let ((__tmp135820
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135820)))
                                                   (_methods132167_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls131688_)))
                                                   (_$methods132171_
                                                    (map (lambda (_id132169_)
                                                           (let ((__tmp135821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id132169_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135821)))
                 _methods132167_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135822_
                                                    (for-each
                                                     (lambda (_g132172132175_
                                                              _g132173132177_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls131688_
                                                          _g132172132175_
                                                          _g132173132177_)))
                                                     _methods132167_
                                                     _$methods132171_))
                                                   (_methods-bind132188_
                                                    (map (lambda (_g132180132183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g132181132185_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind131598_
                      _$klass132163_
                      _$method-table132165_
                      _g132180132183_
                      _g132181132185_)))
                 _methods132167_
                 _$methods132171_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots132190_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs131689_)))
                                                   (_$slots132194_
                                                    (map (lambda (_id132192_)
                                                           (let ((__tmp135823
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id132192_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135823)))
                 _slots132190_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135824_
                                                    (for-each
                                                     (lambda (_g132195132198_
                                                              _g132196132200_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs131689_
                                                          _g132195132198_
                                                          _g132196132200_)))
                                                     _slots132190_
                                                     _$slots132194_))
                                                   (_slots-bind132211_
                                                    (map (lambda (_g132203132206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g132204132208_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind131599_
                      _$klass132163_
                      _g132203132206_
                      _g132204132208_)))
                 _slots132190_
                 _$slots132194_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body132217_
                                                    (map (lambda (_g132212132214_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g132212132214_
                                                              _L132135_
                                                              _$klass132163_
                                                              _method-calls131688_
                                                              _slot-refs131689_)))
                                                         _L132133_))
                                                   (_specializer-impl132219_
                                                    (let ((__tmp135825
                                                           (let ((__tmp135826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135827
                                 (let ()
                                   (declare (not safe))
                                   (cons _L132135_ _L132134_))))
                            (declare (not safe))
                            (cons __tmp135827 _specializer-body132217_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp135826))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp135825 _stx131596_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl132221_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl131600_
                                                       _$klass132163_
                                                       _$method-table132165_
                                                       _methods-bind132188_
                                                       _slots-bind132211_
                                                       _specializer-impl132219_))))
                                              (let ((__tmp135829
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L131669_)))
                                                    (__tmp135828
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id132161_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp135829
                                                 '" => "
                                                 __tmp135828))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def131601_
                                                 _L131669_
                                                 _specializer-id132161_
                                                 _specializer-impl132221_))))))
                                     (___kont134448134449_
                                      (lambda () _stx131596_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx134444134445_))
                                     (let ((_e132086132109_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx134444134445_))))
                                       (let ((_tl132084132114_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e132086132109_)))
                                             (_hd132085132112_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e132086132109_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl132084132114_))
                                             (let ((_e132089132117_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl132084132114_))))
                                               (let ((_tl132087132122_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e132089132117_)))
                                                     (_hd132088132120_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e132089132117_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd132088132120_))
                                                     (let ((_e132092132125_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd132088132120_))))
                                                       (let ((_tl132090132130_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e132092132125_)))
                     (_hd132091132128_
                      (let () (declare (not safe)) (##car _e132092132125_))))
                 (___kont134446134447_
                  _tl132087132122_
                  _tl132090132130_
                  _hd132091132128_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134448134449_))))
                                             (___kont134448134449_))))
                                     (___kont134448134449_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L131668_))
                                 (let* ((_g132227132246_
                                         (lambda (_g132228132243_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g132228132243_))))
                                        (_g132226132529_
                                         (lambda (_g132228132249_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g132228132249_))
                                               (let ((_e132232132251_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g132228132249_))))
                                                 (let ((_hd132231132254_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132232132251_)))
                                                       (_tl132230132256_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132232132251_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl132230132256_))
                                                       (let ((_g135800_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl132230132256_ '0))))
                 (begin
                   (let ((_g135801_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g135800_)
                                (##vector-length _g135800_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g135801_ 2)))
                         (error "Context expects 2 values" _g135801_)))
                   (let ((_target132233132259_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135800_ 0)))
                         (_tl132235132261_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135800_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl132235132261_))
                         (letrec ((_loop132236132264_
                                   (lambda (_hd132234132267_
                                            _clause132240132269_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd132234132267_))
                                         (let ((_e132237132272_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd132234132267_))))
                                           (let ((_lp-hd132238132275_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e132237132272_)))
                                                 (_lp-tl132239132277_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e132237132272_))))
                                             (let ((__tmp135816
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd132238132275_
                                                            _clause132240132269_))))
                                               (declare (not safe))
                                               (_loop132236132264_
                                                _lp-tl132239132277_
                                                __tmp135816))))
                                         (let ((_clause132241132280_
                                                (reverse _clause132240132269_)))
                                           ((lambda (_L132283_)
                                              (for-each
                                               (lambda (_clause132296_)
                                                 (let* ((___stx134470134471_
                                                         _clause132296_)
                                                        (_g132299132314_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx134470134471_)))))
                                                   (let ((___kont134472134473_
                                                          (lambda (_L132342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L132343_
                           _L132344_)
                    (for-each
                     (lambda (_g132359132361_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g132359132361_
                          _L132344_
                          _method-calls131688_
                          _slot-refs131689_)))
                     _L132342_)))
                 (___kont134474134475_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx134470134471_))
                                                         (let ((_e132306132326_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx134470134471_))))
                   (let ((_tl132304132331_
                          (let ()
                            (declare (not safe))
                            (##cdr _e132306132326_)))
                         (_hd132305132329_
                          (let ()
                            (declare (not safe))
                            (##car _e132306132326_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd132305132329_))
                         (let ((_e132309132334_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd132305132329_))))
                           (let ((_tl132307132339_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e132309132334_)))
                                 (_hd132308132337_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e132309132334_))))
                             (___kont134472134473_
                              _tl132304132331_
                              _tl132307132339_
                              _hd132308132337_)))
                         (___kont134474134475_))))
                 (___kont134474134475_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp135802
                                                      (lambda (_g132366132369_
                                                               _g132367132371_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g132366132369_
                                                                _g132367132371_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135802
                                                         '()
                                                         _L132283_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?131692_))
                                                  _stx131596_
                                                  (let* ((_specializer-id132380_
                                                          (let* ((_id132374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135803
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L131669_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135803 '"::specialize")))
                         (_specializer-id132377_
                          (let ((__tmp135804
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx131596_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id132374_ __tmp135804))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id132377_))
                    _specializer-id132377_))
                 (_$klass132382_
                  (let ((__tmp135805 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135805)))
                 (_$method-table132384_
                  (let ((__tmp135806 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135806)))
                 (_methods132386_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls131688_)))
                 (_$methods132390_
                  (map (lambda (_id132388_)
                         (let ((__tmp135807 (gensym _id132388_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135807)))
                       _methods132386_))
                 (_g135808_
                  (for-each
                   (lambda (_g132391132394_ _g132392132396_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls131688_
                        _g132391132394_
                        _g132392132396_)))
                   _methods132386_
                   _$methods132390_))
                 (_methods-bind132407_
                  (map (lambda (_g132399132402_ _g132400132404_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind131598_
                            _$klass132382_
                            _$method-table132384_
                            _g132399132402_
                            _g132400132404_)))
                       _methods132386_
                       _$methods132390_))
                 (_slots132409_
                  (let () (declare (not safe)) (hash-keys _slot-refs131689_)))
                 (_$slots132413_
                  (map (lambda (_id132411_)
                         (let ((__tmp135809 (gensym _id132411_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135809)))
                       _slots132409_))
                 (_g135810_
                  (for-each
                   (lambda (_g132414132417_ _g132415132419_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs131689_
                        _g132414132417_
                        _g132415132419_)))
                   _slots132409_
                   _$slots132413_))
                 (_slots-bind132430_
                  (map (lambda (_g132422132425_ _g132423132427_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind131599_
                            _$klass132382_
                            _g132422132425_
                            _g132423132427_)))
                       _slots132409_
                       _$slots132413_))
                 (_specializer-clauses132522_
                  (map (lambda (_clause132432_)
                         (let* ((___stx134490134491_ _clause132432_)
                                (_g132435132450_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx134490134491_)))))
                           (let ((___kont134492134493_
                                  (lambda (_L132478_ _L132479_ _L132480_)
                                    (let* ((_body132510_
                                            (map (lambda (_g132505132507_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g132505132507_
                                                      _L132480_
                                                      _$klass132382_
                                                      _method-calls131688_
                                                      _slot-refs131689_)))
                                                 _L132478_))
                                           (__tmp135811
                                            (let ()
                                              (declare (not safe))
                                              (cons _L132480_ _L132479_))))
                                      (declare (not safe))
                                      (cons __tmp135811 _body132510_))))
                                 (___kont134494134495_
                                  (lambda () _clause132432_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx134490134491_))
                                 (let ((_e132442132462_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx134490134491_))))
                                   (let ((_tl132440132467_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e132442132462_)))
                                         (_hd132441132465_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e132442132462_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd132441132465_))
                                         (let ((_e132445132470_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd132441132465_))))
                                           (let ((_tl132443132475_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e132445132470_)))
                                                 (_hd132444132473_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e132445132470_))))
                                             (___kont134492134493_
                                              _tl132440132467_
                                              _tl132443132475_
                                              _hd132444132473_)))
                                         (___kont134494134495_))))
                                 (___kont134494134495_)))))
                       (let ((__tmp135812
                              (lambda (_g132514132517_ _g132515132519_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g132514132517_ _g132515132519_)))))
                         (declare (not safe))
                         (foldr1 __tmp135812 '() _L132283_))))
                 (_specializer-impl132524_
                  (let ((__tmp135813
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses132522_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp135813 _stx131596_)))
                 (_specializer-impl132526_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl131600_
                     _$klass132382_
                     _$method-table132384_
                     _methods-bind132407_
                     _slots-bind132430_
                     _specializer-impl132524_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135815
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L131669_)))
                                                          (__tmp135814
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id132380_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135815
                                                       '" => "
                                                       __tmp135814))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def131601_
                                                       _L131669_
                                                       _specializer-id132380_
                                                       _specializer-impl132526_)))))
                                            _clause132241132280_))))))
                           (let ()
                             (declare (not safe))
                             (_loop132236132264_ _target132233132259_ '())))
                         (let ()
                           (declare (not safe))
                           (_g132227132246_ _g132228132249_))))))
               (let ()
                 (declare (not safe))
                 (_g132227132246_ _g132228132249_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132227132246_
                                                  _g132228132249_))))))
                                   (declare (not safe))
                                   (_g132226132529_ _L131668_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L131668_))
                                     (let* ((_g132532132562_
                                             (lambda (_g132533132559_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g132533132559_))))
                                            (_g132531133167_
                                             (lambda (_g132533132565_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g132533132565_))
                                                   (let ((_e132539132567_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g132533132565_))))
                                                     (let ((_hd132538132570_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132539132567_)))
                                                           (_tl132537132572_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132539132567_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132537132572_))
                                                           (let ((_e132542132575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132537132572_))))
                     (let ((_hd132541132578_
                            (let ()
                              (declare (not safe))
                              (##car _e132542132575_)))
                           (_tl132540132580_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132542132575_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132541132578_))
                           (let ((_e132545132583_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132541132578_))))
                             (let ((_hd132544132586_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132545132583_)))
                                   (_tl132543132588_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132545132583_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132544132586_))
                                   (let ((_e132548132591_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132544132586_))))
                                     (let ((_hd132547132594_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132548132591_)))
                                           (_tl132546132596_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132548132591_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd132547132594_))
                                           (let ((_e132551132599_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd132547132594_))))
                                             (let ((_hd132550132602_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132551132599_)))
                                                   (_tl132549132604_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132551132599_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132549132604_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl132546132596_))
                                                       (let ((_e132554132607_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl132546132596_))))
                 (let ((_hd132553132610_
                        (let () (declare (not safe)) (##car _e132554132607_)))
                       (_tl132552132612_
                        (let () (declare (not safe)) (##cdr _e132554132607_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132552132612_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl132543132588_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132540132580_))
                               (let ((_e132557132615_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132540132580_))))
                                 (let ((_hd132556132618_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132557132615_)))
                                       (_tl132555132620_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132557132615_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132555132620_))
                                       ((lambda (_L132623_ _L132624_ _L132625_)
                                          (let* ((_g132648132666_
                                                  (lambda (_g132649132663_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g132649132663_))))
                                                 (_g132647132717_
                                                  (lambda (_g132649132669_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g132649132669_))
                                                        (let ((_e132655132671_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g132649132669_))))
                  (let ((_hd132654132674_
                         (let () (declare (not safe)) (##car _e132655132671_)))
                        (_tl132653132676_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132655132671_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl132653132676_))
                        (let ((_e132658132679_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl132653132676_))))
                          (let ((_hd132657132682_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e132658132679_)))
                                (_tl132656132684_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e132658132679_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd132657132682_))
                                (let ((_e132661132687_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd132657132682_))))
                                  (let ((_hd132660132690_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132661132687_)))
                                        (_tl132659132692_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132661132687_))))
                                    ((lambda (_L132695_ _L132696_ _L132697_)
                                       (for-each
                                        (lambda (_g132712132714_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g132712132714_
                                             _L132697_
                                             _method-calls131688_
                                             _slot-refs131689_)))
                                        _L132695_))
                                     _tl132656132684_
                                     _tl132659132692_
                                     _hd132660132690_)))
                                (let ()
                                  (declare (not safe))
                                  (_g132648132666_ _g132649132669_)))))
                        (let ()
                          (declare (not safe))
                          (_g132648132666_ _g132649132669_)))))
                (let ()
                  (declare (not safe))
                  (_g132648132666_ _g132649132669_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g132647132717_ _L132624_))
                                          (let* ((_g132720132739_
                                                  (lambda (_g132721132736_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g132721132736_))))
                                                 (_g132719132858_
                                                  (lambda (_g132721132742_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g132721132742_))
                                                        (let ((_e132725132744_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g132721132742_))))
                  (let ((_hd132724132747_
                         (let () (declare (not safe)) (##car _e132725132744_)))
                        (_tl132723132749_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132725132744_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl132723132749_))
                        (let ((_g135770_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl132723132749_
                                  '0))))
                          (begin
                            (let ((_g135771_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g135770_)
                                         (##vector-length _g135770_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g135771_ 2)))
                                  (error "Context expects 2 values"
                                         _g135771_)))
                            (let ((_target132726132752_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135770_ 0)))
                                  (_tl132728132754_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135770_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132728132754_))
                                  (letrec ((_loop132729132757_
                                            (lambda (_hd132727132760_
                                                     _clause132733132762_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd132727132760_))
                                                  (let ((_e132730132765_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd132727132760_))))
                                                    (let ((_lp-hd132731132768_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132730132765_)))
                                                          (_lp-tl132732132770_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132730132765_))))
                                                      (let ((__tmp135773
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd132731132768_ _clause132733132762_))))
                (declare (not safe))
                (_loop132729132757_ _lp-tl132732132770_ __tmp135773))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause132734132773_
                                                         (reverse _clause132733132762_)))
                                                    ((lambda (_L132776_)
                                                       (for-each
                                                        (lambda (_clause132789_)
                                                          (let* ((_g132791132806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g132792132803_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g132792132803_))))
                         (_g132790132848_
                          (lambda (_g132792132809_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g132792132809_))
                                (let ((_e132798132811_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g132792132809_))))
                                  (let ((_hd132797132814_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132798132811_)))
                                        (_tl132796132816_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132798132811_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd132797132814_))
                                        (let ((_e132801132819_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd132797132814_))))
                                          (let ((_hd132800132822_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132801132819_)))
                                                (_tl132799132824_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132801132819_))))
                                            ((lambda (_L132827_
                                                      _L132828_
                                                      _L132829_)
                                               (for-each
                                                (lambda (_g132843132845_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g132843132845_
                                                     _L132829_
                                                     _method-calls131688_
                                                     _slot-refs131689_)))
                                                _L132827_))
                                             _tl132796132816_
                                             _tl132799132824_
                                             _hd132800132822_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132791132806_ _g132792132809_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132791132806_ _g132792132809_))))))
                    (declare (not safe))
                    (_g132790132848_ _clause132789_)))
                (let ((__tmp135772
                       (lambda (_g132850132853_ _g132851132855_)
                         (let ()
                           (declare (not safe))
                           (cons _g132850132853_ _g132851132855_)))))
                  (declare (not safe))
                  (foldr1 __tmp135772 '() _L132776_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause132734132773_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop132729132757_
                                       _target132726132752_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g132720132739_ _g132721132742_))))))
                        (let ()
                          (declare (not safe))
                          (_g132720132739_ _g132721132742_)))))
                (let ()
                  (declare (not safe))
                  (_g132720132739_ _g132721132742_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g132719132858_ _L132623_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?131692_))
                                              _stx131596_
                                              (let* ((_specializer-id132867_
                                                      (let* ((_id132861_
                                                              (let ((__tmp135774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L131669_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp135774 '"::specialize")))
                     (_specializer-id132864_
                      (let ((__tmp135775
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx131596_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id132861_ __tmp135775))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id132864_))
                _specializer-id132864_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass132869_
                                                      (let ((__tmp135776
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135776)))
                                                     (_$method-table132871_
                                                      (let ((__tmp135777
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135777)))
                                                     (_methods132873_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls131688_)))
                                                     (_$methods132877_
                                                      (map (lambda (_id132875_)
                                                             (let ((__tmp135778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id132875_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135778)))
                   _methods132873_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135779_
                                                      (for-each
                                                       (lambda (_g132878132881_
                                                                _g132879132883_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls131688_
                                                            _g132878132881_
                                                            _g132879132883_)))
                                                       _methods132873_
                                                       _$methods132877_))
                                                     (_methods-bind132894_
                                                      (map (lambda (_g132886132889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g132887132891_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind131598_
                        _$klass132869_
                        _$method-table132871_
                        _g132886132889_
                        _g132887132891_)))
                   _methods132873_
                   _$methods132877_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots132896_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs131689_)))
                                                     (_$slots132900_
                                                      (map (lambda (_id132898_)
                                                             (let ((__tmp135780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id132898_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135780)))
                   _slots132896_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135781_
                                                      (for-each
                                                       (lambda (_g132901132904_
                                                                _g132902132906_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs131689_
                                                            _g132901132904_
                                                            _g132902132906_)))
                                                       _slots132896_
                                                       _$slots132900_))
                                                     (_slots-bind132917_
                                                      (map (lambda (_g132909132912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g132910132914_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind131599_
                        _$klass132869_
                        _g132909132912_
                        _g132910132914_)))
                   _slots132896_
                   _$slots132900_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr133003_
                                                      (let* ((_g132919132937_
                                                              (lambda (_g132920132934_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132920132934_))))
                     (_g132918133000_
                      (lambda (_g132920132940_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132920132940_))
                            (let ((_e132926132942_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132920132940_))))
                              (let ((_hd132925132945_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132926132942_)))
                                    (_tl132924132947_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132926132942_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl132924132947_))
                                    (let ((_e132929132950_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl132924132947_))))
                                      (let ((_hd132928132953_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132929132950_)))
                                            (_tl132927132955_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132929132950_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd132928132953_))
                                            (let ((_e132932132958_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd132928132953_))))
                                              (let ((_hd132931132961_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132932132958_)))
                                                    (_tl132930132963_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132932132958_))))
                                                ((lambda (_L132966_
                                                          _L132967_
                                                          _L132968_)
                                                   (let* ((_body132998_
                                                           (map (lambda (_g132993132995_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g132993132995_
                             _L132968_
                             _$klass132869_
                             _method-calls131688_
                             _slot-refs131689_)))
                        _L132966_))
                  (__tmp135782
                   (let ((__tmp135783
                          (let ((__tmp135784
                                 (let ()
                                   (declare (not safe))
                                   (cons _L132968_ _L132967_))))
                            (declare (not safe))
                            (cons __tmp135784 _body132998_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp135783))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp135782
                                                      _L132624_)))
                                                 _tl132927132955_
                                                 _tl132930132963_
                                                 _hd132931132961_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g132919132937_
                                               _g132920132940_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132919132937_ _g132920132940_)))))
                            (let ()
                              (declare (not safe))
                              (_g132919132937_ _g132920132940_))))))
                (declare (not safe))
                (_g132918133000_ _L132624_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr133160_
                                                      (let* ((_g133005133024_
                                                              (lambda (_g133006133021_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g133006133021_))))
                     (_g133004133157_
                      (lambda (_g133006133027_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g133006133027_))
                            (let ((_e133010133029_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g133006133027_))))
                              (let ((_hd133009133032_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133010133029_)))
                                    (_tl133008133034_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133010133029_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl133008133034_))
                                    (let ((_g135785_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl133008133034_
                                              '0))))
                                      (begin
                                        (let ((_g135786_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g135785_)
                                                     (##vector-length
                                                      _g135785_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g135786_ 2)))
                                              (error "Context expects 2 values"
                                                     _g135786_)))
                                        (let ((_target133011133037_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135785_ 0)))
                                              (_tl133013133039_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135785_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl133013133039_))
                                              (letrec ((_loop133014133042_
                                                        (lambda (_hd133012133045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause133018133047_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd133012133045_))
                      (let ((_e133015133050_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd133012133045_))))
                        (let ((_lp-hd133016133053_
                               (let ()
                                 (declare (not safe))
                                 (##car _e133015133050_)))
                              (_lp-tl133017133055_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e133015133050_))))
                          (let ((__tmp135790
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd133016133053_
                                         _clause133018133047_))))
                            (declare (not safe))
                            (_loop133014133042_
                             _lp-tl133017133055_
                             __tmp135790))))
                      (let ((_clause133019133058_
                             (reverse _clause133018133047_)))
                        ((lambda (_L133061_)
                           (let* ((_clauses133155_
                                   (map (lambda (_clause133075_)
                                          (let* ((___stx134510134511_
                                                  _clause133075_)
                                                 (_g133078133093_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx134510134511_)))))
                                            (let ((___kont134512134513_
                                                   (lambda (_L133121_
                                                            _L133122_
                                                            _L133123_)
                                                     (let* ((_body133143_
                                                             (map (lambda (_g133138133140_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g133138133140_
                               _L133123_
                               _$klass132869_
                               _method-calls131688_
                               _slot-refs131689_)))
                          _L133121_))
                    (__tmp135787
                     (let () (declare (not safe)) (cons _L133123_ _L133122_))))
               (declare (not safe))
               (cons __tmp135787 _body133143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134514134515_
                                                   (lambda () _clause133075_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx134510134511_))
                                                  (let ((_e133085133105_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx134510134511_))))
                                                    (let ((_tl133083133110_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e133085133105_)))
                                                          (_hd133084133108_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e133085133105_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd133084133108_))
                                                          (let ((_e133088133113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd133084133108_))))
                    (let ((_tl133086133118_
                           (let ()
                             (declare (not safe))
                             (##cdr _e133088133113_)))
                          (_hd133087133116_
                           (let ()
                             (declare (not safe))
                             (##car _e133088133113_))))
                      (___kont134512134513_
                       _tl133083133110_
                       _tl133086133118_
                       _hd133087133116_)))
                  (___kont134514134515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134514134515_)))))
                                        (let ((__tmp135788
                                               (lambda (_g133147133150_
                                                        _g133148133152_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g133147133150_
                                                         _g133148133152_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp135788 '() _L133061_))))
                                  (__tmp135789
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses133155_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135789 _L132623_)))
                         _clause133019133058_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop133014133042_
                                                   _target133011133037_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g133005133024_
                                                 _g133006133027_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133005133024_ _g133006133027_)))))
                            (let ()
                              (declare (not safe))
                              (_g133005133024_ _g133006133027_))))))
                (declare (not safe))
                (_g133004133157_ _L132623_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl133162_
                                                      (let ((__tmp135791
                                                             (let ((__tmp135792
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp135794
                                   (let ((__tmp135795
                                          (let ((__tmp135797
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L132625_ '())))
                                                (__tmp135796
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr133003_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp135797 __tmp135796))))
                                     (declare (not safe))
                                     (cons __tmp135795 '())))
                                  (__tmp135793
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr133160_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp135794 __tmp135793))))
                       (declare (not safe))
                       (cons '%#let-values __tmp135792))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp135791 _stx131596_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl133164_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl131600_
                                                         _$klass132869_
                                                         _$method-table132871_
                                                         _methods-bind132894_
                                                         _slots-bind132917_
                                                         _specializer-impl133162_))))
                                                (let ((__tmp135799
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L131669_)))
                                                      (__tmp135798
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id132867_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp135799
                                                   '" => "
                                                   __tmp135798))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def131601_
                                                   _L131669_
                                                   _specializer-id132867_
                                                   _specializer-impl133164_)))))
                                        _hd132556132618_
                                        _hd132553132610_
                                        _hd132550132602_)
                                       (let ()
                                         (declare (not safe))
                                         (_g132532132562_ _g132533132565_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132532132562_ _g132533132565_)))
                           (let ()
                             (declare (not safe))
                             (_g132532132562_ _g132533132565_)))
                       (let ()
                         (declare (not safe))
                         (_g132532132562_ _g132533132565_)))))
               (let () (declare (not safe)) (_g132532132562_ _g132533132565_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132532132562_
                                                      _g132533132565_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132532132562_
                                              _g132533132565_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132532132562_ _g132533132565_)))))
                           (let ()
                             (declare (not safe))
                             (_g132532132562_ _g132533132565_)))))
                   (let ()
                     (declare (not safe))
                     (_g132532132562_ _g132533132565_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132532132562_
                                                      _g132533132565_))))))
                                       (declare (not safe))
                                       (_g132531133167_ _L131668_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L131668_))
                                         (let* ((_g133170133223_
                                                 (lambda (_g133171133220_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g133171133220_))))
                                                (_g133169134354_
                                                 (lambda (_g133171133226_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g133171133226_))
                                                       (let ((_e133179133228_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g133171133226_))))
                 (let ((_hd133178133231_
                        (let () (declare (not safe)) (##car _e133179133228_)))
                       (_tl133177133233_
                        (let () (declare (not safe)) (##cdr _e133179133228_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd133178133231_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd133178133231_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl133177133233_))
                               (let ((_e133182133236_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl133177133233_))))
                                 (let ((_hd133181133239_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e133182133236_)))
                                       (_tl133180133241_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e133182133236_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd133181133239_))
                                       (let ((_e133185133244_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd133181133239_))))
                                         (let ((_hd133184133247_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e133185133244_)))
                                               (_tl133183133249_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e133185133244_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd133184133247_))
                                               (let ((_e133188133252_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd133184133247_))))
                                                 (let ((_hd133187133255_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133188133252_)))
                                                       (_tl133186133257_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133188133252_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd133187133255_))
                                                       (let ((_e133191133260_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd133187133255_))))
                 (let ((_hd133190133263_
                        (let () (declare (not safe)) (##car _e133191133260_)))
                       (_tl133189133265_
                        (let () (declare (not safe)) (##cdr _e133191133260_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl133189133265_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl133186133257_))
                           (let ((_e133194133268_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl133186133257_))))
                             (let ((_hd133193133271_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e133194133268_)))
                                   (_tl133192133273_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e133194133268_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd133193133271_))
                                   (let ((_e133197133276_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd133193133271_))))
                                     (let ((_hd133196133279_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133197133276_)))
                                           (_tl133195133281_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133197133276_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd133196133279_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd133196133279_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl133195133281_))
                                                   (let ((_e133200133284_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl133195133281_))))
                                                     (let ((_hd133199133287_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e133200133284_)))
                                                           (_tl133198133289_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e133200133284_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd133199133287_))
                                                           (let ((_e133203133292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd133199133287_))))
                     (let ((_hd133202133295_
                            (let ()
                              (declare (not safe))
                              (##car _e133203133292_)))
                           (_tl133201133297_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133203133292_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd133202133295_))
                           (let ((_e133206133300_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd133202133295_))))
                             (let ((_hd133205133303_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e133206133300_)))
                                   (_tl133204133305_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e133206133300_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd133205133303_))
                                   (let ((_e133209133308_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd133205133303_))))
                                     (let ((_hd133208133311_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133209133308_)))
                                           (_tl133207133313_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133209133308_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl133207133313_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl133204133305_))
                                               (let ((_e133212133316_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl133204133305_))))
                                                 (let ((_hd133211133319_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133212133316_)))
                                                       (_tl133210133321_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133212133316_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl133210133321_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl133201133297_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl133198133289_))
                       (let ((_e133215133324_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl133198133289_))))
                         (let ((_hd133214133327_
                                (let ()
                                  (declare (not safe))
                                  (##car _e133215133324_)))
                               (_tl133213133329_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e133215133324_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl133213133329_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl133192133273_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl133183133249_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl133180133241_))
                                           (let ((_e133218133332_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl133180133241_))))
                                             (let ((_hd133217133335_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e133218133332_)))
                                                   (_tl133216133337_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e133218133332_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl133216133337_))
                                                   ((lambda (_L133340_
                                                             _L133341_
                                                             _L133342_
                                                             _L133343_
                                                             _L133344_)
                                                      (let* ((_g133383133445_
                                                              (lambda (_g133384133442_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g133384133442_))))
                     (_g133382134351_
                      (lambda (_g133384133448_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g133384133448_))
                            (let ((_e133392133450_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g133384133448_))))
                              (let ((_hd133391133453_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133392133450_)))
                                    (_tl133390133455_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133392133450_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd133391133453_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd133391133453_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl133390133455_))
                                            (let ((_e133395133458_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl133390133455_))))
                                              (let ((_hd133394133461_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133395133458_)))
                                                    (_tl133393133463_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133395133458_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133393133463_))
                                                    (let ((_e133398133466_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133393133463_))))
                                                      (let ((_hd133397133469_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133398133466_)))
                    (_tl133396133471_
                     (let () (declare (not safe)) (##cdr _e133398133466_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd133397133469_))
                    (let ((_e133401133474_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd133397133469_))))
                      (let ((_hd133400133477_
                             (let ()
                               (declare (not safe))
                               (##car _e133401133474_)))
                            (_tl133399133479_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133401133474_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd133400133477_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd133400133477_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl133399133479_))
                                    (let ((_e133404133482_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl133399133479_))))
                                      (let ((_hd133403133485_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133404133482_)))
                                            (_tl133402133487_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133404133482_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd133403133485_))
                                            (let ((_e133407133490_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd133403133485_))))
                                              (let ((_hd133406133493_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133407133490_)))
                                                    (_tl133405133495_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133407133490_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd133406133493_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd133406133493_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl133405133495_))
                                                            (let ((_e133410133498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl133405133495_))))
                      (let ((_hd133409133501_
                             (let ()
                               (declare (not safe))
                               (##car _e133410133498_)))
                            (_tl133408133503_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133410133498_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133408133503_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl133402133487_))
                                (let ((_e133413133506_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl133402133487_))))
                                  (let ((_hd133412133509_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133413133506_)))
                                        (_tl133411133511_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133413133506_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd133412133509_))
                                        (let ((_e133416133514_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd133412133509_))))
                                          (let ((_hd133415133517_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133416133514_)))
                                                (_tl133414133519_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133416133514_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd133415133517_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd133415133517_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl133414133519_))
                                                        (let ((_e133419133522_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl133414133519_))))
                  (let ((_hd133418133525_
                         (let () (declare (not safe)) (##car _e133419133522_)))
                        (_tl133417133527_
                         (let ()
                           (declare (not safe))
                           (##cdr _e133419133522_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl133417133527_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133411133511_))
                            (let ((_e133422133530_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133411133511_))))
                              (let ((_hd133421133533_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133422133530_)))
                                    (_tl133420133535_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133422133530_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd133421133533_))
                                    (let ((_e133425133538_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd133421133533_))))
                                      (let ((_hd133424133541_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133425133538_)))
                                            (_tl133423133543_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133425133538_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd133424133541_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd133424133541_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133423133543_))
                                                    (let ((_e133428133546_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133423133543_))))
                                                      (let ((_hd133427133549_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133428133546_)))
                    (_tl133426133551_
                     (let () (declare (not safe)) (##cdr _e133428133546_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl133426133551_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl133420133535_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl133420133535_))
                                  '1)
                            (let ((_g135696_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133420133535_
                                      '1))))
                              (begin
                                (let ((_g135697_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g135696_)
                                             (##vector-length _g135696_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g135697_ 2)))
                                      (error "Context expects 2 values"
                                             _g135697_)))
                                (let ((_target133429133554_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135696_ 0)))
                                      (_tl133431133556_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135696_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl133431133556_))
                                      (let ((_e133440133559_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl133431133556_))))
                                        (let ((_hd133439133562_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e133440133559_)))
                                              (_tl133438133564_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e133440133559_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl133438133564_))
                                              (letrec ((_loop133432133567_
                                                        (lambda (_hd133430133570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref133436133572_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd133430133570_))
                      (let ((_e133433133575_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd133430133570_))))
                        (let ((_lp-hd133434133578_
                               (let ()
                                 (declare (not safe))
                                 (##car _e133433133575_)))
                              (_lp-tl133435133580_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e133433133575_))))
                          (let ((__tmp135769
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd133434133578_
                                         _kw-ref133436133572_))))
                            (declare (not safe))
                            (_loop133432133567_
                             _lp-tl133435133580_
                             __tmp135769))))
                      (let ((_kw-ref133437133583_
                             (reverse _kw-ref133436133572_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133396133471_))
                            ((lambda (_L133586_
                                      _L133587_
                                      _L133588_
                                      _L133589_
                                      _L133590_)
                               (let* ((_kw-count133641_
                                       (length (let ((__tmp135698
                                                      (lambda (_g133633133636_
                                                               _g133634133638_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g133633133636_
                                                                _g133634133638_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135698
                                                         '()
                                                         _L133587_))))
                                      (_self-index133643_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count133641_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L133342_))
                                     (let* ((_g133646133660_
                                             (lambda (_g133647133657_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g133647133657_))))
                                            (_g133645133773_
                                             (lambda (_g133647133663_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g133647133663_))
                                                   (let ((_e133652133665_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g133647133663_))))
                                                     (let ((_hd133651133668_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e133652133665_)))
                                                           (_tl133650133670_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e133652133665_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133650133670_))
                                                           (let ((_e133655133673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133650133670_))))
                     (let ((_hd133654133676_
                            (let ()
                              (declare (not safe))
                              (##car _e133655133673_)))
                           (_tl133653133678_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133655133673_))))
                       ((lambda (_L133681_ _L133682_)
                          (let ((_self133698_
                                 (list-ref _L133682_ _self-index133643_)))
                            (for-each
                             (lambda (_g133699133701_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g133699133701_
                                  _self133698_
                                  _method-calls131688_
                                  _slot-refs131689_)))
                             _L133681_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?131692_))
                                _stx131596_
                                (let* ((_specializer-id133710_
                                        (let* ((_id133704_
                                                (let ((__tmp135742
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L131669_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp135742
                                                   '"::specialize")))
                                               (_specializer-id133707_
                                                (let ((__tmp135743
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx131596_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id133704_
                                                   __tmp135743))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id133707_))
                                          _specializer-id133707_))
                                       (_$klass133712_
                                        (let ((__tmp135744 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135744)))
                                       (_$method-table133714_
                                        (let ((__tmp135745
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135745)))
                                       (_methods133716_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls131688_)))
                                       (_$methods133720_
                                        (map (lambda (_id133718_)
                                               (let ((__tmp135746
                                                      (gensym _id133718_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135746)))
                                             _methods133716_))
                                       (_g135747_
                                        (for-each
                                         (lambda (_g133721133724_
                                                  _g133722133726_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls131688_
                                              _g133721133724_
                                              _g133722133726_)))
                                         _methods133716_
                                         _$methods133720_))
                                       (_methods-bind133737_
                                        (map (lambda (_g133729133732_
                                                      _g133730133734_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind131598_
                                                  _$klass133712_
                                                  _$method-table133714_
                                                  _g133729133732_
                                                  _g133730133734_)))
                                             _methods133716_
                                             _$methods133720_))
                                       (_slots133739_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs131689_)))
                                       (_$slots133743_
                                        (map (lambda (_id133741_)
                                               (let ((__tmp135748
                                                      (gensym _id133741_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135748)))
                                             _slots133739_))
                                       (_g135749_
                                        (for-each
                                         (lambda (_g133744133747_
                                                  _g133745133749_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs131689_
                                              _g133744133747_
                                              _g133745133749_)))
                                         _slots133739_
                                         _$slots133743_))
                                       (_slots-bind133760_
                                        (map (lambda (_g133752133755_
                                                      _g133753133757_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind131599_
                                                  _$klass133712_
                                                  _g133752133755_
                                                  _g133753133757_)))
                                             _slots133739_
                                             _$slots133743_))
                                       (_specializer-impl133768_
                                        (let* ((_specializer-body133766_
                                                (map (lambda (_g133761133763_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g133761133763_
                                                          _self133698_
                                                          _$klass133712_
                                                          _method-calls131688_
                                                          _slot-refs131689_)))
                                                     _L133681_))
                                               (__tmp135750
                                                (let ((__tmp135751
                                                       (let ((__tmp135753
                                                              (let ((__tmp135754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135766
                                    (let ()
                                      (declare (not safe))
                                      (cons _L133344_ '())))
                                   (__tmp135755
                                    (let ((__tmp135756
                                           (let ((__tmp135757
                                                  (let ((__tmp135759
                                                         (let ((__tmp135760
                                                                (let ((__tmp135765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L133343_ '())))
                              (__tmp135761
                               (let ((__tmp135762
                                      (let ((__tmp135763
                                             (let ((__tmp135764
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L133682_
                                                            _specializer-body133766_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp135764))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp135763
                                         _L133342_))))
                                 (declare (not safe))
                                 (cons __tmp135762 '()))))
                          (declare (not safe))
                          (cons __tmp135765 __tmp135761))))
                   (declare (not safe))
                   (cons __tmp135760 '())))
                (__tmp135758
                 (let () (declare (not safe)) (cons _L133341_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135759
                                                          __tmp135758))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp135757))))
                                      (declare (not safe))
                                      (cons __tmp135756 '()))))
                               (declare (not safe))
                               (cons __tmp135766 __tmp135755))))
                        (declare (not safe))
                        (cons __tmp135754 '())))
                     (__tmp135752
                      (let () (declare (not safe)) (cons _L133340_ '()))))
                 (declare (not safe))
                 (cons __tmp135753 __tmp135752))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp135751))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp135750
                                           _stx131596_)))
                                       (_specializer-impl133770_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl131600_
                                           _$klass133712_
                                           _$method-table133714_
                                           _methods-bind133737_
                                           _slots-bind133760_
                                           _specializer-impl133768_))))
                                  (let ((__tmp135768
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L131669_)))
                                        (__tmp135767
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id133710_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp135768
                                     '" => "
                                     __tmp135767))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def131601_
                                     _L131669_
                                     _specializer-id133710_
                                     _specializer-impl133770_))))))
                        _tl133653133678_
                        _hd133654133676_)))
                   (let ()
                     (declare (not safe))
                     (_g133646133660_ _g133647133663_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133646133660_
                                                      _g133647133663_))))))
                                       (declare (not safe))
                                       (_g133645133773_ _L133342_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L133342_))
                                         (let* ((_g133776133806_
                                                 (lambda (_g133777133803_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g133777133803_))))
                                                (_g133775134348_
                                                 (lambda (_g133777133809_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g133777133809_))
                                                       (let ((_e133783133811_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g133777133809_))))
                 (let ((_hd133782133814_
                        (let () (declare (not safe)) (##car _e133783133811_)))
                       (_tl133781133816_
                        (let () (declare (not safe)) (##cdr _e133783133811_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl133781133816_))
                       (let ((_e133786133819_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl133781133816_))))
                         (let ((_hd133785133822_
                                (let ()
                                  (declare (not safe))
                                  (##car _e133786133819_)))
                               (_tl133784133824_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e133786133819_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd133785133822_))
                               (let ((_e133789133827_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd133785133822_))))
                                 (let ((_hd133788133830_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e133789133827_)))
                                       (_tl133787133832_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e133789133827_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd133788133830_))
                                       (let ((_e133792133835_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd133788133830_))))
                                         (let ((_hd133791133838_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e133792133835_)))
                                               (_tl133790133840_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e133792133835_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd133791133838_))
                                               (let ((_e133795133843_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd133791133838_))))
                                                 (let ((_hd133794133846_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133795133843_)))
                                                       (_tl133793133848_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133795133843_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl133793133848_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133790133840_))
                                                           (let ((_e133798133851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133790133840_))))
                     (let ((_hd133797133854_
                            (let ()
                              (declare (not safe))
                              (##car _e133798133851_)))
                           (_tl133796133856_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133798133851_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl133796133856_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl133787133832_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl133784133824_))
                                   (let ((_e133801133859_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl133784133824_))))
                                     (let ((_hd133800133862_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133801133859_)))
                                           (_tl133799133864_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133801133859_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl133799133864_))
                                           ((lambda (_L133867_
                                                     _L133868_
                                                     _L133869_)
                                              (let* ((_g133892133906_
                                                      (lambda (_g133893133903_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133893133903_))))
                                                     (_g133891133947_
                                                      (lambda (_g133893133909_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133893133909_))
                                                            (let ((_e133898133911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133893133909_))))
                      (let ((_hd133897133914_
                             (let ()
                               (declare (not safe))
                               (##car _e133898133911_)))
                            (_tl133896133916_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133898133911_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133896133916_))
                            (let ((_e133901133919_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133896133916_))))
                              (let ((_hd133900133922_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133901133919_)))
                                    (_tl133899133924_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133901133919_))))
                                ((lambda (_L133927_ _L133928_)
                                   (let ((_self133941_
                                          (list-ref
                                           _L133928_
                                           _self-index133643_)))
                                     (for-each
                                      (lambda (_g133942133944_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g133942133944_
                                           _self133941_
                                           _method-calls131688_
                                           _slot-refs131689_)))
                                      _L133927_)))
                                 _tl133899133924_
                                 _hd133900133922_)))
                            (let ()
                              (declare (not safe))
                              (_g133892133906_ _g133893133909_)))))
                    (let ()
                      (declare (not safe))
                      (_g133892133906_ _g133893133909_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133891133947_ _L133868_))
                                              (let* ((_g133950133969_
                                                      (lambda (_g133951133966_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133951133966_))))
                                                     (_g133949134074_
                                                      (lambda (_g133951133972_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133951133972_))
                                                            (let ((_e133955133974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133951133972_))))
                      (let ((_hd133954133977_
                             (let ()
                               (declare (not safe))
                               (##car _e133955133974_)))
                            (_tl133953133979_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133955133974_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl133953133979_))
                            (let ((_g135699_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133953133979_
                                      '0))))
                              (begin
                                (let ((_g135700_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g135699_)
                                             (##vector-length _g135699_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g135700_ 2)))
                                      (error "Context expects 2 values"
                                             _g135700_)))
                                (let ((_target133956133982_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135699_ 0)))
                                      (_tl133958133984_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135699_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl133958133984_))
                                      (letrec ((_loop133959133987_
                                                (lambda (_hd133957133990_
                                                         _clause133963133992_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd133957133990_))
                                                      (let ((_e133960133995_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd133957133990_))))
                (let ((_lp-hd133961133998_
                       (let () (declare (not safe)) (##car _e133960133995_)))
                      (_lp-tl133962134000_
                       (let () (declare (not safe)) (##cdr _e133960133995_))))
                  (let ((__tmp135702
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd133961133998_ _clause133963133992_))))
                    (declare (not safe))
                    (_loop133959133987_ _lp-tl133962134000_ __tmp135702))))
              (let ((_clause133964134003_ (reverse _clause133963133992_)))
                ((lambda (_L134006_)
                   (for-each
                    (lambda (_clause134019_)
                      (let* ((_g134021134032_
                              (lambda (_g134022134029_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g134022134029_))))
                             (_g134020134064_
                              (lambda (_g134022134035_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g134022134035_))
                                    (let ((_e134027134037_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g134022134035_))))
                                      (let ((_hd134026134040_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e134027134037_)))
                                            (_tl134025134042_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e134027134037_))))
                                        ((lambda (_L134045_ _L134046_)
                                           (let ((_self134058_
                                                  (list-ref
                                                   _L134046_
                                                   _self-index133643_)))
                                             (for-each
                                              (lambda (_g134059134061_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g134059134061_
                                                   _self134058_
                                                   _method-calls131688_
                                                   _slot-refs131689_)))
                                              _L134045_)))
                                         _tl134025134042_
                                         _hd134026134040_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g134021134032_ _g134022134035_))))))
                        (declare (not safe))
                        (_g134020134064_ _clause134019_)))
                    (let ((__tmp135701
                           (lambda (_g134066134069_ _g134067134071_)
                             (let ()
                               (declare (not safe))
                               (cons _g134066134069_ _g134067134071_)))))
                      (declare (not safe))
                      (foldr1 __tmp135701 '() _L134006_))))
                 _clause133964134003_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop133959133987_
                                           _target133956133982_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g133950133969_ _g133951133972_))))))
                            (let ()
                              (declare (not safe))
                              (_g133950133969_ _g133951133972_)))))
                    (let ()
                      (declare (not safe))
                      (_g133950133969_ _g133951133972_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133949134074_ _L133867_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?131692_))
                                                  _stx131596_
                                                  (let* ((_specializer-id134083_
                                                          (let* ((_id134077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135703
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L131669_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135703 '"::specialize")))
                         (_specializer-id134080_
                          (let ((__tmp135704
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx131596_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id134077_ __tmp135704))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id134080_))
                    _specializer-id134080_))
                 (_$klass134085_
                  (let ((__tmp135705 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135705)))
                 (_$method-table134087_
                  (let ((__tmp135706 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135706)))
                 (_methods134089_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls131688_)))
                 (_$methods134093_
                  (map (lambda (_id134091_)
                         (let ((__tmp135707 (gensym _id134091_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135707)))
                       _methods134089_))
                 (_g135708_
                  (for-each
                   (lambda (_g134094134097_ _g134095134099_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls131688_
                        _g134094134097_
                        _g134095134099_)))
                   _methods134089_
                   _$methods134093_))
                 (_methods-bind134110_
                  (map (lambda (_g134102134105_ _g134103134107_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind131598_
                            _$klass134085_
                            _$method-table134087_
                            _g134102134105_
                            _g134103134107_)))
                       _methods134089_
                       _$methods134093_))
                 (_slots134112_
                  (let () (declare (not safe)) (hash-keys _slot-refs131689_)))
                 (_$slots134116_
                  (map (lambda (_id134114_)
                         (let ((__tmp135709 (gensym _id134114_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135709)))
                       _slots134112_))
                 (_g135710_
                  (for-each
                   (lambda (_g134117134120_ _g134118134122_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs131689_
                        _g134117134120_
                        _g134118134122_)))
                   _slots134112_
                   _$slots134116_))
                 (_slots-bind134133_
                  (map (lambda (_g134125134128_ _g134126134130_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind131599_
                            _$klass134085_
                            _g134125134128_
                            _g134126134130_)))
                       _slots134112_
                       _$slots134116_))
                 (_specializer-lambda-expr134206_
                  (let* ((_g134135134149_
                          (lambda (_g134136134146_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g134136134146_))))
                         (_g134134134203_
                          (lambda (_g134136134152_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g134136134152_))
                                (let ((_e134141134154_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g134136134152_))))
                                  (let ((_hd134140134157_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134141134154_)))
                                        (_tl134139134159_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134141134154_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl134139134159_))
                                        (let ((_e134144134162_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl134139134159_))))
                                          (let ((_hd134143134165_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e134144134162_)))
                                                (_tl134142134167_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e134144134162_))))
                                            ((lambda (_L134170_ _L134171_)
                                               (let* ((_self134194_
                                                       (list-ref
                                                        _L134171_
                                                        _self-index133643_))
                                                      (_body134200_
                                                       (map (lambda (_g134195134197_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g134195134197_
                         _self134194_
                         _$klass134085_
                         _method-calls131688_
                         _slot-refs131689_)))
                    _L134170_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp135711
                                                        (let ((__tmp135712
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L134171_ _body134200_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp135712))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp135711
                                                    _L133868_))))
                                             _tl134142134167_
                                             _hd134143134165_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134135134149_ _g134136134152_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134135134149_ _g134136134152_))))))
                    (declare (not safe))
                    (_g134134134203_ _L133868_)))
                 (_specializer-case-lambda-expr134341_
                  (let* ((_g134208134227_
                          (lambda (_g134209134224_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g134209134224_))))
                         (_g134207134338_
                          (lambda (_g134209134230_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g134209134230_))
                                (let ((_e134213134232_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g134209134230_))))
                                  (let ((_hd134212134235_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134213134232_)))
                                        (_tl134211134237_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134213134232_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl134211134237_))
                                        (let ((_g135713_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl134211134237_
                                                  '0))))
                                          (begin
                                            (let ((_g135714_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g135713_)
                                                         (##vector-length
                                                          _g135713_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g135714_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g135714_)))
                                            (let ((_target134214134240_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g135713_
                                                      0)))
                                                  (_tl134216134242_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g135713_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl134216134242_))
                                                  (letrec ((_loop134217134245_
                                                            (lambda (_hd134215134248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause134221134250_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd134215134248_))
                          (let ((_e134218134253_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd134215134248_))))
                            (let ((_lp-hd134219134256_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e134218134253_)))
                                  (_lp-tl134220134258_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e134218134253_))))
                              (let ((__tmp135717
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd134219134256_
                                             _clause134221134250_))))
                                (declare (not safe))
                                (_loop134217134245_
                                 _lp-tl134220134258_
                                 __tmp135717))))
                          (let ((_clause134222134261_
                                 (reverse _clause134221134250_)))
                            ((lambda (_L134264_)
                               (let* ((_clauses134336_
                                       (map (lambda (_clause134278_)
                                              (let* ((_g134280134291_
                                                      (lambda (_g134281134288_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g134281134288_))))
                                                     (_g134279134326_
                                                      (lambda (_g134281134294_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g134281134294_))
                                                            (let ((_e134286134296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g134281134294_))))
                      (let ((_hd134285134299_
                             (let ()
                               (declare (not safe))
                               (##car _e134286134296_)))
                            (_tl134284134301_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134286134296_))))
                        ((lambda (_L134304_ _L134305_)
                           (let* ((_self134317_
                                   (list-ref _L134305_ _self-index133643_))
                                  (_body134323_
                                   (map (lambda (_g134318134320_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g134318134320_
                                             _self134317_
                                             _$klass134085_
                                             _method-calls131688_
                                             _slot-refs131689_)))
                                        _L134304_)))
                             (let ()
                               (declare (not safe))
                               (cons _L134305_ _body134323_))))
                         _tl134284134301_
                         _hd134285134299_)))
                    (let ()
                      (declare (not safe))
                      (_g134280134291_ _g134281134294_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g134279134326_
                                                 _clause134278_)))
                                            (let ((__tmp135715
                                                   (lambda (_g134328134331_
                                                            _g134329134333_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g134328134331_
                                                             _g134329134333_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp135715
                                                      '()
                                                      _L134264_))))
                                      (__tmp135716
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses134336_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp135716
                                  _L133867_)))
                             _clause134222134261_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop134217134245_
                                                       _target134214134240_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g134208134227_
                                                     _g134209134230_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g134208134227_ _g134209134230_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134208134227_ _g134209134230_))))))
                    (declare (not safe))
                    (_g134207134338_ _L133867_)))
                 (_specializer-impl134343_
                  (let ((__tmp135718
                         (let ((__tmp135719
                                (let ((__tmp135721
                                       (let ((__tmp135722
                                              (let ((__tmp135739
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L133344_ '())))
                                                    (__tmp135723
                                                     (let ((__tmp135724
                                                            (let ((__tmp135725
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135727
                                  (let ((__tmp135728
                                         (let ((__tmp135738
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L133343_ '())))
                                               (__tmp135729
                                                (let ((__tmp135730
                                                       (let ((__tmp135731
                                                              (let ((__tmp135732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135734
                                    (let ((__tmp135735
                                           (let ((__tmp135737
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L133869_ '())))
                                                 (__tmp135736
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr134206_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp135737 __tmp135736))))
                                      (declare (not safe))
                                      (cons __tmp135735 '())))
                                   (__tmp135733
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr134341_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp135734 __tmp135733))))
                        (declare (not safe))
                        (cons '%#let-values __tmp135732))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp135731 _stx131596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135730 '()))))
                                           (declare (not safe))
                                           (cons __tmp135738 __tmp135729))))
                                    (declare (not safe))
                                    (cons __tmp135728 '())))
                                 (__tmp135726
                                  (let ()
                                    (declare (not safe))
                                    (cons _L133341_ '()))))
                             (declare (not safe))
                             (cons __tmp135727 __tmp135726))))
                      (declare (not safe))
                      (cons '%#let-values __tmp135725))))
               (declare (not safe))
               (cons __tmp135724 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135739
                                                      __tmp135723))))
                                         (declare (not safe))
                                         (cons __tmp135722 '())))
                                      (__tmp135720
                                       (let ()
                                         (declare (not safe))
                                         (cons _L133340_ '()))))
                                  (declare (not safe))
                                  (cons __tmp135721 __tmp135720))))
                           (declare (not safe))
                           (cons '%#let-values __tmp135719))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp135718 _stx131596_)))
                 (_specializer-impl134345_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl131600_
                     _$klass134085_
                     _$method-table134087_
                     _methods-bind134110_
                     _slots-bind134133_
                     _specializer-impl134343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135741
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L131669_)))
                                                          (__tmp135740
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id134083_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135741
                                                       '" => "
                                                       __tmp135740))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def131601_
                                                       _L131669_
                                                       _specializer-id134083_
                                                       _specializer-impl134345_)))))
                                            _hd133800133862_
                                            _hd133797133854_
                                            _hd133794133846_)
                                           (let ()
                                             (declare (not safe))
                                             (_g133776133806_
                                              _g133777133809_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133776133806_ _g133777133809_)))
                               (let ()
                                 (declare (not safe))
                                 (_g133776133806_ _g133777133809_)))
                           (let ()
                             (declare (not safe))
                             (_g133776133806_ _g133777133809_)))))
                   (let ()
                     (declare (not safe))
                     (_g133776133806_ _g133777133809_)))
               (let ()
                 (declare (not safe))
                 (_g133776133806_ _g133777133809_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133776133806_
                                                  _g133777133809_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g133776133806_ _g133777133809_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g133776133806_ _g133777133809_)))))
                       (let ()
                         (declare (not safe))
                         (_g133776133806_ _g133777133809_)))))
               (let ()
                 (declare (not safe))
                 (_g133776133806_ _g133777133809_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g133775134348_ _L133342_))
                                         _stx131596_))))
                             _hd133439133562_
                             _kw-ref133437133583_
                             _hd133427133549_
                             _hd133418133525_
                             _hd133409133501_)
                            (let ()
                              (declare (not safe))
                              (_g133383133445_ _g133384133448_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop133432133567_
                                                   _target133429133554_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g133383133445_
                                                 _g133384133448_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g133383133445_ _g133384133448_))))))
                            (let ()
                              (declare (not safe))
                              (_g133383133445_ _g133384133448_)))
                        (let ()
                          (declare (not safe))
                          (_g133383133445_ _g133384133448_)))
                    (let ()
                      (declare (not safe))
                      (_g133383133445_ _g133384133448_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133383133445_
                                                       _g133384133448_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133383133445_
                                                   _g133384133448_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g133383133445_
                                               _g133384133448_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133383133445_ _g133384133448_)))))
                            (let ()
                              (declare (not safe))
                              (_g133383133445_ _g133384133448_)))
                        (let ()
                          (declare (not safe))
                          (_g133383133445_ _g133384133448_)))))
                (let ()
                  (declare (not safe))
                  (_g133383133445_ _g133384133448_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133383133445_
                                                       _g133384133448_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133383133445_
                                                   _g133384133448_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g133383133445_ _g133384133448_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133383133445_ _g133384133448_)))
                            (let ()
                              (declare (not safe))
                              (_g133383133445_ _g133384133448_)))))
                    (let ()
                      (declare (not safe))
                      (_g133383133445_ _g133384133448_)))
                (let ()
                  (declare (not safe))
                  (_g133383133445_ _g133384133448_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133383133445_
                                                       _g133384133448_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133383133445_
                                               _g133384133448_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133383133445_ _g133384133448_)))
                                (let ()
                                  (declare (not safe))
                                  (_g133383133445_ _g133384133448_)))
                            (let ()
                              (declare (not safe))
                              (_g133383133445_ _g133384133448_)))))
                    (let ()
                      (declare (not safe))
                      (_g133383133445_ _g133384133448_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133383133445_
                                                       _g133384133448_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133383133445_
                                               _g133384133448_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133383133445_ _g133384133448_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133383133445_ _g133384133448_)))))
                            (let ()
                              (declare (not safe))
                              (_g133383133445_ _g133384133448_))))))
                (declare (not safe))
                (_g133382134351_ _L133341_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd133217133335_
                                                    _hd133214133327_
                                                    _hd133211133319_
                                                    _hd133208133311_
                                                    _hd133190133263_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133170133223_
                                                      _g133171133226_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g133170133223_
                                              _g133171133226_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g133170133223_ _g133171133226_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g133170133223_ _g133171133226_)))
                               (let ()
                                 (declare (not safe))
                                 (_g133170133223_ _g133171133226_)))))
                       (let ()
                         (declare (not safe))
                         (_g133170133223_ _g133171133226_)))
                   (let ()
                     (declare (not safe))
                     (_g133170133223_ _g133171133226_)))
               (let ()
                 (declare (not safe))
                 (_g133170133223_ _g133171133226_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133170133223_
                                                  _g133171133226_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g133170133223_
                                              _g133171133226_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133170133223_ _g133171133226_)))))
                           (let ()
                             (declare (not safe))
                             (_g133170133223_ _g133171133226_)))))
                   (let ()
                     (declare (not safe))
                     (_g133170133223_ _g133171133226_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133170133223_
                                                      _g133171133226_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133170133223_
                                                  _g133171133226_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g133170133223_
                                              _g133171133226_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133170133223_ _g133171133226_)))))
                           (let ()
                             (declare (not safe))
                             (_g133170133223_ _g133171133226_)))
                       (let ()
                         (declare (not safe))
                         (_g133170133223_ _g133171133226_)))))
               (let ()
                 (declare (not safe))
                 (_g133170133223_ _g133171133226_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133170133223_
                                                  _g133171133226_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g133170133223_ _g133171133226_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g133170133223_ _g133171133226_)))
                           (let ()
                             (declare (not safe))
                             (_g133170133223_ _g133171133226_)))
                       (let ()
                         (declare (not safe))
                         (_g133170133223_ _g133171133226_)))))
               (let ()
                 (declare (not safe))
                 (_g133170133223_ _g133171133226_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g133169134354_ _L131668_))
                                         _stx131596_))))))))
                  (___kont134534134535_ (lambda () _stx131596_)))
              (let ((___match134563134564_
                     (lambda (_e131610131636_
                              _hd131609131639_
                              _tl131608131641_
                              _e131613131644_
                              _hd131612131647_
                              _tl131611131649_
                              _e131616131652_
                              _hd131615131655_
                              _tl131614131657_
                              _e131619131660_
                              _hd131618131663_
                              _tl131617131665_)
                       (let ((_L131668_ _hd131618131663_)
                             (_L131669_ _hd131615131655_))
                         (if (let ((__tmp135830
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131669_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp135830))
                             (___kont134532134533_ _L131668_ _L131669_)
                             (___kont134534134535_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134530134531_))
                    (let ((_e131610131636_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134530134531_))))
                      (let ((_tl131608131641_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131610131636_)))
                            (_hd131609131639_
                             (let ()
                               (declare (not safe))
                               (##car _e131610131636_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131608131641_))
                            (let ((_e131613131644_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131608131641_))))
                              (let ((_tl131611131649_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131613131644_)))
                                    (_hd131612131647_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131613131644_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd131612131647_))
                                    (let ((_e131616131652_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd131612131647_))))
                                      (let ((_tl131614131657_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e131616131652_)))
                                            (_hd131615131655_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e131616131652_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl131614131657_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl131611131649_))
                                                (let ((_e131619131660_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl131611131649_))))
                                                  (let ((_tl131617131665_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e131619131660_)))
                                                        (_hd131618131663_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e131619131660_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl131617131665_))
                                                        (___match134563134564_
                                                         _e131610131636_
                                                         _hd131609131639_
                                                         _tl131608131641_
                                                         _e131613131644_
                                                         _hd131612131647_
                                                         _tl131611131649_
                                                         _e131616131652_
                                                         _hd131615131655_
                                                         _tl131614131657_
                                                         _e131619131660_
                                                         _hd131618131663_
                                                         _tl131617131665_)
                                                        (___kont134534134535_))))
                                                (___kont134534134535_))
                                            (___kont134534134535_))))
                                    (___kont134534134535_))))
                            (___kont134534134535_))))
                    (___kont134534134535_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx130555_ _self130556_ _methods130557_ _slots130558_)
        (let* ((___stx134566134567_ _stx130555_)
               (_g130566130788_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx134566134567_)))))
          (let ((___kont134568134569_
                 (lambda (_L131545_ _L131546_ _L131547_ _L131548_)
                   (let ((__tmp135831
                          (let () (declare (not safe)) (gx#stx-e _L131546_))))
                     (declare (not safe))
                     (hash-put! _methods130557_ __tmp135831 '#t))
                   (for-each
                    (lambda (_g131581131583_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g131581131583_
                         _self130556_
                         _methods130557_
                         _slots130558_)))
                    (let ((__tmp135832
                           (lambda (_g131585131588_ _g131586131590_)
                             (let ()
                               (declare (not safe))
                               (cons _g131585131588_ _g131586131590_)))))
                      (declare (not safe))
                      (foldr1 __tmp135832 '() _L131545_)))))
                (___kont134572134573_
                 (lambda (_L131380_ _L131381_ _L131382_ _L131383_ _L131384_)
                   (let ((__tmp135833
                          (let () (declare (not safe)) (gx#stx-e _L131381_))))
                     (declare (not safe))
                     (hash-put! _methods130557_ __tmp135833 '#t))
                   (for-each
                    (lambda (_g131424131426_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g131424131426_
                         _self130556_
                         _methods130557_
                         _slots130558_)))
                    (let ((__tmp135834
                           (lambda (_g131428131431_ _g131429131433_)
                             (let ()
                               (declare (not safe))
                               (cons _g131428131431_ _g131429131433_)))))
                      (declare (not safe))
                      (foldr1 __tmp135834 '() _L131380_)))))
                (___kont134576134577_
                 (lambda (_L131213_ _L131214_ _L131215_)
                   (let ((__tmp135835
                          (let () (declare (not safe)) (gx#stx-e _L131213_))))
                     (declare (not safe))
                     (hash-put! _slots130558_ __tmp135835 '#t))))
                (___kont134578134579_
                 (lambda (_L131090_ _L131091_ _L131092_ _L131093_)
                   (let ((__tmp135836
                          (let () (declare (not safe)) (gx#stx-e _L131091_))))
                     (declare (not safe))
                     (hash-put! _slots130558_ __tmp135836 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L131090_
                      _self130556_
                      _methods130557_
                      _slots130558_))))
                (___kont134580134581_
                 (lambda (_L130964_ _L130965_)
                   (let* ((_accessor130987_
                           (let ((__tmp135837
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130965_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135837)))
                          (_klass130989_
                           (let ((__tmp135838
                                  (##structure-ref
                                   _accessor130987_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx130555_
                              __tmp135838)))
                          (_slot130991_
                           (##structure-ref
                            _accessor130987_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp135840
                                     (##structure-ref
                                      _accessor130987_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp135840))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130989_
                                     _slot130991_))
                                  (##structure-ref
                                   _klass130989_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp135839
                                (##structure-ref
                                 _accessor130987_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! _slots130558_ __tmp135839 '#t))))))
                (___kont134582134583_
                 (lambda (_L130864_ _L130865_ _L130866_)
                   (let* ((_mutator130893_
                           (let ((__tmp135841
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130866_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135841)))
                          (_klass130895_
                           (let ((__tmp135842
                                  (##structure-ref
                                   _mutator130893_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx130555_
                              __tmp135842)))
                          (_slot130897_
                           (##structure-ref
                            _mutator130893_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp135843
                                     (##structure-ref
                                      _mutator130893_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp135843))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130895_
                                     _slot130897_))
                                  (##structure-ref
                                   _klass130895_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ()
                           (declare (not safe))
                           (hash-put! _slots130558_ _slot130897_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__3
                        _L130864_
                        _self130556_
                        _methods130557_
                        _slots130558_)))))
                (___kont134584134585_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx130555_
                      _self130556_
                      _methods130557_
                      _slots130558_)))))
            (let* ((___match135065135066_
                    (lambda (_e130762130800_
                             _hd130761130803_
                             _tl130760130805_
                             _e130765130808_
                             _hd130764130811_
                             _tl130763130813_
                             _e130768130816_
                             _hd130767130819_
                             _tl130766130821_
                             _e130771130824_
                             _hd130770130827_
                             _tl130769130829_
                             _e130774130832_
                             _hd130773130835_
                             _tl130772130837_
                             _e130777130840_
                             _hd130776130843_
                             _tl130775130845_
                             _e130780130848_
                             _hd130779130851_
                             _tl130778130853_
                             _e130783130856_
                             _hd130782130859_
                             _tl130781130861_)
                      (let ((_L130864_ _hd130782130859_)
                            (_L130865_ _hd130779130851_)
                            (_L130866_ _hd130770130827_))
                        (if (and (let ((__tmp135844
                                        (let ((__tmp135845
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130866_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135845))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135844
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130865_
                                    _self130556_)))
                            (___kont134582134583_
                             _L130864_
                             _L130865_
                             _L130866_)
                            (___kont134584134585_)))))
                   (___match135063135064_
                    (lambda (_e130762130800_
                             _hd130761130803_
                             _tl130760130805_
                             _e130765130808_
                             _hd130764130811_
                             _tl130763130813_
                             _e130768130816_
                             _hd130767130819_
                             _tl130766130821_
                             _e130771130824_
                             _hd130770130827_
                             _tl130769130829_
                             _e130774130832_
                             _hd130773130835_
                             _tl130772130837_
                             _e130777130840_
                             _hd130776130843_
                             _tl130775130845_
                             _e130780130848_
                             _hd130779130851_
                             _tl130778130853_
                             _e130783130856_
                             _hd130782130859_
                             _tl130781130861_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130781130861_))
                          (___match135065135066_
                           _e130762130800_
                           _hd130761130803_
                           _tl130760130805_
                           _e130765130808_
                           _hd130764130811_
                           _tl130763130813_
                           _e130768130816_
                           _hd130767130819_
                           _tl130766130821_
                           _e130771130824_
                           _hd130770130827_
                           _tl130769130829_
                           _e130774130832_
                           _hd130773130835_
                           _tl130772130837_
                           _e130777130840_
                           _hd130776130843_
                           _tl130775130845_
                           _e130780130848_
                           _hd130779130851_
                           _tl130778130853_
                           _e130783130856_
                           _hd130782130859_
                           _tl130781130861_)
                          (___kont134584134585_))))
                   (___match135057135058_
                    (lambda (_e130762130800_
                             _hd130761130803_
                             _tl130760130805_
                             _e130765130808_
                             _hd130764130811_
                             _tl130763130813_
                             _e130768130816_
                             _hd130767130819_
                             _tl130766130821_
                             _e130771130824_
                             _hd130770130827_
                             _tl130769130829_
                             _e130774130832_
                             _hd130773130835_
                             _tl130772130837_
                             _e130777130840_
                             _hd130776130843_
                             _tl130775130845_
                             _e130780130848_
                             _hd130779130851_
                             _tl130778130853_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130772130837_))
                          (let ((_e130783130856_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130772130837_))))
                            (let ((_tl130781130861_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130783130856_)))
                                  (_hd130782130859_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130783130856_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130781130861_))
                                  (___match135065135066_
                                   _e130762130800_
                                   _hd130761130803_
                                   _tl130760130805_
                                   _e130765130808_
                                   _hd130764130811_
                                   _tl130763130813_
                                   _e130768130816_
                                   _hd130767130819_
                                   _tl130766130821_
                                   _e130771130824_
                                   _hd130770130827_
                                   _tl130769130829_
                                   _e130774130832_
                                   _hd130773130835_
                                   _tl130772130837_
                                   _e130777130840_
                                   _hd130776130843_
                                   _tl130775130845_
                                   _e130780130848_
                                   _hd130779130851_
                                   _tl130778130853_
                                   _e130783130856_
                                   _hd130782130859_
                                   _tl130781130861_)
                                  (___kont134584134585_))))
                          (___kont134584134585_))))
                   (___match135003135004_
                    (lambda (_e130738130908_
                             _hd130737130911_
                             _tl130736130913_
                             _e130741130916_
                             _hd130740130919_
                             _tl130739130921_
                             _e130744130924_
                             _hd130743130927_
                             _tl130742130929_
                             _e130747130932_
                             _hd130746130935_
                             _tl130745130937_
                             _e130750130940_
                             _hd130749130943_
                             _tl130748130945_
                             _e130753130948_
                             _hd130752130951_
                             _tl130751130953_
                             _e130756130956_
                             _hd130755130959_
                             _tl130754130961_)
                      (let ((_L130964_ _hd130755130959_)
                            (_L130965_ _hd130746130935_))
                        (if (and (let ((__tmp135846
                                        (let ((__tmp135847
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130965_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135847))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135846
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130964_
                                    _self130556_)))
                            (___kont134580134581_ _L130964_ _L130965_)
                            (___kont134584134585_)))))
                   (___match135001135002_
                    (lambda (_e130738130908_
                             _hd130737130911_
                             _tl130736130913_
                             _e130741130916_
                             _hd130740130919_
                             _tl130739130921_
                             _e130744130924_
                             _hd130743130927_
                             _tl130742130929_
                             _e130747130932_
                             _hd130746130935_
                             _tl130745130937_
                             _e130750130940_
                             _hd130749130943_
                             _tl130748130945_
                             _e130753130948_
                             _hd130752130951_
                             _tl130751130953_
                             _e130756130956_
                             _hd130755130959_
                             _tl130754130961_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130748130945_))
                          (___match135003135004_
                           _e130738130908_
                           _hd130737130911_
                           _tl130736130913_
                           _e130741130916_
                           _hd130740130919_
                           _tl130739130921_
                           _e130744130924_
                           _hd130743130927_
                           _tl130742130929_
                           _e130747130932_
                           _hd130746130935_
                           _tl130745130937_
                           _e130750130940_
                           _hd130749130943_
                           _tl130748130945_
                           _e130753130948_
                           _hd130752130951_
                           _tl130751130953_
                           _e130756130956_
                           _hd130755130959_
                           _tl130754130961_)
                          (___match135057135058_
                           _e130738130908_
                           _hd130737130911_
                           _tl130736130913_
                           _e130741130916_
                           _hd130740130919_
                           _tl130739130921_
                           _e130744130924_
                           _hd130743130927_
                           _tl130742130929_
                           _e130747130932_
                           _hd130746130935_
                           _tl130745130937_
                           _e130750130940_
                           _hd130749130943_
                           _tl130748130945_
                           _e130753130948_
                           _hd130752130951_
                           _tl130751130953_
                           _e130756130956_
                           _hd130755130959_
                           _tl130754130961_))))
                   (___match134947134948_
                    (lambda (_e130703131002_
                             _hd130702131005_
                             _tl130701131007_
                             _e130706131010_
                             _hd130705131013_
                             _tl130704131015_
                             _e130709131018_
                             _hd130708131021_
                             _tl130707131023_
                             _e130712131026_
                             _hd130711131029_
                             _tl130710131031_
                             _e130715131034_
                             _hd130714131037_
                             _tl130713131039_
                             _e130718131042_
                             _hd130717131045_
                             _tl130716131047_
                             _e130721131050_
                             _hd130720131053_
                             _tl130719131055_
                             _e130724131058_
                             _hd130723131061_
                             _tl130722131063_
                             _e130727131066_
                             _hd130726131069_
                             _tl130725131071_
                             _e130730131074_
                             _hd130729131077_
                             _tl130728131079_
                             _e130733131082_
                             _hd130732131085_
                             _tl130731131087_)
                      (let ((_L131090_ _hd130732131085_)
                            (_L131091_ _hd130729131077_)
                            (_L131092_ _hd130720131053_)
                            (_L131093_ _hd130711131029_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L131093_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L131093_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L131092_
                                    _self130556_)))
                            (___kont134578134579_
                             _L131090_
                             _L131091_
                             _L131092_
                             _L131093_)
                            (___kont134584134585_)))))
                   (___match134939134940_
                    (lambda (_e130703131002_
                             _hd130702131005_
                             _tl130701131007_
                             _e130706131010_
                             _hd130705131013_
                             _tl130704131015_
                             _e130709131018_
                             _hd130708131021_
                             _tl130707131023_
                             _e130712131026_
                             _hd130711131029_
                             _tl130710131031_
                             _e130715131034_
                             _hd130714131037_
                             _tl130713131039_
                             _e130718131042_
                             _hd130717131045_
                             _tl130716131047_
                             _e130721131050_
                             _hd130720131053_
                             _tl130719131055_
                             _e130724131058_
                             _hd130723131061_
                             _tl130722131063_
                             _e130727131066_
                             _hd130726131069_
                             _tl130725131071_
                             _e130730131074_
                             _hd130729131077_
                             _tl130728131079_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130722131063_))
                          (let ((_e130733131082_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130722131063_))))
                            (let ((_tl130731131087_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130733131082_)))
                                  (_hd130732131085_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130733131082_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130731131087_))
                                  (___match134947134948_
                                   _e130703131002_
                                   _hd130702131005_
                                   _tl130701131007_
                                   _e130706131010_
                                   _hd130705131013_
                                   _tl130704131015_
                                   _e130709131018_
                                   _hd130708131021_
                                   _tl130707131023_
                                   _e130712131026_
                                   _hd130711131029_
                                   _tl130710131031_
                                   _e130715131034_
                                   _hd130714131037_
                                   _tl130713131039_
                                   _e130718131042_
                                   _hd130717131045_
                                   _tl130716131047_
                                   _e130721131050_
                                   _hd130720131053_
                                   _tl130719131055_
                                   _e130724131058_
                                   _hd130723131061_
                                   _tl130722131063_
                                   _e130727131066_
                                   _hd130726131069_
                                   _tl130725131071_
                                   _e130730131074_
                                   _hd130729131077_
                                   _tl130728131079_
                                   _e130733131082_
                                   _hd130732131085_
                                   _tl130731131087_)
                                  (___kont134584134585_))))
                          (___match135063135064_
                           _e130703131002_
                           _hd130702131005_
                           _tl130701131007_
                           _e130706131010_
                           _hd130705131013_
                           _tl130704131015_
                           _e130709131018_
                           _hd130708131021_
                           _tl130707131023_
                           _e130712131026_
                           _hd130711131029_
                           _tl130710131031_
                           _e130715131034_
                           _hd130714131037_
                           _tl130713131039_
                           _e130718131042_
                           _hd130717131045_
                           _tl130716131047_
                           _e130721131050_
                           _hd130720131053_
                           _tl130719131055_
                           _e130724131058_
                           _hd130723131061_
                           _tl130722131063_))))
                   (___match134861134862_
                    (lambda (_e130669131133_
                             _hd130668131136_
                             _tl130667131138_
                             _e130672131141_
                             _hd130671131144_
                             _tl130670131146_
                             _e130675131149_
                             _hd130674131152_
                             _tl130673131154_
                             _e130678131157_
                             _hd130677131160_
                             _tl130676131162_
                             _e130681131165_
                             _hd130680131168_
                             _tl130679131170_
                             _e130684131173_
                             _hd130683131176_
                             _tl130682131178_
                             _e130687131181_
                             _hd130686131184_
                             _tl130685131186_
                             _e130690131189_
                             _hd130689131192_
                             _tl130688131194_
                             _e130693131197_
                             _hd130692131200_
                             _tl130691131202_
                             _e130696131205_
                             _hd130695131208_
                             _tl130694131210_)
                      (let ((_L131213_ _hd130695131208_)
                            (_L131214_ _hd130686131184_)
                            (_L131215_ _hd130677131160_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L131215_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L131215_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L131214_
                                    _self130556_)))
                            (___kont134576134577_
                             _L131213_
                             _L131214_
                             _L131215_)
                            (___match135065135066_
                             _e130669131133_
                             _hd130668131136_
                             _tl130667131138_
                             _e130672131141_
                             _hd130671131144_
                             _tl130670131146_
                             _e130675131149_
                             _hd130674131152_
                             _tl130673131154_
                             _e130678131157_
                             _hd130677131160_
                             _tl130676131162_
                             _e130681131165_
                             _hd130680131168_
                             _tl130679131170_
                             _e130684131173_
                             _hd130683131176_
                             _tl130682131178_
                             _e130687131181_
                             _hd130686131184_
                             _tl130685131186_
                             _e130690131189_
                             _hd130689131192_
                             _tl130688131194_)))))
                   (___match134859134860_
                    (lambda (_e130669131133_
                             _hd130668131136_
                             _tl130667131138_
                             _e130672131141_
                             _hd130671131144_
                             _tl130670131146_
                             _e130675131149_
                             _hd130674131152_
                             _tl130673131154_
                             _e130678131157_
                             _hd130677131160_
                             _tl130676131162_
                             _e130681131165_
                             _hd130680131168_
                             _tl130679131170_
                             _e130684131173_
                             _hd130683131176_
                             _tl130682131178_
                             _e130687131181_
                             _hd130686131184_
                             _tl130685131186_
                             _e130690131189_
                             _hd130689131192_
                             _tl130688131194_
                             _e130693131197_
                             _hd130692131200_
                             _tl130691131202_
                             _e130696131205_
                             _hd130695131208_
                             _tl130694131210_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130688131194_))
                          (___match134861134862_
                           _e130669131133_
                           _hd130668131136_
                           _tl130667131138_
                           _e130672131141_
                           _hd130671131144_
                           _tl130670131146_
                           _e130675131149_
                           _hd130674131152_
                           _tl130673131154_
                           _e130678131157_
                           _hd130677131160_
                           _tl130676131162_
                           _e130681131165_
                           _hd130680131168_
                           _tl130679131170_
                           _e130684131173_
                           _hd130683131176_
                           _tl130682131178_
                           _e130687131181_
                           _hd130686131184_
                           _tl130685131186_
                           _e130690131189_
                           _hd130689131192_
                           _tl130688131194_
                           _e130693131197_
                           _hd130692131200_
                           _tl130691131202_
                           _e130696131205_
                           _hd130695131208_
                           _tl130694131210_)
                          (___match134939134940_
                           _e130669131133_
                           _hd130668131136_
                           _tl130667131138_
                           _e130672131141_
                           _hd130671131144_
                           _tl130670131146_
                           _e130675131149_
                           _hd130674131152_
                           _tl130673131154_
                           _e130678131157_
                           _hd130677131160_
                           _tl130676131162_
                           _e130681131165_
                           _hd130680131168_
                           _tl130679131170_
                           _e130684131173_
                           _hd130683131176_
                           _tl130682131178_
                           _e130687131181_
                           _hd130686131184_
                           _tl130685131186_
                           _e130690131189_
                           _hd130689131192_
                           _tl130688131194_
                           _e130693131197_
                           _hd130692131200_
                           _tl130691131202_
                           _e130696131205_
                           _hd130695131208_
                           _tl130694131210_))))
                   (___match134849134850_
                    (lambda (_e130669131133_
                             _hd130668131136_
                             _tl130667131138_
                             _e130672131141_
                             _hd130671131144_
                             _tl130670131146_
                             _e130675131149_
                             _hd130674131152_
                             _tl130673131154_
                             _e130678131157_
                             _hd130677131160_
                             _tl130676131162_
                             _e130681131165_
                             _hd130680131168_
                             _tl130679131170_
                             _e130684131173_
                             _hd130683131176_
                             _tl130682131178_
                             _e130687131181_
                             _hd130686131184_
                             _tl130685131186_
                             _e130690131189_
                             _hd130689131192_
                             _tl130688131194_
                             _e130693131197_
                             _hd130692131200_
                             _tl130691131202_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd130692131200_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl130691131202_))
                              (let ((_e130696131205_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl130691131202_))))
                                (let ((_tl130694131210_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130696131205_)))
                                      (_hd130695131208_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130696131205_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl130694131210_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl130688131194_))
                                          (___match134861134862_
                                           _e130669131133_
                                           _hd130668131136_
                                           _tl130667131138_
                                           _e130672131141_
                                           _hd130671131144_
                                           _tl130670131146_
                                           _e130675131149_
                                           _hd130674131152_
                                           _tl130673131154_
                                           _e130678131157_
                                           _hd130677131160_
                                           _tl130676131162_
                                           _e130681131165_
                                           _hd130680131168_
                                           _tl130679131170_
                                           _e130684131173_
                                           _hd130683131176_
                                           _tl130682131178_
                                           _e130687131181_
                                           _hd130686131184_
                                           _tl130685131186_
                                           _e130690131189_
                                           _hd130689131192_
                                           _tl130688131194_
                                           _e130693131197_
                                           _hd130692131200_
                                           _tl130691131202_
                                           _e130696131205_
                                           _hd130695131208_
                                           _tl130694131210_)
                                          (___match134939134940_
                                           _e130669131133_
                                           _hd130668131136_
                                           _tl130667131138_
                                           _e130672131141_
                                           _hd130671131144_
                                           _tl130670131146_
                                           _e130675131149_
                                           _hd130674131152_
                                           _tl130673131154_
                                           _e130678131157_
                                           _hd130677131160_
                                           _tl130676131162_
                                           _e130681131165_
                                           _hd130680131168_
                                           _tl130679131170_
                                           _e130684131173_
                                           _hd130683131176_
                                           _tl130682131178_
                                           _e130687131181_
                                           _hd130686131184_
                                           _tl130685131186_
                                           _e130690131189_
                                           _hd130689131192_
                                           _tl130688131194_
                                           _e130693131197_
                                           _hd130692131200_
                                           _tl130691131202_
                                           _e130696131205_
                                           _hd130695131208_
                                           _tl130694131210_))
                                      (___match135063135064_
                                       _e130669131133_
                                       _hd130668131136_
                                       _tl130667131138_
                                       _e130672131141_
                                       _hd130671131144_
                                       _tl130670131146_
                                       _e130675131149_
                                       _hd130674131152_
                                       _tl130673131154_
                                       _e130678131157_
                                       _hd130677131160_
                                       _tl130676131162_
                                       _e130681131165_
                                       _hd130680131168_
                                       _tl130679131170_
                                       _e130684131173_
                                       _hd130683131176_
                                       _tl130682131178_
                                       _e130687131181_
                                       _hd130686131184_
                                       _tl130685131186_
                                       _e130690131189_
                                       _hd130689131192_
                                       _tl130688131194_))))
                              (___match135063135064_
                               _e130669131133_
                               _hd130668131136_
                               _tl130667131138_
                               _e130672131141_
                               _hd130671131144_
                               _tl130670131146_
                               _e130675131149_
                               _hd130674131152_
                               _tl130673131154_
                               _e130678131157_
                               _hd130677131160_
                               _tl130676131162_
                               _e130681131165_
                               _hd130680131168_
                               _tl130679131170_
                               _e130684131173_
                               _hd130683131176_
                               _tl130682131178_
                               _e130687131181_
                               _hd130686131184_
                               _tl130685131186_
                               _e130690131189_
                               _hd130689131192_
                               _tl130688131194_))
                          (___match135063135064_
                           _e130669131133_
                           _hd130668131136_
                           _tl130667131138_
                           _e130672131141_
                           _hd130671131144_
                           _tl130670131146_
                           _e130675131149_
                           _hd130674131152_
                           _tl130673131154_
                           _e130678131157_
                           _hd130677131160_
                           _tl130676131162_
                           _e130681131165_
                           _hd130680131168_
                           _tl130679131170_
                           _e130684131173_
                           _hd130683131176_
                           _tl130682131178_
                           _e130687131181_
                           _hd130686131184_
                           _tl130685131186_
                           _e130690131189_
                           _hd130689131192_
                           _tl130688131194_))))
                   (___match134781134782_
                    (lambda (_e130618131252_
                             _hd130617131255_
                             _tl130616131257_
                             _e130621131260_
                             _hd130620131263_
                             _tl130619131265_
                             _e130624131268_
                             _hd130623131271_
                             _tl130622131273_
                             _e130627131276_
                             _hd130626131279_
                             _tl130625131281_
                             _e130630131284_
                             _hd130629131287_
                             _tl130628131289_
                             _e130633131292_
                             _hd130632131295_
                             _tl130631131297_
                             _e130636131300_
                             _hd130635131303_
                             _tl130634131305_
                             _e130639131308_
                             _hd130638131311_
                             _tl130637131313_
                             _e130642131316_
                             _hd130641131319_
                             _tl130640131321_
                             _e130645131324_
                             _hd130644131327_
                             _tl130643131329_
                             _e130648131332_
                             _hd130647131335_
                             _tl130646131337_
                             _e130651131340_
                             _hd130650131343_
                             _tl130649131345_
                             _e130654131348_
                             _hd130653131351_
                             _tl130652131353_
                             ___splice134574134575_
                             _target130655131356_
                             _tl130657131358_)
                      (letrec ((_loop130658131361_
                                (lambda (_hd130656131364_ _args130662131366_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd130656131364_))
                                      (let ((_e130659131369_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd130656131364_))))
                                        (let ((_lp-tl130661131374_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e130659131369_)))
                                              (_lp-hd130660131372_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e130659131369_))))
                                          (let ((__tmp135848
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd130660131372_
                                                         _args130662131366_))))
                                            (declare (not safe))
                                            (_loop130658131361_
                                             _lp-tl130661131374_
                                             __tmp135848))))
                                      (let ((_args130663131377_
                                             (reverse _args130662131366_)))
                                        (let ((_L131380_ _args130663131377_)
                                              (_L131381_ _hd130653131351_)
                                              (_L131382_ _hd130644131327_)
                                              (_L131383_ _hd130635131303_)
                                              (_L131384_ _hd130626131279_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131384_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131383_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131382_
                                                      _self130556_)))
                                              (___kont134572134573_
                                               _L131380_
                                               _L131381_
                                               _L131382_
                                               _L131383_
                                               _L131384_)
                                              (___kont134584134585_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop130658131361_ _target130655131356_ '())))))
                   (___match134739134740_
                    (lambda (_e130618131252_
                             _hd130617131255_
                             _tl130616131257_
                             _e130621131260_
                             _hd130620131263_
                             _tl130619131265_
                             _e130624131268_
                             _hd130623131271_
                             _tl130622131273_
                             _e130627131276_
                             _hd130626131279_
                             _tl130625131281_
                             _e130630131284_
                             _hd130629131287_
                             _tl130628131289_
                             _e130633131292_
                             _hd130632131295_
                             _tl130631131297_
                             _e130636131300_
                             _hd130635131303_
                             _tl130634131305_
                             _e130639131308_
                             _hd130638131311_
                             _tl130637131313_
                             _e130642131316_
                             _hd130641131319_
                             _tl130640131321_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd130641131319_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl130640131321_))
                              (let ((_e130645131324_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl130640131321_))))
                                (let ((_tl130643131329_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130645131324_)))
                                      (_hd130644131327_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130645131324_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl130643131329_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl130637131313_))
                                          (let ((_e130648131332_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl130637131313_))))
                                            (let ((_tl130646131337_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130648131332_)))
                                                  (_hd130647131335_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130648131332_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd130647131335_))
                                                  (let ((_e130651131340_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd130647131335_))))
                                                    (let ((_tl130649131345_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e130651131340_)))
                                                          (_hd130650131343_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e130651131340_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd130650131343_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd130650131343_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130649131345_))
                          (let ((_e130654131348_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130649131345_))))
                            (let ((_tl130652131353_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130654131348_)))
                                  (_hd130653131351_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130654131348_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130652131353_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl130646131337_))
                                      (let ((___splice134574134575_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl130646131337_
                                                '0))))
                                        (let ((_tl130657131358_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice134574134575_
                                                  '1)))
                                              (_target130655131356_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice134574134575_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl130657131358_))
                                              (___match134781134782_
                                               _e130618131252_
                                               _hd130617131255_
                                               _tl130616131257_
                                               _e130621131260_
                                               _hd130620131263_
                                               _tl130619131265_
                                               _e130624131268_
                                               _hd130623131271_
                                               _tl130622131273_
                                               _e130627131276_
                                               _hd130626131279_
                                               _tl130625131281_
                                               _e130630131284_
                                               _hd130629131287_
                                               _tl130628131289_
                                               _e130633131292_
                                               _hd130632131295_
                                               _tl130631131297_
                                               _e130636131300_
                                               _hd130635131303_
                                               _tl130634131305_
                                               _e130639131308_
                                               _hd130638131311_
                                               _tl130637131313_
                                               _e130642131316_
                                               _hd130641131319_
                                               _tl130640131321_
                                               _e130645131324_
                                               _hd130644131327_
                                               _tl130643131329_
                                               _e130648131332_
                                               _hd130647131335_
                                               _tl130646131337_
                                               _e130651131340_
                                               _hd130650131343_
                                               _tl130649131345_
                                               _e130654131348_
                                               _hd130653131351_
                                               _tl130652131353_
                                               ___splice134574134575_
                                               _target130655131356_
                                               _tl130657131358_)
                                              (___kont134584134585_))))
                                      (___kont134584134585_))
                                  (___kont134584134585_))))
                          (___kont134584134585_))
                      (___kont134584134585_))
                  (___kont134584134585_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134584134585_))))
                                          (___match135063135064_
                                           _e130618131252_
                                           _hd130617131255_
                                           _tl130616131257_
                                           _e130621131260_
                                           _hd130620131263_
                                           _tl130619131265_
                                           _e130624131268_
                                           _hd130623131271_
                                           _tl130622131273_
                                           _e130627131276_
                                           _hd130626131279_
                                           _tl130625131281_
                                           _e130630131284_
                                           _hd130629131287_
                                           _tl130628131289_
                                           _e130633131292_
                                           _hd130632131295_
                                           _tl130631131297_
                                           _e130636131300_
                                           _hd130635131303_
                                           _tl130634131305_
                                           _e130639131308_
                                           _hd130638131311_
                                           _tl130637131313_))
                                      (___match135063135064_
                                       _e130618131252_
                                       _hd130617131255_
                                       _tl130616131257_
                                       _e130621131260_
                                       _hd130620131263_
                                       _tl130619131265_
                                       _e130624131268_
                                       _hd130623131271_
                                       _tl130622131273_
                                       _e130627131276_
                                       _hd130626131279_
                                       _tl130625131281_
                                       _e130630131284_
                                       _hd130629131287_
                                       _tl130628131289_
                                       _e130633131292_
                                       _hd130632131295_
                                       _tl130631131297_
                                       _e130636131300_
                                       _hd130635131303_
                                       _tl130634131305_
                                       _e130639131308_
                                       _hd130638131311_
                                       _tl130637131313_))))
                              (___match135063135064_
                               _e130618131252_
                               _hd130617131255_
                               _tl130616131257_
                               _e130621131260_
                               _hd130620131263_
                               _tl130619131265_
                               _e130624131268_
                               _hd130623131271_
                               _tl130622131273_
                               _e130627131276_
                               _hd130626131279_
                               _tl130625131281_
                               _e130630131284_
                               _hd130629131287_
                               _tl130628131289_
                               _e130633131292_
                               _hd130632131295_
                               _tl130631131297_
                               _e130636131300_
                               _hd130635131303_
                               _tl130634131305_
                               _e130639131308_
                               _hd130638131311_
                               _tl130637131313_))
                          (___match134849134850_
                           _e130618131252_
                           _hd130617131255_
                           _tl130616131257_
                           _e130621131260_
                           _hd130620131263_
                           _tl130619131265_
                           _e130624131268_
                           _hd130623131271_
                           _tl130622131273_
                           _e130627131276_
                           _hd130626131279_
                           _tl130625131281_
                           _e130630131284_
                           _hd130629131287_
                           _tl130628131289_
                           _e130633131292_
                           _hd130632131295_
                           _tl130631131297_
                           _e130636131300_
                           _hd130635131303_
                           _tl130634131305_
                           _e130639131308_
                           _hd130638131311_
                           _tl130637131313_
                           _e130642131316_
                           _hd130641131319_
                           _tl130640131321_))))
                   (___match134671134672_
                    (lambda (_e130574131441_
                             _hd130573131444_
                             _tl130572131446_
                             _e130577131449_
                             _hd130576131452_
                             _tl130575131454_
                             _e130580131457_
                             _hd130579131460_
                             _tl130578131462_
                             _e130583131465_
                             _hd130582131468_
                             _tl130581131470_
                             _e130586131473_
                             _hd130585131476_
                             _tl130584131478_
                             _e130589131481_
                             _hd130588131484_
                             _tl130587131486_
                             _e130592131489_
                             _hd130591131492_
                             _tl130590131494_
                             _e130595131497_
                             _hd130594131500_
                             _tl130593131502_
                             _e130598131505_
                             _hd130597131508_
                             _tl130596131510_
                             _e130601131513_
                             _hd130600131516_
                             _tl130599131518_
                             ___splice134570134571_
                             _target130602131521_
                             _tl130604131523_)
                      (letrec ((_loop130605131526_
                                (lambda (_hd130603131529_ _args130609131531_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd130603131529_))
                                      (let ((_e130606131534_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd130603131529_))))
                                        (let ((_lp-tl130608131539_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e130606131534_)))
                                              (_lp-hd130607131537_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e130606131534_))))
                                          (let ((__tmp135849
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd130607131537_
                                                         _args130609131531_))))
                                            (declare (not safe))
                                            (_loop130605131526_
                                             _lp-tl130608131539_
                                             __tmp135849))))
                                      (let ((_args130610131542_
                                             (reverse _args130609131531_)))
                                        (let ((_L131545_ _args130610131542_)
                                              (_L131546_ _hd130600131516_)
                                              (_L131547_ _hd130591131492_)
                                              (_L131548_ _hd130582131468_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131548_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131547_
                                                      _self130556_)))
                                              (___kont134568134569_
                                               _L131545_
                                               _L131546_
                                               _L131547_
                                               _L131548_)
                                              (___match134859134860_
                                               _e130574131441_
                                               _hd130573131444_
                                               _tl130572131446_
                                               _e130577131449_
                                               _hd130576131452_
                                               _tl130575131454_
                                               _e130580131457_
                                               _hd130579131460_
                                               _tl130578131462_
                                               _e130583131465_
                                               _hd130582131468_
                                               _tl130581131470_
                                               _e130586131473_
                                               _hd130585131476_
                                               _tl130584131478_
                                               _e130589131481_
                                               _hd130588131484_
                                               _tl130587131486_
                                               _e130592131489_
                                               _hd130591131492_
                                               _tl130590131494_
                                               _e130595131497_
                                               _hd130594131500_
                                               _tl130593131502_
                                               _e130598131505_
                                               _hd130597131508_
                                               _tl130596131510_
                                               _e130601131513_
                                               _hd130600131516_
                                               _tl130599131518_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop130605131526_ _target130602131521_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx134566134567_))
                  (let ((_e130574131441_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx134566134567_))))
                    (let ((_tl130572131446_
                           (let ()
                             (declare (not safe))
                             (##cdr _e130574131441_)))
                          (_hd130573131444_
                           (let ()
                             (declare (not safe))
                             (##car _e130574131441_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130572131446_))
                          (let ((_e130577131449_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130572131446_))))
                            (let ((_tl130575131454_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130577131449_)))
                                  (_hd130576131452_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130577131449_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd130576131452_))
                                  (let ((_e130580131457_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd130576131452_))))
                                    (let ((_tl130578131462_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e130580131457_)))
                                          (_hd130579131460_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e130580131457_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd130579131460_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd130579131460_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl130578131462_))
                                                  (let ((_e130583131465_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl130578131462_))))
                                                    (let ((_tl130581131470_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e130583131465_)))
                                                          (_hd130582131468_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e130583131465_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl130581131470_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl130575131454_))
                      (let ((_e130586131473_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl130575131454_))))
                        (let ((_tl130584131478_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e130586131473_)))
                              (_hd130585131476_
                               (let ()
                                 (declare (not safe))
                                 (##car _e130586131473_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd130585131476_))
                              (let ((_e130589131481_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd130585131476_))))
                                (let ((_tl130587131486_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130589131481_)))
                                      (_hd130588131484_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130589131481_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd130588131484_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd130588131484_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl130587131486_))
                                              (let ((_e130592131489_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl130587131486_))))
                                                (let ((_tl130590131494_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e130592131489_)))
                                                      (_hd130591131492_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e130592131489_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl130590131494_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl130584131478_))
                                                          (let ((_e130595131497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl130584131478_))))
                    (let ((_tl130593131502_
                           (let ()
                             (declare (not safe))
                             (##cdr _e130595131497_)))
                          (_hd130594131500_
                           (let ()
                             (declare (not safe))
                             (##car _e130595131497_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd130594131500_))
                          (let ((_e130598131505_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd130594131500_))))
                            (let ((_tl130596131510_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130598131505_)))
                                  (_hd130597131508_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130598131505_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd130597131508_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd130597131508_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl130596131510_))
                                          (let ((_e130601131513_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl130596131510_))))
                                            (let ((_tl130599131518_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130601131513_)))
                                                  (_hd130600131516_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130601131513_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl130599131518_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl130593131502_))
                                                      (let ((___splice134570134571_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl130593131502_ '0))))
                (let ((_tl130604131523_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice134570134571_ '1)))
                      (_target130602131521_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice134570134571_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl130604131523_))
                      (___match134671134672_
                       _e130574131441_
                       _hd130573131444_
                       _tl130572131446_
                       _e130577131449_
                       _hd130576131452_
                       _tl130575131454_
                       _e130580131457_
                       _hd130579131460_
                       _tl130578131462_
                       _e130583131465_
                       _hd130582131468_
                       _tl130581131470_
                       _e130586131473_
                       _hd130585131476_
                       _tl130584131478_
                       _e130589131481_
                       _hd130588131484_
                       _tl130587131486_
                       _e130592131489_
                       _hd130591131492_
                       _tl130590131494_
                       _e130595131497_
                       _hd130594131500_
                       _tl130593131502_
                       _e130598131505_
                       _hd130597131508_
                       _tl130596131510_
                       _e130601131513_
                       _hd130600131516_
                       _tl130599131518_
                       ___splice134570134571_
                       _target130602131521_
                       _tl130604131523_)
                      (___match134859134860_
                       _e130574131441_
                       _hd130573131444_
                       _tl130572131446_
                       _e130577131449_
                       _hd130576131452_
                       _tl130575131454_
                       _e130580131457_
                       _hd130579131460_
                       _tl130578131462_
                       _e130583131465_
                       _hd130582131468_
                       _tl130581131470_
                       _e130586131473_
                       _hd130585131476_
                       _tl130584131478_
                       _e130589131481_
                       _hd130588131484_
                       _tl130587131486_
                       _e130592131489_
                       _hd130591131492_
                       _tl130590131494_
                       _e130595131497_
                       _hd130594131500_
                       _tl130593131502_
                       _e130598131505_
                       _hd130597131508_
                       _tl130596131510_
                       _e130601131513_
                       _hd130600131516_
                       _tl130599131518_))))
              (___match134859134860_
               _e130574131441_
               _hd130573131444_
               _tl130572131446_
               _e130577131449_
               _hd130576131452_
               _tl130575131454_
               _e130580131457_
               _hd130579131460_
               _tl130578131462_
               _e130583131465_
               _hd130582131468_
               _tl130581131470_
               _e130586131473_
               _hd130585131476_
               _tl130584131478_
               _e130589131481_
               _hd130588131484_
               _tl130587131486_
               _e130592131489_
               _hd130591131492_
               _tl130590131494_
               _e130595131497_
               _hd130594131500_
               _tl130593131502_
               _e130598131505_
               _hd130597131508_
               _tl130596131510_
               _e130601131513_
               _hd130600131516_
               _tl130599131518_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match135063135064_
                                                   _e130574131441_
                                                   _hd130573131444_
                                                   _tl130572131446_
                                                   _e130577131449_
                                                   _hd130576131452_
                                                   _tl130575131454_
                                                   _e130580131457_
                                                   _hd130579131460_
                                                   _tl130578131462_
                                                   _e130583131465_
                                                   _hd130582131468_
                                                   _tl130581131470_
                                                   _e130586131473_
                                                   _hd130585131476_
                                                   _tl130584131478_
                                                   _e130589131481_
                                                   _hd130588131484_
                                                   _tl130587131486_
                                                   _e130592131489_
                                                   _hd130591131492_
                                                   _tl130590131494_
                                                   _e130595131497_
                                                   _hd130594131500_
                                                   _tl130593131502_))))
                                          (___match135063135064_
                                           _e130574131441_
                                           _hd130573131444_
                                           _tl130572131446_
                                           _e130577131449_
                                           _hd130576131452_
                                           _tl130575131454_
                                           _e130580131457_
                                           _hd130579131460_
                                           _tl130578131462_
                                           _e130583131465_
                                           _hd130582131468_
                                           _tl130581131470_
                                           _e130586131473_
                                           _hd130585131476_
                                           _tl130584131478_
                                           _e130589131481_
                                           _hd130588131484_
                                           _tl130587131486_
                                           _e130592131489_
                                           _hd130591131492_
                                           _tl130590131494_
                                           _e130595131497_
                                           _hd130594131500_
                                           _tl130593131502_))
                                      (___match134739134740_
                                       _e130574131441_
                                       _hd130573131444_
                                       _tl130572131446_
                                       _e130577131449_
                                       _hd130576131452_
                                       _tl130575131454_
                                       _e130580131457_
                                       _hd130579131460_
                                       _tl130578131462_
                                       _e130583131465_
                                       _hd130582131468_
                                       _tl130581131470_
                                       _e130586131473_
                                       _hd130585131476_
                                       _tl130584131478_
                                       _e130589131481_
                                       _hd130588131484_
                                       _tl130587131486_
                                       _e130592131489_
                                       _hd130591131492_
                                       _tl130590131494_
                                       _e130595131497_
                                       _hd130594131500_
                                       _tl130593131502_
                                       _e130598131505_
                                       _hd130597131508_
                                       _tl130596131510_))
                                  (___match135063135064_
                                   _e130574131441_
                                   _hd130573131444_
                                   _tl130572131446_
                                   _e130577131449_
                                   _hd130576131452_
                                   _tl130575131454_
                                   _e130580131457_
                                   _hd130579131460_
                                   _tl130578131462_
                                   _e130583131465_
                                   _hd130582131468_
                                   _tl130581131470_
                                   _e130586131473_
                                   _hd130585131476_
                                   _tl130584131478_
                                   _e130589131481_
                                   _hd130588131484_
                                   _tl130587131486_
                                   _e130592131489_
                                   _hd130591131492_
                                   _tl130590131494_
                                   _e130595131497_
                                   _hd130594131500_
                                   _tl130593131502_))))
                          (___match135063135064_
                           _e130574131441_
                           _hd130573131444_
                           _tl130572131446_
                           _e130577131449_
                           _hd130576131452_
                           _tl130575131454_
                           _e130580131457_
                           _hd130579131460_
                           _tl130578131462_
                           _e130583131465_
                           _hd130582131468_
                           _tl130581131470_
                           _e130586131473_
                           _hd130585131476_
                           _tl130584131478_
                           _e130589131481_
                           _hd130588131484_
                           _tl130587131486_
                           _e130592131489_
                           _hd130591131492_
                           _tl130590131494_
                           _e130595131497_
                           _hd130594131500_
                           _tl130593131502_))))
                  (___match135001135002_
                   _e130574131441_
                   _hd130573131444_
                   _tl130572131446_
                   _e130577131449_
                   _hd130576131452_
                   _tl130575131454_
                   _e130580131457_
                   _hd130579131460_
                   _tl130578131462_
                   _e130583131465_
                   _hd130582131468_
                   _tl130581131470_
                   _e130586131473_
                   _hd130585131476_
                   _tl130584131478_
                   _e130589131481_
                   _hd130588131484_
                   _tl130587131486_
                   _e130592131489_
                   _hd130591131492_
                   _tl130590131494_))
              (___kont134584134585_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont134584134585_))
                                          (___kont134584134585_))
                                      (___kont134584134585_))))
                              (___kont134584134585_))))
                      (___kont134584134585_))
                  (___kont134584134585_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134584134585_))
                                              (___kont134584134585_))
                                          (___kont134584134585_))))
                                  (___kont134584134585_))))
                          (___kont134584134585_))))
                  (___kont134584134585_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx129490_
               _self129491_
               _$klass129492_
               _methods129493_
               _slots129494_)
        (letrec ((_force-e129496_
                  (lambda (_target130553_)
                    (let ((__tmp135850
                           (let ((__tmp135854
                                  (let ((__tmp135855
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp135855)))
                                 (__tmp135851
                                  (let ((__tmp135852
                                         (let ((__tmp135853
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target130553_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp135853))))
                                    (declare (not safe))
                                    (cons __tmp135852 '()))))
                             (declare (not safe))
                             (cons __tmp135854 __tmp135851))))
                      (declare (not safe))
                      (cons '%#call __tmp135850)))))
          (let* ((___stx135068135069_ _stx129490_)
                 (_g129504129726_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx135068135069_)))))
            (let ((___kont135070135071_
                   (lambda (_L130499_ _L130500_ _L130501_ _L130502_)
                     (let ((_$method130547_
                            (let ((__tmp135856
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130500_))))
                              (declare (not safe))
                              (hash-ref__0 _methods129493_ __tmp135856)))
                           (_args130548_
                            (map (lambda (_g130535130537_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g130535130537_
                                      _self129491_
                                      _$klass129492_
                                      _methods129493_
                                      _slots129494_)))
                                 (let ((__tmp135857
                                        (lambda (_g130539130542_
                                                 _g130540130544_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130539130542_
                                                  _g130540130544_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135857 '() _L130499_)))))
                       (let ((__tmp135858
                              (let ((__tmp135859
                                     (let ((__tmp135863
                                            (let ()
                                              (declare (not safe))
                                              (_force-e129496_
                                               _$method130547_)))
                                           (__tmp135860
                                            (let ((__tmp135861
                                                   (let ((__tmp135862
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self129491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135862))))
                                              (declare (not safe))
                                              (cons __tmp135861
                                                    _args130548_))))
                                       (declare (not safe))
                                       (cons __tmp135863 __tmp135860))))
                                (declare (not safe))
                                (cons '%#call __tmp135859))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135858 _stx129490_)))))
                  (___kont135074135075_
                   (lambda (_L130331_ _L130332_ _L130333_ _L130334_ _L130335_)
                     (let ((_$method130387_
                            (let ((__tmp135864
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130332_))))
                              (declare (not safe))
                              (hash-ref__0 _methods129493_ __tmp135864)))
                           (_args130388_
                            (map (lambda (_g130375130377_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g130375130377_
                                      _self129491_
                                      _$klass129492_
                                      _methods129493_
                                      _slots129494_)))
                                 (let ((__tmp135865
                                        (lambda (_g130379130382_
                                                 _g130380130384_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130379130382_
                                                  _g130380130384_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135865 '() _L130331_)))))
                       (let ((__tmp135866
                              (let ((__tmp135867
                                     (let ((__tmp135873
                                            (let ((__tmp135874
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135874)))
                                           (__tmp135868
                                            (let ((__tmp135872
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e129496_
                                                      _$method130387_)))
                                                  (__tmp135869
                                                   (let ((__tmp135870
                                                          (let ((__tmp135871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self129491_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135871))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135870
                                                           _args130388_))))
                                              (declare (not safe))
                                              (cons __tmp135872 __tmp135869))))
                                       (declare (not safe))
                                       (cons __tmp135873 __tmp135868))))
                                (declare (not safe))
                                (cons '%#call __tmp135867))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135866 _stx129490_)))))
                  (___kont135078135079_
                   (lambda (_L130162_ _L130163_ _L130164_)
                     (let* ((_$field130196_
                             (let ((__tmp135875
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L130162_))))
                               (declare (not safe))
                               (hash-ref__0 _slots129494_ __tmp135875)))
                            (__tmp135876
                             (let ((__tmp135877
                                    (let ((__tmp135884
                                           (let ((__tmp135885
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$klass129492_
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135885)))
                                          (__tmp135878
                                           (let ((__tmp135882
                                                  (let ((__tmp135883
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field130196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135883)))
                                                 (__tmp135879
                                                  (let ((__tmp135880
                                                         (let ((__tmp135881
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self129491_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp135881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135880 '()))))
                                             (declare (not safe))
                                             (cons __tmp135882 __tmp135879))))
                                      (declare (not safe))
                                      (cons __tmp135884 __tmp135878))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp135877))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp135876 _stx129490_))))
                  (___kont135080135081_
                   (lambda (_L130036_ _L130037_ _L130038_ _L130039_)
                     (let ((_$field130074_
                            (let ((__tmp135886
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130037_))))
                              (declare (not safe))
                              (hash-ref__0 _slots129494_ __tmp135886)))
                           (_expr130075_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L130036_
                               _self129491_
                               _$klass129492_
                               _methods129493_
                               _slots129494_))))
                       (let ((__tmp135887
                              (let ((__tmp135888
                                     (let ((__tmp135896
                                            (let ((__tmp135897
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$klass129492_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135897)))
                                           (__tmp135889
                                            (let ((__tmp135894
                                                   (let ((__tmp135895
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field130074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135895)))
                                                  (__tmp135890
                                                   (let ((__tmp135892
                                                          (let ((__tmp135893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self129491_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135893)))
                 (__tmp135891
                  (let () (declare (not safe)) (cons _expr130075_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135892
                                                           __tmp135891))))
                                              (declare (not safe))
                                              (cons __tmp135894 __tmp135890))))
                                       (declare (not safe))
                                       (cons __tmp135896 __tmp135889))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp135888))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135887 _stx129490_)))))
                  (___kont135082135083_
                   (lambda (_L129908_ _L129909_)
                     (let* ((_accessor129931_
                             (let ((__tmp135898
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L129909_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp135898)))
                            (_klass129933_
                             (let ((__tmp135899
                                    (##structure-ref
                                     _accessor129931_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129490_
                                __tmp135899)))
                            (_slot129935_
                             (##structure-ref
                              _accessor129931_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp135910
                                       (##structure-ref
                                        _accessor129931_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135910))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129933_
                                       _slot129935_))
                                    (##structure-ref
                                     _klass129933_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx129490_
                           (let* ((_$field129941_
                                   (let ()
                                     (declare (not safe))
                                     (hash-ref__0 _slots129494_ _slot129935_)))
                                  (__tmp135900
                                   (let ((__tmp135901
                                          (let ((__tmp135908
                                                 (let ((__tmp135909
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$klass129492_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp135909)))
                                                (__tmp135902
                                                 (let ((__tmp135906
                                                        (let ((__tmp135907
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129941_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp135907)))
               (__tmp135903
                (let ((__tmp135904
                       (let ((__tmp135905
                              (let ()
                                (declare (not safe))
                                (cons _self129491_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp135905))))
                  (declare (not safe))
                  (cons __tmp135904 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp135906
                                                         __tmp135903))))
                                            (declare (not safe))
                                            (cons __tmp135908 __tmp135902))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp135901))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp135900
                              _stx129490_))))))
                  (___kont135084135085_
                   (lambda (_L129802_ _L129803_ _L129804_)
                     (let* ((_mutator129833_
                             (let ((__tmp135911
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L129804_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp135911)))
                            (_klass129835_
                             (let ((__tmp135912
                                    (##structure-ref
                                     _mutator129833_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129490_
                                __tmp135912)))
                            (_slot129837_
                             (##structure-ref
                              _mutator129833_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr129839_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L129802_
                                _self129491_
                                _$klass129492_
                                _methods129493_
                                _slots129494_))))
                       (if (and (let ((__tmp135934
                                       (##structure-ref
                                        _mutator129833_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135934))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129835_
                                       _slot129837_))
                                    (##structure-ref
                                     _klass129835_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp135924
                                  (let ((__tmp135925
                                         (let ((__tmp135931
                                                (let ((__tmp135933
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp135932
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L129804_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp135933
                                                        __tmp135932)))
                                               (__tmp135926
                                                (let ((__tmp135928
                                                       (let ((__tmp135930
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp135929
                      (let () (declare (not safe)) (cons _L129803_ '()))))
                 (declare (not safe))
                 (cons __tmp135930 __tmp135929)))
              (__tmp135927
               (let () (declare (not safe)) (cons _expr129839_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135928
                                                        __tmp135927))))
                                           (declare (not safe))
                                           (cons __tmp135931 __tmp135926))))
                                    (declare (not safe))
                                    (cons '%#call __tmp135925))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135924 _stx129490_))
                           (let* ((_$field129845_
                                   (let ()
                                     (declare (not safe))
                                     (hash-ref__0 _slots129494_ _slot129837_)))
                                  (__tmp135913
                                   (let ((__tmp135914
                                          (let ((__tmp135922
                                                 (let ((__tmp135923
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$klass129492_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp135923)))
                                                (__tmp135915
                                                 (let ((__tmp135920
                                                        (let ((__tmp135921
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129845_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp135921)))
               (__tmp135916
                (let ((__tmp135918
                       (let ((__tmp135919
                              (let ()
                                (declare (not safe))
                                (cons _self129491_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp135919)))
                      (__tmp135917
                       (let () (declare (not safe)) (cons _expr129839_ '()))))
                  (declare (not safe))
                  (cons __tmp135918 __tmp135917))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp135920
                                                         __tmp135916))))
                                            (declare (not safe))
                                            (cons __tmp135922 __tmp135915))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp135914))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp135913
                              _stx129490_))))))
                  (___kont135086135087_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx129490_
                        _self129491_
                        _$klass129492_
                        _methods129493_
                        _slots129494_)))))
              (let* ((___match135567135568_
                      (lambda (_e129700129738_
                               _hd129699129741_
                               _tl129698129743_
                               _e129703129746_
                               _hd129702129749_
                               _tl129701129751_
                               _e129706129754_
                               _hd129705129757_
                               _tl129704129759_
                               _e129709129762_
                               _hd129708129765_
                               _tl129707129767_
                               _e129712129770_
                               _hd129711129773_
                               _tl129710129775_
                               _e129715129778_
                               _hd129714129781_
                               _tl129713129783_
                               _e129718129786_
                               _hd129717129789_
                               _tl129716129791_
                               _e129721129794_
                               _hd129720129797_
                               _tl129719129799_)
                        (let ((_L129802_ _hd129720129797_)
                              (_L129803_ _hd129717129789_)
                              (_L129804_ _hd129708129765_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129803_
                                      _self129491_))
                                   (let ((__tmp135935
                                          (let ((__tmp135936
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L129804_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135936))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135935
                                      'gxc#!mutator::t)))
                              (___kont135084135085_
                               _L129802_
                               _L129803_
                               _L129804_)
                              (___kont135086135087_)))))
                     (___match135565135566_
                      (lambda (_e129700129738_
                               _hd129699129741_
                               _tl129698129743_
                               _e129703129746_
                               _hd129702129749_
                               _tl129701129751_
                               _e129706129754_
                               _hd129705129757_
                               _tl129704129759_
                               _e129709129762_
                               _hd129708129765_
                               _tl129707129767_
                               _e129712129770_
                               _hd129711129773_
                               _tl129710129775_
                               _e129715129778_
                               _hd129714129781_
                               _tl129713129783_
                               _e129718129786_
                               _hd129717129789_
                               _tl129716129791_
                               _e129721129794_
                               _hd129720129797_
                               _tl129719129799_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129719129799_))
                            (___match135567135568_
                             _e129700129738_
                             _hd129699129741_
                             _tl129698129743_
                             _e129703129746_
                             _hd129702129749_
                             _tl129701129751_
                             _e129706129754_
                             _hd129705129757_
                             _tl129704129759_
                             _e129709129762_
                             _hd129708129765_
                             _tl129707129767_
                             _e129712129770_
                             _hd129711129773_
                             _tl129710129775_
                             _e129715129778_
                             _hd129714129781_
                             _tl129713129783_
                             _e129718129786_
                             _hd129717129789_
                             _tl129716129791_
                             _e129721129794_
                             _hd129720129797_
                             _tl129719129799_)
                            (___kont135086135087_))))
                     (___match135559135560_
                      (lambda (_e129700129738_
                               _hd129699129741_
                               _tl129698129743_
                               _e129703129746_
                               _hd129702129749_
                               _tl129701129751_
                               _e129706129754_
                               _hd129705129757_
                               _tl129704129759_
                               _e129709129762_
                               _hd129708129765_
                               _tl129707129767_
                               _e129712129770_
                               _hd129711129773_
                               _tl129710129775_
                               _e129715129778_
                               _hd129714129781_
                               _tl129713129783_
                               _e129718129786_
                               _hd129717129789_
                               _tl129716129791_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129710129775_))
                            (let ((_e129721129794_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129710129775_))))
                              (let ((_tl129719129799_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129721129794_)))
                                    (_hd129720129797_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129721129794_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129719129799_))
                                    (___match135567135568_
                                     _e129700129738_
                                     _hd129699129741_
                                     _tl129698129743_
                                     _e129703129746_
                                     _hd129702129749_
                                     _tl129701129751_
                                     _e129706129754_
                                     _hd129705129757_
                                     _tl129704129759_
                                     _e129709129762_
                                     _hd129708129765_
                                     _tl129707129767_
                                     _e129712129770_
                                     _hd129711129773_
                                     _tl129710129775_
                                     _e129715129778_
                                     _hd129714129781_
                                     _tl129713129783_
                                     _e129718129786_
                                     _hd129717129789_
                                     _tl129716129791_
                                     _e129721129794_
                                     _hd129720129797_
                                     _tl129719129799_)
                                    (___kont135086135087_))))
                            (___kont135086135087_))))
                     (___match135505135506_
                      (lambda (_e129676129852_
                               _hd129675129855_
                               _tl129674129857_
                               _e129679129860_
                               _hd129678129863_
                               _tl129677129865_
                               _e129682129868_
                               _hd129681129871_
                               _tl129680129873_
                               _e129685129876_
                               _hd129684129879_
                               _tl129683129881_
                               _e129688129884_
                               _hd129687129887_
                               _tl129686129889_
                               _e129691129892_
                               _hd129690129895_
                               _tl129689129897_
                               _e129694129900_
                               _hd129693129903_
                               _tl129692129905_)
                        (let ((_L129908_ _hd129693129903_)
                              (_L129909_ _hd129684129879_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129908_
                                      _self129491_))
                                   (let ((__tmp135937
                                          (let ((__tmp135938
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L129909_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135938))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135937
                                      'gxc#!accessor::t)))
                              (___kont135082135083_ _L129908_ _L129909_)
                              (___kont135086135087_)))))
                     (___match135503135504_
                      (lambda (_e129676129852_
                               _hd129675129855_
                               _tl129674129857_
                               _e129679129860_
                               _hd129678129863_
                               _tl129677129865_
                               _e129682129868_
                               _hd129681129871_
                               _tl129680129873_
                               _e129685129876_
                               _hd129684129879_
                               _tl129683129881_
                               _e129688129884_
                               _hd129687129887_
                               _tl129686129889_
                               _e129691129892_
                               _hd129690129895_
                               _tl129689129897_
                               _e129694129900_
                               _hd129693129903_
                               _tl129692129905_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129686129889_))
                            (___match135505135506_
                             _e129676129852_
                             _hd129675129855_
                             _tl129674129857_
                             _e129679129860_
                             _hd129678129863_
                             _tl129677129865_
                             _e129682129868_
                             _hd129681129871_
                             _tl129680129873_
                             _e129685129876_
                             _hd129684129879_
                             _tl129683129881_
                             _e129688129884_
                             _hd129687129887_
                             _tl129686129889_
                             _e129691129892_
                             _hd129690129895_
                             _tl129689129897_
                             _e129694129900_
                             _hd129693129903_
                             _tl129692129905_)
                            (___match135559135560_
                             _e129676129852_
                             _hd129675129855_
                             _tl129674129857_
                             _e129679129860_
                             _hd129678129863_
                             _tl129677129865_
                             _e129682129868_
                             _hd129681129871_
                             _tl129680129873_
                             _e129685129876_
                             _hd129684129879_
                             _tl129683129881_
                             _e129688129884_
                             _hd129687129887_
                             _tl129686129889_
                             _e129691129892_
                             _hd129690129895_
                             _tl129689129897_
                             _e129694129900_
                             _hd129693129903_
                             _tl129692129905_))))
                     (___match135449135450_
                      (lambda (_e129641129948_
                               _hd129640129951_
                               _tl129639129953_
                               _e129644129956_
                               _hd129643129959_
                               _tl129642129961_
                               _e129647129964_
                               _hd129646129967_
                               _tl129645129969_
                               _e129650129972_
                               _hd129649129975_
                               _tl129648129977_
                               _e129653129980_
                               _hd129652129983_
                               _tl129651129985_
                               _e129656129988_
                               _hd129655129991_
                               _tl129654129993_
                               _e129659129996_
                               _hd129658129999_
                               _tl129657130001_
                               _e129662130004_
                               _hd129661130007_
                               _tl129660130009_
                               _e129665130012_
                               _hd129664130015_
                               _tl129663130017_
                               _e129668130020_
                               _hd129667130023_
                               _tl129666130025_
                               _e129671130028_
                               _hd129670130031_
                               _tl129669130033_)
                        (let ((_L130036_ _hd129670130031_)
                              (_L130037_ _hd129667130023_)
                              (_L130038_ _hd129658129999_)
                              (_L130039_ _hd129649129975_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L130039_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L130039_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L130038_
                                      _self129491_)))
                              (___kont135080135081_
                               _L130036_
                               _L130037_
                               _L130038_
                               _L130039_)
                              (___kont135086135087_)))))
                     (___match135441135442_
                      (lambda (_e129641129948_
                               _hd129640129951_
                               _tl129639129953_
                               _e129644129956_
                               _hd129643129959_
                               _tl129642129961_
                               _e129647129964_
                               _hd129646129967_
                               _tl129645129969_
                               _e129650129972_
                               _hd129649129975_
                               _tl129648129977_
                               _e129653129980_
                               _hd129652129983_
                               _tl129651129985_
                               _e129656129988_
                               _hd129655129991_
                               _tl129654129993_
                               _e129659129996_
                               _hd129658129999_
                               _tl129657130001_
                               _e129662130004_
                               _hd129661130007_
                               _tl129660130009_
                               _e129665130012_
                               _hd129664130015_
                               _tl129663130017_
                               _e129668130020_
                               _hd129667130023_
                               _tl129666130025_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129660130009_))
                            (let ((_e129671130028_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129660130009_))))
                              (let ((_tl129669130033_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129671130028_)))
                                    (_hd129670130031_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129671130028_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129669130033_))
                                    (___match135449135450_
                                     _e129641129948_
                                     _hd129640129951_
                                     _tl129639129953_
                                     _e129644129956_
                                     _hd129643129959_
                                     _tl129642129961_
                                     _e129647129964_
                                     _hd129646129967_
                                     _tl129645129969_
                                     _e129650129972_
                                     _hd129649129975_
                                     _tl129648129977_
                                     _e129653129980_
                                     _hd129652129983_
                                     _tl129651129985_
                                     _e129656129988_
                                     _hd129655129991_
                                     _tl129654129993_
                                     _e129659129996_
                                     _hd129658129999_
                                     _tl129657130001_
                                     _e129662130004_
                                     _hd129661130007_
                                     _tl129660130009_
                                     _e129665130012_
                                     _hd129664130015_
                                     _tl129663130017_
                                     _e129668130020_
                                     _hd129667130023_
                                     _tl129666130025_
                                     _e129671130028_
                                     _hd129670130031_
                                     _tl129669130033_)
                                    (___kont135086135087_))))
                            (___match135565135566_
                             _e129641129948_
                             _hd129640129951_
                             _tl129639129953_
                             _e129644129956_
                             _hd129643129959_
                             _tl129642129961_
                             _e129647129964_
                             _hd129646129967_
                             _tl129645129969_
                             _e129650129972_
                             _hd129649129975_
                             _tl129648129977_
                             _e129653129980_
                             _hd129652129983_
                             _tl129651129985_
                             _e129656129988_
                             _hd129655129991_
                             _tl129654129993_
                             _e129659129996_
                             _hd129658129999_
                             _tl129657130001_
                             _e129662130004_
                             _hd129661130007_
                             _tl129660130009_))))
                     (___match135363135364_
                      (lambda (_e129607130082_
                               _hd129606130085_
                               _tl129605130087_
                               _e129610130090_
                               _hd129609130093_
                               _tl129608130095_
                               _e129613130098_
                               _hd129612130101_
                               _tl129611130103_
                               _e129616130106_
                               _hd129615130109_
                               _tl129614130111_
                               _e129619130114_
                               _hd129618130117_
                               _tl129617130119_
                               _e129622130122_
                               _hd129621130125_
                               _tl129620130127_
                               _e129625130130_
                               _hd129624130133_
                               _tl129623130135_
                               _e129628130138_
                               _hd129627130141_
                               _tl129626130143_
                               _e129631130146_
                               _hd129630130149_
                               _tl129629130151_
                               _e129634130154_
                               _hd129633130157_
                               _tl129632130159_)
                        (let ((_L130162_ _hd129633130157_)
                              (_L130163_ _hd129624130133_)
                              (_L130164_ _hd129615130109_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L130164_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L130164_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L130163_
                                      _self129491_)))
                              (___kont135078135079_
                               _L130162_
                               _L130163_
                               _L130164_)
                              (___match135567135568_
                               _e129607130082_
                               _hd129606130085_
                               _tl129605130087_
                               _e129610130090_
                               _hd129609130093_
                               _tl129608130095_
                               _e129613130098_
                               _hd129612130101_
                               _tl129611130103_
                               _e129616130106_
                               _hd129615130109_
                               _tl129614130111_
                               _e129619130114_
                               _hd129618130117_
                               _tl129617130119_
                               _e129622130122_
                               _hd129621130125_
                               _tl129620130127_
                               _e129625130130_
                               _hd129624130133_
                               _tl129623130135_
                               _e129628130138_
                               _hd129627130141_
                               _tl129626130143_)))))
                     (___match135361135362_
                      (lambda (_e129607130082_
                               _hd129606130085_
                               _tl129605130087_
                               _e129610130090_
                               _hd129609130093_
                               _tl129608130095_
                               _e129613130098_
                               _hd129612130101_
                               _tl129611130103_
                               _e129616130106_
                               _hd129615130109_
                               _tl129614130111_
                               _e129619130114_
                               _hd129618130117_
                               _tl129617130119_
                               _e129622130122_
                               _hd129621130125_
                               _tl129620130127_
                               _e129625130130_
                               _hd129624130133_
                               _tl129623130135_
                               _e129628130138_
                               _hd129627130141_
                               _tl129626130143_
                               _e129631130146_
                               _hd129630130149_
                               _tl129629130151_
                               _e129634130154_
                               _hd129633130157_
                               _tl129632130159_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129626130143_))
                            (___match135363135364_
                             _e129607130082_
                             _hd129606130085_
                             _tl129605130087_
                             _e129610130090_
                             _hd129609130093_
                             _tl129608130095_
                             _e129613130098_
                             _hd129612130101_
                             _tl129611130103_
                             _e129616130106_
                             _hd129615130109_
                             _tl129614130111_
                             _e129619130114_
                             _hd129618130117_
                             _tl129617130119_
                             _e129622130122_
                             _hd129621130125_
                             _tl129620130127_
                             _e129625130130_
                             _hd129624130133_
                             _tl129623130135_
                             _e129628130138_
                             _hd129627130141_
                             _tl129626130143_
                             _e129631130146_
                             _hd129630130149_
                             _tl129629130151_
                             _e129634130154_
                             _hd129633130157_
                             _tl129632130159_)
                            (___match135441135442_
                             _e129607130082_
                             _hd129606130085_
                             _tl129605130087_
                             _e129610130090_
                             _hd129609130093_
                             _tl129608130095_
                             _e129613130098_
                             _hd129612130101_
                             _tl129611130103_
                             _e129616130106_
                             _hd129615130109_
                             _tl129614130111_
                             _e129619130114_
                             _hd129618130117_
                             _tl129617130119_
                             _e129622130122_
                             _hd129621130125_
                             _tl129620130127_
                             _e129625130130_
                             _hd129624130133_
                             _tl129623130135_
                             _e129628130138_
                             _hd129627130141_
                             _tl129626130143_
                             _e129631130146_
                             _hd129630130149_
                             _tl129629130151_
                             _e129634130154_
                             _hd129633130157_
                             _tl129632130159_))))
                     (___match135351135352_
                      (lambda (_e129607130082_
                               _hd129606130085_
                               _tl129605130087_
                               _e129610130090_
                               _hd129609130093_
                               _tl129608130095_
                               _e129613130098_
                               _hd129612130101_
                               _tl129611130103_
                               _e129616130106_
                               _hd129615130109_
                               _tl129614130111_
                               _e129619130114_
                               _hd129618130117_
                               _tl129617130119_
                               _e129622130122_
                               _hd129621130125_
                               _tl129620130127_
                               _e129625130130_
                               _hd129624130133_
                               _tl129623130135_
                               _e129628130138_
                               _hd129627130141_
                               _tl129626130143_
                               _e129631130146_
                               _hd129630130149_
                               _tl129629130151_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd129630130149_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl129629130151_))
                                (let ((_e129634130154_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl129629130151_))))
                                  (let ((_tl129632130159_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129634130154_)))
                                        (_hd129633130157_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129634130154_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl129632130159_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl129626130143_))
                                            (___match135363135364_
                                             _e129607130082_
                                             _hd129606130085_
                                             _tl129605130087_
                                             _e129610130090_
                                             _hd129609130093_
                                             _tl129608130095_
                                             _e129613130098_
                                             _hd129612130101_
                                             _tl129611130103_
                                             _e129616130106_
                                             _hd129615130109_
                                             _tl129614130111_
                                             _e129619130114_
                                             _hd129618130117_
                                             _tl129617130119_
                                             _e129622130122_
                                             _hd129621130125_
                                             _tl129620130127_
                                             _e129625130130_
                                             _hd129624130133_
                                             _tl129623130135_
                                             _e129628130138_
                                             _hd129627130141_
                                             _tl129626130143_
                                             _e129631130146_
                                             _hd129630130149_
                                             _tl129629130151_
                                             _e129634130154_
                                             _hd129633130157_
                                             _tl129632130159_)
                                            (___match135441135442_
                                             _e129607130082_
                                             _hd129606130085_
                                             _tl129605130087_
                                             _e129610130090_
                                             _hd129609130093_
                                             _tl129608130095_
                                             _e129613130098_
                                             _hd129612130101_
                                             _tl129611130103_
                                             _e129616130106_
                                             _hd129615130109_
                                             _tl129614130111_
                                             _e129619130114_
                                             _hd129618130117_
                                             _tl129617130119_
                                             _e129622130122_
                                             _hd129621130125_
                                             _tl129620130127_
                                             _e129625130130_
                                             _hd129624130133_
                                             _tl129623130135_
                                             _e129628130138_
                                             _hd129627130141_
                                             _tl129626130143_
                                             _e129631130146_
                                             _hd129630130149_
                                             _tl129629130151_
                                             _e129634130154_
                                             _hd129633130157_
                                             _tl129632130159_))
                                        (___match135565135566_
                                         _e129607130082_
                                         _hd129606130085_
                                         _tl129605130087_
                                         _e129610130090_
                                         _hd129609130093_
                                         _tl129608130095_
                                         _e129613130098_
                                         _hd129612130101_
                                         _tl129611130103_
                                         _e129616130106_
                                         _hd129615130109_
                                         _tl129614130111_
                                         _e129619130114_
                                         _hd129618130117_
                                         _tl129617130119_
                                         _e129622130122_
                                         _hd129621130125_
                                         _tl129620130127_
                                         _e129625130130_
                                         _hd129624130133_
                                         _tl129623130135_
                                         _e129628130138_
                                         _hd129627130141_
                                         _tl129626130143_))))
                                (___match135565135566_
                                 _e129607130082_
                                 _hd129606130085_
                                 _tl129605130087_
                                 _e129610130090_
                                 _hd129609130093_
                                 _tl129608130095_
                                 _e129613130098_
                                 _hd129612130101_
                                 _tl129611130103_
                                 _e129616130106_
                                 _hd129615130109_
                                 _tl129614130111_
                                 _e129619130114_
                                 _hd129618130117_
                                 _tl129617130119_
                                 _e129622130122_
                                 _hd129621130125_
                                 _tl129620130127_
                                 _e129625130130_
                                 _hd129624130133_
                                 _tl129623130135_
                                 _e129628130138_
                                 _hd129627130141_
                                 _tl129626130143_))
                            (___match135565135566_
                             _e129607130082_
                             _hd129606130085_
                             _tl129605130087_
                             _e129610130090_
                             _hd129609130093_
                             _tl129608130095_
                             _e129613130098_
                             _hd129612130101_
                             _tl129611130103_
                             _e129616130106_
                             _hd129615130109_
                             _tl129614130111_
                             _e129619130114_
                             _hd129618130117_
                             _tl129617130119_
                             _e129622130122_
                             _hd129621130125_
                             _tl129620130127_
                             _e129625130130_
                             _hd129624130133_
                             _tl129623130135_
                             _e129628130138_
                             _hd129627130141_
                             _tl129626130143_))))
                     (___match135283135284_
                      (lambda (_e129556130203_
                               _hd129555130206_
                               _tl129554130208_
                               _e129559130211_
                               _hd129558130214_
                               _tl129557130216_
                               _e129562130219_
                               _hd129561130222_
                               _tl129560130224_
                               _e129565130227_
                               _hd129564130230_
                               _tl129563130232_
                               _e129568130235_
                               _hd129567130238_
                               _tl129566130240_
                               _e129571130243_
                               _hd129570130246_
                               _tl129569130248_
                               _e129574130251_
                               _hd129573130254_
                               _tl129572130256_
                               _e129577130259_
                               _hd129576130262_
                               _tl129575130264_
                               _e129580130267_
                               _hd129579130270_
                               _tl129578130272_
                               _e129583130275_
                               _hd129582130278_
                               _tl129581130280_
                               _e129586130283_
                               _hd129585130286_
                               _tl129584130288_
                               _e129589130291_
                               _hd129588130294_
                               _tl129587130296_
                               _e129592130299_
                               _hd129591130302_
                               _tl129590130304_
                               ___splice135076135077_
                               _target129593130307_
                               _tl129595130309_)
                        (letrec ((_loop129596130312_
                                  (lambda (_hd129594130315_ _args129600130317_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129594130315_))
                                        (let ((_e129597130320_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129594130315_))))
                                          (let ((_lp-tl129599130325_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129597130320_)))
                                                (_lp-hd129598130323_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129597130320_))))
                                            (let ((__tmp135939
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd129598130323_
                                                           _args129600130317_))))
                                              (declare (not safe))
                                              (_loop129596130312_
                                               _lp-tl129599130325_
                                               __tmp135939))))
                                        (let ((_args129601130328_
                                               (reverse _args129600130317_)))
                                          (let ((_L130331_ _args129601130328_)
                                                (_L130332_ _hd129591130302_)
                                                (_L130333_ _hd129582130278_)
                                                (_L130334_ _hd129573130254_)
                                                (_L130335_ _hd129564130230_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130335_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130334_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130333_
                                                        _self129491_)))
                                                (___kont135074135075_
                                                 _L130331_
                                                 _L130332_
                                                 _L130333_
                                                 _L130334_
                                                 _L130335_)
                                                (___kont135086135087_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop129596130312_ _target129593130307_ '())))))
                     (___match135241135242_
                      (lambda (_e129556130203_
                               _hd129555130206_
                               _tl129554130208_
                               _e129559130211_
                               _hd129558130214_
                               _tl129557130216_
                               _e129562130219_
                               _hd129561130222_
                               _tl129560130224_
                               _e129565130227_
                               _hd129564130230_
                               _tl129563130232_
                               _e129568130235_
                               _hd129567130238_
                               _tl129566130240_
                               _e129571130243_
                               _hd129570130246_
                               _tl129569130248_
                               _e129574130251_
                               _hd129573130254_
                               _tl129572130256_
                               _e129577130259_
                               _hd129576130262_
                               _tl129575130264_
                               _e129580130267_
                               _hd129579130270_
                               _tl129578130272_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd129579130270_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl129578130272_))
                                (let ((_e129583130275_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl129578130272_))))
                                  (let ((_tl129581130280_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129583130275_)))
                                        (_hd129582130278_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129583130275_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl129581130280_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129575130264_))
                                            (let ((_e129586130283_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129575130264_))))
                                              (let ((_tl129584130288_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129586130283_)))
                                                    (_hd129585130286_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129586130283_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd129585130286_))
                                                    (let ((_e129589130291_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd129585130286_))))
                                                      (let ((_tl129587130296_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129589130291_)))
                    (_hd129588130294_
                     (let () (declare (not safe)) (##car _e129589130291_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd129588130294_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd129588130294_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129587130296_))
                            (let ((_e129592130299_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129587130296_))))
                              (let ((_tl129590130304_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129592130299_)))
                                    (_hd129591130302_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129592130299_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129590130304_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl129584130288_))
                                        (let ((___splice135076135077_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl129584130288_
                                                  '0))))
                                          (let ((_tl129595130309_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice135076135077_
                                                    '1)))
                                                (_target129593130307_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice135076135077_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl129595130309_))
                                                (___match135283135284_
                                                 _e129556130203_
                                                 _hd129555130206_
                                                 _tl129554130208_
                                                 _e129559130211_
                                                 _hd129558130214_
                                                 _tl129557130216_
                                                 _e129562130219_
                                                 _hd129561130222_
                                                 _tl129560130224_
                                                 _e129565130227_
                                                 _hd129564130230_
                                                 _tl129563130232_
                                                 _e129568130235_
                                                 _hd129567130238_
                                                 _tl129566130240_
                                                 _e129571130243_
                                                 _hd129570130246_
                                                 _tl129569130248_
                                                 _e129574130251_
                                                 _hd129573130254_
                                                 _tl129572130256_
                                                 _e129577130259_
                                                 _hd129576130262_
                                                 _tl129575130264_
                                                 _e129580130267_
                                                 _hd129579130270_
                                                 _tl129578130272_
                                                 _e129583130275_
                                                 _hd129582130278_
                                                 _tl129581130280_
                                                 _e129586130283_
                                                 _hd129585130286_
                                                 _tl129584130288_
                                                 _e129589130291_
                                                 _hd129588130294_
                                                 _tl129587130296_
                                                 _e129592130299_
                                                 _hd129591130302_
                                                 _tl129590130304_
                                                 ___splice135076135077_
                                                 _target129593130307_
                                                 _tl129595130309_)
                                                (___kont135086135087_))))
                                        (___kont135086135087_))
                                    (___kont135086135087_))))
                            (___kont135086135087_))
                        (___kont135086135087_))
                    (___kont135086135087_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135086135087_))))
                                            (___match135565135566_
                                             _e129556130203_
                                             _hd129555130206_
                                             _tl129554130208_
                                             _e129559130211_
                                             _hd129558130214_
                                             _tl129557130216_
                                             _e129562130219_
                                             _hd129561130222_
                                             _tl129560130224_
                                             _e129565130227_
                                             _hd129564130230_
                                             _tl129563130232_
                                             _e129568130235_
                                             _hd129567130238_
                                             _tl129566130240_
                                             _e129571130243_
                                             _hd129570130246_
                                             _tl129569130248_
                                             _e129574130251_
                                             _hd129573130254_
                                             _tl129572130256_
                                             _e129577130259_
                                             _hd129576130262_
                                             _tl129575130264_))
                                        (___match135565135566_
                                         _e129556130203_
                                         _hd129555130206_
                                         _tl129554130208_
                                         _e129559130211_
                                         _hd129558130214_
                                         _tl129557130216_
                                         _e129562130219_
                                         _hd129561130222_
                                         _tl129560130224_
                                         _e129565130227_
                                         _hd129564130230_
                                         _tl129563130232_
                                         _e129568130235_
                                         _hd129567130238_
                                         _tl129566130240_
                                         _e129571130243_
                                         _hd129570130246_
                                         _tl129569130248_
                                         _e129574130251_
                                         _hd129573130254_
                                         _tl129572130256_
                                         _e129577130259_
                                         _hd129576130262_
                                         _tl129575130264_))))
                                (___match135565135566_
                                 _e129556130203_
                                 _hd129555130206_
                                 _tl129554130208_
                                 _e129559130211_
                                 _hd129558130214_
                                 _tl129557130216_
                                 _e129562130219_
                                 _hd129561130222_
                                 _tl129560130224_
                                 _e129565130227_
                                 _hd129564130230_
                                 _tl129563130232_
                                 _e129568130235_
                                 _hd129567130238_
                                 _tl129566130240_
                                 _e129571130243_
                                 _hd129570130246_
                                 _tl129569130248_
                                 _e129574130251_
                                 _hd129573130254_
                                 _tl129572130256_
                                 _e129577130259_
                                 _hd129576130262_
                                 _tl129575130264_))
                            (___match135351135352_
                             _e129556130203_
                             _hd129555130206_
                             _tl129554130208_
                             _e129559130211_
                             _hd129558130214_
                             _tl129557130216_
                             _e129562130219_
                             _hd129561130222_
                             _tl129560130224_
                             _e129565130227_
                             _hd129564130230_
                             _tl129563130232_
                             _e129568130235_
                             _hd129567130238_
                             _tl129566130240_
                             _e129571130243_
                             _hd129570130246_
                             _tl129569130248_
                             _e129574130251_
                             _hd129573130254_
                             _tl129572130256_
                             _e129577130259_
                             _hd129576130262_
                             _tl129575130264_
                             _e129580130267_
                             _hd129579130270_
                             _tl129578130272_))))
                     (___match135173135174_
                      (lambda (_e129512130395_
                               _hd129511130398_
                               _tl129510130400_
                               _e129515130403_
                               _hd129514130406_
                               _tl129513130408_
                               _e129518130411_
                               _hd129517130414_
                               _tl129516130416_
                               _e129521130419_
                               _hd129520130422_
                               _tl129519130424_
                               _e129524130427_
                               _hd129523130430_
                               _tl129522130432_
                               _e129527130435_
                               _hd129526130438_
                               _tl129525130440_
                               _e129530130443_
                               _hd129529130446_
                               _tl129528130448_
                               _e129533130451_
                               _hd129532130454_
                               _tl129531130456_
                               _e129536130459_
                               _hd129535130462_
                               _tl129534130464_
                               _e129539130467_
                               _hd129538130470_
                               _tl129537130472_
                               ___splice135072135073_
                               _target129540130475_
                               _tl129542130477_)
                        (letrec ((_loop129543130480_
                                  (lambda (_hd129541130483_ _args129547130485_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129541130483_))
                                        (let ((_e129544130488_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129541130483_))))
                                          (let ((_lp-tl129546130493_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129544130488_)))
                                                (_lp-hd129545130491_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129544130488_))))
                                            (let ((__tmp135940
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd129545130491_
                                                           _args129547130485_))))
                                              (declare (not safe))
                                              (_loop129543130480_
                                               _lp-tl129546130493_
                                               __tmp135940))))
                                        (let ((_args129548130496_
                                               (reverse _args129547130485_)))
                                          (let ((_L130499_ _args129548130496_)
                                                (_L130500_ _hd129538130470_)
                                                (_L130501_ _hd129529130446_)
                                                (_L130502_ _hd129520130422_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130502_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130501_
                                                        _self129491_)))
                                                (___kont135070135071_
                                                 _L130499_
                                                 _L130500_
                                                 _L130501_
                                                 _L130502_)
                                                (___match135361135362_
                                                 _e129512130395_
                                                 _hd129511130398_
                                                 _tl129510130400_
                                                 _e129515130403_
                                                 _hd129514130406_
                                                 _tl129513130408_
                                                 _e129518130411_
                                                 _hd129517130414_
                                                 _tl129516130416_
                                                 _e129521130419_
                                                 _hd129520130422_
                                                 _tl129519130424_
                                                 _e129524130427_
                                                 _hd129523130430_
                                                 _tl129522130432_
                                                 _e129527130435_
                                                 _hd129526130438_
                                                 _tl129525130440_
                                                 _e129530130443_
                                                 _hd129529130446_
                                                 _tl129528130448_
                                                 _e129533130451_
                                                 _hd129532130454_
                                                 _tl129531130456_
                                                 _e129536130459_
                                                 _hd129535130462_
                                                 _tl129534130464_
                                                 _e129539130467_
                                                 _hd129538130470_
                                                 _tl129537130472_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop129543130480_ _target129540130475_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx135068135069_))
                    (let ((_e129512130395_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx135068135069_))))
                      (let ((_tl129510130400_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129512130395_)))
                            (_hd129511130398_
                             (let ()
                               (declare (not safe))
                               (##car _e129512130395_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129510130400_))
                            (let ((_e129515130403_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129510130400_))))
                              (let ((_tl129513130408_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129515130403_)))
                                    (_hd129514130406_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129515130403_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd129514130406_))
                                    (let ((_e129518130411_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd129514130406_))))
                                      (let ((_tl129516130416_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e129518130411_)))
                                            (_hd129517130414_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e129518130411_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd129517130414_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd129517130414_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl129516130416_))
                                                    (let ((_e129521130419_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl129516130416_))))
                                                      (let ((_tl129519130424_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129521130419_)))
                    (_hd129520130422_
                     (let () (declare (not safe)) (##car _e129521130419_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl129519130424_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl129513130408_))
                        (let ((_e129524130427_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl129513130408_))))
                          (let ((_tl129522130432_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e129524130427_)))
                                (_hd129523130430_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e129524130427_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd129523130430_))
                                (let ((_e129527130435_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd129523130430_))))
                                  (let ((_tl129525130440_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129527130435_)))
                                        (_hd129526130438_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129527130435_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd129526130438_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd129526130438_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl129525130440_))
                                                (let ((_e129530130443_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl129525130440_))))
                                                  (let ((_tl129528130448_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e129530130443_)))
                                                        (_hd129529130446_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e129530130443_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl129528130448_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl129522130432_))
                                                            (let ((_e129533130451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl129522130432_))))
                      (let ((_tl129531130456_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129533130451_)))
                            (_hd129532130454_
                             (let ()
                               (declare (not safe))
                               (##car _e129533130451_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd129532130454_))
                            (let ((_e129536130459_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd129532130454_))))
                              (let ((_tl129534130464_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129536130459_)))
                                    (_hd129535130462_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129536130459_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd129535130462_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd129535130462_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129534130464_))
                                            (let ((_e129539130467_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129534130464_))))
                                              (let ((_tl129537130472_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129539130467_)))
                                                    (_hd129538130470_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129539130467_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl129537130472_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl129531130456_))
                                                        (let ((___splice135072135073_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl129531130456_ '0))))
                  (let ((_tl129542130477_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice135072135073_ '1)))
                        (_target129540130475_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice135072135073_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl129542130477_))
                        (___match135173135174_
                         _e129512130395_
                         _hd129511130398_
                         _tl129510130400_
                         _e129515130403_
                         _hd129514130406_
                         _tl129513130408_
                         _e129518130411_
                         _hd129517130414_
                         _tl129516130416_
                         _e129521130419_
                         _hd129520130422_
                         _tl129519130424_
                         _e129524130427_
                         _hd129523130430_
                         _tl129522130432_
                         _e129527130435_
                         _hd129526130438_
                         _tl129525130440_
                         _e129530130443_
                         _hd129529130446_
                         _tl129528130448_
                         _e129533130451_
                         _hd129532130454_
                         _tl129531130456_
                         _e129536130459_
                         _hd129535130462_
                         _tl129534130464_
                         _e129539130467_
                         _hd129538130470_
                         _tl129537130472_
                         ___splice135072135073_
                         _target129540130475_
                         _tl129542130477_)
                        (___match135361135362_
                         _e129512130395_
                         _hd129511130398_
                         _tl129510130400_
                         _e129515130403_
                         _hd129514130406_
                         _tl129513130408_
                         _e129518130411_
                         _hd129517130414_
                         _tl129516130416_
                         _e129521130419_
                         _hd129520130422_
                         _tl129519130424_
                         _e129524130427_
                         _hd129523130430_
                         _tl129522130432_
                         _e129527130435_
                         _hd129526130438_
                         _tl129525130440_
                         _e129530130443_
                         _hd129529130446_
                         _tl129528130448_
                         _e129533130451_
                         _hd129532130454_
                         _tl129531130456_
                         _e129536130459_
                         _hd129535130462_
                         _tl129534130464_
                         _e129539130467_
                         _hd129538130470_
                         _tl129537130472_))))
                (___match135361135362_
                 _e129512130395_
                 _hd129511130398_
                 _tl129510130400_
                 _e129515130403_
                 _hd129514130406_
                 _tl129513130408_
                 _e129518130411_
                 _hd129517130414_
                 _tl129516130416_
                 _e129521130419_
                 _hd129520130422_
                 _tl129519130424_
                 _e129524130427_
                 _hd129523130430_
                 _tl129522130432_
                 _e129527130435_
                 _hd129526130438_
                 _tl129525130440_
                 _e129530130443_
                 _hd129529130446_
                 _tl129528130448_
                 _e129533130451_
                 _hd129532130454_
                 _tl129531130456_
                 _e129536130459_
                 _hd129535130462_
                 _tl129534130464_
                 _e129539130467_
                 _hd129538130470_
                 _tl129537130472_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match135565135566_
                                                     _e129512130395_
                                                     _hd129511130398_
                                                     _tl129510130400_
                                                     _e129515130403_
                                                     _hd129514130406_
                                                     _tl129513130408_
                                                     _e129518130411_
                                                     _hd129517130414_
                                                     _tl129516130416_
                                                     _e129521130419_
                                                     _hd129520130422_
                                                     _tl129519130424_
                                                     _e129524130427_
                                                     _hd129523130430_
                                                     _tl129522130432_
                                                     _e129527130435_
                                                     _hd129526130438_
                                                     _tl129525130440_
                                                     _e129530130443_
                                                     _hd129529130446_
                                                     _tl129528130448_
                                                     _e129533130451_
                                                     _hd129532130454_
                                                     _tl129531130456_))))
                                            (___match135565135566_
                                             _e129512130395_
                                             _hd129511130398_
                                             _tl129510130400_
                                             _e129515130403_
                                             _hd129514130406_
                                             _tl129513130408_
                                             _e129518130411_
                                             _hd129517130414_
                                             _tl129516130416_
                                             _e129521130419_
                                             _hd129520130422_
                                             _tl129519130424_
                                             _e129524130427_
                                             _hd129523130430_
                                             _tl129522130432_
                                             _e129527130435_
                                             _hd129526130438_
                                             _tl129525130440_
                                             _e129530130443_
                                             _hd129529130446_
                                             _tl129528130448_
                                             _e129533130451_
                                             _hd129532130454_
                                             _tl129531130456_))
                                        (___match135241135242_
                                         _e129512130395_
                                         _hd129511130398_
                                         _tl129510130400_
                                         _e129515130403_
                                         _hd129514130406_
                                         _tl129513130408_
                                         _e129518130411_
                                         _hd129517130414_
                                         _tl129516130416_
                                         _e129521130419_
                                         _hd129520130422_
                                         _tl129519130424_
                                         _e129524130427_
                                         _hd129523130430_
                                         _tl129522130432_
                                         _e129527130435_
                                         _hd129526130438_
                                         _tl129525130440_
                                         _e129530130443_
                                         _hd129529130446_
                                         _tl129528130448_
                                         _e129533130451_
                                         _hd129532130454_
                                         _tl129531130456_
                                         _e129536130459_
                                         _hd129535130462_
                                         _tl129534130464_))
                                    (___match135565135566_
                                     _e129512130395_
                                     _hd129511130398_
                                     _tl129510130400_
                                     _e129515130403_
                                     _hd129514130406_
                                     _tl129513130408_
                                     _e129518130411_
                                     _hd129517130414_
                                     _tl129516130416_
                                     _e129521130419_
                                     _hd129520130422_
                                     _tl129519130424_
                                     _e129524130427_
                                     _hd129523130430_
                                     _tl129522130432_
                                     _e129527130435_
                                     _hd129526130438_
                                     _tl129525130440_
                                     _e129530130443_
                                     _hd129529130446_
                                     _tl129528130448_
                                     _e129533130451_
                                     _hd129532130454_
                                     _tl129531130456_))))
                            (___match135565135566_
                             _e129512130395_
                             _hd129511130398_
                             _tl129510130400_
                             _e129515130403_
                             _hd129514130406_
                             _tl129513130408_
                             _e129518130411_
                             _hd129517130414_
                             _tl129516130416_
                             _e129521130419_
                             _hd129520130422_
                             _tl129519130424_
                             _e129524130427_
                             _hd129523130430_
                             _tl129522130432_
                             _e129527130435_
                             _hd129526130438_
                             _tl129525130440_
                             _e129530130443_
                             _hd129529130446_
                             _tl129528130448_
                             _e129533130451_
                             _hd129532130454_
                             _tl129531130456_))))
                    (___match135503135504_
                     _e129512130395_
                     _hd129511130398_
                     _tl129510130400_
                     _e129515130403_
                     _hd129514130406_
                     _tl129513130408_
                     _e129518130411_
                     _hd129517130414_
                     _tl129516130416_
                     _e129521130419_
                     _hd129520130422_
                     _tl129519130424_
                     _e129524130427_
                     _hd129523130430_
                     _tl129522130432_
                     _e129527130435_
                     _hd129526130438_
                     _tl129525130440_
                     _e129530130443_
                     _hd129529130446_
                     _tl129528130448_))
                (___kont135086135087_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont135086135087_))
                                            (___kont135086135087_))
                                        (___kont135086135087_))))
                                (___kont135086135087_))))
                        (___kont135086135087_))
                    (___kont135086135087_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135086135087_))
                                                (___kont135086135087_))
                                            (___kont135086135087_))))
                                    (___kont135086135087_))))
                            (___kont135086135087_))))
                    (___kont135086135087_))))))))))
