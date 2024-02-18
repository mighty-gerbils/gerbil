(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1708247278)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl248354_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp253549 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl248354_ __tmp253549))
           (let ()
             (declare (not safe))
             (table-set! _tbl248354_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl248354_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl248354_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl248354_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl248354_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx248337_ . _args248339_)
        (let ((__tmp253551
               (lambda ()
                 (declare (not safe))
                 (if (null? _args248339_)
                     (gxc#compile-e__0 _stx248337_)
                     (let ((_arg1248344_ (car _args248339_))
                           (_rest248346_ (cdr _args248339_)))
                       (if (null? _rest248346_)
                           (gxc#compile-e__1 _stx248337_ _arg1248344_)
                           (let ((_arg2248349_ (car _rest248346_))
                                 (_rest248351_ (cdr _rest248346_)))
                             (if (null? _rest248351_)
                                 (gxc#compile-e__2
                                  _stx248337_
                                  _arg1248344_
                                  _arg2248349_)
                                 (apply gxc#compile-e
                                        _stx248337_
                                        _arg1248344_
                                        _arg2248349_
                                        _rest248351_))))))))
              (__tmp253550 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp253551
           gxc#current-compile-methods
           __tmp253550))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl248334_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp253552 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl248334_ __tmp253552))
           (let ()
             (declare (not safe))
             (table-set! _tbl248334_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl248334_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl248334_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl248334_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl248334_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl248334_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl248334_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl248334_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl248334_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl248334_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl248334_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl248334_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl248334_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl248334_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl248334_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl248334_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl248334_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx248317_ . _args248319_)
        (let ((__tmp253554
               (lambda ()
                 (declare (not safe))
                 (if (null? _args248319_)
                     (gxc#compile-e__0 _stx248317_)
                     (let ((_arg1248324_ (car _args248319_))
                           (_rest248326_ (cdr _args248319_)))
                       (if (null? _rest248326_)
                           (gxc#compile-e__1 _stx248317_ _arg1248324_)
                           (let ((_arg2248329_ (car _rest248326_))
                                 (_rest248331_ (cdr _rest248326_)))
                             (if (null? _rest248331_)
                                 (gxc#compile-e__2
                                  _stx248317_
                                  _arg1248324_
                                  _arg2248329_)
                                 (apply gxc#compile-e
                                        _stx248317_
                                        _arg1248324_
                                        _arg2248329_
                                        _rest248331_))))))))
              (__tmp253553 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp253554
           gxc#current-compile-methods
           __tmp253553))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl248314_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp253555 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl248314_ __tmp253555))
           (let ()
             (declare (not safe))
             (table-set! _tbl248314_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl248314_ '%#call gxc#subst-object-refs-call%))
           _tbl248314_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx248297_ . _args248299_)
        (let ((__tmp253557
               (lambda ()
                 (declare (not safe))
                 (if (null? _args248299_)
                     (gxc#compile-e__0 _stx248297_)
                     (let ((_arg1248304_ (car _args248299_))
                           (_rest248306_ (cdr _args248299_)))
                       (if (null? _rest248306_)
                           (gxc#compile-e__1 _stx248297_ _arg1248304_)
                           (let ((_arg2248309_ (car _rest248306_))
                                 (_rest248311_ (cdr _rest248306_)))
                             (if (null? _rest248311_)
                                 (gxc#compile-e__2
                                  _stx248297_
                                  _arg1248304_
                                  _arg2248309_)
                                 (apply gxc#compile-e
                                        _stx248297_
                                        _arg1248304_
                                        _arg2248309_
                                        _rest248311_))))))))
              (__tmp253556 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp253557
           gxc#current-compile-methods
           __tmp253556))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx244967_)
        (letrec ((_generate-method-bind244969_
                  (lambda (_$t248291_ _id248292_ _$id248293_)
                    (let ((_$tmp248295_
                           (let ((__tmp253558 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp253558))))
                      (let ((__tmp253606
                             (let ()
                               (declare (not safe))
                               (cons _$id248293_ '())))
                            (__tmp253559
                             (let ((__tmp253560
                                    (let ((__tmp253561
                                           (let ((__tmp253604
                                                  (let ((__tmp253605
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp253605)))
                                                 (__tmp253562
                                                  (let ((__tmp253563
                                                         (let ((__tmp253564
                                                                (let ((__tmp253565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp253566
                                      (let ((__tmp253567
                                             (let ((__tmp253587
                                                    (let ((__tmp253588
                                                           (let ((__tmp253603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp248295_ '())))
                         (__tmp253589
                          (let ((__tmp253590
                                 (let ((__tmp253591
                                        (let ((__tmp253601
                                               (let ((__tmp253602
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp253602)))
                                              (__tmp253592
                                               (let ((__tmp253599
                                                      (let ((__tmp253600
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t248291_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp253600)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp253593
                                                      (let ((__tmp253597
                                                             (let ((__tmp253598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp253598)))
                    (__tmp253594
                     (let ((__tmp253595
                            (let ((__tmp253596
                                   (let ()
                                     (declare (not safe))
                                     (cons _id248292_ '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp253596))))
                       (declare (not safe))
                       (cons __tmp253595 '()))))
                (declare (not safe))
                (cons __tmp253597 __tmp253594))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp253599
                                                       __tmp253593))))
                                          (declare (not safe))
                                          (cons __tmp253601 __tmp253592))))
                                   (declare (not safe))
                                   (cons '%#call __tmp253591))))
                            (declare (not safe))
                            (cons __tmp253590 '()))))
                     (declare (not safe))
                     (cons __tmp253603 __tmp253589))))
              (declare (not safe))
              (cons __tmp253588 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp253568
                                                    (let ((__tmp253569
                                                           (let ((__tmp253570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp253585
                                 (let ((__tmp253586
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp248295_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp253586)))
                                (__tmp253571
                                 (let ((__tmp253583
                                        (let ((__tmp253584
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp248295_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp253584)))
                                       (__tmp253572
                                        (let ((__tmp253573
                                               (let ((__tmp253574
                                                      (let ((__tmp253581
                                                             (let ((__tmp253582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp253582)))
                    (__tmp253575
                     (let ((__tmp253579
                            (let ((__tmp253580
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp253580)))
                           (__tmp253576
                            (let ((__tmp253577
                                   (let ((__tmp253578
                                          (let ()
                                            (declare (not safe))
                                            (cons _id248292_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp253578))))
                              (declare (not safe))
                              (cons __tmp253577 '()))))
                       (declare (not safe))
                       (cons __tmp253579 __tmp253576))))
                (declare (not safe))
                (cons __tmp253581 __tmp253575))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp253574))))
                                          (declare (not safe))
                                          (cons __tmp253573 '()))))
                                   (declare (not safe))
                                   (cons __tmp253583 __tmp253572))))
                            (declare (not safe))
                            (cons __tmp253585 __tmp253571))))
                     (declare (not safe))
                     (cons '%#if __tmp253570))))
              (declare (not safe))
              (cons __tmp253569 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp253587
                                                     __tmp253568))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp253567))))
                                 (declare (not safe))
                                 (cons __tmp253566 '()))))
                          (declare (not safe))
                          (cons '() __tmp253565))))
                   (declare (not safe))
                   (cons '%#lambda __tmp253564))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp253563 '()))))
                                             (declare (not safe))
                                             (cons __tmp253604 __tmp253562))))
                                      (declare (not safe))
                                      (cons '%#call __tmp253561))))
                               (declare (not safe))
                               (cons __tmp253560 '()))))
                        (declare (not safe))
                        (cons __tmp253606 __tmp253559)))))
                 (_generate-slot-bind244970_
                  (lambda (_$t248285_ _id248286_ _$id248287_)
                    (let ((_$tmp248289_
                           (let ((__tmp253607 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp253607))))
                      (let ((__tmp253644
                             (let ()
                               (declare (not safe))
                               (cons _$id248287_ '())))
                            (__tmp253608
                             (let ((__tmp253609
                                    (let ((__tmp253610
                                           (let ((__tmp253630
                                                  (let ((__tmp253631
                                                         (let ((__tmp253643
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp248289_ '())))
                       (__tmp253632
                        (let ((__tmp253633
                               (let ((__tmp253634
                                      (let ((__tmp253641
                                             (let ((__tmp253642
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp253642)))
                                            (__tmp253635
                                             (let ((__tmp253639
                                                    (let ((__tmp253640
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t248285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp253640)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp253636
                                                    (let ((__tmp253637
                                                           (let ((__tmp253638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id248286_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp253638))))
              (declare (not safe))
              (cons __tmp253637 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp253639
                                                     __tmp253636))))
                                        (declare (not safe))
                                        (cons __tmp253641 __tmp253635))))
                                 (declare (not safe))
                                 (cons '%#call __tmp253634))))
                          (declare (not safe))
                          (cons __tmp253633 '()))))
                   (declare (not safe))
                   (cons __tmp253643 __tmp253632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp253631 '())))
                                                 (__tmp253611
                                                  (let ((__tmp253612
                                                         (let ((__tmp253613
                                                                (let ((__tmp253628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp253629
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp248289_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp253629)))
                              (__tmp253614
                               (let ((__tmp253626
                                      (let ((__tmp253627
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp248289_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp253627)))
                                     (__tmp253615
                                      (let ((__tmp253616
                                             (let ((__tmp253617
                                                    (let ((__tmp253624
                                                           (let ((__tmp253625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp253625)))
                  (__tmp253618
                   (let ((__tmp253622
                          (let ((__tmp253623
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp253623)))
                         (__tmp253619
                          (let ((__tmp253620
                                 (let ((__tmp253621
                                        (let ()
                                          (declare (not safe))
                                          (cons _id248286_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp253621))))
                            (declare (not safe))
                            (cons __tmp253620 '()))))
                     (declare (not safe))
                     (cons __tmp253622 __tmp253619))))
              (declare (not safe))
              (cons __tmp253624 __tmp253618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp253617))))
                                        (declare (not safe))
                                        (cons __tmp253616 '()))))
                                 (declare (not safe))
                                 (cons __tmp253626 __tmp253615))))
                          (declare (not safe))
                          (cons __tmp253628 __tmp253614))))
                   (declare (not safe))
                   (cons '%#if __tmp253613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp253612 '()))))
                                             (declare (not safe))
                                             (cons __tmp253630 __tmp253611))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp253610))))
                               (declare (not safe))
                               (cons __tmp253609 '()))))
                        (declare (not safe))
                        (cons __tmp253644 __tmp253608)))))
                 (_generate-class-check-bind244971_
                  (lambda (_$t248281_ _class-type248282_ _$class-type248283_)
                    (let ((__tmp253656
                           (let ()
                             (declare (not safe))
                             (cons _$class-type248283_ '())))
                          (__tmp253645
                           (let ((__tmp253646
                                  (let ((__tmp253647
                                         (let ((__tmp253654
                                                (let ((__tmp253655
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp253655)))
                                               (__tmp253648
                                                (let ((__tmp253652
                                                       (let ((__tmp253653
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t248281_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp253653)))
              (__tmp253649
               (let ((__tmp253650
                      (let ((__tmp253651
                             (let ()
                               (declare (not safe))
                               (cons _class-type248282_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp253651))))
                 (declare (not safe))
                 (cons __tmp253650 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp253652
                                                        __tmp253649))))
                                           (declare (not safe))
                                           (cons __tmp253654 __tmp253648))))
                                    (declare (not safe))
                                    (cons '%#call __tmp253647))))
                             (declare (not safe))
                             (cons __tmp253646 '()))))
                      (declare (not safe))
                      (cons __tmp253656 __tmp253645))))
                 (_generate-struct-check-bind244972_
                  (lambda (_$t248277_ _class-type248278_ _$class-type248279_)
                    (let ((__tmp253668
                           (let ()
                             (declare (not safe))
                             (cons _$class-type248279_ '())))
                          (__tmp253657
                           (let ((__tmp253658
                                  (let ((__tmp253659
                                         (let ((__tmp253666
                                                (let ((__tmp253667
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp253667)))
                                               (__tmp253660
                                                (let ((__tmp253664
                                                       (let ((__tmp253665
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t248277_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp253665)))
              (__tmp253661
               (let ((__tmp253662
                      (let ((__tmp253663
                             (let ()
                               (declare (not safe))
                               (cons _class-type248278_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp253663))))
                 (declare (not safe))
                 (cons __tmp253662 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp253664
                                                        __tmp253661))))
                                           (declare (not safe))
                                           (cons __tmp253666 __tmp253660))))
                                    (declare (not safe))
                                    (cons '%#call __tmp253659))))
                             (declare (not safe))
                             (cons __tmp253658 '()))))
                      (declare (not safe))
                      (cons __tmp253668 __tmp253657))))
                 (_generate-specializer-impl244973_
                  (lambda (_$t248226_
                           _methods-bind248227_
                           _slots-bind248228_
                           _class-check-bind248229_
                           _struct-check-bind248230_
                           _specializer-impl248231_
                           _lifted-specializer-id248232_
                           _unchecked-specializer-impl248233_)
                    (let ((__tmp253669
                           (let ((__tmp253670
                                  (let ((__tmp253696
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t248226_ '())))
                                        (__tmp253671
                                         (let ((__tmp253672
                                                (let ((__tmp253673
                                                       (let ((__tmp253693
                                                              (let ((__tmp253694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp253695
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind248230_
                                              _class-check-bind248229_))))
                               (declare (not safe))
                               (foldr1 cons __tmp253695 _slots-bind248228_))))
                        (declare (not safe))
                        (foldr1 cons __tmp253694 _methods-bind248227_)))
                     (__tmp253674
                      (let ((__tmp253675
                             (if (or _lifted-specializer-id248232_
                                     _unchecked-specializer-impl248233_)
                                 (let* ((_$specializer248238_
                                         (let ((__tmp253676
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp253676)))
                                        (__tmp253677
                                         (let ((__tmp253689
                                                (let ((__tmp253690
                                                       (let ((__tmp253692
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer248238_ '())))
                     (__tmp253691
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl248231_ '()))))
                 (declare (not safe))
                 (cons __tmp253692 __tmp253691))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp253690 '())))
                                               (__tmp253678
                                                (let ((__tmp253679
                                                       (let _recur248240_ ((_rest248242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind248230_)))
                 (let* ((_rest248243248251_ _rest248242_)
                        (_else248245248259_
                         (lambda ()
                           (if _lifted-specializer-id248232_
                               (let ((__tmp253680
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id248232_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp253680))
                               _unchecked-specializer-impl248233_)))
                        (_K248247248265_
                         (lambda (_rest248262_ _checkq248263_)
                           (let ((__tmp253681
                                  (let ((__tmp253687
                                         (let ((__tmp253688
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq248263_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp253688)))
                                        (__tmp253682
                                         (let ((__tmp253686
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur248240_
                                                   _rest248262_)))
                                               (__tmp253683
                                                (let ((__tmp253684
                                                       (let ((__tmp253685
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer248238_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp253685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp253684 '()))))
                                           (declare (not safe))
                                           (cons __tmp253686 __tmp253683))))
                                    (declare (not safe))
                                    (cons __tmp253687 __tmp253682))))
                             (declare (not safe))
                             (cons '%#if __tmp253681)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest248243248251_))
                       (let ((_hd248248248268_
                              (let ()
                                (declare (not safe))
                                (##car _rest248243248251_)))
                             (_tl248249248270_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest248243248251_))))
                         (let* ((_checkq248273_ _hd248248248268_)
                                (_rest248275_ _tl248249248270_))
                           (declare (not safe))
                           (_K248247248265_ _rest248275_ _checkq248273_)))
                       (let () (declare (not safe)) (_else248245248259_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp253679 '()))))
                                           (declare (not safe))
                                           (cons __tmp253689 __tmp253678))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp253677))
                                 _specializer-impl248231_)))
                        (declare (not safe))
                        (cons __tmp253675 '()))))
                 (declare (not safe))
                 (cons __tmp253693 __tmp253674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp253673))))
                                           (declare (not safe))
                                           (cons __tmp253672 '()))))
                                    (declare (not safe))
                                    (cons __tmp253696 __tmp253671))))
                             (declare (not safe))
                             (cons '%#lambda __tmp253670))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp253669 _stx244967_))))
                 (_generate-specializer-def244974_
                  (lambda (_id248220_
                           _specializer-id248221_
                           _specializer-impl248222_
                           _lifted-specializer-id248223_
                           _unchecked-specializer-impl248224_)
                    (let ((__tmp253697
                           (let ((__tmp253698
                                  (let ((__tmp253699
                                         (let ((__tmp253719
                                                (let ((__tmp253720
                                                       (let ((__tmp253721
                                                              (let ((__tmp253723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id248221_ '())))
                            (__tmp253722
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl248222_ '()))))
                        (declare (not safe))
                        (cons __tmp253723 __tmp253722))))
                 (declare (not safe))
                 (cons '%#define-values __tmp253721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp253720
                                                   _stx244967_)))
                                               (__tmp253700
                                                (let ((__tmp253707
                                                       (let ((__tmp253708
                                                              (let ((__tmp253709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp253710
                                    (let ((__tmp253717
                                           (let ((__tmp253718
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp253718)))
                                          (__tmp253711
                                           (let ((__tmp253715
                                                  (let ((__tmp253716
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id248220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp253716)))
                                                 (__tmp253712
                                                  (let ((__tmp253713
                                                         (let ((__tmp253714
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id248221_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp253714))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp253713 '()))))
                                             (declare (not safe))
                                             (cons __tmp253715 __tmp253712))))
                                      (declare (not safe))
                                      (cons __tmp253717 __tmp253711))))
                               (declare (not safe))
                               (cons '%#call __tmp253710))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp253709 _stx244967_))))
                 (declare (not safe))
                 (cons __tmp253708 '())))
              (__tmp253701
               (if _lifted-specializer-id248223_
                   (let ((__tmp253702
                          (let ((__tmp253703
                                 (let ((__tmp253704
                                        (let ((__tmp253706
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id248223_
                                                       '())))
                                              (__tmp253705
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl248224_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp253706 __tmp253705))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp253704))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp253703 _stx244967_))))
                     (declare (not safe))
                     (cons __tmp253702 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp253707
                                                          __tmp253701))))
                                           (declare (not safe))
                                           (cons __tmp253719 __tmp253700))))
                                    (declare (not safe))
                                    (cons _stx244967_ __tmp253699))))
                             (declare (not safe))
                             (cons '%#begin __tmp253698))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp253697 _stx244967_)))))
          (let* ((___stx252510252511_ _stx244967_)
                 (_g244977244997_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx252510252511_)))))
            (let ((___kont252512252513_
                   (lambda (_L245041_ _L245042_)
                     (let ((_method-calls245061_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs245062_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_class-type-check245063_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-check245064_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-assert245065_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty245066_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?245068_
                                 (lambda ()
                                   (if (let ((__tmp253728
                                              (hash-length
                                               _method-calls245061_)))
                                         (declare (not safe))
                                         (fxzero? __tmp253728))
                                       (if (let ((__tmp253727
                                                  (hash-length
                                                   _slot-refs245062_)))
                                             (declare (not safe))
                                             (fxzero? __tmp253727))
                                           (if (let ((__tmp253726
                                                      (hash-length
                                                       _class-type-check245063_)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp253726))
                                               (if (let ((__tmp253725
                                                          (hash-length
                                                           _struct-type-check245064_)))
                                                     (declare (not safe))
                                                     (fxzero? __tmp253725))
                                                   (let ((__tmp253724
                                                          (hash-length
                                                           _struct-type-assert245065_)))
                                                     (declare (not safe))
                                                     (fxzero? __tmp253724))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?245069_
                                 (lambda ()
                                   (let ((_$e248213_
                                          (let ((__tmp253729
                                                 (let ((__tmp253730
                                                        (hash-length
                                                         _struct-type-check245064_)))
                                                   (declare (not safe))
                                                   (fxzero? __tmp253730))))
                                            (declare (not safe))
                                            (not __tmp253729))))
                                     (if _$e248213_
                                         _$e248213_
                                         (let ((__tmp253731
                                                (let ((__tmp253732
                                                       (hash-length
                                                        _struct-type-assert245065_)))
                                                  (declare (not safe))
                                                  (fxzero? __tmp253732))))
                                           (declare (not safe))
                                           (not __tmp253731))))))
                                (_lift-unchecked-specializer?245070_
                                 (lambda ()
                                   (if (let ((__tmp253735
                                              (hash-length
                                               _method-calls245061_)))
                                         (declare (not safe))
                                         (fxzero? __tmp253735))
                                       (if (let ((__tmp253734
                                                  (hash-length
                                                   _slot-refs245062_)))
                                             (declare (not safe))
                                             (fxzero? __tmp253734))
                                           (let ((__tmp253733
                                                  (hash-length
                                                   _class-type-check245063_)))
                                             (declare (not safe))
                                             (fxzero? __tmp253733))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L245041_))
                             (let* ((___stx252424252425_ _L245041_)
                                    (_g245583245601_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx252424252425_)))))
                               (let ((___kont252426252427_
                                      (lambda (_L245637_ _L245638_ _L245639_)
                                        (for-each
                                         (lambda (_g245654245656_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g245654245656_
                                              _L245639_
                                              _method-calls245061_
                                              _slot-refs245062_
                                              _class-type-check245063_
                                              _struct-type-check245064_
                                              _struct-type-assert245065_)))
                                         _L245637_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?245068_))
                                            _stx244967_
                                            (let* ((_specializer-id245665_
                                                    (let* ((_id245659_
                                                            (let ((__tmp253885
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L245042_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp253885 '"::specialize")))
                   (_specializer-id245662_
                    (let ((__tmp253886
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx244967_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id245659_ __tmp253886))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id245662_))
              _specializer-id245662_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id245672_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?245070_))
                                                        (let* ((_id245667_
                                                                (let ((__tmp253887
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L245042_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp253887
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id245669_
                        (let ((__tmp253888
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx244967_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id245667_ __tmp253888))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id245669_))
                  _lifted-specializer-id245669_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t245674_
                                                    (let ((__tmp253889
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp253889)))
                                                   (_methods245676_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls245061_)))
                                                   (_$methods245680_
                                                    (map (lambda (_id245678_)
                                                           (let ((__tmp253890
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id245678_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp253890)))
                 _methods245676_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g253891_
                                                    (for-each
                                                     (lambda (_g245681245684_
                                                              _g245682245686_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls245061_
                                                          _g245681245684_
                                                          _g245682245686_)))
                                                     _methods245676_
                                                     _$methods245680_))
                                                   (_methods-bind245697_
                                                    (map (lambda (_g245689245692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g245690245694_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind244969_
                      _$t245674_
                      _g245689245692_
                      _g245690245694_)))
                 _methods245676_
                 _$methods245680_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots245699_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs245062_)))
                                                   (_$slots245703_
                                                    (map (lambda (_id245701_)
                                                           (let ((__tmp253892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id245701_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp253892)))
                 _slots245699_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g253893_
                                                    (for-each
                                                     (lambda (_g245704245707_
                                                              _g245705245709_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs245062_
                                                          _g245704245707_
                                                          _g245705245709_)))
                                                     _slots245699_
                                                     _$slots245703_))
                                                   (_slots-bind245720_
                                                    (map (lambda (_g245712245715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g245713245717_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind244970_
                      _$t245674_
                      _g245712245715_
                      _g245713245717_)))
                 _slots245699_
                 _$slots245703_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check245722_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check245063_)))
                                                   (_$class-check245725_
                                                    (map (lambda (_g253894_)
                                                           (let ((__tmp253895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp253895)))
                 _class-check245722_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g253896_
                                                    (for-each
                                                     (lambda (_g245726245729_
                                                              _g245727245731_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check245063_
                                                          _g245726245729_
                                                          _g245727245731_)))
                                                     _class-check245722_
                                                     _$class-check245725_))
                                                   (_class-check-bind245742_
                                                    (map (lambda (_g245734245737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g245735245739_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind244971_
                      _$t245674_
                      _g245734245737_
                      _g245735245739_)))
                 _class-check245722_
                 _$class-check245725_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all245744_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check245064_
                                                       _struct-type-assert245065_)))
                                                   (_struct-check245746_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all245744_)))
                                                   (_$struct-check245749_
                                                    (map (lambda (_g253897_)
                                                           (let ((__tmp253898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp253898)))
                 _struct-check245746_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g253899_
                                                    (for-each
                                                     (lambda (_g245750245753_
                                                              _g245751245755_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all245744_
                                                          _g245750245753_
                                                          _g245751245755_)))
                                                     _struct-check245746_
                                                     _$struct-check245749_))
                                                   (_struct-check-bind245766_
                                                    (map (lambda (_g245758245761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g245759245763_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind244972_
                      _$t245674_
                      _g245758245761_
                      _g245759245763_)))
                 _struct-check245746_
                 _$struct-check245749_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl245777_
                                                    (lambda (_struct-type-check1245768_
                                                             _struct-type-check2245769_)
                                                      (let* ((_specializer-body245775_
                                                              (map (lambda (_g245770245772_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g245770245772_
                                _L245639_
                                _$t245674_
                                _method-calls245061_
                                _slot-refs245062_
                                _class-type-check245063_
                                _struct-type-check1245768_
                                _struct-type-check2245769_)))
                           _L245637_))
                     (__tmp253900
                      (let ((__tmp253901
                             (let ((__tmp253902
                                    (let ()
                                      (declare (not safe))
                                      (cons _L245639_ _L245638_))))
                               (declare (not safe))
                               (cons __tmp253902 _specializer-body245775_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp253901))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp253900 _stx244967_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl245779_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl245777_
                                                       _struct-check-all245744_
                                                       _empty245066_)))
                                                   (_unchecked-specializer-impl245781_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?245069_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl245777_
                                                           _empty245066_
                                                           _struct-check-all245744_))
                                                        '#f))
                                                   (_specializer-impl245783_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl244973_
                                                       _$t245674_
                                                       _methods-bind245697_
                                                       _slots-bind245720_
                                                       _class-check-bind245742_
                                                       _struct-check-bind245766_
                                                       _specializer-impl245779_
                                                       _lifted-specializer-id245672_
                                                       _unchecked-specializer-impl245781_))))
                                              (let ((__tmp253904
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L245042_)))
                                                    (__tmp253903
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id245665_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp253904
                                                 '" => "
                                                 __tmp253903))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def244974_
                                                 _L245042_
                                                 _specializer-id245665_
                                                 _specializer-impl245783_
                                                 _lifted-specializer-id245672_
                                                 _unchecked-specializer-impl245781_))))))
                                     (___kont252428252429_
                                      (lambda () _stx244967_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx252424252425_))
                                     (let ((_e245590245613_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx252424252425_))))
                                       (let ((_tl245588245618_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e245590245613_)))
                                             (_hd245589245616_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e245590245613_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl245588245618_))
                                             (let ((_e245593245621_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl245588245618_))))
                                               (let ((_tl245591245626_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e245593245621_)))
                                                     (_hd245592245624_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e245593245621_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd245592245624_))
                                                     (let ((_e245596245629_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd245592245624_))))
                                                       (let ((_tl245594245634_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e245596245629_)))
                     (_hd245595245632_
                      (let () (declare (not safe)) (##car _e245596245629_))))
                 (___kont252426252427_
                  _tl245591245626_
                  _tl245594245634_
                  _hd245595245632_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont252428252429_))))
                                             (___kont252428252429_))))
                                     (___kont252428252429_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L245041_))
                                 (let* ((_g245789245808_
                                         (lambda (_g245790245805_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g245790245805_))))
                                        (_g245788246159_
                                         (lambda (_g245790245811_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g245790245811_))
                                               (let ((_e245794245813_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g245790245811_))))
                                                 (let ((_hd245793245816_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e245794245813_)))
                                                       (_tl245792245818_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e245794245813_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl245792245818_))
                                                       (let ((_g253861_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl245792245818_ '0))))
                 (begin
                   (let ((_g253862_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g253861_)
                                (##vector-length _g253861_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g253862_ 2)))
                         (error "Context expects 2 values" _g253862_)))
                   (let ((_target245795245821_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g253861_ 0)))
                         (_tl245797245823_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g253861_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl245797245823_))
                         (letrec ((_loop245798245826_
                                   (lambda (_hd245796245829_
                                            _clause245802245831_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd245796245829_))
                                         (let ((_e245799245834_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd245796245829_))))
                                           (let ((_lp-hd245800245837_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e245799245834_)))
                                                 (_lp-tl245801245839_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e245799245834_))))
                                             (let ((__tmp253884
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd245800245837_
                                                            _clause245802245831_))))
                                               (declare (not safe))
                                               (_loop245798245826_
                                                _lp-tl245801245839_
                                                __tmp253884))))
                                         (let ((_clause245803245842_
                                                (reverse _clause245802245831_)))
                                           ((lambda (_L245845_)
                                              (for-each
                                               (lambda (_clause245858_)
                                                 (let* ((___stx252450252451_
                                                         _clause245858_)
                                                        (_g245861245876_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx252450252451_)))))
                                                   (let ((___kont252452252453_
                                                          (lambda (_L245904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L245905_
                           _L245906_)
                    (for-each
                     (lambda (_g245921245923_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g245921245923_
                          _L245906_
                          _method-calls245061_
                          _slot-refs245062_
                          _class-type-check245063_
                          _struct-type-check245064_
                          _struct-type-assert245065_)))
                     _L245904_)))
                 (___kont252454252455_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx252450252451_))
                                                         (let ((_e245868245888_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx252450252451_))))
                   (let ((_tl245866245893_
                          (let ()
                            (declare (not safe))
                            (##cdr _e245868245888_)))
                         (_hd245867245891_
                          (let ()
                            (declare (not safe))
                            (##car _e245868245888_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd245867245891_))
                         (let ((_e245871245896_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd245867245891_))))
                           (let ((_tl245869245901_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e245871245896_)))
                                 (_hd245870245899_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e245871245896_))))
                             (___kont252452252453_
                              _tl245866245893_
                              _tl245869245901_
                              _hd245870245899_)))
                         (___kont252454252455_))))
                 (___kont252454252455_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp253863
                                                      (lambda (_g245928245931_
                                                               _g245929245933_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g245928245931_
                                                                _g245929245933_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp253863
                                                         '()
                                                         _L245845_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?245068_))
                                                  _stx244967_
                                                  (let* ((_specializer-id245942_
                                                          (let* ((_id245936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp253864
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L245042_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp253864 '"::specialize")))
                         (_specializer-id245939_
                          (let ((__tmp253865
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx244967_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id245936_ __tmp253865))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id245939_))
                    _specializer-id245939_))
                 (_lifted-specializer-id245949_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?245070_))
                      (let* ((_id245944_
                              (let ((__tmp253866
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L245042_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp253866
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id245946_
                              (let ((__tmp253867
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx244967_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id245944_
                                 __tmp253867))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id245946_))
                        _lifted-specializer-id245946_)
                      '#f))
                 (_$t245951_
                  (let ((__tmp253868 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp253868)))
                 (_methods245953_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls245061_)))
                 (_$methods245957_
                  (map (lambda (_id245955_)
                         (let ((__tmp253869 (gensym _id245955_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp253869)))
                       _methods245953_))
                 (_g253870_
                  (for-each
                   (lambda (_g245958245961_ _g245959245963_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls245061_
                        _g245958245961_
                        _g245959245963_)))
                   _methods245953_
                   _$methods245957_))
                 (_methods-bind245974_
                  (map (lambda (_g245966245969_ _g245967245971_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind244969_
                            _$t245951_
                            _g245966245969_
                            _g245967245971_)))
                       _methods245953_
                       _$methods245957_))
                 (_slots245976_
                  (let () (declare (not safe)) (hash-keys _slot-refs245062_)))
                 (_$slots245980_
                  (map (lambda (_id245978_)
                         (let ((__tmp253871 (gensym _id245978_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp253871)))
                       _slots245976_))
                 (_g253872_
                  (for-each
                   (lambda (_g245981245984_ _g245982245986_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs245062_
                        _g245981245984_
                        _g245982245986_)))
                   _slots245976_
                   _$slots245980_))
                 (_slots-bind245997_
                  (map (lambda (_g245989245992_ _g245990245994_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind244970_
                            _$t245951_
                            _g245989245992_
                            _g245990245994_)))
                       _slots245976_
                       _$slots245980_))
                 (_class-check245999_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check245063_)))
                 (_$class-check246002_
                  (map (lambda (_g253873_)
                         (let ((__tmp253874 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp253874)))
                       _class-check245999_))
                 (_g253875_
                  (for-each
                   (lambda (_g246003246006_ _g246004246008_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check245063_
                        _g246003246006_
                        _g246004246008_)))
                   _class-check245999_
                   _$class-check246002_))
                 (_class-check-bind246019_
                  (map (lambda (_g246011246014_ _g246012246016_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind244971_
                            _$t245951_
                            _g246011246014_
                            _g246012246016_)))
                       _class-check245999_
                       _$class-check246002_))
                 (_struct-check-all246021_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check245064_
                     _struct-type-assert245065_)))
                 (_struct-check246023_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all246021_)))
                 (_$struct-check246026_
                  (map (lambda (_g253876_)
                         (let ((__tmp253877 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp253877)))
                       _struct-check246023_))
                 (_g253878_
                  (for-each
                   (lambda (_g246027246030_ _g246028246032_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all246021_
                        _g246027246030_
                        _g246028246032_)))
                   _struct-check246023_
                   _$struct-check246026_))
                 (_struct-check-bind246043_
                  (map (lambda (_g246035246038_ _g246036246040_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind244972_
                            _$t245951_
                            _g246035246038_
                            _g246036246040_)))
                       _struct-check246023_
                       _$struct-check246026_))
                 (_make-specializer-impl246150_
                  (lambda (_struct-type-check1246045_
                           _struct-type-check2246046_)
                    (let* ((_specializer-clauses246148_
                            (map (lambda (_clause246048_)
                                   (let* ((___stx252470252471_ _clause246048_)
                                          (_g246051246066_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx252470252471_)))))
                                     (let ((___kont252472252473_
                                            (lambda (_L246094_
                                                     _L246095_
                                                     _L246096_)
                                              (let* ((_body246136_
                                                      (map (lambda (_g246131246133_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g246131246133_
                        _L246096_
                        _$t245951_
                        _method-calls245061_
                        _slot-refs245062_
                        _class-type-check245063_
                        _struct-type-check1246045_
                        _struct-type-check2246046_)))
                   _L246094_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp253879
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L246096_
                                                              _L246095_))))
                                                (declare (not safe))
                                                (cons __tmp253879
                                                      _body246136_))))
                                           (___kont252474252475_
                                            (lambda () _clause246048_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx252470252471_))
                                           (let ((_e246058246078_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx252470252471_))))
                                             (let ((_tl246056246083_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e246058246078_)))
                                                   (_hd246057246081_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e246058246078_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd246057246081_))
                                                   (let ((_e246061246086_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd246057246081_))))
                                                     (let ((_tl246059246091_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e246061246086_)))
                                                           (_hd246060246089_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e246061246086_))))
                                                       (___kont252472252473_
                                                        _tl246056246083_
                                                        _tl246059246091_
                                                        _hd246060246089_)))
                                                   (___kont252474252475_))))
                                           (___kont252474252475_)))))
                                 (let ((__tmp253880
                                        (lambda (_g246140246143_
                                                 _g246141246145_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g246140246143_
                                                  _g246141246145_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp253880 '() _L245845_))))
                           (__tmp253881
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses246148_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp253881 _stx244967_))))
                 (_specializer-impl246152_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl246150_
                     _struct-check-all246021_
                     _empty245066_)))
                 (_unchecked-specializer-impl246154_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?245069_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl246150_
                         _empty245066_
                         _struct-check-all246021_))
                      '#f))
                 (_specializer-impl246156_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl244973_
                     _$t245951_
                     _methods-bind245974_
                     _slots-bind245997_
                     _class-check-bind246019_
                     _struct-check-bind246043_
                     _specializer-impl246152_
                     _lifted-specializer-id245949_
                     _unchecked-specializer-impl246154_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp253883
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L245042_)))
                                                          (__tmp253882
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id245942_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp253883
                                                       '" => "
                                                       __tmp253882))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def244974_
                                                       _L245042_
                                                       _specializer-id245942_
                                                       _specializer-impl246156_
                                                       _lifted-specializer-id245949_
                                                       _unchecked-specializer-impl246154_)))))
                                            _clause245803245842_))))))
                           (let ()
                             (declare (not safe))
                             (_loop245798245826_ _target245795245821_ '())))
                         (let ()
                           (declare (not safe))
                           (_g245789245808_ _g245790245811_))))))
               (let ()
                 (declare (not safe))
                 (_g245789245808_ _g245790245811_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245789245808_
                                                  _g245790245811_))))))
                                   (declare (not safe))
                                   (_g245788246159_ _L245041_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L245041_))
                                     (let* ((_g246162246192_
                                             (lambda (_g246163246189_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g246163246189_))))
                                            (_g246161246880_
                                             (lambda (_g246163246195_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g246163246195_))
                                                   (let ((_e246169246197_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g246163246195_))))
                                                     (let ((_hd246168246200_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e246169246197_)))
                                                           (_tl246167246202_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e246169246197_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl246167246202_))
                                                           (let ((_e246172246205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl246167246202_))))
                     (let ((_hd246171246208_
                            (let ()
                              (declare (not safe))
                              (##car _e246172246205_)))
                           (_tl246170246210_
                            (let ()
                              (declare (not safe))
                              (##cdr _e246172246205_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd246171246208_))
                           (let ((_e246175246213_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd246171246208_))))
                             (let ((_hd246174246216_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e246175246213_)))
                                   (_tl246173246218_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e246175246213_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd246174246216_))
                                   (let ((_e246178246221_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd246174246216_))))
                                     (let ((_hd246177246224_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e246178246221_)))
                                           (_tl246176246226_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e246178246221_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd246177246224_))
                                           (let ((_e246181246229_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd246177246224_))))
                                             (let ((_hd246180246232_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e246181246229_)))
                                                   (_tl246179246234_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e246181246229_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl246179246234_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl246176246226_))
                                                       (let ((_e246184246237_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl246176246226_))))
                 (let ((_hd246183246240_
                        (let () (declare (not safe)) (##car _e246184246237_)))
                       (_tl246182246242_
                        (let () (declare (not safe)) (##cdr _e246184246237_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl246182246242_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl246173246218_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl246170246210_))
                               (let ((_e246187246245_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl246170246210_))))
                                 (let ((_hd246186246248_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e246187246245_)))
                                       (_tl246185246250_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e246187246245_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl246185246250_))
                                       ((lambda (_L246253_ _L246254_ _L246255_)
                                          (let* ((_g246278246296_
                                                  (lambda (_g246279246293_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g246279246293_))))
                                                 (_g246277246347_
                                                  (lambda (_g246279246299_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g246279246299_))
                                                        (let ((_e246285246301_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g246279246299_))))
                  (let ((_hd246284246304_
                         (let () (declare (not safe)) (##car _e246285246301_)))
                        (_tl246283246306_
                         (let ()
                           (declare (not safe))
                           (##cdr _e246285246301_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl246283246306_))
                        (let ((_e246288246309_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl246283246306_))))
                          (let ((_hd246287246312_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e246288246309_)))
                                (_tl246286246314_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e246288246309_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd246287246312_))
                                (let ((_e246291246317_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd246287246312_))))
                                  (let ((_hd246290246320_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e246291246317_)))
                                        (_tl246289246322_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e246291246317_))))
                                    ((lambda (_L246325_ _L246326_ _L246327_)
                                       (for-each
                                        (lambda (_g246342246344_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g246342246344_
                                             _L246327_
                                             _method-calls245061_
                                             _slot-refs245062_
                                             _class-type-check245063_
                                             _struct-type-check245064_
                                             _struct-type-assert245065_)))
                                        _L246325_))
                                     _tl246286246314_
                                     _tl246289246322_
                                     _hd246290246320_)))
                                (let ()
                                  (declare (not safe))
                                  (_g246278246296_ _g246279246299_)))))
                        (let ()
                          (declare (not safe))
                          (_g246278246296_ _g246279246299_)))))
                (let ()
                  (declare (not safe))
                  (_g246278246296_ _g246279246299_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g246277246347_ _L246254_))
                                          (let* ((_g246350246369_
                                                  (lambda (_g246351246366_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g246351246366_))))
                                                 (_g246349246488_
                                                  (lambda (_g246351246372_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g246351246372_))
                                                        (let ((_e246355246374_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g246351246372_))))
                  (let ((_hd246354246377_
                         (let () (declare (not safe)) (##car _e246355246374_)))
                        (_tl246353246379_
                         (let ()
                           (declare (not safe))
                           (##cdr _e246355246374_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl246353246379_))
                        (let ((_g253824_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl246353246379_
                                  '0))))
                          (begin
                            (let ((_g253825_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g253824_)
                                         (##vector-length _g253824_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g253825_ 2)))
                                  (error "Context expects 2 values"
                                         _g253825_)))
                            (let ((_target246356246382_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g253824_ 0)))
                                  (_tl246358246384_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g253824_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl246358246384_))
                                  (letrec ((_loop246359246387_
                                            (lambda (_hd246357246390_
                                                     _clause246363246392_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd246357246390_))
                                                  (let ((_e246360246395_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd246357246390_))))
                                                    (let ((_lp-hd246361246398_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e246360246395_)))
                                                          (_lp-tl246362246400_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e246360246395_))))
                                                      (let ((__tmp253827
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd246361246398_ _clause246363246392_))))
                (declare (not safe))
                (_loop246359246387_ _lp-tl246362246400_ __tmp253827))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause246364246403_
                                                         (reverse _clause246363246392_)))
                                                    ((lambda (_L246406_)
                                                       (for-each
                                                        (lambda (_clause246419_)
                                                          (let* ((_g246421246436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g246422246433_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g246422246433_))))
                         (_g246420246478_
                          (lambda (_g246422246439_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g246422246439_))
                                (let ((_e246428246441_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g246422246439_))))
                                  (let ((_hd246427246444_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e246428246441_)))
                                        (_tl246426246446_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e246428246441_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd246427246444_))
                                        (let ((_e246431246449_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd246427246444_))))
                                          (let ((_hd246430246452_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e246431246449_)))
                                                (_tl246429246454_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e246431246449_))))
                                            ((lambda (_L246457_
                                                      _L246458_
                                                      _L246459_)
                                               (for-each
                                                (lambda (_g246473246475_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g246473246475_
                                                     _L246459_
                                                     _method-calls245061_
                                                     _slot-refs245062_
                                                     _class-type-check245063_
                                                     _struct-type-check245064_
                                                     _struct-type-assert245065_)))
                                                _L246457_))
                                             _tl246426246446_
                                             _tl246429246454_
                                             _hd246430246452_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g246421246436_ _g246422246439_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g246421246436_ _g246422246439_))))))
                    (declare (not safe))
                    (_g246420246478_ _clause246419_)))
                (let ((__tmp253826
                       (lambda (_g246480246483_ _g246481246485_)
                         (let ()
                           (declare (not safe))
                           (cons _g246480246483_ _g246481246485_)))))
                  (declare (not safe))
                  (foldr1 __tmp253826 '() _L246406_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause246364246403_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop246359246387_
                                       _target246356246382_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g246350246369_ _g246351246372_))))))
                        (let ()
                          (declare (not safe))
                          (_g246350246369_ _g246351246372_)))))
                (let ()
                  (declare (not safe))
                  (_g246350246369_ _g246351246372_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g246349246488_ _L246253_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?245068_))
                                              _stx244967_
                                              (let* ((_specializer-id246497_
                                                      (let* ((_id246491_
                                                              (let ((__tmp253828
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L245042_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp253828 '"::specialize")))
                     (_specializer-id246494_
                      (let ((__tmp253829
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx244967_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id246491_ __tmp253829))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id246494_))
                _specializer-id246494_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id246504_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?245070_))
                                                          (let* ((_id246499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp253830
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L245042_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp253830
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id246501_
                          (let ((__tmp253831
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx244967_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id246499_ __tmp253831))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id246501_))
                    _lifted-specializer-id246501_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t246506_
                                                      (let ((__tmp253832
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp253832)))
                                                     (_methods246508_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls245061_)))
                                                     (_$methods246512_
                                                      (map (lambda (_id246510_)
                                                             (let ((__tmp253833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id246510_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp253833)))
                   _methods246508_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g253834_
                                                      (for-each
                                                       (lambda (_g246513246516_
                                                                _g246514246518_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls245061_
                                                            _g246513246516_
                                                            _g246514246518_)))
                                                       _methods246508_
                                                       _$methods246512_))
                                                     (_methods-bind246529_
                                                      (map (lambda (_g246521246524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g246522246526_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind244969_
                        _$t246506_
                        _g246521246524_
                        _g246522246526_)))
                   _methods246508_
                   _$methods246512_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots246531_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs245062_)))
                                                     (_$slots246535_
                                                      (map (lambda (_id246533_)
                                                             (let ((__tmp253835
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id246533_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp253835)))
                   _slots246531_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g253836_
                                                      (for-each
                                                       (lambda (_g246536246539_
                                                                _g246537246541_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs245062_
                                                            _g246536246539_
                                                            _g246537246541_)))
                                                       _slots246531_
                                                       _$slots246535_))
                                                     (_slots-bind246552_
                                                      (map (lambda (_g246544246547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g246545246549_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind244970_
                        _$t246506_
                        _g246544246547_
                        _g246545246549_)))
                   _slots246531_
                   _$slots246535_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check246554_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check245063_)))
                                                     (_$class-check246557_
                                                      (map (lambda (_g253837_)
                                                             (let ((__tmp253838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp253838)))
                   _class-check246554_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g253839_
                                                      (for-each
                                                       (lambda (_g246558246561_
                                                                _g246559246563_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check245063_
                                                            _g246558246561_
                                                            _g246559246563_)))
                                                       _class-check246554_
                                                       _$class-check246557_))
                                                     (_class-check-bind246574_
                                                      (map (lambda (_g246566246569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g246567246571_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind244971_
                        _$t246506_
                        _g246566246569_
                        _g246567246571_)))
                   _class-check246554_
                   _$class-check246557_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all246576_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check245064_
                                                         _struct-type-assert245065_)))
                                                     (_struct-check246578_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all246576_)))
                                                     (_$struct-check246581_
                                                      (map (lambda (_g253840_)
                                                             (let ((__tmp253841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp253841)))
                   _struct-check246578_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g253842_
                                                      (for-each
                                                       (lambda (_g246582246585_
                                                                _g246583246587_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all246576_
                                                            _g246582246585_
                                                            _g246583246587_)))
                                                       _struct-check246578_
                                                       _$struct-check246581_))
                                                     (_struct-check-bind246598_
                                                      (map (lambda (_g246590246593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g246591246595_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind244972_
                        _$t246506_
                        _g246590246593_
                        _g246591246595_)))
                   _struct-check246578_
                   _$struct-check246581_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr246697_
                                                      (lambda (_struct-type-check1246600_
                                                               _struct-type-check2246601_)
                                                        (let* ((_g246603246621_
                                                                (lambda (_g246604246618_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g246604246618_))))
                       (_g246602246694_
                        (lambda (_g246604246624_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g246604246624_))
                              (let ((_e246610246626_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g246604246624_))))
                                (let ((_hd246609246629_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e246610246626_)))
                                      (_tl246608246631_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e246610246626_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl246608246631_))
                                      (let ((_e246613246634_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl246608246631_))))
                                        (let ((_hd246612246637_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e246613246634_)))
                                              (_tl246611246639_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e246613246634_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd246612246637_))
                                              (let ((_e246616246642_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd246612246637_))))
                                                (let ((_hd246615246645_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e246616246642_)))
                                                      (_tl246614246647_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e246616246642_))))
                                                  ((lambda (_L246650_
                                                            _L246651_
                                                            _L246652_)
                                                     (let* ((_body246692_
                                                             (map (lambda (_g246687246689_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g246687246689_
                               _L246652_
                               _$t246506_
                               _method-calls245061_
                               _slot-refs245062_
                               _class-type-check245063_
                               _struct-type-check1246600_
                               _struct-type-check2246601_)))
                          _L246650_))
                    (__tmp253843
                     (let ((__tmp253844
                            (let ((__tmp253845
                                   (let ()
                                     (declare (not safe))
                                     (cons _L246652_ _L246651_))))
                              (declare (not safe))
                              (cons __tmp253845 _body246692_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp253844))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp253843 _L246254_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl246611246639_
                                                   _tl246614246647_
                                                   _hd246615246645_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g246603246621_
                                                 _g246604246624_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g246603246621_ _g246604246624_)))))
                              (let ()
                                (declare (not safe))
                                (_g246603246621_ _g246604246624_))))))
                  (declare (not safe))
                  (_g246602246694_ _L246254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr246858_
                                                      (lambda (_struct-type-check1246699_
                                                               _struct-type-check2246700_)
                                                        (let* ((_g246702246721_
                                                                (lambda (_g246703246718_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g246703246718_))))
                       (_g246701246855_
                        (lambda (_g246703246724_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g246703246724_))
                              (let ((_e246707246726_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g246703246724_))))
                                (let ((_hd246706246729_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e246707246726_)))
                                      (_tl246705246731_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e246707246726_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl246705246731_))
                                      (let ((_g253846_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl246705246731_
                                                '0))))
                                        (begin
                                          (let ((_g253847_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g253846_)
                                                       (##vector-length
                                                        _g253846_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g253847_ 2)))
                                                (error "Context expects 2 values"
                                                       _g253847_)))
                                          (let ((_target246708246734_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g253846_ 0)))
                                                (_tl246710246736_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g253846_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl246710246736_))
                                                (letrec ((_loop246711246739_
                                                          (lambda (_hd246709246742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause246715246744_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd246709246742_))
                        (let ((_e246712246747_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd246709246742_))))
                          (let ((_lp-hd246713246750_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e246712246747_)))
                                (_lp-tl246714246752_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e246712246747_))))
                            (let ((__tmp253851
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd246713246750_
                                           _clause246715246744_))))
                              (declare (not safe))
                              (_loop246711246739_
                               _lp-tl246714246752_
                               __tmp253851))))
                        (let ((_clause246716246755_
                               (reverse _clause246715246744_)))
                          ((lambda (_L246758_)
                             (let* ((_clauses246853_
                                     (map (lambda (_clause246773_)
                                            (let* ((___stx252490252491_
                                                    _clause246773_)
                                                   (_g246776246791_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx252490252491_)))))
                                              (let ((___kont252492252493_
                                                     (lambda (_L246819_
                                                              _L246820_
                                                              _L246821_)
                                                       (let* ((_body246841_
                                                               (map (lambda (_g246836246838_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g246836246838_
                                 _L246821_
                                 _$t246506_
                                 _method-calls245061_
                                 _slot-refs245062_
                                 _class-type-check245063_
                                 _struct-type-check1246699_
                                 _struct-type-check2246700_)))
                            _L246819_))
                      (__tmp253848
                       (let ()
                         (declare (not safe))
                         (cons _L246821_ _L246820_))))
                 (declare (not safe))
                 (cons __tmp253848 _body246841_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont252494252495_
                                                     (lambda ()
                                                       _clause246773_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx252490252491_))
                                                    (let ((_e246783246803_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx252490252491_))))
                                                      (let ((_tl246781246808_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e246783246803_)))
                    (_hd246782246806_
                     (let () (declare (not safe)) (##car _e246783246803_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd246782246806_))
                    (let ((_e246786246811_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd246782246806_))))
                      (let ((_tl246784246816_
                             (let ()
                               (declare (not safe))
                               (##cdr _e246786246811_)))
                            (_hd246785246814_
                             (let ()
                               (declare (not safe))
                               (##car _e246786246811_))))
                        (___kont252492252493_
                         _tl246781246808_
                         _tl246784246816_
                         _hd246785246814_)))
                    (___kont252494252495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont252494252495_)))))
                                          (let ((__tmp253849
                                                 (lambda (_g246845246848_
                                                          _g246846246850_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g246845246848_
                                                           _g246846246850_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp253849
                                                    '()
                                                    _L246758_))))
                                    (__tmp253850
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses246853_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp253850 _L246253_)))
                           _clause246716246755_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop246711246739_
                                                     _target246708246734_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g246702246721_
                                                   _g246703246724_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g246702246721_ _g246703246724_)))))
                              (let ()
                                (declare (not safe))
                                (_g246702246721_ _g246703246724_))))))
                  (declare (not safe))
                  (_g246701246855_ _L246253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl246863_
                                                      (lambda (_specializer-lambda-expr246860_
                                                               _specializer-case-lambda-expr246861_)
                                                        (let ((__tmp253852
                                                               (let ((__tmp253853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp253855
                                     (let ((__tmp253856
                                            (let ((__tmp253858
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L246255_ '())))
                                                  (__tmp253857
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr246860_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp253858 __tmp253857))))
                                       (declare (not safe))
                                       (cons __tmp253856 '())))
                                    (__tmp253854
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr246861_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp253855 __tmp253854))))
                         (declare (not safe))
                         (cons '%#let-values __tmp253853))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp253852 _stx244967_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr246865_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr246697_
                                                         _struct-check-all246576_
                                                         _empty245066_)))
                                                     (_specializer-case-lambda-expr246867_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr246858_
                                                         _struct-check-all246576_
                                                         _empty245066_)))
                                                     (_specializer-impl246869_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl246863_
                                                         _specializer-lambda-expr246865_
                                                         _specializer-case-lambda-expr246867_)))
                                                     (_unchecked-specializer-lambda-expr246871_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?245069_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr246697_
                                                             _empty245066_
                                                             _struct-check-all246576_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr246873_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?245069_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr246858_
                                                             _empty245066_
                                                             _struct-check-all246576_))
                                                          '#f))
                                                     (_unchecked-specializer-impl246875_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?245069_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl246863_
                                                             _unchecked-specializer-lambda-expr246871_
                                                             _unchecked-specializer-case-lambda-expr246873_))
                                                          '#f))
                                                     (_specializer-impl246877_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl244973_
                                                         _$t246506_
                                                         _methods-bind246529_
                                                         _slots-bind246552_
                                                         _class-check-bind246574_
                                                         _struct-check-bind246598_
                                                         _specializer-impl246869_
                                                         _lifted-specializer-id246504_
                                                         _unchecked-specializer-impl246875_))))
                                                (let ((__tmp253860
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L245042_)))
                                                      (__tmp253859
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id246497_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp253860
                                                   '" => "
                                                   __tmp253859))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def244974_
                                                   _L245042_
                                                   _specializer-id246497_
                                                   _specializer-impl246877_
                                                   _lifted-specializer-id246504_
                                                   _unchecked-specializer-impl246875_)))))
                                        _hd246186246248_
                                        _hd246183246240_
                                        _hd246180246232_)
                                       (let ()
                                         (declare (not safe))
                                         (_g246162246192_ _g246163246195_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g246162246192_ _g246163246195_)))
                           (let ()
                             (declare (not safe))
                             (_g246162246192_ _g246163246195_)))
                       (let ()
                         (declare (not safe))
                         (_g246162246192_ _g246163246195_)))))
               (let () (declare (not safe)) (_g246162246192_ _g246163246195_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g246162246192_
                                                      _g246163246195_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g246162246192_
                                              _g246163246195_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g246162246192_ _g246163246195_)))))
                           (let ()
                             (declare (not safe))
                             (_g246162246192_ _g246163246195_)))))
                   (let ()
                     (declare (not safe))
                     (_g246162246192_ _g246163246195_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g246162246192_
                                                      _g246163246195_))))))
                                       (declare (not safe))
                                       (_g246161246880_ _L245041_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L245041_))
                                         (let* ((_g246883246936_
                                                 (lambda (_g246884246933_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g246884246933_))))
                                                (_g246882248208_
                                                 (lambda (_g246884246939_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g246884246939_))
                                                       (let ((_e246892246941_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g246884246939_))))
                 (let ((_hd246891246944_
                        (let () (declare (not safe)) (##car _e246892246941_)))
                       (_tl246890246946_
                        (let () (declare (not safe)) (##cdr _e246892246941_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd246891246944_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd246891246944_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl246890246946_))
                               (let ((_e246895246949_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl246890246946_))))
                                 (let ((_hd246894246952_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e246895246949_)))
                                       (_tl246893246954_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e246895246949_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd246894246952_))
                                       (let ((_e246898246957_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd246894246952_))))
                                         (let ((_hd246897246960_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e246898246957_)))
                                               (_tl246896246962_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e246898246957_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd246897246960_))
                                               (let ((_e246901246965_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd246897246960_))))
                                                 (let ((_hd246900246968_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e246901246965_)))
                                                       (_tl246899246970_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e246901246965_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd246900246968_))
                                                       (let ((_e246904246973_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd246900246968_))))
                 (let ((_hd246903246976_
                        (let () (declare (not safe)) (##car _e246904246973_)))
                       (_tl246902246978_
                        (let () (declare (not safe)) (##cdr _e246904246973_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl246902246978_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl246899246970_))
                           (let ((_e246907246981_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl246899246970_))))
                             (let ((_hd246906246984_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e246907246981_)))
                                   (_tl246905246986_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e246907246981_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd246906246984_))
                                   (let ((_e246910246989_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd246906246984_))))
                                     (let ((_hd246909246992_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e246910246989_)))
                                           (_tl246908246994_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e246910246989_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd246909246992_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd246909246992_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl246908246994_))
                                                   (let ((_e246913246997_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl246908246994_))))
                                                     (let ((_hd246912247000_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e246913246997_)))
                                                           (_tl246911247002_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e246913246997_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd246912247000_))
                                                           (let ((_e246916247005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd246912247000_))))
                     (let ((_hd246915247008_
                            (let ()
                              (declare (not safe))
                              (##car _e246916247005_)))
                           (_tl246914247010_
                            (let ()
                              (declare (not safe))
                              (##cdr _e246916247005_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd246915247008_))
                           (let ((_e246919247013_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd246915247008_))))
                             (let ((_hd246918247016_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e246919247013_)))
                                   (_tl246917247018_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e246919247013_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd246918247016_))
                                   (let ((_e246922247021_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd246918247016_))))
                                     (let ((_hd246921247024_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e246922247021_)))
                                           (_tl246920247026_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e246922247021_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl246920247026_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl246917247018_))
                                               (let ((_e246925247029_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl246917247018_))))
                                                 (let ((_hd246924247032_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e246925247029_)))
                                                       (_tl246923247034_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e246925247029_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl246923247034_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl246914247010_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl246911247002_))
                       (let ((_e246928247037_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl246911247002_))))
                         (let ((_hd246927247040_
                                (let ()
                                  (declare (not safe))
                                  (##car _e246928247037_)))
                               (_tl246926247042_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e246928247037_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl246926247042_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl246905246986_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl246896246962_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl246893246954_))
                                           (let ((_e246931247045_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl246893246954_))))
                                             (let ((_hd246930247048_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e246931247045_)))
                                                   (_tl246929247050_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e246931247045_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl246929247050_))
                                                   ((lambda (_L247053_
                                                             _L247054_
                                                             _L247055_
                                                             _L247056_
                                                             _L247057_)
                                                      (let* ((_g247096247158_
                                                              (lambda (_g247097247155_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g247097247155_))))
                     (_g247095248205_
                      (lambda (_g247097247161_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g247097247161_))
                            (let ((_e247105247163_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g247097247161_))))
                              (let ((_hd247104247166_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e247105247163_)))
                                    (_tl247103247168_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e247105247163_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd247104247166_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd247104247166_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl247103247168_))
                                            (let ((_e247108247171_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl247103247168_))))
                                              (let ((_hd247107247174_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e247108247171_)))
                                                    (_tl247106247176_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e247108247171_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl247106247176_))
                                                    (let ((_e247111247179_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl247106247176_))))
                                                      (let ((_hd247110247182_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e247111247179_)))
                    (_tl247109247184_
                     (let () (declare (not safe)) (##cdr _e247111247179_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd247110247182_))
                    (let ((_e247114247187_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd247110247182_))))
                      (let ((_hd247113247190_
                             (let ()
                               (declare (not safe))
                               (##car _e247114247187_)))
                            (_tl247112247192_
                             (let ()
                               (declare (not safe))
                               (##cdr _e247114247187_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd247113247190_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd247113247190_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl247112247192_))
                                    (let ((_e247117247195_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl247112247192_))))
                                      (let ((_hd247116247198_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e247117247195_)))
                                            (_tl247115247200_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e247117247195_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd247116247198_))
                                            (let ((_e247120247203_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd247116247198_))))
                                              (let ((_hd247119247206_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e247120247203_)))
                                                    (_tl247118247208_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e247120247203_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd247119247206_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd247119247206_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl247118247208_))
                                                            (let ((_e247123247211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl247118247208_))))
                      (let ((_hd247122247214_
                             (let ()
                               (declare (not safe))
                               (##car _e247123247211_)))
                            (_tl247121247216_
                             (let ()
                               (declare (not safe))
                               (##cdr _e247123247211_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl247121247216_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl247115247200_))
                                (let ((_e247126247219_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl247115247200_))))
                                  (let ((_hd247125247222_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e247126247219_)))
                                        (_tl247124247224_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e247126247219_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd247125247222_))
                                        (let ((_e247129247227_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd247125247222_))))
                                          (let ((_hd247128247230_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e247129247227_)))
                                                (_tl247127247232_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e247129247227_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd247128247230_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd247128247230_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl247127247232_))
                                                        (let ((_e247132247235_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl247127247232_))))
                  (let ((_hd247131247238_
                         (let () (declare (not safe)) (##car _e247132247235_)))
                        (_tl247130247240_
                         (let ()
                           (declare (not safe))
                           (##cdr _e247132247235_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl247130247240_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl247124247224_))
                            (let ((_e247135247243_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl247124247224_))))
                              (let ((_hd247134247246_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e247135247243_)))
                                    (_tl247133247248_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e247135247243_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd247134247246_))
                                    (let ((_e247138247251_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd247134247246_))))
                                      (let ((_hd247137247254_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e247138247251_)))
                                            (_tl247136247256_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e247138247251_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd247137247254_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd247137247254_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl247136247256_))
                                                    (let ((_e247141247259_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl247136247256_))))
                                                      (let ((_hd247140247262_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e247141247259_)))
                    (_tl247139247264_
                     (let () (declare (not safe)) (##cdr _e247141247259_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl247139247264_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl247133247248_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl247133247248_))
                                  '1)
                            (let ((_g253736_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl247133247248_
                                      '1))))
                              (begin
                                (let ((_g253737_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g253736_)
                                             (##vector-length _g253736_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g253737_ 2)))
                                      (error "Context expects 2 values"
                                             _g253737_)))
                                (let ((_target247142247267_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g253736_ 0)))
                                      (_tl247144247269_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g253736_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl247144247269_))
                                      (let ((_e247153247272_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl247144247269_))))
                                        (let ((_hd247152247275_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e247153247272_)))
                                              (_tl247151247277_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e247153247272_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl247151247277_))
                                              (letrec ((_loop247145247280_
                                                        (lambda (_hd247143247283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref247149247285_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd247143247283_))
                      (let ((_e247146247288_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd247143247283_))))
                        (let ((_lp-hd247147247291_
                               (let ()
                                 (declare (not safe))
                                 (##car _e247146247288_)))
                              (_lp-tl247148247293_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e247146247288_))))
                          (let ((__tmp253823
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd247147247291_
                                         _kw-ref247149247285_))))
                            (declare (not safe))
                            (_loop247145247280_
                             _lp-tl247148247293_
                             __tmp253823))))
                      (let ((_kw-ref247150247296_
                             (reverse _kw-ref247149247285_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl247109247184_))
                            ((lambda (_L247299_
                                      _L247300_
                                      _L247301_
                                      _L247302_
                                      _L247303_)
                               (let* ((_kw-count247354_
                                       (length (let ((__tmp253738
                                                      (lambda (_g247346247349_
                                                               _g247347247351_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g247346247349_
                                                                _g247347247351_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp253738
                                                         '()
                                                         _L247300_))))
                                      (_self-index247356_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count247354_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L247055_))
                                     (let* ((_g247359247373_
                                             (lambda (_g247360247370_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g247360247370_))))
                                            (_g247358247544_
                                             (lambda (_g247360247376_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g247360247376_))
                                                   (let ((_e247365247378_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g247360247376_))))
                                                     (let ((_hd247364247381_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e247365247378_)))
                                                           (_tl247363247383_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e247365247378_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl247363247383_))
                                                           (let ((_e247368247386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl247363247383_))))
                     (let ((_hd247367247389_
                            (let ()
                              (declare (not safe))
                              (##car _e247368247386_)))
                           (_tl247366247391_
                            (let ()
                              (declare (not safe))
                              (##cdr _e247368247386_))))
                       ((lambda (_L247394_ _L247395_)
                          (let ((_self247411_
                                 (list-ref _L247395_ _self-index247356_)))
                            (for-each
                             (lambda (_g247412247414_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g247412247414_
                                  _self247411_
                                  _method-calls245061_
                                  _slot-refs245062_
                                  _class-type-check245063_
                                  _struct-type-check245064_
                                  _struct-type-assert245065_)))
                             _L247394_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?245068_))
                                _stx244967_
                                (let* ((_specializer-id247423_
                                        (let* ((_id247417_
                                                (let ((__tmp253789
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L245042_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp253789
                                                   '"::specialize")))
                                               (_specializer-id247420_
                                                (let ((__tmp253790
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx244967_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id247417_
                                                   __tmp253790))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id247420_))
                                          _specializer-id247420_))
                                       (_lifted-specializer-id247430_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?245070_))
                                            (let* ((_id247425_
                                                    (let ((__tmp253791
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L245042_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp253791
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id247427_
                                                    (let ((__tmp253792
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx244967_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id247425_
                                                       __tmp253792))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id247427_))
                                              _lifted-specializer-id247427_)
                                            '#f))
                                       (_$t247432_
                                        (let ((__tmp253793 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp253793)))
                                       (_methods247434_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls245061_)))
                                       (_$methods247438_
                                        (map (lambda (_id247436_)
                                               (let ((__tmp253794
                                                      (gensym _id247436_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp253794)))
                                             _methods247434_))
                                       (_g253795_
                                        (for-each
                                         (lambda (_g247439247442_
                                                  _g247440247444_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls245061_
                                              _g247439247442_
                                              _g247440247444_)))
                                         _methods247434_
                                         _$methods247438_))
                                       (_methods-bind247455_
                                        (map (lambda (_g247447247450_
                                                      _g247448247452_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind244969_
                                                  _$t247432_
                                                  _g247447247450_
                                                  _g247448247452_)))
                                             _methods247434_
                                             _$methods247438_))
                                       (_slots247457_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs245062_)))
                                       (_$slots247461_
                                        (map (lambda (_id247459_)
                                               (let ((__tmp253796
                                                      (gensym _id247459_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp253796)))
                                             _slots247457_))
                                       (_g253797_
                                        (for-each
                                         (lambda (_g247462247465_
                                                  _g247463247467_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs245062_
                                              _g247462247465_
                                              _g247463247467_)))
                                         _slots247457_
                                         _$slots247461_))
                                       (_slots-bind247478_
                                        (map (lambda (_g247470247473_
                                                      _g247471247475_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind244970_
                                                  _$t247432_
                                                  _g247470247473_
                                                  _g247471247475_)))
                                             _slots247457_
                                             _$slots247461_))
                                       (_class-check247480_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check245063_)))
                                       (_$class-check247483_
                                        (map (lambda (_g253798_)
                                               (let ((__tmp253799
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp253799)))
                                             _class-check247480_))
                                       (_g253800_
                                        (for-each
                                         (lambda (_g247484247487_
                                                  _g247485247489_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check245063_
                                              _g247484247487_
                                              _g247485247489_)))
                                         _class-check247480_
                                         _$class-check247483_))
                                       (_class-check-bind247500_
                                        (map (lambda (_g247492247495_
                                                      _g247493247497_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind244971_
                                                  _$t247432_
                                                  _g247492247495_
                                                  _g247493247497_)))
                                             _class-check247480_
                                             _$class-check247483_))
                                       (_struct-check-all247502_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check245064_
                                           _struct-type-assert245065_)))
                                       (_struct-check247504_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all247502_)))
                                       (_$struct-check247507_
                                        (map (lambda (_g253801_)
                                               (let ((__tmp253802
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp253802)))
                                             _struct-check247504_))
                                       (_g253803_
                                        (for-each
                                         (lambda (_g247508247511_
                                                  _g247509247513_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all247502_
                                              _g247508247511_
                                              _g247509247513_)))
                                         _struct-check247504_
                                         _$struct-check247507_))
                                       (_struct-check-bind247524_
                                        (map (lambda (_g247516247519_
                                                      _g247517247521_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind244972_
                                                  _$t247432_
                                                  _g247516247519_
                                                  _g247517247521_)))
                                             _struct-check247504_
                                             _$struct-check247507_))
                                       (_make-specializer-impl247535_
                                        (lambda (_struct-type-check1247526_
                                                 _struct-type-check2247527_)
                                          (let* ((_specializer-body247533_
                                                  (map (lambda (_g247528247530_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g247528247530_
                                                            _self247411_
                                                            _$t247432_
                                                            _method-calls245061_
                                                            _slot-refs245062_
                                                            _class-type-check245063_
                                                            _struct-type-check1247526_
                                                            _struct-type-check2247527_)))
                                                       _L247394_))
                                                 (__tmp253804
                                                  (let ((__tmp253805
                                                         (let ((__tmp253807
                                                                (let ((__tmp253808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp253820
                                      (let ()
                                        (declare (not safe))
                                        (cons _L247057_ '())))
                                     (__tmp253809
                                      (let ((__tmp253810
                                             (let ((__tmp253811
                                                    (let ((__tmp253813
                                                           (let ((__tmp253814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp253819
                                 (let ()
                                   (declare (not safe))
                                   (cons _L247056_ '())))
                                (__tmp253815
                                 (let ((__tmp253816
                                        (let ((__tmp253817
                                               (let ((__tmp253818
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L247395_
                                                              _specializer-body247533_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp253818))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp253817
                                           _L247055_))))
                                   (declare (not safe))
                                   (cons __tmp253816 '()))))
                            (declare (not safe))
                            (cons __tmp253819 __tmp253815))))
                     (declare (not safe))
                     (cons __tmp253814 '())))
                  (__tmp253812
                   (let () (declare (not safe)) (cons _L247054_ '()))))
              (declare (not safe))
              (cons __tmp253813 __tmp253812))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp253811))))
                                        (declare (not safe))
                                        (cons __tmp253810 '()))))
                                 (declare (not safe))
                                 (cons __tmp253820 __tmp253809))))
                          (declare (not safe))
                          (cons __tmp253808 '())))
                       (__tmp253806
                        (let () (declare (not safe)) (cons _L247053_ '()))))
                   (declare (not safe))
                   (cons __tmp253807 __tmp253806))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp253805))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp253804
                                             _stx244967_))))
                                       (_specializer-impl247537_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl247535_
                                           _struct-check-all247502_
                                           _empty245066_)))
                                       (_unchecked-specializer-impl247539_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?245069_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl247535_
                                               _empty245066_
                                               _struct-check-all247502_))
                                            '#f))
                                       (_specializer-impl247541_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl244973_
                                           _$t247432_
                                           _methods-bind247455_
                                           _slots-bind247478_
                                           _class-check-bind247500_
                                           _struct-check-bind247524_
                                           _specializer-impl247537_
                                           _lifted-specializer-id247430_
                                           _unchecked-specializer-impl247539_))))
                                  (let ((__tmp253822
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L245042_)))
                                        (__tmp253821
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id247423_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp253822
                                     '" => "
                                     __tmp253821))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def244974_
                                     _L245042_
                                     _specializer-id247423_
                                     _specializer-impl247541_
                                     _lifted-specializer-id247430_
                                     _unchecked-specializer-impl247539_))))))
                        _tl247366247391_
                        _hd247367247389_)))
                   (let ()
                     (declare (not safe))
                     (_g247359247373_ _g247360247376_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g247359247373_
                                                      _g247360247376_))))))
                                       (declare (not safe))
                                       (_g247358247544_ _L247055_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L247055_))
                                         (let* ((_g247547247577_
                                                 (lambda (_g247548247574_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g247548247574_))))
                                                (_g247546248202_
                                                 (lambda (_g247548247580_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g247548247580_))
                                                       (let ((_e247554247582_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g247548247580_))))
                 (let ((_hd247553247585_
                        (let () (declare (not safe)) (##car _e247554247582_)))
                       (_tl247552247587_
                        (let () (declare (not safe)) (##cdr _e247554247582_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl247552247587_))
                       (let ((_e247557247590_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl247552247587_))))
                         (let ((_hd247556247593_
                                (let ()
                                  (declare (not safe))
                                  (##car _e247557247590_)))
                               (_tl247555247595_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e247557247590_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd247556247593_))
                               (let ((_e247560247598_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd247556247593_))))
                                 (let ((_hd247559247601_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e247560247598_)))
                                       (_tl247558247603_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e247560247598_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd247559247601_))
                                       (let ((_e247563247606_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd247559247601_))))
                                         (let ((_hd247562247609_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e247563247606_)))
                                               (_tl247561247611_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e247563247606_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd247562247609_))
                                               (let ((_e247566247614_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd247562247609_))))
                                                 (let ((_hd247565247617_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e247566247614_)))
                                                       (_tl247564247619_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e247566247614_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl247564247619_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl247561247611_))
                                                           (let ((_e247569247622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl247561247611_))))
                     (let ((_hd247568247625_
                            (let ()
                              (declare (not safe))
                              (##car _e247569247622_)))
                           (_tl247567247627_
                            (let ()
                              (declare (not safe))
                              (##cdr _e247569247622_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl247567247627_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl247558247603_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl247555247595_))
                                   (let ((_e247572247630_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl247555247595_))))
                                     (let ((_hd247571247633_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e247572247630_)))
                                           (_tl247570247635_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e247572247630_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl247570247635_))
                                           ((lambda (_L247638_
                                                     _L247639_
                                                     _L247640_)
                                              (let* ((_g247663247677_
                                                      (lambda (_g247664247674_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g247664247674_))))
                                                     (_g247662247718_
                                                      (lambda (_g247664247680_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g247664247680_))
                                                            (let ((_e247669247682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g247664247680_))))
                      (let ((_hd247668247685_
                             (let ()
                               (declare (not safe))
                               (##car _e247669247682_)))
                            (_tl247667247687_
                             (let ()
                               (declare (not safe))
                               (##cdr _e247669247682_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl247667247687_))
                            (let ((_e247672247690_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl247667247687_))))
                              (let ((_hd247671247693_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e247672247690_)))
                                    (_tl247670247695_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e247672247690_))))
                                ((lambda (_L247698_ _L247699_)
                                   (let ((_self247712_
                                          (list-ref
                                           _L247699_
                                           _self-index247356_)))
                                     (for-each
                                      (lambda (_g247713247715_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g247713247715_
                                           _self247712_
                                           _method-calls245061_
                                           _slot-refs245062_
                                           _class-type-check245063_
                                           _struct-type-check245064_
                                           _struct-type-assert245065_)))
                                      _L247698_)))
                                 _tl247670247695_
                                 _hd247671247693_)))
                            (let ()
                              (declare (not safe))
                              (_g247663247677_ _g247664247680_)))))
                    (let ()
                      (declare (not safe))
                      (_g247663247677_ _g247664247680_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g247662247718_ _L247639_))
                                              (let* ((_g247721247740_
                                                      (lambda (_g247722247737_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g247722247737_))))
                                                     (_g247720247845_
                                                      (lambda (_g247722247743_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g247722247743_))
                                                            (let ((_e247726247745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g247722247743_))))
                      (let ((_hd247725247748_
                             (let ()
                               (declare (not safe))
                               (##car _e247726247745_)))
                            (_tl247724247750_
                             (let ()
                               (declare (not safe))
                               (##cdr _e247726247745_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl247724247750_))
                            (let ((_g253739_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl247724247750_
                                      '0))))
                              (begin
                                (let ((_g253740_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g253739_)
                                             (##vector-length _g253739_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g253740_ 2)))
                                      (error "Context expects 2 values"
                                             _g253740_)))
                                (let ((_target247727247753_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g253739_ 0)))
                                      (_tl247729247755_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g253739_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl247729247755_))
                                      (letrec ((_loop247730247758_
                                                (lambda (_hd247728247761_
                                                         _clause247734247763_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd247728247761_))
                                                      (let ((_e247731247766_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd247728247761_))))
                (let ((_lp-hd247732247769_
                       (let () (declare (not safe)) (##car _e247731247766_)))
                      (_lp-tl247733247771_
                       (let () (declare (not safe)) (##cdr _e247731247766_))))
                  (let ((__tmp253742
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd247732247769_ _clause247734247763_))))
                    (declare (not safe))
                    (_loop247730247758_ _lp-tl247733247771_ __tmp253742))))
              (let ((_clause247735247774_ (reverse _clause247734247763_)))
                ((lambda (_L247777_)
                   (for-each
                    (lambda (_clause247790_)
                      (let* ((_g247792247803_
                              (lambda (_g247793247800_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g247793247800_))))
                             (_g247791247835_
                              (lambda (_g247793247806_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g247793247806_))
                                    (let ((_e247798247808_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g247793247806_))))
                                      (let ((_hd247797247811_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e247798247808_)))
                                            (_tl247796247813_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e247798247808_))))
                                        ((lambda (_L247816_ _L247817_)
                                           (let ((_self247829_
                                                  (list-ref
                                                   _L247817_
                                                   _self-index247356_)))
                                             (for-each
                                              (lambda (_g247830247832_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g247830247832_
                                                   _self247829_
                                                   _method-calls245061_
                                                   _slot-refs245062_
                                                   _class-type-check245063_
                                                   _struct-type-check245064_
                                                   _struct-type-assert245065_)))
                                              _L247816_)))
                                         _tl247796247813_
                                         _hd247797247811_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g247792247803_ _g247793247806_))))))
                        (declare (not safe))
                        (_g247791247835_ _clause247790_)))
                    (let ((__tmp253741
                           (lambda (_g247837247840_ _g247838247842_)
                             (let ()
                               (declare (not safe))
                               (cons _g247837247840_ _g247838247842_)))))
                      (declare (not safe))
                      (foldr1 __tmp253741 '() _L247777_))))
                 _clause247735247774_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop247730247758_
                                           _target247727247753_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g247721247740_ _g247722247743_))))))
                            (let ()
                              (declare (not safe))
                              (_g247721247740_ _g247722247743_)))))
                    (let ()
                      (declare (not safe))
                      (_g247721247740_ _g247722247743_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g247720247845_ _L247638_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?245068_))
                                                  _stx244967_
                                                  (let* ((_specializer-id247854_
                                                          (let* ((_id247848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp253743
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L245042_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp253743 '"::specialize")))
                         (_specializer-id247851_
                          (let ((__tmp253744
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx244967_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id247848_ __tmp253744))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id247851_))
                    _specializer-id247851_))
                 (_lifted-specializer-id247861_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?245070_))
                      (let* ((_id247856_
                              (let ((__tmp253745
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L245042_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp253745
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id247858_
                              (let ((__tmp253746
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx244967_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id247856_
                                 __tmp253746))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id247858_))
                        _lifted-specializer-id247858_)
                      '#f))
                 (_$t247863_
                  (let ((__tmp253747 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp253747)))
                 (_methods247865_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls245061_)))
                 (_$methods247869_
                  (map (lambda (_id247867_)
                         (let ((__tmp253748 (gensym _id247867_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp253748)))
                       _methods247865_))
                 (_g253749_
                  (for-each
                   (lambda (_g247870247873_ _g247871247875_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls245061_
                        _g247870247873_
                        _g247871247875_)))
                   _methods247865_
                   _$methods247869_))
                 (_methods-bind247886_
                  (map (lambda (_g247878247881_ _g247879247883_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind244969_
                            _$t247863_
                            _g247878247881_
                            _g247879247883_)))
                       _methods247865_
                       _$methods247869_))
                 (_slots247888_
                  (let () (declare (not safe)) (hash-keys _slot-refs245062_)))
                 (_$slots247892_
                  (map (lambda (_id247890_)
                         (let ((__tmp253750 (gensym _id247890_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp253750)))
                       _slots247888_))
                 (_g253751_
                  (for-each
                   (lambda (_g247893247896_ _g247894247898_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs245062_
                        _g247893247896_
                        _g247894247898_)))
                   _slots247888_
                   _$slots247892_))
                 (_slots-bind247909_
                  (map (lambda (_g247901247904_ _g247902247906_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind244970_
                            _$t247863_
                            _g247901247904_
                            _g247902247906_)))
                       _slots247888_
                       _$slots247892_))
                 (_class-check247911_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check245063_)))
                 (_$class-check247914_
                  (map (lambda (_g253752_)
                         (let ((__tmp253753 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp253753)))
                       _class-check247911_))
                 (_g253754_
                  (for-each
                   (lambda (_g247915247918_ _g247916247920_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check245063_
                        _g247915247918_
                        _g247916247920_)))
                   _class-check247911_
                   _$class-check247914_))
                 (_class-check-bind247931_
                  (map (lambda (_g247923247926_ _g247924247928_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind244971_
                            _$t247863_
                            _g247923247926_
                            _g247924247928_)))
                       _class-check247911_
                       _$class-check247914_))
                 (_struct-check-all247933_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check245064_
                     _struct-type-assert245065_)))
                 (_struct-check247935_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all247933_)))
                 (_$struct-check247938_
                  (map (lambda (_g253755_)
                         (let ((__tmp253756 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp253756)))
                       _struct-check247935_))
                 (_g253757_
                  (for-each
                   (lambda (_g247939247942_ _g247940247944_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all247933_
                        _g247939247942_
                        _g247940247944_)))
                   _struct-check247935_
                   _$struct-check247938_))
                 (_struct-check-bind247955_
                  (map (lambda (_g247947247950_ _g247948247952_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind244972_
                            _$t247863_
                            _g247947247950_
                            _g247948247952_)))
                       _struct-check247935_
                       _$struct-check247938_))
                 (_make-specializer-lambda-expr248041_
                  (lambda (_struct-type-check1247957_
                           _struct-type-check2247958_)
                    (let* ((_g247960247974_
                            (lambda (_g247961247971_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g247961247971_))))
                           (_g247959248038_
                            (lambda (_g247961247977_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g247961247977_))
                                  (let ((_e247966247979_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g247961247977_))))
                                    (let ((_hd247965247982_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e247966247979_)))
                                          (_tl247964247984_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e247966247979_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl247964247984_))
                                          (let ((_e247969247987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl247964247984_))))
                                            (let ((_hd247968247990_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e247969247987_)))
                                                  (_tl247967247992_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e247969247987_))))
                                              ((lambda (_L247995_ _L247996_)
                                                 (let* ((_self248029_
                                                         (list-ref
                                                          _L247996_
                                                          _self-index247356_))
                                                        (_body248035_
                                                         (map (lambda (_g248030248032_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g248030248032_
                           _self248029_
                           _$t247863_
                           _method-calls245061_
                           _slot-refs245062_
                           _class-type-check245063_
                           _struct-type-check1247957_
                           _struct-type-check2247958_)))
                      _L247995_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp253758
                                                          (let ((__tmp253759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L247996_ _body248035_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp253759))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp253758
                                                      _L247639_))))
                                               _tl247967247992_
                                               _hd247968247990_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g247960247974_
                                             _g247961247977_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g247960247974_ _g247961247977_))))))
                      (declare (not safe))
                      (_g247959248038_ _L247639_))))
                 (_make-specializer-case-lambda-expr248180_
                  (lambda (_struct-type-check1248043_
                           _struct-type-check2248044_)
                    (let* ((_g248046248065_
                            (lambda (_g248047248062_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g248047248062_))))
                           (_g248045248177_
                            (lambda (_g248047248068_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g248047248068_))
                                  (let ((_e248051248070_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g248047248068_))))
                                    (let ((_hd248050248073_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e248051248070_)))
                                          (_tl248049248075_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e248051248070_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl248049248075_))
                                          (let ((_g253760_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl248049248075_
                                                    '0))))
                                            (begin
                                              (let ((_g253761_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g253760_)
                                                           (##vector-length
                                                            _g253760_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g253761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g253761_)))
                                              (let ((_target248052248078_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g253760_
                                                        0)))
                                                    (_tl248054248080_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g253760_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl248054248080_))
                                                    (letrec ((_loop248055248083_
                                                              (lambda (_hd248053248086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause248059248088_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd248053248086_))
                            (let ((_e248056248091_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd248053248086_))))
                              (let ((_lp-hd248057248094_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e248056248091_)))
                                    (_lp-tl248058248096_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e248056248091_))))
                                (let ((__tmp253764
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd248057248094_
                                               _clause248059248088_))))
                                  (declare (not safe))
                                  (_loop248055248083_
                                   _lp-tl248058248096_
                                   __tmp253764))))
                            (let ((_clause248060248099_
                                   (reverse _clause248059248088_)))
                              ((lambda (_L248102_)
                                 (let* ((_clauses248175_
                                         (map (lambda (_clause248117_)
                                                (let* ((_g248119248130_
                                                        (lambda (_g248120248127_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g248120248127_))))
                                                       (_g248118248165_
                                                        (lambda (_g248120248133_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g248120248133_))
                      (let ((_e248125248135_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g248120248133_))))
                        (let ((_hd248124248138_
                               (let ()
                                 (declare (not safe))
                                 (##car _e248125248135_)))
                              (_tl248123248140_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e248125248135_))))
                          ((lambda (_L248143_ _L248144_)
                             (let* ((_self248156_
                                     (list-ref _L248144_ _self-index247356_))
                                    (_body248162_
                                     (map (lambda (_g248157248159_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g248157248159_
                                               _self248156_
                                               _$t247863_
                                               _method-calls245061_
                                               _slot-refs245062_
                                               _class-type-check245063_
                                               _struct-type-check1248043_
                                               _struct-type-check2248044_)))
                                          _L248143_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L248144_ _body248162_))))
                           _tl248123248140_
                           _hd248124248138_)))
                      (let ()
                        (declare (not safe))
                        (_g248119248130_ _g248120248133_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g248118248165_
                                                   _clause248117_)))
                                              (let ((__tmp253762
                                                     (lambda (_g248167248170_
                                                              _g248168248172_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g248167248170_
                                                               _g248168248172_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp253762
                                                        '()
                                                        _L248102_))))
                                        (__tmp253763
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses248175_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp253763
                                    _L247638_)))
                               _clause248060248099_))))))
              (let ()
                (declare (not safe))
                (_loop248055248083_ _target248052248078_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g248046248065_
                                                       _g248047248068_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g248046248065_
                                             _g248047248068_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g248046248065_ _g248047248068_))))))
                      (declare (not safe))
                      (_g248045248177_ _L247638_))))
                 (_make-specializer-impl248185_
                  (lambda (_specializer-lambda-expr248182_
                           _specializer-case-lambda-expr248183_)
                    (let ((__tmp253765
                           (let ((__tmp253766
                                  (let ((__tmp253768
                                         (let ((__tmp253769
                                                (let ((__tmp253786
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L247057_ '())))
                                                      (__tmp253770
                                                       (let ((__tmp253771
                                                              (let ((__tmp253772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp253774
                                    (let ((__tmp253775
                                           (let ((__tmp253785
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L247056_ '())))
                                                 (__tmp253776
                                                  (let ((__tmp253777
                                                         (let ((__tmp253778
                                                                (let ((__tmp253779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp253781
                                      (let ((__tmp253782
                                             (let ((__tmp253784
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L247640_ '())))
                                                   (__tmp253783
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr248182_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp253784
                                                     __tmp253783))))
                                        (declare (not safe))
                                        (cons __tmp253782 '())))
                                     (__tmp253780
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr248183_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp253781 __tmp253780))))
                          (declare (not safe))
                          (cons '%#let-values __tmp253779))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp253778 _stx244967_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp253777 '()))))
                                             (declare (not safe))
                                             (cons __tmp253785 __tmp253776))))
                                      (declare (not safe))
                                      (cons __tmp253775 '())))
                                   (__tmp253773
                                    (let ()
                                      (declare (not safe))
                                      (cons _L247054_ '()))))
                               (declare (not safe))
                               (cons __tmp253774 __tmp253773))))
                        (declare (not safe))
                        (cons '%#let-values __tmp253772))))
                 (declare (not safe))
                 (cons __tmp253771 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp253786
                                                        __tmp253770))))
                                           (declare (not safe))
                                           (cons __tmp253769 '())))
                                        (__tmp253767
                                         (let ()
                                           (declare (not safe))
                                           (cons _L247053_ '()))))
                                    (declare (not safe))
                                    (cons __tmp253768 __tmp253767))))
                             (declare (not safe))
                             (cons '%#let-values __tmp253766))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp253765 _stx244967_))))
                 (_specializer-lambda-expr248187_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr248041_
                     _struct-check-all247933_
                     _empty245066_)))
                 (_specializer-case-lambda-expr248189_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr248180_
                     _struct-check-all247933_
                     _empty245066_)))
                 (_specializer-impl248191_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl248185_
                     _specializer-lambda-expr248187_
                     _specializer-case-lambda-expr248189_)))
                 (_unchecked-specializer-lambda-expr248193_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?245069_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr248041_
                         _empty245066_
                         _struct-check-all247933_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr248195_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?245069_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr248180_
                         _empty245066_
                         _struct-check-all247933_))
                      '#f))
                 (_unchecked-specializer-impl248197_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?245069_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl248185_
                         _unchecked-specializer-lambda-expr248193_
                         _unchecked-specializer-case-lambda-expr248195_))
                      '#f))
                 (_specializer-impl248199_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl244973_
                     _$t247863_
                     _methods-bind247886_
                     _slots-bind247909_
                     _class-check-bind247931_
                     _struct-check-bind247955_
                     _specializer-impl248191_
                     _lifted-specializer-id247861_
                     _unchecked-specializer-impl248197_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp253788
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L245042_)))
                                                          (__tmp253787
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id247854_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp253788
                                                       '" => "
                                                       __tmp253787))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def244974_
                                                       _L245042_
                                                       _specializer-id247854_
                                                       _specializer-impl248199_
                                                       _lifted-specializer-id247861_
                                                       _unchecked-specializer-impl248197_)))))
                                            _hd247571247633_
                                            _hd247568247625_
                                            _hd247565247617_)
                                           (let ()
                                             (declare (not safe))
                                             (_g247547247577_
                                              _g247548247580_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g247547247577_ _g247548247580_)))
                               (let ()
                                 (declare (not safe))
                                 (_g247547247577_ _g247548247580_)))
                           (let ()
                             (declare (not safe))
                             (_g247547247577_ _g247548247580_)))))
                   (let ()
                     (declare (not safe))
                     (_g247547247577_ _g247548247580_)))
               (let ()
                 (declare (not safe))
                 (_g247547247577_ _g247548247580_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g247547247577_
                                                  _g247548247580_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g247547247577_ _g247548247580_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g247547247577_ _g247548247580_)))))
                       (let ()
                         (declare (not safe))
                         (_g247547247577_ _g247548247580_)))))
               (let ()
                 (declare (not safe))
                 (_g247547247577_ _g247548247580_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g247546248202_ _L247055_))
                                         _stx244967_))))
                             _hd247152247275_
                             _kw-ref247150247296_
                             _hd247140247262_
                             _hd247131247238_
                             _hd247122247214_)
                            (let ()
                              (declare (not safe))
                              (_g247096247158_ _g247097247161_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop247145247280_
                                                   _target247142247267_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g247096247158_
                                                 _g247097247161_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g247096247158_ _g247097247161_))))))
                            (let ()
                              (declare (not safe))
                              (_g247096247158_ _g247097247161_)))
                        (let ()
                          (declare (not safe))
                          (_g247096247158_ _g247097247161_)))
                    (let ()
                      (declare (not safe))
                      (_g247096247158_ _g247097247161_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g247096247158_
                                                       _g247097247161_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g247096247158_
                                                   _g247097247161_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g247096247158_
                                               _g247097247161_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g247096247158_ _g247097247161_)))))
                            (let ()
                              (declare (not safe))
                              (_g247096247158_ _g247097247161_)))
                        (let ()
                          (declare (not safe))
                          (_g247096247158_ _g247097247161_)))))
                (let ()
                  (declare (not safe))
                  (_g247096247158_ _g247097247161_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g247096247158_
                                                       _g247097247161_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g247096247158_
                                                   _g247097247161_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g247096247158_ _g247097247161_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g247096247158_ _g247097247161_)))
                            (let ()
                              (declare (not safe))
                              (_g247096247158_ _g247097247161_)))))
                    (let ()
                      (declare (not safe))
                      (_g247096247158_ _g247097247161_)))
                (let ()
                  (declare (not safe))
                  (_g247096247158_ _g247097247161_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g247096247158_
                                                       _g247097247161_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g247096247158_
                                               _g247097247161_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g247096247158_ _g247097247161_)))
                                (let ()
                                  (declare (not safe))
                                  (_g247096247158_ _g247097247161_)))
                            (let ()
                              (declare (not safe))
                              (_g247096247158_ _g247097247161_)))))
                    (let ()
                      (declare (not safe))
                      (_g247096247158_ _g247097247161_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g247096247158_
                                                       _g247097247161_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g247096247158_
                                               _g247097247161_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g247096247158_ _g247097247161_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g247096247158_ _g247097247161_)))))
                            (let ()
                              (declare (not safe))
                              (_g247096247158_ _g247097247161_))))))
                (declare (not safe))
                (_g247095248205_ _L247054_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd246930247048_
                                                    _hd246927247040_
                                                    _hd246924247032_
                                                    _hd246921247024_
                                                    _hd246903246976_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g246883246936_
                                                      _g246884246939_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g246883246936_
                                              _g246884246939_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g246883246936_ _g246884246939_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g246883246936_ _g246884246939_)))
                               (let ()
                                 (declare (not safe))
                                 (_g246883246936_ _g246884246939_)))))
                       (let ()
                         (declare (not safe))
                         (_g246883246936_ _g246884246939_)))
                   (let ()
                     (declare (not safe))
                     (_g246883246936_ _g246884246939_)))
               (let ()
                 (declare (not safe))
                 (_g246883246936_ _g246884246939_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g246883246936_
                                                  _g246884246939_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g246883246936_
                                              _g246884246939_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g246883246936_ _g246884246939_)))))
                           (let ()
                             (declare (not safe))
                             (_g246883246936_ _g246884246939_)))))
                   (let ()
                     (declare (not safe))
                     (_g246883246936_ _g246884246939_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g246883246936_
                                                      _g246884246939_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g246883246936_
                                                  _g246884246939_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g246883246936_
                                              _g246884246939_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g246883246936_ _g246884246939_)))))
                           (let ()
                             (declare (not safe))
                             (_g246883246936_ _g246884246939_)))
                       (let ()
                         (declare (not safe))
                         (_g246883246936_ _g246884246939_)))))
               (let ()
                 (declare (not safe))
                 (_g246883246936_ _g246884246939_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g246883246936_
                                                  _g246884246939_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g246883246936_ _g246884246939_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g246883246936_ _g246884246939_)))
                           (let ()
                             (declare (not safe))
                             (_g246883246936_ _g246884246939_)))
                       (let ()
                         (declare (not safe))
                         (_g246883246936_ _g246884246939_)))))
               (let ()
                 (declare (not safe))
                 (_g246883246936_ _g246884246939_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g246882248208_ _L245041_))
                                         _stx244967_))))))))
                  (___kont252514252515_ (lambda () _stx244967_)))
              (let ((___match252543252544_
                     (lambda (_e244983245009_
                              _hd244982245012_
                              _tl244981245014_
                              _e244986245017_
                              _hd244985245020_
                              _tl244984245022_
                              _e244989245025_
                              _hd244988245028_
                              _tl244987245030_
                              _e244992245033_
                              _hd244991245036_
                              _tl244990245038_)
                       (let ((_L245041_ _hd244991245036_)
                             (_L245042_ _hd244988245028_))
                         (if (let ((__tmp253905
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L245042_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp253905))
                             (___kont252512252513_ _L245041_ _L245042_)
                             (___kont252514252515_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx252510252511_))
                    (let ((_e244983245009_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx252510252511_))))
                      (let ((_tl244981245014_
                             (let ()
                               (declare (not safe))
                               (##cdr _e244983245009_)))
                            (_hd244982245012_
                             (let ()
                               (declare (not safe))
                               (##car _e244983245009_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244981245014_))
                            (let ((_e244986245017_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244981245014_))))
                              (let ((_tl244984245022_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244986245017_)))
                                    (_hd244985245020_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244986245017_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd244985245020_))
                                    (let ((_e244989245025_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd244985245020_))))
                                      (let ((_tl244987245030_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e244989245025_)))
                                            (_hd244988245028_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e244989245025_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl244987245030_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl244984245022_))
                                                (let ((_e244992245033_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl244984245022_))))
                                                  (let ((_tl244990245038_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e244992245033_)))
                                                        (_hd244991245036_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e244992245033_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl244990245038_))
                                                        (___match252543252544_
                                                         _e244983245009_
                                                         _hd244982245012_
                                                         _tl244981245014_
                                                         _e244986245017_
                                                         _hd244985245020_
                                                         _tl244984245022_
                                                         _e244989245025_
                                                         _hd244988245028_
                                                         _tl244987245030_
                                                         _e244992245033_
                                                         _hd244991245036_
                                                         _tl244990245038_)
                                                        (___kont252514252515_))))
                                                (___kont252514252515_))
                                            (___kont252514252515_))))
                                    (___kont252514252515_))))
                            (___kont252514252515_))))
                    (___kont252514252515_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx243943_
               _self243944_
               _methods243945_
               _slots243946_
               _class-check243947_
               _struct-check243948_
               _struct-assert243949_)
        (let* ((___stx252546252547_ _stx243943_)
               (_g243957244179_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx252546252547_)))))
          (let ((___kont252548252549_
                 (lambda (_L244916_ _L244917_ _L244918_ _L244919_)
                   (let ((__tmp253906
                          (let () (declare (not safe)) (gx#stx-e _L244917_))))
                     (declare (not safe))
                     (table-set! _methods243945_ __tmp253906 '#t))
                   (for-each
                    (lambda (_g244952244954_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g244952244954_
                         _self243944_
                         _methods243945_
                         _slots243946_
                         _class-check243947_
                         _struct-check243948_
                         _struct-assert243949_)))
                    (let ((__tmp253907
                           (lambda (_g244956244959_ _g244957244961_)
                             (let ()
                               (declare (not safe))
                               (cons _g244956244959_ _g244957244961_)))))
                      (declare (not safe))
                      (foldr1 __tmp253907 '() _L244916_)))))
                (___kont252552252553_
                 (lambda (_L244751_ _L244752_ _L244753_ _L244754_ _L244755_)
                   (let ((__tmp253908
                          (let () (declare (not safe)) (gx#stx-e _L244752_))))
                     (declare (not safe))
                     (table-set! _methods243945_ __tmp253908 '#t))
                   (for-each
                    (lambda (_g244795244797_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g244795244797_
                         _self243944_
                         _methods243945_
                         _slots243946_
                         _class-check243947_
                         _struct-check243948_
                         _struct-assert243949_)))
                    (let ((__tmp253909
                           (lambda (_g244799244802_ _g244800244804_)
                             (let ()
                               (declare (not safe))
                               (cons _g244799244802_ _g244800244804_)))))
                      (declare (not safe))
                      (foldr1 __tmp253909 '() _L244751_)))))
                (___kont252556252557_
                 (lambda (_L244584_ _L244585_ _L244586_)
                   (let ((__tmp253910
                          (let () (declare (not safe)) (gx#stx-e _L244584_))))
                     (declare (not safe))
                     (table-set! _slots243946_ __tmp253910 '#t))))
                (___kont252558252559_
                 (lambda (_L244461_ _L244462_ _L244463_ _L244464_)
                   (let ((__tmp253911
                          (let () (declare (not safe)) (gx#stx-e _L244462_))))
                     (declare (not safe))
                     (table-set! _slots243946_ __tmp253911 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L244461_
                      _self243944_
                      _methods243945_
                      _slots243946_
                      _class-check243947_
                      _struct-check243948_
                      _struct-assert243949_))))
                (___kont252560252561_
                 (lambda (_L244345_ _L244346_)
                   (let ((__tmp253912
                          (##structure-ref
                           (let ((__tmp253913
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L244346_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp253913))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots243946_ __tmp253912 '#t))))
                (___kont252562252563_
                 (lambda (_L244255_ _L244256_ _L244257_)
                   (let ((__tmp253914
                          (##structure-ref
                           (let ((__tmp253915
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L244257_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp253915))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots243946_ __tmp253914 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L244255_
                      _self243944_
                      _methods243945_
                      _slots243946_
                      _class-check243947_
                      _struct-check243948_
                      _struct-assert243949_))))
                (___kont252564252565_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx243943_
                      _self243944_
                      _methods243945_
                      _slots243946_
                      _class-check243947_
                      _struct-check243948_
                      _struct-assert243949_)))))
            (let* ((___match253045253046_
                    (lambda (_e244153244191_
                             _hd244152244194_
                             _tl244151244196_
                             _e244156244199_
                             _hd244155244202_
                             _tl244154244204_
                             _e244159244207_
                             _hd244158244210_
                             _tl244157244212_
                             _e244162244215_
                             _hd244161244218_
                             _tl244160244220_
                             _e244165244223_
                             _hd244164244226_
                             _tl244163244228_
                             _e244168244231_
                             _hd244167244234_
                             _tl244166244236_
                             _e244171244239_
                             _hd244170244242_
                             _tl244169244244_
                             _e244174244247_
                             _hd244173244250_
                             _tl244172244252_)
                      (let ((_L244255_ _hd244173244250_)
                            (_L244256_ _hd244170244242_)
                            (_L244257_ _hd244161244218_))
                        (if (and (let ((__tmp253916
                                        (let ((__tmp253917
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L244257_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp253917))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp253916
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L244256_
                                    _self243944_)))
                            (___kont252562252563_
                             _L244255_
                             _L244256_
                             _L244257_)
                            (___kont252564252565_)))))
                   (___match253043253044_
                    (lambda (_e244153244191_
                             _hd244152244194_
                             _tl244151244196_
                             _e244156244199_
                             _hd244155244202_
                             _tl244154244204_
                             _e244159244207_
                             _hd244158244210_
                             _tl244157244212_
                             _e244162244215_
                             _hd244161244218_
                             _tl244160244220_
                             _e244165244223_
                             _hd244164244226_
                             _tl244163244228_
                             _e244168244231_
                             _hd244167244234_
                             _tl244166244236_
                             _e244171244239_
                             _hd244170244242_
                             _tl244169244244_
                             _e244174244247_
                             _hd244173244250_
                             _tl244172244252_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl244172244252_))
                          (___match253045253046_
                           _e244153244191_
                           _hd244152244194_
                           _tl244151244196_
                           _e244156244199_
                           _hd244155244202_
                           _tl244154244204_
                           _e244159244207_
                           _hd244158244210_
                           _tl244157244212_
                           _e244162244215_
                           _hd244161244218_
                           _tl244160244220_
                           _e244165244223_
                           _hd244164244226_
                           _tl244163244228_
                           _e244168244231_
                           _hd244167244234_
                           _tl244166244236_
                           _e244171244239_
                           _hd244170244242_
                           _tl244169244244_
                           _e244174244247_
                           _hd244173244250_
                           _tl244172244252_)
                          (___kont252564252565_))))
                   (___match253037253038_
                    (lambda (_e244153244191_
                             _hd244152244194_
                             _tl244151244196_
                             _e244156244199_
                             _hd244155244202_
                             _tl244154244204_
                             _e244159244207_
                             _hd244158244210_
                             _tl244157244212_
                             _e244162244215_
                             _hd244161244218_
                             _tl244160244220_
                             _e244165244223_
                             _hd244164244226_
                             _tl244163244228_
                             _e244168244231_
                             _hd244167244234_
                             _tl244166244236_
                             _e244171244239_
                             _hd244170244242_
                             _tl244169244244_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl244163244228_))
                          (let ((_e244174244247_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl244163244228_))))
                            (let ((_tl244172244252_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e244174244247_)))
                                  (_hd244173244250_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e244174244247_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl244172244252_))
                                  (___match253045253046_
                                   _e244153244191_
                                   _hd244152244194_
                                   _tl244151244196_
                                   _e244156244199_
                                   _hd244155244202_
                                   _tl244154244204_
                                   _e244159244207_
                                   _hd244158244210_
                                   _tl244157244212_
                                   _e244162244215_
                                   _hd244161244218_
                                   _tl244160244220_
                                   _e244165244223_
                                   _hd244164244226_
                                   _tl244163244228_
                                   _e244168244231_
                                   _hd244167244234_
                                   _tl244166244236_
                                   _e244171244239_
                                   _hd244170244242_
                                   _tl244169244244_
                                   _e244174244247_
                                   _hd244173244250_
                                   _tl244172244252_)
                                  (___kont252564252565_))))
                          (___kont252564252565_))))
                   (___match252983252984_
                    (lambda (_e244129244289_
                             _hd244128244292_
                             _tl244127244294_
                             _e244132244297_
                             _hd244131244300_
                             _tl244130244302_
                             _e244135244305_
                             _hd244134244308_
                             _tl244133244310_
                             _e244138244313_
                             _hd244137244316_
                             _tl244136244318_
                             _e244141244321_
                             _hd244140244324_
                             _tl244139244326_
                             _e244144244329_
                             _hd244143244332_
                             _tl244142244334_
                             _e244147244337_
                             _hd244146244340_
                             _tl244145244342_)
                      (let ((_L244345_ _hd244146244340_)
                            (_L244346_ _hd244137244316_))
                        (if (and (let ((__tmp253918
                                        (let ((__tmp253919
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L244346_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp253919))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp253918
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L244345_
                                    _self243944_)))
                            (___kont252560252561_ _L244345_ _L244346_)
                            (___kont252564252565_)))))
                   (___match252981252982_
                    (lambda (_e244129244289_
                             _hd244128244292_
                             _tl244127244294_
                             _e244132244297_
                             _hd244131244300_
                             _tl244130244302_
                             _e244135244305_
                             _hd244134244308_
                             _tl244133244310_
                             _e244138244313_
                             _hd244137244316_
                             _tl244136244318_
                             _e244141244321_
                             _hd244140244324_
                             _tl244139244326_
                             _e244144244329_
                             _hd244143244332_
                             _tl244142244334_
                             _e244147244337_
                             _hd244146244340_
                             _tl244145244342_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl244139244326_))
                          (___match252983252984_
                           _e244129244289_
                           _hd244128244292_
                           _tl244127244294_
                           _e244132244297_
                           _hd244131244300_
                           _tl244130244302_
                           _e244135244305_
                           _hd244134244308_
                           _tl244133244310_
                           _e244138244313_
                           _hd244137244316_
                           _tl244136244318_
                           _e244141244321_
                           _hd244140244324_
                           _tl244139244326_
                           _e244144244329_
                           _hd244143244332_
                           _tl244142244334_
                           _e244147244337_
                           _hd244146244340_
                           _tl244145244342_)
                          (___match253037253038_
                           _e244129244289_
                           _hd244128244292_
                           _tl244127244294_
                           _e244132244297_
                           _hd244131244300_
                           _tl244130244302_
                           _e244135244305_
                           _hd244134244308_
                           _tl244133244310_
                           _e244138244313_
                           _hd244137244316_
                           _tl244136244318_
                           _e244141244321_
                           _hd244140244324_
                           _tl244139244326_
                           _e244144244329_
                           _hd244143244332_
                           _tl244142244334_
                           _e244147244337_
                           _hd244146244340_
                           _tl244145244342_))))
                   (___match252927252928_
                    (lambda (_e244094244373_
                             _hd244093244376_
                             _tl244092244378_
                             _e244097244381_
                             _hd244096244384_
                             _tl244095244386_
                             _e244100244389_
                             _hd244099244392_
                             _tl244098244394_
                             _e244103244397_
                             _hd244102244400_
                             _tl244101244402_
                             _e244106244405_
                             _hd244105244408_
                             _tl244104244410_
                             _e244109244413_
                             _hd244108244416_
                             _tl244107244418_
                             _e244112244421_
                             _hd244111244424_
                             _tl244110244426_
                             _e244115244429_
                             _hd244114244432_
                             _tl244113244434_
                             _e244118244437_
                             _hd244117244440_
                             _tl244116244442_
                             _e244121244445_
                             _hd244120244448_
                             _tl244119244450_
                             _e244124244453_
                             _hd244123244456_
                             _tl244122244458_)
                      (let ((_L244461_ _hd244123244456_)
                            (_L244462_ _hd244120244448_)
                            (_L244463_ _hd244111244424_)
                            (_L244464_ _hd244102244400_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L244464_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L244464_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L244463_
                                    _self243944_)))
                            (___kont252558252559_
                             _L244461_
                             _L244462_
                             _L244463_
                             _L244464_)
                            (___kont252564252565_)))))
                   (___match252919252920_
                    (lambda (_e244094244373_
                             _hd244093244376_
                             _tl244092244378_
                             _e244097244381_
                             _hd244096244384_
                             _tl244095244386_
                             _e244100244389_
                             _hd244099244392_
                             _tl244098244394_
                             _e244103244397_
                             _hd244102244400_
                             _tl244101244402_
                             _e244106244405_
                             _hd244105244408_
                             _tl244104244410_
                             _e244109244413_
                             _hd244108244416_
                             _tl244107244418_
                             _e244112244421_
                             _hd244111244424_
                             _tl244110244426_
                             _e244115244429_
                             _hd244114244432_
                             _tl244113244434_
                             _e244118244437_
                             _hd244117244440_
                             _tl244116244442_
                             _e244121244445_
                             _hd244120244448_
                             _tl244119244450_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl244113244434_))
                          (let ((_e244124244453_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl244113244434_))))
                            (let ((_tl244122244458_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e244124244453_)))
                                  (_hd244123244456_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e244124244453_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl244122244458_))
                                  (___match252927252928_
                                   _e244094244373_
                                   _hd244093244376_
                                   _tl244092244378_
                                   _e244097244381_
                                   _hd244096244384_
                                   _tl244095244386_
                                   _e244100244389_
                                   _hd244099244392_
                                   _tl244098244394_
                                   _e244103244397_
                                   _hd244102244400_
                                   _tl244101244402_
                                   _e244106244405_
                                   _hd244105244408_
                                   _tl244104244410_
                                   _e244109244413_
                                   _hd244108244416_
                                   _tl244107244418_
                                   _e244112244421_
                                   _hd244111244424_
                                   _tl244110244426_
                                   _e244115244429_
                                   _hd244114244432_
                                   _tl244113244434_
                                   _e244118244437_
                                   _hd244117244440_
                                   _tl244116244442_
                                   _e244121244445_
                                   _hd244120244448_
                                   _tl244119244450_
                                   _e244124244453_
                                   _hd244123244456_
                                   _tl244122244458_)
                                  (___kont252564252565_))))
                          (___match253043253044_
                           _e244094244373_
                           _hd244093244376_
                           _tl244092244378_
                           _e244097244381_
                           _hd244096244384_
                           _tl244095244386_
                           _e244100244389_
                           _hd244099244392_
                           _tl244098244394_
                           _e244103244397_
                           _hd244102244400_
                           _tl244101244402_
                           _e244106244405_
                           _hd244105244408_
                           _tl244104244410_
                           _e244109244413_
                           _hd244108244416_
                           _tl244107244418_
                           _e244112244421_
                           _hd244111244424_
                           _tl244110244426_
                           _e244115244429_
                           _hd244114244432_
                           _tl244113244434_))))
                   (___match252841252842_
                    (lambda (_e244060244504_
                             _hd244059244507_
                             _tl244058244509_
                             _e244063244512_
                             _hd244062244515_
                             _tl244061244517_
                             _e244066244520_
                             _hd244065244523_
                             _tl244064244525_
                             _e244069244528_
                             _hd244068244531_
                             _tl244067244533_
                             _e244072244536_
                             _hd244071244539_
                             _tl244070244541_
                             _e244075244544_
                             _hd244074244547_
                             _tl244073244549_
                             _e244078244552_
                             _hd244077244555_
                             _tl244076244557_
                             _e244081244560_
                             _hd244080244563_
                             _tl244079244565_
                             _e244084244568_
                             _hd244083244571_
                             _tl244082244573_
                             _e244087244576_
                             _hd244086244579_
                             _tl244085244581_)
                      (let ((_L244584_ _hd244086244579_)
                            (_L244585_ _hd244077244555_)
                            (_L244586_ _hd244068244531_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L244586_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L244586_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L244585_
                                    _self243944_)))
                            (___kont252556252557_
                             _L244584_
                             _L244585_
                             _L244586_)
                            (___match253045253046_
                             _e244060244504_
                             _hd244059244507_
                             _tl244058244509_
                             _e244063244512_
                             _hd244062244515_
                             _tl244061244517_
                             _e244066244520_
                             _hd244065244523_
                             _tl244064244525_
                             _e244069244528_
                             _hd244068244531_
                             _tl244067244533_
                             _e244072244536_
                             _hd244071244539_
                             _tl244070244541_
                             _e244075244544_
                             _hd244074244547_
                             _tl244073244549_
                             _e244078244552_
                             _hd244077244555_
                             _tl244076244557_
                             _e244081244560_
                             _hd244080244563_
                             _tl244079244565_)))))
                   (___match252839252840_
                    (lambda (_e244060244504_
                             _hd244059244507_
                             _tl244058244509_
                             _e244063244512_
                             _hd244062244515_
                             _tl244061244517_
                             _e244066244520_
                             _hd244065244523_
                             _tl244064244525_
                             _e244069244528_
                             _hd244068244531_
                             _tl244067244533_
                             _e244072244536_
                             _hd244071244539_
                             _tl244070244541_
                             _e244075244544_
                             _hd244074244547_
                             _tl244073244549_
                             _e244078244552_
                             _hd244077244555_
                             _tl244076244557_
                             _e244081244560_
                             _hd244080244563_
                             _tl244079244565_
                             _e244084244568_
                             _hd244083244571_
                             _tl244082244573_
                             _e244087244576_
                             _hd244086244579_
                             _tl244085244581_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl244079244565_))
                          (___match252841252842_
                           _e244060244504_
                           _hd244059244507_
                           _tl244058244509_
                           _e244063244512_
                           _hd244062244515_
                           _tl244061244517_
                           _e244066244520_
                           _hd244065244523_
                           _tl244064244525_
                           _e244069244528_
                           _hd244068244531_
                           _tl244067244533_
                           _e244072244536_
                           _hd244071244539_
                           _tl244070244541_
                           _e244075244544_
                           _hd244074244547_
                           _tl244073244549_
                           _e244078244552_
                           _hd244077244555_
                           _tl244076244557_
                           _e244081244560_
                           _hd244080244563_
                           _tl244079244565_
                           _e244084244568_
                           _hd244083244571_
                           _tl244082244573_
                           _e244087244576_
                           _hd244086244579_
                           _tl244085244581_)
                          (___match252919252920_
                           _e244060244504_
                           _hd244059244507_
                           _tl244058244509_
                           _e244063244512_
                           _hd244062244515_
                           _tl244061244517_
                           _e244066244520_
                           _hd244065244523_
                           _tl244064244525_
                           _e244069244528_
                           _hd244068244531_
                           _tl244067244533_
                           _e244072244536_
                           _hd244071244539_
                           _tl244070244541_
                           _e244075244544_
                           _hd244074244547_
                           _tl244073244549_
                           _e244078244552_
                           _hd244077244555_
                           _tl244076244557_
                           _e244081244560_
                           _hd244080244563_
                           _tl244079244565_
                           _e244084244568_
                           _hd244083244571_
                           _tl244082244573_
                           _e244087244576_
                           _hd244086244579_
                           _tl244085244581_))))
                   (___match252829252830_
                    (lambda (_e244060244504_
                             _hd244059244507_
                             _tl244058244509_
                             _e244063244512_
                             _hd244062244515_
                             _tl244061244517_
                             _e244066244520_
                             _hd244065244523_
                             _tl244064244525_
                             _e244069244528_
                             _hd244068244531_
                             _tl244067244533_
                             _e244072244536_
                             _hd244071244539_
                             _tl244070244541_
                             _e244075244544_
                             _hd244074244547_
                             _tl244073244549_
                             _e244078244552_
                             _hd244077244555_
                             _tl244076244557_
                             _e244081244560_
                             _hd244080244563_
                             _tl244079244565_
                             _e244084244568_
                             _hd244083244571_
                             _tl244082244573_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd244083244571_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl244082244573_))
                              (let ((_e244087244576_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl244082244573_))))
                                (let ((_tl244085244581_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e244087244576_)))
                                      (_hd244086244579_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e244087244576_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl244085244581_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl244079244565_))
                                          (___match252841252842_
                                           _e244060244504_
                                           _hd244059244507_
                                           _tl244058244509_
                                           _e244063244512_
                                           _hd244062244515_
                                           _tl244061244517_
                                           _e244066244520_
                                           _hd244065244523_
                                           _tl244064244525_
                                           _e244069244528_
                                           _hd244068244531_
                                           _tl244067244533_
                                           _e244072244536_
                                           _hd244071244539_
                                           _tl244070244541_
                                           _e244075244544_
                                           _hd244074244547_
                                           _tl244073244549_
                                           _e244078244552_
                                           _hd244077244555_
                                           _tl244076244557_
                                           _e244081244560_
                                           _hd244080244563_
                                           _tl244079244565_
                                           _e244084244568_
                                           _hd244083244571_
                                           _tl244082244573_
                                           _e244087244576_
                                           _hd244086244579_
                                           _tl244085244581_)
                                          (___match252919252920_
                                           _e244060244504_
                                           _hd244059244507_
                                           _tl244058244509_
                                           _e244063244512_
                                           _hd244062244515_
                                           _tl244061244517_
                                           _e244066244520_
                                           _hd244065244523_
                                           _tl244064244525_
                                           _e244069244528_
                                           _hd244068244531_
                                           _tl244067244533_
                                           _e244072244536_
                                           _hd244071244539_
                                           _tl244070244541_
                                           _e244075244544_
                                           _hd244074244547_
                                           _tl244073244549_
                                           _e244078244552_
                                           _hd244077244555_
                                           _tl244076244557_
                                           _e244081244560_
                                           _hd244080244563_
                                           _tl244079244565_
                                           _e244084244568_
                                           _hd244083244571_
                                           _tl244082244573_
                                           _e244087244576_
                                           _hd244086244579_
                                           _tl244085244581_))
                                      (___match253043253044_
                                       _e244060244504_
                                       _hd244059244507_
                                       _tl244058244509_
                                       _e244063244512_
                                       _hd244062244515_
                                       _tl244061244517_
                                       _e244066244520_
                                       _hd244065244523_
                                       _tl244064244525_
                                       _e244069244528_
                                       _hd244068244531_
                                       _tl244067244533_
                                       _e244072244536_
                                       _hd244071244539_
                                       _tl244070244541_
                                       _e244075244544_
                                       _hd244074244547_
                                       _tl244073244549_
                                       _e244078244552_
                                       _hd244077244555_
                                       _tl244076244557_
                                       _e244081244560_
                                       _hd244080244563_
                                       _tl244079244565_))))
                              (___match253043253044_
                               _e244060244504_
                               _hd244059244507_
                               _tl244058244509_
                               _e244063244512_
                               _hd244062244515_
                               _tl244061244517_
                               _e244066244520_
                               _hd244065244523_
                               _tl244064244525_
                               _e244069244528_
                               _hd244068244531_
                               _tl244067244533_
                               _e244072244536_
                               _hd244071244539_
                               _tl244070244541_
                               _e244075244544_
                               _hd244074244547_
                               _tl244073244549_
                               _e244078244552_
                               _hd244077244555_
                               _tl244076244557_
                               _e244081244560_
                               _hd244080244563_
                               _tl244079244565_))
                          (___match253043253044_
                           _e244060244504_
                           _hd244059244507_
                           _tl244058244509_
                           _e244063244512_
                           _hd244062244515_
                           _tl244061244517_
                           _e244066244520_
                           _hd244065244523_
                           _tl244064244525_
                           _e244069244528_
                           _hd244068244531_
                           _tl244067244533_
                           _e244072244536_
                           _hd244071244539_
                           _tl244070244541_
                           _e244075244544_
                           _hd244074244547_
                           _tl244073244549_
                           _e244078244552_
                           _hd244077244555_
                           _tl244076244557_
                           _e244081244560_
                           _hd244080244563_
                           _tl244079244565_))))
                   (___match252761252762_
                    (lambda (_e244009244623_
                             _hd244008244626_
                             _tl244007244628_
                             _e244012244631_
                             _hd244011244634_
                             _tl244010244636_
                             _e244015244639_
                             _hd244014244642_
                             _tl244013244644_
                             _e244018244647_
                             _hd244017244650_
                             _tl244016244652_
                             _e244021244655_
                             _hd244020244658_
                             _tl244019244660_
                             _e244024244663_
                             _hd244023244666_
                             _tl244022244668_
                             _e244027244671_
                             _hd244026244674_
                             _tl244025244676_
                             _e244030244679_
                             _hd244029244682_
                             _tl244028244684_
                             _e244033244687_
                             _hd244032244690_
                             _tl244031244692_
                             _e244036244695_
                             _hd244035244698_
                             _tl244034244700_
                             _e244039244703_
                             _hd244038244706_
                             _tl244037244708_
                             _e244042244711_
                             _hd244041244714_
                             _tl244040244716_
                             _e244045244719_
                             _hd244044244722_
                             _tl244043244724_
                             ___splice252554252555_
                             _target244046244727_
                             _tl244048244729_)
                      (letrec ((_loop244049244732_
                                (lambda (_hd244047244735_ _args244053244737_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd244047244735_))
                                      (let ((_e244050244740_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd244047244735_))))
                                        (let ((_lp-tl244052244745_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e244050244740_)))
                                              (_lp-hd244051244743_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e244050244740_))))
                                          (let ((__tmp253920
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd244051244743_
                                                         _args244053244737_))))
                                            (declare (not safe))
                                            (_loop244049244732_
                                             _lp-tl244052244745_
                                             __tmp253920))))
                                      (let ((_args244054244748_
                                             (reverse _args244053244737_)))
                                        (let ((_L244751_ _args244054244748_)
                                              (_L244752_ _hd244044244722_)
                                              (_L244753_ _hd244035244698_)
                                              (_L244754_ _hd244026244674_)
                                              (_L244755_ _hd244017244650_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L244755_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L244754_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L244753_
                                                      _self243944_)))
                                              (___kont252552252553_
                                               _L244751_
                                               _L244752_
                                               _L244753_
                                               _L244754_
                                               _L244755_)
                                              (___kont252564252565_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop244049244732_ _target244046244727_ '())))))
                   (___match252719252720_
                    (lambda (_e244009244623_
                             _hd244008244626_
                             _tl244007244628_
                             _e244012244631_
                             _hd244011244634_
                             _tl244010244636_
                             _e244015244639_
                             _hd244014244642_
                             _tl244013244644_
                             _e244018244647_
                             _hd244017244650_
                             _tl244016244652_
                             _e244021244655_
                             _hd244020244658_
                             _tl244019244660_
                             _e244024244663_
                             _hd244023244666_
                             _tl244022244668_
                             _e244027244671_
                             _hd244026244674_
                             _tl244025244676_
                             _e244030244679_
                             _hd244029244682_
                             _tl244028244684_
                             _e244033244687_
                             _hd244032244690_
                             _tl244031244692_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd244032244690_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl244031244692_))
                              (let ((_e244036244695_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl244031244692_))))
                                (let ((_tl244034244700_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e244036244695_)))
                                      (_hd244035244698_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e244036244695_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl244034244700_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl244028244684_))
                                          (let ((_e244039244703_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl244028244684_))))
                                            (let ((_tl244037244708_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e244039244703_)))
                                                  (_hd244038244706_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e244039244703_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd244038244706_))
                                                  (let ((_e244042244711_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd244038244706_))))
                                                    (let ((_tl244040244716_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e244042244711_)))
                                                          (_hd244041244714_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e244042244711_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd244041244714_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd244041244714_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl244040244716_))
                          (let ((_e244045244719_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl244040244716_))))
                            (let ((_tl244043244724_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e244045244719_)))
                                  (_hd244044244722_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e244045244719_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl244043244724_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl244037244708_))
                                      (let ((___splice252554252555_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl244037244708_
                                                '0))))
                                        (let ((_tl244048244729_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice252554252555_
                                                  '1)))
                                              (_target244046244727_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice252554252555_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl244048244729_))
                                              (___match252761252762_
                                               _e244009244623_
                                               _hd244008244626_
                                               _tl244007244628_
                                               _e244012244631_
                                               _hd244011244634_
                                               _tl244010244636_
                                               _e244015244639_
                                               _hd244014244642_
                                               _tl244013244644_
                                               _e244018244647_
                                               _hd244017244650_
                                               _tl244016244652_
                                               _e244021244655_
                                               _hd244020244658_
                                               _tl244019244660_
                                               _e244024244663_
                                               _hd244023244666_
                                               _tl244022244668_
                                               _e244027244671_
                                               _hd244026244674_
                                               _tl244025244676_
                                               _e244030244679_
                                               _hd244029244682_
                                               _tl244028244684_
                                               _e244033244687_
                                               _hd244032244690_
                                               _tl244031244692_
                                               _e244036244695_
                                               _hd244035244698_
                                               _tl244034244700_
                                               _e244039244703_
                                               _hd244038244706_
                                               _tl244037244708_
                                               _e244042244711_
                                               _hd244041244714_
                                               _tl244040244716_
                                               _e244045244719_
                                               _hd244044244722_
                                               _tl244043244724_
                                               ___splice252554252555_
                                               _target244046244727_
                                               _tl244048244729_)
                                              (___kont252564252565_))))
                                      (___kont252564252565_))
                                  (___kont252564252565_))))
                          (___kont252564252565_))
                      (___kont252564252565_))
                  (___kont252564252565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont252564252565_))))
                                          (___match253043253044_
                                           _e244009244623_
                                           _hd244008244626_
                                           _tl244007244628_
                                           _e244012244631_
                                           _hd244011244634_
                                           _tl244010244636_
                                           _e244015244639_
                                           _hd244014244642_
                                           _tl244013244644_
                                           _e244018244647_
                                           _hd244017244650_
                                           _tl244016244652_
                                           _e244021244655_
                                           _hd244020244658_
                                           _tl244019244660_
                                           _e244024244663_
                                           _hd244023244666_
                                           _tl244022244668_
                                           _e244027244671_
                                           _hd244026244674_
                                           _tl244025244676_
                                           _e244030244679_
                                           _hd244029244682_
                                           _tl244028244684_))
                                      (___match253043253044_
                                       _e244009244623_
                                       _hd244008244626_
                                       _tl244007244628_
                                       _e244012244631_
                                       _hd244011244634_
                                       _tl244010244636_
                                       _e244015244639_
                                       _hd244014244642_
                                       _tl244013244644_
                                       _e244018244647_
                                       _hd244017244650_
                                       _tl244016244652_
                                       _e244021244655_
                                       _hd244020244658_
                                       _tl244019244660_
                                       _e244024244663_
                                       _hd244023244666_
                                       _tl244022244668_
                                       _e244027244671_
                                       _hd244026244674_
                                       _tl244025244676_
                                       _e244030244679_
                                       _hd244029244682_
                                       _tl244028244684_))))
                              (___match253043253044_
                               _e244009244623_
                               _hd244008244626_
                               _tl244007244628_
                               _e244012244631_
                               _hd244011244634_
                               _tl244010244636_
                               _e244015244639_
                               _hd244014244642_
                               _tl244013244644_
                               _e244018244647_
                               _hd244017244650_
                               _tl244016244652_
                               _e244021244655_
                               _hd244020244658_
                               _tl244019244660_
                               _e244024244663_
                               _hd244023244666_
                               _tl244022244668_
                               _e244027244671_
                               _hd244026244674_
                               _tl244025244676_
                               _e244030244679_
                               _hd244029244682_
                               _tl244028244684_))
                          (___match252829252830_
                           _e244009244623_
                           _hd244008244626_
                           _tl244007244628_
                           _e244012244631_
                           _hd244011244634_
                           _tl244010244636_
                           _e244015244639_
                           _hd244014244642_
                           _tl244013244644_
                           _e244018244647_
                           _hd244017244650_
                           _tl244016244652_
                           _e244021244655_
                           _hd244020244658_
                           _tl244019244660_
                           _e244024244663_
                           _hd244023244666_
                           _tl244022244668_
                           _e244027244671_
                           _hd244026244674_
                           _tl244025244676_
                           _e244030244679_
                           _hd244029244682_
                           _tl244028244684_
                           _e244033244687_
                           _hd244032244690_
                           _tl244031244692_))))
                   (___match252651252652_
                    (lambda (_e243965244812_
                             _hd243964244815_
                             _tl243963244817_
                             _e243968244820_
                             _hd243967244823_
                             _tl243966244825_
                             _e243971244828_
                             _hd243970244831_
                             _tl243969244833_
                             _e243974244836_
                             _hd243973244839_
                             _tl243972244841_
                             _e243977244844_
                             _hd243976244847_
                             _tl243975244849_
                             _e243980244852_
                             _hd243979244855_
                             _tl243978244857_
                             _e243983244860_
                             _hd243982244863_
                             _tl243981244865_
                             _e243986244868_
                             _hd243985244871_
                             _tl243984244873_
                             _e243989244876_
                             _hd243988244879_
                             _tl243987244881_
                             _e243992244884_
                             _hd243991244887_
                             _tl243990244889_
                             ___splice252550252551_
                             _target243993244892_
                             _tl243995244894_)
                      (letrec ((_loop243996244897_
                                (lambda (_hd243994244900_ _args244000244902_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd243994244900_))
                                      (let ((_e243997244905_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd243994244900_))))
                                        (let ((_lp-tl243999244910_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243997244905_)))
                                              (_lp-hd243998244908_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243997244905_))))
                                          (let ((__tmp253921
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd243998244908_
                                                         _args244000244902_))))
                                            (declare (not safe))
                                            (_loop243996244897_
                                             _lp-tl243999244910_
                                             __tmp253921))))
                                      (let ((_args244001244913_
                                             (reverse _args244000244902_)))
                                        (let ((_L244916_ _args244001244913_)
                                              (_L244917_ _hd243991244887_)
                                              (_L244918_ _hd243982244863_)
                                              (_L244919_ _hd243973244839_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L244919_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L244918_
                                                      _self243944_)))
                                              (___kont252548252549_
                                               _L244916_
                                               _L244917_
                                               _L244918_
                                               _L244919_)
                                              (___match252839252840_
                                               _e243965244812_
                                               _hd243964244815_
                                               _tl243963244817_
                                               _e243968244820_
                                               _hd243967244823_
                                               _tl243966244825_
                                               _e243971244828_
                                               _hd243970244831_
                                               _tl243969244833_
                                               _e243974244836_
                                               _hd243973244839_
                                               _tl243972244841_
                                               _e243977244844_
                                               _hd243976244847_
                                               _tl243975244849_
                                               _e243980244852_
                                               _hd243979244855_
                                               _tl243978244857_
                                               _e243983244860_
                                               _hd243982244863_
                                               _tl243981244865_
                                               _e243986244868_
                                               _hd243985244871_
                                               _tl243984244873_
                                               _e243989244876_
                                               _hd243988244879_
                                               _tl243987244881_
                                               _e243992244884_
                                               _hd243991244887_
                                               _tl243990244889_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop243996244897_ _target243993244892_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx252546252547_))
                  (let ((_e243965244812_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx252546252547_))))
                    (let ((_tl243963244817_
                           (let ()
                             (declare (not safe))
                             (##cdr _e243965244812_)))
                          (_hd243964244815_
                           (let ()
                             (declare (not safe))
                             (##car _e243965244812_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl243963244817_))
                          (let ((_e243968244820_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl243963244817_))))
                            (let ((_tl243966244825_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e243968244820_)))
                                  (_hd243967244823_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e243968244820_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd243967244823_))
                                  (let ((_e243971244828_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd243967244823_))))
                                    (let ((_tl243969244833_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e243971244828_)))
                                          (_hd243970244831_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e243971244828_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd243970244831_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd243970244831_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl243969244833_))
                                                  (let ((_e243974244836_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl243969244833_))))
                                                    (let ((_tl243972244841_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e243974244836_)))
                                                          (_hd243973244839_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e243974244836_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl243972244841_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl243966244825_))
                      (let ((_e243977244844_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl243966244825_))))
                        (let ((_tl243975244849_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243977244844_)))
                              (_hd243976244847_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243977244844_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd243976244847_))
                              (let ((_e243980244852_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd243976244847_))))
                                (let ((_tl243978244857_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243980244852_)))
                                      (_hd243979244855_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243980244852_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd243979244855_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd243979244855_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl243978244857_))
                                              (let ((_e243983244860_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl243978244857_))))
                                                (let ((_tl243981244865_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e243983244860_)))
                                                      (_hd243982244863_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e243983244860_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243981244865_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl243975244849_))
                                                          (let ((_e243986244868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl243975244849_))))
                    (let ((_tl243984244873_
                           (let ()
                             (declare (not safe))
                             (##cdr _e243986244868_)))
                          (_hd243985244871_
                           (let ()
                             (declare (not safe))
                             (##car _e243986244868_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd243985244871_))
                          (let ((_e243989244876_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd243985244871_))))
                            (let ((_tl243987244881_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e243989244876_)))
                                  (_hd243988244879_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e243989244876_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd243988244879_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd243988244879_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl243987244881_))
                                          (let ((_e243992244884_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl243987244881_))))
                                            (let ((_tl243990244889_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e243992244884_)))
                                                  (_hd243991244887_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e243992244884_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl243990244889_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl243984244873_))
                                                      (let ((___splice252550252551_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl243984244873_ '0))))
                (let ((_tl243995244894_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice252550252551_ '1)))
                      (_target243993244892_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice252550252551_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl243995244894_))
                      (___match252651252652_
                       _e243965244812_
                       _hd243964244815_
                       _tl243963244817_
                       _e243968244820_
                       _hd243967244823_
                       _tl243966244825_
                       _e243971244828_
                       _hd243970244831_
                       _tl243969244833_
                       _e243974244836_
                       _hd243973244839_
                       _tl243972244841_
                       _e243977244844_
                       _hd243976244847_
                       _tl243975244849_
                       _e243980244852_
                       _hd243979244855_
                       _tl243978244857_
                       _e243983244860_
                       _hd243982244863_
                       _tl243981244865_
                       _e243986244868_
                       _hd243985244871_
                       _tl243984244873_
                       _e243989244876_
                       _hd243988244879_
                       _tl243987244881_
                       _e243992244884_
                       _hd243991244887_
                       _tl243990244889_
                       ___splice252550252551_
                       _target243993244892_
                       _tl243995244894_)
                      (___match252839252840_
                       _e243965244812_
                       _hd243964244815_
                       _tl243963244817_
                       _e243968244820_
                       _hd243967244823_
                       _tl243966244825_
                       _e243971244828_
                       _hd243970244831_
                       _tl243969244833_
                       _e243974244836_
                       _hd243973244839_
                       _tl243972244841_
                       _e243977244844_
                       _hd243976244847_
                       _tl243975244849_
                       _e243980244852_
                       _hd243979244855_
                       _tl243978244857_
                       _e243983244860_
                       _hd243982244863_
                       _tl243981244865_
                       _e243986244868_
                       _hd243985244871_
                       _tl243984244873_
                       _e243989244876_
                       _hd243988244879_
                       _tl243987244881_
                       _e243992244884_
                       _hd243991244887_
                       _tl243990244889_))))
              (___match252839252840_
               _e243965244812_
               _hd243964244815_
               _tl243963244817_
               _e243968244820_
               _hd243967244823_
               _tl243966244825_
               _e243971244828_
               _hd243970244831_
               _tl243969244833_
               _e243974244836_
               _hd243973244839_
               _tl243972244841_
               _e243977244844_
               _hd243976244847_
               _tl243975244849_
               _e243980244852_
               _hd243979244855_
               _tl243978244857_
               _e243983244860_
               _hd243982244863_
               _tl243981244865_
               _e243986244868_
               _hd243985244871_
               _tl243984244873_
               _e243989244876_
               _hd243988244879_
               _tl243987244881_
               _e243992244884_
               _hd243991244887_
               _tl243990244889_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match253043253044_
                                                   _e243965244812_
                                                   _hd243964244815_
                                                   _tl243963244817_
                                                   _e243968244820_
                                                   _hd243967244823_
                                                   _tl243966244825_
                                                   _e243971244828_
                                                   _hd243970244831_
                                                   _tl243969244833_
                                                   _e243974244836_
                                                   _hd243973244839_
                                                   _tl243972244841_
                                                   _e243977244844_
                                                   _hd243976244847_
                                                   _tl243975244849_
                                                   _e243980244852_
                                                   _hd243979244855_
                                                   _tl243978244857_
                                                   _e243983244860_
                                                   _hd243982244863_
                                                   _tl243981244865_
                                                   _e243986244868_
                                                   _hd243985244871_
                                                   _tl243984244873_))))
                                          (___match253043253044_
                                           _e243965244812_
                                           _hd243964244815_
                                           _tl243963244817_
                                           _e243968244820_
                                           _hd243967244823_
                                           _tl243966244825_
                                           _e243971244828_
                                           _hd243970244831_
                                           _tl243969244833_
                                           _e243974244836_
                                           _hd243973244839_
                                           _tl243972244841_
                                           _e243977244844_
                                           _hd243976244847_
                                           _tl243975244849_
                                           _e243980244852_
                                           _hd243979244855_
                                           _tl243978244857_
                                           _e243983244860_
                                           _hd243982244863_
                                           _tl243981244865_
                                           _e243986244868_
                                           _hd243985244871_
                                           _tl243984244873_))
                                      (___match252719252720_
                                       _e243965244812_
                                       _hd243964244815_
                                       _tl243963244817_
                                       _e243968244820_
                                       _hd243967244823_
                                       _tl243966244825_
                                       _e243971244828_
                                       _hd243970244831_
                                       _tl243969244833_
                                       _e243974244836_
                                       _hd243973244839_
                                       _tl243972244841_
                                       _e243977244844_
                                       _hd243976244847_
                                       _tl243975244849_
                                       _e243980244852_
                                       _hd243979244855_
                                       _tl243978244857_
                                       _e243983244860_
                                       _hd243982244863_
                                       _tl243981244865_
                                       _e243986244868_
                                       _hd243985244871_
                                       _tl243984244873_
                                       _e243989244876_
                                       _hd243988244879_
                                       _tl243987244881_))
                                  (___match253043253044_
                                   _e243965244812_
                                   _hd243964244815_
                                   _tl243963244817_
                                   _e243968244820_
                                   _hd243967244823_
                                   _tl243966244825_
                                   _e243971244828_
                                   _hd243970244831_
                                   _tl243969244833_
                                   _e243974244836_
                                   _hd243973244839_
                                   _tl243972244841_
                                   _e243977244844_
                                   _hd243976244847_
                                   _tl243975244849_
                                   _e243980244852_
                                   _hd243979244855_
                                   _tl243978244857_
                                   _e243983244860_
                                   _hd243982244863_
                                   _tl243981244865_
                                   _e243986244868_
                                   _hd243985244871_
                                   _tl243984244873_))))
                          (___match253043253044_
                           _e243965244812_
                           _hd243964244815_
                           _tl243963244817_
                           _e243968244820_
                           _hd243967244823_
                           _tl243966244825_
                           _e243971244828_
                           _hd243970244831_
                           _tl243969244833_
                           _e243974244836_
                           _hd243973244839_
                           _tl243972244841_
                           _e243977244844_
                           _hd243976244847_
                           _tl243975244849_
                           _e243980244852_
                           _hd243979244855_
                           _tl243978244857_
                           _e243983244860_
                           _hd243982244863_
                           _tl243981244865_
                           _e243986244868_
                           _hd243985244871_
                           _tl243984244873_))))
                  (___match252981252982_
                   _e243965244812_
                   _hd243964244815_
                   _tl243963244817_
                   _e243968244820_
                   _hd243967244823_
                   _tl243966244825_
                   _e243971244828_
                   _hd243970244831_
                   _tl243969244833_
                   _e243974244836_
                   _hd243973244839_
                   _tl243972244841_
                   _e243977244844_
                   _hd243976244847_
                   _tl243975244849_
                   _e243980244852_
                   _hd243979244855_
                   _tl243978244857_
                   _e243983244860_
                   _hd243982244863_
                   _tl243981244865_))
              (___kont252564252565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont252564252565_))
                                          (___kont252564252565_))
                                      (___kont252564252565_))))
                              (___kont252564252565_))))
                      (___kont252564252565_))
                  (___kont252564252565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont252564252565_))
                                              (___kont252564252565_))
                                          (___kont252564252565_))))
                                  (___kont252564252565_))))
                          (___kont252564252565_))))
                  (___kont252564252565_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx242889_
               _self242890_
               _$t242891_
               _methods242892_
               _slots242893_
               _class-check242894_
               _struct-check242895_
               _struct-assert242896_)
        (letrec ((_force-e242898_
                  (lambda (_what243941_)
                    (let ((__tmp253922
                           (let ((__tmp253926
                                  (let ((__tmp253927
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp253927)))
                                 (__tmp253923
                                  (let ((__tmp253924
                                         (let ((__tmp253925
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what243941_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp253925))))
                                    (declare (not safe))
                                    (cons __tmp253924 '()))))
                             (declare (not safe))
                             (cons __tmp253926 __tmp253923))))
                      (declare (not safe))
                      (cons '%#call __tmp253922)))))
          (let* ((___stx253048253049_ _stx242889_)
                 (_g242906243128_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx253048253049_)))))
            (let ((___kont253050253051_
                   (lambda (_L243887_ _L243888_ _L243889_ _L243890_)
                     (let ((_$method243935_
                            (hash-ref
                             _methods242892_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L243888_))))
                           (_args243936_
                            (map (lambda (_g243923243925_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g243923243925_
                                      _self242890_
                                      _$t242891_
                                      _methods242892_
                                      _slots242893_
                                      _class-check242894_
                                      _struct-check242895_
                                      _struct-assert242896_)))
                                 (let ((__tmp253928
                                        (lambda (_g243927243930_
                                                 _g243928243932_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g243927243930_
                                                  _g243928243932_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp253928 '() _L243887_)))))
                       (let ((__tmp253929
                              (let ((__tmp253930
                                     (let ((__tmp253934
                                            (let ()
                                              (declare (not safe))
                                              (_force-e242898_
                                               _$method243935_)))
                                           (__tmp253931
                                            (let ((__tmp253932
                                                   (let ((__tmp253933
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self242890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp253933))))
                                              (declare (not safe))
                                              (cons __tmp253932
                                                    _args243936_))))
                                       (declare (not safe))
                                       (cons __tmp253934 __tmp253931))))
                                (declare (not safe))
                                (cons '%#call __tmp253930))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp253929 _stx242889_)))))
                  (___kont253054253055_
                   (lambda (_L243719_ _L243720_ _L243721_ _L243722_ _L243723_)
                     (let ((_$method243775_
                            (hash-ref
                             _methods242892_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L243720_))))
                           (_args243776_
                            (map (lambda (_g243763243765_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g243763243765_
                                      _self242890_
                                      _$t242891_
                                      _methods242892_
                                      _slots242893_
                                      _class-check242894_
                                      _struct-check242895_
                                      _struct-assert242896_)))
                                 (let ((__tmp253935
                                        (lambda (_g243767243770_
                                                 _g243768243772_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g243767243770_
                                                  _g243768243772_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp253935 '() _L243719_)))))
                       (let ((__tmp253936
                              (let ((__tmp253937
                                     (let ((__tmp253943
                                            (let ((__tmp253944
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp253944)))
                                           (__tmp253938
                                            (let ((__tmp253942
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e242898_
                                                      _$method243775_)))
                                                  (__tmp253939
                                                   (let ((__tmp253940
                                                          (let ((__tmp253941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self242890_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp253941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp253940
                                                           _args243776_))))
                                              (declare (not safe))
                                              (cons __tmp253942 __tmp253939))))
                                       (declare (not safe))
                                       (cons __tmp253943 __tmp253938))))
                                (declare (not safe))
                                (cons '%#call __tmp253937))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp253936 _stx242889_)))))
                  (___kont253058253059_
                   (lambda (_L243550_ _L243551_ _L243552_)
                     (let* ((_$field243584_
                             (hash-ref
                              _slots242893_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _L243550_))))
                            (__tmp253945
                             (let ((__tmp253946
                                    (let ((__tmp253953
                                           (let ((__tmp253954
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t242891_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp253954)))
                                          (__tmp253947
                                           (let ((__tmp253951
                                                  (let ((__tmp253952
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field243584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp253952)))
                                                 (__tmp253948
                                                  (let ((__tmp253949
                                                         (let ((__tmp253950
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self242890_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp253950))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp253949 '()))))
                                             (declare (not safe))
                                             (cons __tmp253951 __tmp253948))))
                                      (declare (not safe))
                                      (cons __tmp253953 __tmp253947))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp253946))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp253945 _stx242889_))))
                  (___kont253060253061_
                   (lambda (_L243424_ _L243425_ _L243426_ _L243427_)
                     (let ((_$field243462_
                            (hash-ref
                             _slots242893_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L243425_))))
                           (_expr243463_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L243424_
                               _self242890_
                               _$t242891_
                               _methods242892_
                               _slots242893_
                               _class-check242894_
                               _struct-check242895_
                               _struct-assert242896_))))
                       (let ((__tmp253955
                              (let ((__tmp253956
                                     (let ((__tmp253964
                                            (let ((__tmp253965
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t242891_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp253965)))
                                           (__tmp253957
                                            (let ((__tmp253962
                                                   (let ((__tmp253963
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field243462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp253963)))
                                                  (__tmp253958
                                                   (let ((__tmp253960
                                                          (let ((__tmp253961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self242890_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp253961)))
                 (__tmp253959
                  (let () (declare (not safe)) (cons _expr243463_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp253960
                                                           __tmp253959))))
                                              (declare (not safe))
                                              (cons __tmp253962 __tmp253958))))
                                       (declare (not safe))
                                       (cons __tmp253964 __tmp253957))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp253956))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp253955 _stx242889_)))))
                  (___kont253062253063_
                   (lambda (_L243303_ _L243304_)
                     (let* ((_slot243326_
                             (##structure-ref
                              (let ((__tmp253966
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L243304_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp253966))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field243328_
                             (hash-ref _slots242893_ _slot243326_)))
                       (let ((__tmp253967
                              (let ((__tmp253968
                                     (let ((__tmp253975
                                            (let ((__tmp253976
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t242891_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp253976)))
                                           (__tmp253969
                                            (let ((__tmp253973
                                                   (let ((__tmp253974
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field243328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp253974)))
                                                  (__tmp253970
                                                   (let ((__tmp253971
                                                          (let ((__tmp253972
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self242890_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp253972))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp253971 '()))))
                                              (declare (not safe))
                                              (cons __tmp253973 __tmp253970))))
                                       (declare (not safe))
                                       (cons __tmp253975 __tmp253969))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp253968))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp253967 _stx242889_)))))
                  (___kont253064253065_
                   (lambda (_L243204_ _L243205_ _L243206_)
                     (let* ((_slot243235_
                             (##structure-ref
                              (let ((__tmp253977
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L243206_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp253977))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field243237_
                             (hash-ref _slots242893_ _slot243235_))
                            (_expr243239_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L243204_
                                _self242890_
                                _$t242891_
                                _methods242892_
                                _slots242893_
                                _class-check242894_
                                _struct-check242895_
                                _struct-assert242896_))))
                       (let ((__tmp253978
                              (let ((__tmp253979
                                     (let ((__tmp253987
                                            (let ((__tmp253988
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t242891_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp253988)))
                                           (__tmp253980
                                            (let ((__tmp253985
                                                   (let ((__tmp253986
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field243237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp253986)))
                                                  (__tmp253981
                                                   (let ((__tmp253983
                                                          (let ((__tmp253984
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self242890_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp253984)))
                 (__tmp253982
                  (let () (declare (not safe)) (cons _expr243239_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp253983
                                                           __tmp253982))))
                                              (declare (not safe))
                                              (cons __tmp253985 __tmp253981))))
                                       (declare (not safe))
                                       (cons __tmp253987 __tmp253980))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp253979))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp253978 _stx242889_)))))
                  (___kont253066253067_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx242889_
                        _self242890_
                        _$t242891_
                        _methods242892_
                        _slots242893_
                        _class-check242894_
                        _struct-check242895_
                        _struct-assert242896_)))))
              (let* ((___match253547253548_
                      (lambda (_e243102243140_
                               _hd243101243143_
                               _tl243100243145_
                               _e243105243148_
                               _hd243104243151_
                               _tl243103243153_
                               _e243108243156_
                               _hd243107243159_
                               _tl243106243161_
                               _e243111243164_
                               _hd243110243167_
                               _tl243109243169_
                               _e243114243172_
                               _hd243113243175_
                               _tl243112243177_
                               _e243117243180_
                               _hd243116243183_
                               _tl243115243185_
                               _e243120243188_
                               _hd243119243191_
                               _tl243118243193_
                               _e243123243196_
                               _hd243122243199_
                               _tl243121243201_)
                        (let ((_L243204_ _hd243122243199_)
                              (_L243205_ _hd243119243191_)
                              (_L243206_ _hd243110243167_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L243205_
                                      _self242890_))
                                   (let ((__tmp253989
                                          (let ((__tmp253990
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L243206_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp253990))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp253989
                                      'gxc#!mutator::t)))
                              (___kont253064253065_
                               _L243204_
                               _L243205_
                               _L243206_)
                              (___kont253066253067_)))))
                     (___match253545253546_
                      (lambda (_e243102243140_
                               _hd243101243143_
                               _tl243100243145_
                               _e243105243148_
                               _hd243104243151_
                               _tl243103243153_
                               _e243108243156_
                               _hd243107243159_
                               _tl243106243161_
                               _e243111243164_
                               _hd243110243167_
                               _tl243109243169_
                               _e243114243172_
                               _hd243113243175_
                               _tl243112243177_
                               _e243117243180_
                               _hd243116243183_
                               _tl243115243185_
                               _e243120243188_
                               _hd243119243191_
                               _tl243118243193_
                               _e243123243196_
                               _hd243122243199_
                               _tl243121243201_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl243121243201_))
                            (___match253547253548_
                             _e243102243140_
                             _hd243101243143_
                             _tl243100243145_
                             _e243105243148_
                             _hd243104243151_
                             _tl243103243153_
                             _e243108243156_
                             _hd243107243159_
                             _tl243106243161_
                             _e243111243164_
                             _hd243110243167_
                             _tl243109243169_
                             _e243114243172_
                             _hd243113243175_
                             _tl243112243177_
                             _e243117243180_
                             _hd243116243183_
                             _tl243115243185_
                             _e243120243188_
                             _hd243119243191_
                             _tl243118243193_
                             _e243123243196_
                             _hd243122243199_
                             _tl243121243201_)
                            (___kont253066253067_))))
                     (___match253539253540_
                      (lambda (_e243102243140_
                               _hd243101243143_
                               _tl243100243145_
                               _e243105243148_
                               _hd243104243151_
                               _tl243103243153_
                               _e243108243156_
                               _hd243107243159_
                               _tl243106243161_
                               _e243111243164_
                               _hd243110243167_
                               _tl243109243169_
                               _e243114243172_
                               _hd243113243175_
                               _tl243112243177_
                               _e243117243180_
                               _hd243116243183_
                               _tl243115243185_
                               _e243120243188_
                               _hd243119243191_
                               _tl243118243193_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl243112243177_))
                            (let ((_e243123243196_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl243112243177_))))
                              (let ((_tl243121243201_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e243123243196_)))
                                    (_hd243122243199_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e243123243196_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl243121243201_))
                                    (___match253547253548_
                                     _e243102243140_
                                     _hd243101243143_
                                     _tl243100243145_
                                     _e243105243148_
                                     _hd243104243151_
                                     _tl243103243153_
                                     _e243108243156_
                                     _hd243107243159_
                                     _tl243106243161_
                                     _e243111243164_
                                     _hd243110243167_
                                     _tl243109243169_
                                     _e243114243172_
                                     _hd243113243175_
                                     _tl243112243177_
                                     _e243117243180_
                                     _hd243116243183_
                                     _tl243115243185_
                                     _e243120243188_
                                     _hd243119243191_
                                     _tl243118243193_
                                     _e243123243196_
                                     _hd243122243199_
                                     _tl243121243201_)
                                    (___kont253066253067_))))
                            (___kont253066253067_))))
                     (___match253485253486_
                      (lambda (_e243078243247_
                               _hd243077243250_
                               _tl243076243252_
                               _e243081243255_
                               _hd243080243258_
                               _tl243079243260_
                               _e243084243263_
                               _hd243083243266_
                               _tl243082243268_
                               _e243087243271_
                               _hd243086243274_
                               _tl243085243276_
                               _e243090243279_
                               _hd243089243282_
                               _tl243088243284_
                               _e243093243287_
                               _hd243092243290_
                               _tl243091243292_
                               _e243096243295_
                               _hd243095243298_
                               _tl243094243300_)
                        (let ((_L243303_ _hd243095243298_)
                              (_L243304_ _hd243086243274_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L243303_
                                      _self242890_))
                                   (let ((__tmp253991
                                          (let ((__tmp253992
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L243304_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp253992))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp253991
                                      'gxc#!accessor::t)))
                              (___kont253062253063_ _L243303_ _L243304_)
                              (___kont253066253067_)))))
                     (___match253483253484_
                      (lambda (_e243078243247_
                               _hd243077243250_
                               _tl243076243252_
                               _e243081243255_
                               _hd243080243258_
                               _tl243079243260_
                               _e243084243263_
                               _hd243083243266_
                               _tl243082243268_
                               _e243087243271_
                               _hd243086243274_
                               _tl243085243276_
                               _e243090243279_
                               _hd243089243282_
                               _tl243088243284_
                               _e243093243287_
                               _hd243092243290_
                               _tl243091243292_
                               _e243096243295_
                               _hd243095243298_
                               _tl243094243300_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl243088243284_))
                            (___match253485253486_
                             _e243078243247_
                             _hd243077243250_
                             _tl243076243252_
                             _e243081243255_
                             _hd243080243258_
                             _tl243079243260_
                             _e243084243263_
                             _hd243083243266_
                             _tl243082243268_
                             _e243087243271_
                             _hd243086243274_
                             _tl243085243276_
                             _e243090243279_
                             _hd243089243282_
                             _tl243088243284_
                             _e243093243287_
                             _hd243092243290_
                             _tl243091243292_
                             _e243096243295_
                             _hd243095243298_
                             _tl243094243300_)
                            (___match253539253540_
                             _e243078243247_
                             _hd243077243250_
                             _tl243076243252_
                             _e243081243255_
                             _hd243080243258_
                             _tl243079243260_
                             _e243084243263_
                             _hd243083243266_
                             _tl243082243268_
                             _e243087243271_
                             _hd243086243274_
                             _tl243085243276_
                             _e243090243279_
                             _hd243089243282_
                             _tl243088243284_
                             _e243093243287_
                             _hd243092243290_
                             _tl243091243292_
                             _e243096243295_
                             _hd243095243298_
                             _tl243094243300_))))
                     (___match253429253430_
                      (lambda (_e243043243336_
                               _hd243042243339_
                               _tl243041243341_
                               _e243046243344_
                               _hd243045243347_
                               _tl243044243349_
                               _e243049243352_
                               _hd243048243355_
                               _tl243047243357_
                               _e243052243360_
                               _hd243051243363_
                               _tl243050243365_
                               _e243055243368_
                               _hd243054243371_
                               _tl243053243373_
                               _e243058243376_
                               _hd243057243379_
                               _tl243056243381_
                               _e243061243384_
                               _hd243060243387_
                               _tl243059243389_
                               _e243064243392_
                               _hd243063243395_
                               _tl243062243397_
                               _e243067243400_
                               _hd243066243403_
                               _tl243065243405_
                               _e243070243408_
                               _hd243069243411_
                               _tl243068243413_
                               _e243073243416_
                               _hd243072243419_
                               _tl243071243421_)
                        (let ((_L243424_ _hd243072243419_)
                              (_L243425_ _hd243069243411_)
                              (_L243426_ _hd243060243387_)
                              (_L243427_ _hd243051243363_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L243427_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L243427_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L243426_
                                      _self242890_)))
                              (___kont253060253061_
                               _L243424_
                               _L243425_
                               _L243426_
                               _L243427_)
                              (___kont253066253067_)))))
                     (___match253421253422_
                      (lambda (_e243043243336_
                               _hd243042243339_
                               _tl243041243341_
                               _e243046243344_
                               _hd243045243347_
                               _tl243044243349_
                               _e243049243352_
                               _hd243048243355_
                               _tl243047243357_
                               _e243052243360_
                               _hd243051243363_
                               _tl243050243365_
                               _e243055243368_
                               _hd243054243371_
                               _tl243053243373_
                               _e243058243376_
                               _hd243057243379_
                               _tl243056243381_
                               _e243061243384_
                               _hd243060243387_
                               _tl243059243389_
                               _e243064243392_
                               _hd243063243395_
                               _tl243062243397_
                               _e243067243400_
                               _hd243066243403_
                               _tl243065243405_
                               _e243070243408_
                               _hd243069243411_
                               _tl243068243413_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl243062243397_))
                            (let ((_e243073243416_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl243062243397_))))
                              (let ((_tl243071243421_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e243073243416_)))
                                    (_hd243072243419_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e243073243416_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl243071243421_))
                                    (___match253429253430_
                                     _e243043243336_
                                     _hd243042243339_
                                     _tl243041243341_
                                     _e243046243344_
                                     _hd243045243347_
                                     _tl243044243349_
                                     _e243049243352_
                                     _hd243048243355_
                                     _tl243047243357_
                                     _e243052243360_
                                     _hd243051243363_
                                     _tl243050243365_
                                     _e243055243368_
                                     _hd243054243371_
                                     _tl243053243373_
                                     _e243058243376_
                                     _hd243057243379_
                                     _tl243056243381_
                                     _e243061243384_
                                     _hd243060243387_
                                     _tl243059243389_
                                     _e243064243392_
                                     _hd243063243395_
                                     _tl243062243397_
                                     _e243067243400_
                                     _hd243066243403_
                                     _tl243065243405_
                                     _e243070243408_
                                     _hd243069243411_
                                     _tl243068243413_
                                     _e243073243416_
                                     _hd243072243419_
                                     _tl243071243421_)
                                    (___kont253066253067_))))
                            (___match253545253546_
                             _e243043243336_
                             _hd243042243339_
                             _tl243041243341_
                             _e243046243344_
                             _hd243045243347_
                             _tl243044243349_
                             _e243049243352_
                             _hd243048243355_
                             _tl243047243357_
                             _e243052243360_
                             _hd243051243363_
                             _tl243050243365_
                             _e243055243368_
                             _hd243054243371_
                             _tl243053243373_
                             _e243058243376_
                             _hd243057243379_
                             _tl243056243381_
                             _e243061243384_
                             _hd243060243387_
                             _tl243059243389_
                             _e243064243392_
                             _hd243063243395_
                             _tl243062243397_))))
                     (___match253343253344_
                      (lambda (_e243009243470_
                               _hd243008243473_
                               _tl243007243475_
                               _e243012243478_
                               _hd243011243481_
                               _tl243010243483_
                               _e243015243486_
                               _hd243014243489_
                               _tl243013243491_
                               _e243018243494_
                               _hd243017243497_
                               _tl243016243499_
                               _e243021243502_
                               _hd243020243505_
                               _tl243019243507_
                               _e243024243510_
                               _hd243023243513_
                               _tl243022243515_
                               _e243027243518_
                               _hd243026243521_
                               _tl243025243523_
                               _e243030243526_
                               _hd243029243529_
                               _tl243028243531_
                               _e243033243534_
                               _hd243032243537_
                               _tl243031243539_
                               _e243036243542_
                               _hd243035243545_
                               _tl243034243547_)
                        (let ((_L243550_ _hd243035243545_)
                              (_L243551_ _hd243026243521_)
                              (_L243552_ _hd243017243497_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L243552_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L243552_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L243551_
                                      _self242890_)))
                              (___kont253058253059_
                               _L243550_
                               _L243551_
                               _L243552_)
                              (___match253547253548_
                               _e243009243470_
                               _hd243008243473_
                               _tl243007243475_
                               _e243012243478_
                               _hd243011243481_
                               _tl243010243483_
                               _e243015243486_
                               _hd243014243489_
                               _tl243013243491_
                               _e243018243494_
                               _hd243017243497_
                               _tl243016243499_
                               _e243021243502_
                               _hd243020243505_
                               _tl243019243507_
                               _e243024243510_
                               _hd243023243513_
                               _tl243022243515_
                               _e243027243518_
                               _hd243026243521_
                               _tl243025243523_
                               _e243030243526_
                               _hd243029243529_
                               _tl243028243531_)))))
                     (___match253341253342_
                      (lambda (_e243009243470_
                               _hd243008243473_
                               _tl243007243475_
                               _e243012243478_
                               _hd243011243481_
                               _tl243010243483_
                               _e243015243486_
                               _hd243014243489_
                               _tl243013243491_
                               _e243018243494_
                               _hd243017243497_
                               _tl243016243499_
                               _e243021243502_
                               _hd243020243505_
                               _tl243019243507_
                               _e243024243510_
                               _hd243023243513_
                               _tl243022243515_
                               _e243027243518_
                               _hd243026243521_
                               _tl243025243523_
                               _e243030243526_
                               _hd243029243529_
                               _tl243028243531_
                               _e243033243534_
                               _hd243032243537_
                               _tl243031243539_
                               _e243036243542_
                               _hd243035243545_
                               _tl243034243547_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl243028243531_))
                            (___match253343253344_
                             _e243009243470_
                             _hd243008243473_
                             _tl243007243475_
                             _e243012243478_
                             _hd243011243481_
                             _tl243010243483_
                             _e243015243486_
                             _hd243014243489_
                             _tl243013243491_
                             _e243018243494_
                             _hd243017243497_
                             _tl243016243499_
                             _e243021243502_
                             _hd243020243505_
                             _tl243019243507_
                             _e243024243510_
                             _hd243023243513_
                             _tl243022243515_
                             _e243027243518_
                             _hd243026243521_
                             _tl243025243523_
                             _e243030243526_
                             _hd243029243529_
                             _tl243028243531_
                             _e243033243534_
                             _hd243032243537_
                             _tl243031243539_
                             _e243036243542_
                             _hd243035243545_
                             _tl243034243547_)
                            (___match253421253422_
                             _e243009243470_
                             _hd243008243473_
                             _tl243007243475_
                             _e243012243478_
                             _hd243011243481_
                             _tl243010243483_
                             _e243015243486_
                             _hd243014243489_
                             _tl243013243491_
                             _e243018243494_
                             _hd243017243497_
                             _tl243016243499_
                             _e243021243502_
                             _hd243020243505_
                             _tl243019243507_
                             _e243024243510_
                             _hd243023243513_
                             _tl243022243515_
                             _e243027243518_
                             _hd243026243521_
                             _tl243025243523_
                             _e243030243526_
                             _hd243029243529_
                             _tl243028243531_
                             _e243033243534_
                             _hd243032243537_
                             _tl243031243539_
                             _e243036243542_
                             _hd243035243545_
                             _tl243034243547_))))
                     (___match253331253332_
                      (lambda (_e243009243470_
                               _hd243008243473_
                               _tl243007243475_
                               _e243012243478_
                               _hd243011243481_
                               _tl243010243483_
                               _e243015243486_
                               _hd243014243489_
                               _tl243013243491_
                               _e243018243494_
                               _hd243017243497_
                               _tl243016243499_
                               _e243021243502_
                               _hd243020243505_
                               _tl243019243507_
                               _e243024243510_
                               _hd243023243513_
                               _tl243022243515_
                               _e243027243518_
                               _hd243026243521_
                               _tl243025243523_
                               _e243030243526_
                               _hd243029243529_
                               _tl243028243531_
                               _e243033243534_
                               _hd243032243537_
                               _tl243031243539_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd243032243537_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl243031243539_))
                                (let ((_e243036243542_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl243031243539_))))
                                  (let ((_tl243034243547_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e243036243542_)))
                                        (_hd243035243545_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e243036243542_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl243034243547_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl243028243531_))
                                            (___match253343253344_
                                             _e243009243470_
                                             _hd243008243473_
                                             _tl243007243475_
                                             _e243012243478_
                                             _hd243011243481_
                                             _tl243010243483_
                                             _e243015243486_
                                             _hd243014243489_
                                             _tl243013243491_
                                             _e243018243494_
                                             _hd243017243497_
                                             _tl243016243499_
                                             _e243021243502_
                                             _hd243020243505_
                                             _tl243019243507_
                                             _e243024243510_
                                             _hd243023243513_
                                             _tl243022243515_
                                             _e243027243518_
                                             _hd243026243521_
                                             _tl243025243523_
                                             _e243030243526_
                                             _hd243029243529_
                                             _tl243028243531_
                                             _e243033243534_
                                             _hd243032243537_
                                             _tl243031243539_
                                             _e243036243542_
                                             _hd243035243545_
                                             _tl243034243547_)
                                            (___match253421253422_
                                             _e243009243470_
                                             _hd243008243473_
                                             _tl243007243475_
                                             _e243012243478_
                                             _hd243011243481_
                                             _tl243010243483_
                                             _e243015243486_
                                             _hd243014243489_
                                             _tl243013243491_
                                             _e243018243494_
                                             _hd243017243497_
                                             _tl243016243499_
                                             _e243021243502_
                                             _hd243020243505_
                                             _tl243019243507_
                                             _e243024243510_
                                             _hd243023243513_
                                             _tl243022243515_
                                             _e243027243518_
                                             _hd243026243521_
                                             _tl243025243523_
                                             _e243030243526_
                                             _hd243029243529_
                                             _tl243028243531_
                                             _e243033243534_
                                             _hd243032243537_
                                             _tl243031243539_
                                             _e243036243542_
                                             _hd243035243545_
                                             _tl243034243547_))
                                        (___match253545253546_
                                         _e243009243470_
                                         _hd243008243473_
                                         _tl243007243475_
                                         _e243012243478_
                                         _hd243011243481_
                                         _tl243010243483_
                                         _e243015243486_
                                         _hd243014243489_
                                         _tl243013243491_
                                         _e243018243494_
                                         _hd243017243497_
                                         _tl243016243499_
                                         _e243021243502_
                                         _hd243020243505_
                                         _tl243019243507_
                                         _e243024243510_
                                         _hd243023243513_
                                         _tl243022243515_
                                         _e243027243518_
                                         _hd243026243521_
                                         _tl243025243523_
                                         _e243030243526_
                                         _hd243029243529_
                                         _tl243028243531_))))
                                (___match253545253546_
                                 _e243009243470_
                                 _hd243008243473_
                                 _tl243007243475_
                                 _e243012243478_
                                 _hd243011243481_
                                 _tl243010243483_
                                 _e243015243486_
                                 _hd243014243489_
                                 _tl243013243491_
                                 _e243018243494_
                                 _hd243017243497_
                                 _tl243016243499_
                                 _e243021243502_
                                 _hd243020243505_
                                 _tl243019243507_
                                 _e243024243510_
                                 _hd243023243513_
                                 _tl243022243515_
                                 _e243027243518_
                                 _hd243026243521_
                                 _tl243025243523_
                                 _e243030243526_
                                 _hd243029243529_
                                 _tl243028243531_))
                            (___match253545253546_
                             _e243009243470_
                             _hd243008243473_
                             _tl243007243475_
                             _e243012243478_
                             _hd243011243481_
                             _tl243010243483_
                             _e243015243486_
                             _hd243014243489_
                             _tl243013243491_
                             _e243018243494_
                             _hd243017243497_
                             _tl243016243499_
                             _e243021243502_
                             _hd243020243505_
                             _tl243019243507_
                             _e243024243510_
                             _hd243023243513_
                             _tl243022243515_
                             _e243027243518_
                             _hd243026243521_
                             _tl243025243523_
                             _e243030243526_
                             _hd243029243529_
                             _tl243028243531_))))
                     (___match253263253264_
                      (lambda (_e242958243591_
                               _hd242957243594_
                               _tl242956243596_
                               _e242961243599_
                               _hd242960243602_
                               _tl242959243604_
                               _e242964243607_
                               _hd242963243610_
                               _tl242962243612_
                               _e242967243615_
                               _hd242966243618_
                               _tl242965243620_
                               _e242970243623_
                               _hd242969243626_
                               _tl242968243628_
                               _e242973243631_
                               _hd242972243634_
                               _tl242971243636_
                               _e242976243639_
                               _hd242975243642_
                               _tl242974243644_
                               _e242979243647_
                               _hd242978243650_
                               _tl242977243652_
                               _e242982243655_
                               _hd242981243658_
                               _tl242980243660_
                               _e242985243663_
                               _hd242984243666_
                               _tl242983243668_
                               _e242988243671_
                               _hd242987243674_
                               _tl242986243676_
                               _e242991243679_
                               _hd242990243682_
                               _tl242989243684_
                               _e242994243687_
                               _hd242993243690_
                               _tl242992243692_
                               ___splice253056253057_
                               _target242995243695_
                               _tl242997243697_)
                        (letrec ((_loop242998243700_
                                  (lambda (_hd242996243703_ _args243002243705_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd242996243703_))
                                        (let ((_e242999243708_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd242996243703_))))
                                          (let ((_lp-tl243001243713_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e242999243708_)))
                                                (_lp-hd243000243711_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e242999243708_))))
                                            (let ((__tmp253993
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd243000243711_
                                                           _args243002243705_))))
                                              (declare (not safe))
                                              (_loop242998243700_
                                               _lp-tl243001243713_
                                               __tmp253993))))
                                        (let ((_args243003243716_
                                               (reverse _args243002243705_)))
                                          (let ((_L243719_ _args243003243716_)
                                                (_L243720_ _hd242993243690_)
                                                (_L243721_ _hd242984243666_)
                                                (_L243722_ _hd242975243642_)
                                                (_L243723_ _hd242966243618_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L243723_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L243722_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L243721_
                                                        _self242890_)))
                                                (___kont253054253055_
                                                 _L243719_
                                                 _L243720_
                                                 _L243721_
                                                 _L243722_
                                                 _L243723_)
                                                (___kont253066253067_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop242998243700_ _target242995243695_ '())))))
                     (___match253221253222_
                      (lambda (_e242958243591_
                               _hd242957243594_
                               _tl242956243596_
                               _e242961243599_
                               _hd242960243602_
                               _tl242959243604_
                               _e242964243607_
                               _hd242963243610_
                               _tl242962243612_
                               _e242967243615_
                               _hd242966243618_
                               _tl242965243620_
                               _e242970243623_
                               _hd242969243626_
                               _tl242968243628_
                               _e242973243631_
                               _hd242972243634_
                               _tl242971243636_
                               _e242976243639_
                               _hd242975243642_
                               _tl242974243644_
                               _e242979243647_
                               _hd242978243650_
                               _tl242977243652_
                               _e242982243655_
                               _hd242981243658_
                               _tl242980243660_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd242981243658_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl242980243660_))
                                (let ((_e242985243663_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl242980243660_))))
                                  (let ((_tl242983243668_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e242985243663_)))
                                        (_hd242984243666_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e242985243663_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl242983243668_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl242977243652_))
                                            (let ((_e242988243671_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl242977243652_))))
                                              (let ((_tl242986243676_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e242988243671_)))
                                                    (_hd242987243674_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e242988243671_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd242987243674_))
                                                    (let ((_e242991243679_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd242987243674_))))
                                                      (let ((_tl242989243684_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e242991243679_)))
                    (_hd242990243682_
                     (let () (declare (not safe)) (##car _e242991243679_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd242990243682_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd242990243682_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl242989243684_))
                            (let ((_e242994243687_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl242989243684_))))
                              (let ((_tl242992243692_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e242994243687_)))
                                    (_hd242993243690_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e242994243687_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl242992243692_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl242986243676_))
                                        (let ((___splice253056253057_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl242986243676_
                                                  '0))))
                                          (let ((_tl242997243697_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice253056253057_
                                                    '1)))
                                                (_target242995243695_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice253056253057_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl242997243697_))
                                                (___match253263253264_
                                                 _e242958243591_
                                                 _hd242957243594_
                                                 _tl242956243596_
                                                 _e242961243599_
                                                 _hd242960243602_
                                                 _tl242959243604_
                                                 _e242964243607_
                                                 _hd242963243610_
                                                 _tl242962243612_
                                                 _e242967243615_
                                                 _hd242966243618_
                                                 _tl242965243620_
                                                 _e242970243623_
                                                 _hd242969243626_
                                                 _tl242968243628_
                                                 _e242973243631_
                                                 _hd242972243634_
                                                 _tl242971243636_
                                                 _e242976243639_
                                                 _hd242975243642_
                                                 _tl242974243644_
                                                 _e242979243647_
                                                 _hd242978243650_
                                                 _tl242977243652_
                                                 _e242982243655_
                                                 _hd242981243658_
                                                 _tl242980243660_
                                                 _e242985243663_
                                                 _hd242984243666_
                                                 _tl242983243668_
                                                 _e242988243671_
                                                 _hd242987243674_
                                                 _tl242986243676_
                                                 _e242991243679_
                                                 _hd242990243682_
                                                 _tl242989243684_
                                                 _e242994243687_
                                                 _hd242993243690_
                                                 _tl242992243692_
                                                 ___splice253056253057_
                                                 _target242995243695_
                                                 _tl242997243697_)
                                                (___kont253066253067_))))
                                        (___kont253066253067_))
                                    (___kont253066253067_))))
                            (___kont253066253067_))
                        (___kont253066253067_))
                    (___kont253066253067_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont253066253067_))))
                                            (___match253545253546_
                                             _e242958243591_
                                             _hd242957243594_
                                             _tl242956243596_
                                             _e242961243599_
                                             _hd242960243602_
                                             _tl242959243604_
                                             _e242964243607_
                                             _hd242963243610_
                                             _tl242962243612_
                                             _e242967243615_
                                             _hd242966243618_
                                             _tl242965243620_
                                             _e242970243623_
                                             _hd242969243626_
                                             _tl242968243628_
                                             _e242973243631_
                                             _hd242972243634_
                                             _tl242971243636_
                                             _e242976243639_
                                             _hd242975243642_
                                             _tl242974243644_
                                             _e242979243647_
                                             _hd242978243650_
                                             _tl242977243652_))
                                        (___match253545253546_
                                         _e242958243591_
                                         _hd242957243594_
                                         _tl242956243596_
                                         _e242961243599_
                                         _hd242960243602_
                                         _tl242959243604_
                                         _e242964243607_
                                         _hd242963243610_
                                         _tl242962243612_
                                         _e242967243615_
                                         _hd242966243618_
                                         _tl242965243620_
                                         _e242970243623_
                                         _hd242969243626_
                                         _tl242968243628_
                                         _e242973243631_
                                         _hd242972243634_
                                         _tl242971243636_
                                         _e242976243639_
                                         _hd242975243642_
                                         _tl242974243644_
                                         _e242979243647_
                                         _hd242978243650_
                                         _tl242977243652_))))
                                (___match253545253546_
                                 _e242958243591_
                                 _hd242957243594_
                                 _tl242956243596_
                                 _e242961243599_
                                 _hd242960243602_
                                 _tl242959243604_
                                 _e242964243607_
                                 _hd242963243610_
                                 _tl242962243612_
                                 _e242967243615_
                                 _hd242966243618_
                                 _tl242965243620_
                                 _e242970243623_
                                 _hd242969243626_
                                 _tl242968243628_
                                 _e242973243631_
                                 _hd242972243634_
                                 _tl242971243636_
                                 _e242976243639_
                                 _hd242975243642_
                                 _tl242974243644_
                                 _e242979243647_
                                 _hd242978243650_
                                 _tl242977243652_))
                            (___match253331253332_
                             _e242958243591_
                             _hd242957243594_
                             _tl242956243596_
                             _e242961243599_
                             _hd242960243602_
                             _tl242959243604_
                             _e242964243607_
                             _hd242963243610_
                             _tl242962243612_
                             _e242967243615_
                             _hd242966243618_
                             _tl242965243620_
                             _e242970243623_
                             _hd242969243626_
                             _tl242968243628_
                             _e242973243631_
                             _hd242972243634_
                             _tl242971243636_
                             _e242976243639_
                             _hd242975243642_
                             _tl242974243644_
                             _e242979243647_
                             _hd242978243650_
                             _tl242977243652_
                             _e242982243655_
                             _hd242981243658_
                             _tl242980243660_))))
                     (___match253153253154_
                      (lambda (_e242914243783_
                               _hd242913243786_
                               _tl242912243788_
                               _e242917243791_
                               _hd242916243794_
                               _tl242915243796_
                               _e242920243799_
                               _hd242919243802_
                               _tl242918243804_
                               _e242923243807_
                               _hd242922243810_
                               _tl242921243812_
                               _e242926243815_
                               _hd242925243818_
                               _tl242924243820_
                               _e242929243823_
                               _hd242928243826_
                               _tl242927243828_
                               _e242932243831_
                               _hd242931243834_
                               _tl242930243836_
                               _e242935243839_
                               _hd242934243842_
                               _tl242933243844_
                               _e242938243847_
                               _hd242937243850_
                               _tl242936243852_
                               _e242941243855_
                               _hd242940243858_
                               _tl242939243860_
                               ___splice253052253053_
                               _target242942243863_
                               _tl242944243865_)
                        (letrec ((_loop242945243868_
                                  (lambda (_hd242943243871_ _args242949243873_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd242943243871_))
                                        (let ((_e242946243876_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd242943243871_))))
                                          (let ((_lp-tl242948243881_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e242946243876_)))
                                                (_lp-hd242947243879_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e242946243876_))))
                                            (let ((__tmp253994
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd242947243879_
                                                           _args242949243873_))))
                                              (declare (not safe))
                                              (_loop242945243868_
                                               _lp-tl242948243881_
                                               __tmp253994))))
                                        (let ((_args242950243884_
                                               (reverse _args242949243873_)))
                                          (let ((_L243887_ _args242950243884_)
                                                (_L243888_ _hd242940243858_)
                                                (_L243889_ _hd242931243834_)
                                                (_L243890_ _hd242922243810_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L243890_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L243889_
                                                        _self242890_)))
                                                (___kont253050253051_
                                                 _L243887_
                                                 _L243888_
                                                 _L243889_
                                                 _L243890_)
                                                (___match253341253342_
                                                 _e242914243783_
                                                 _hd242913243786_
                                                 _tl242912243788_
                                                 _e242917243791_
                                                 _hd242916243794_
                                                 _tl242915243796_
                                                 _e242920243799_
                                                 _hd242919243802_
                                                 _tl242918243804_
                                                 _e242923243807_
                                                 _hd242922243810_
                                                 _tl242921243812_
                                                 _e242926243815_
                                                 _hd242925243818_
                                                 _tl242924243820_
                                                 _e242929243823_
                                                 _hd242928243826_
                                                 _tl242927243828_
                                                 _e242932243831_
                                                 _hd242931243834_
                                                 _tl242930243836_
                                                 _e242935243839_
                                                 _hd242934243842_
                                                 _tl242933243844_
                                                 _e242938243847_
                                                 _hd242937243850_
                                                 _tl242936243852_
                                                 _e242941243855_
                                                 _hd242940243858_
                                                 _tl242939243860_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop242945243868_ _target242942243863_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx253048253049_))
                    (let ((_e242914243783_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx253048253049_))))
                      (let ((_tl242912243788_
                             (let ()
                               (declare (not safe))
                               (##cdr _e242914243783_)))
                            (_hd242913243786_
                             (let ()
                               (declare (not safe))
                               (##car _e242914243783_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl242912243788_))
                            (let ((_e242917243791_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl242912243788_))))
                              (let ((_tl242915243796_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e242917243791_)))
                                    (_hd242916243794_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e242917243791_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd242916243794_))
                                    (let ((_e242920243799_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd242916243794_))))
                                      (let ((_tl242918243804_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e242920243799_)))
                                            (_hd242919243802_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e242920243799_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd242919243802_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd242919243802_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl242918243804_))
                                                    (let ((_e242923243807_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl242918243804_))))
                                                      (let ((_tl242921243812_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e242923243807_)))
                    (_hd242922243810_
                     (let () (declare (not safe)) (##car _e242923243807_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl242921243812_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl242915243796_))
                        (let ((_e242926243815_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl242915243796_))))
                          (let ((_tl242924243820_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e242926243815_)))
                                (_hd242925243818_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e242926243815_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd242925243818_))
                                (let ((_e242929243823_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd242925243818_))))
                                  (let ((_tl242927243828_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e242929243823_)))
                                        (_hd242928243826_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e242929243823_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd242928243826_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd242928243826_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl242927243828_))
                                                (let ((_e242932243831_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl242927243828_))))
                                                  (let ((_tl242930243836_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e242932243831_)))
                                                        (_hd242931243834_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e242932243831_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl242930243836_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl242924243820_))
                                                            (let ((_e242935243839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl242924243820_))))
                      (let ((_tl242933243844_
                             (let ()
                               (declare (not safe))
                               (##cdr _e242935243839_)))
                            (_hd242934243842_
                             (let ()
                               (declare (not safe))
                               (##car _e242935243839_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd242934243842_))
                            (let ((_e242938243847_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd242934243842_))))
                              (let ((_tl242936243852_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e242938243847_)))
                                    (_hd242937243850_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e242938243847_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd242937243850_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd242937243850_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl242936243852_))
                                            (let ((_e242941243855_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl242936243852_))))
                                              (let ((_tl242939243860_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e242941243855_)))
                                                    (_hd242940243858_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e242941243855_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl242939243860_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl242933243844_))
                                                        (let ((___splice253052253053_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl242933243844_ '0))))
                  (let ((_tl242944243865_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice253052253053_ '1)))
                        (_target242942243863_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice253052253053_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl242944243865_))
                        (___match253153253154_
                         _e242914243783_
                         _hd242913243786_
                         _tl242912243788_
                         _e242917243791_
                         _hd242916243794_
                         _tl242915243796_
                         _e242920243799_
                         _hd242919243802_
                         _tl242918243804_
                         _e242923243807_
                         _hd242922243810_
                         _tl242921243812_
                         _e242926243815_
                         _hd242925243818_
                         _tl242924243820_
                         _e242929243823_
                         _hd242928243826_
                         _tl242927243828_
                         _e242932243831_
                         _hd242931243834_
                         _tl242930243836_
                         _e242935243839_
                         _hd242934243842_
                         _tl242933243844_
                         _e242938243847_
                         _hd242937243850_
                         _tl242936243852_
                         _e242941243855_
                         _hd242940243858_
                         _tl242939243860_
                         ___splice253052253053_
                         _target242942243863_
                         _tl242944243865_)
                        (___match253341253342_
                         _e242914243783_
                         _hd242913243786_
                         _tl242912243788_
                         _e242917243791_
                         _hd242916243794_
                         _tl242915243796_
                         _e242920243799_
                         _hd242919243802_
                         _tl242918243804_
                         _e242923243807_
                         _hd242922243810_
                         _tl242921243812_
                         _e242926243815_
                         _hd242925243818_
                         _tl242924243820_
                         _e242929243823_
                         _hd242928243826_
                         _tl242927243828_
                         _e242932243831_
                         _hd242931243834_
                         _tl242930243836_
                         _e242935243839_
                         _hd242934243842_
                         _tl242933243844_
                         _e242938243847_
                         _hd242937243850_
                         _tl242936243852_
                         _e242941243855_
                         _hd242940243858_
                         _tl242939243860_))))
                (___match253341253342_
                 _e242914243783_
                 _hd242913243786_
                 _tl242912243788_
                 _e242917243791_
                 _hd242916243794_
                 _tl242915243796_
                 _e242920243799_
                 _hd242919243802_
                 _tl242918243804_
                 _e242923243807_
                 _hd242922243810_
                 _tl242921243812_
                 _e242926243815_
                 _hd242925243818_
                 _tl242924243820_
                 _e242929243823_
                 _hd242928243826_
                 _tl242927243828_
                 _e242932243831_
                 _hd242931243834_
                 _tl242930243836_
                 _e242935243839_
                 _hd242934243842_
                 _tl242933243844_
                 _e242938243847_
                 _hd242937243850_
                 _tl242936243852_
                 _e242941243855_
                 _hd242940243858_
                 _tl242939243860_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match253545253546_
                                                     _e242914243783_
                                                     _hd242913243786_
                                                     _tl242912243788_
                                                     _e242917243791_
                                                     _hd242916243794_
                                                     _tl242915243796_
                                                     _e242920243799_
                                                     _hd242919243802_
                                                     _tl242918243804_
                                                     _e242923243807_
                                                     _hd242922243810_
                                                     _tl242921243812_
                                                     _e242926243815_
                                                     _hd242925243818_
                                                     _tl242924243820_
                                                     _e242929243823_
                                                     _hd242928243826_
                                                     _tl242927243828_
                                                     _e242932243831_
                                                     _hd242931243834_
                                                     _tl242930243836_
                                                     _e242935243839_
                                                     _hd242934243842_
                                                     _tl242933243844_))))
                                            (___match253545253546_
                                             _e242914243783_
                                             _hd242913243786_
                                             _tl242912243788_
                                             _e242917243791_
                                             _hd242916243794_
                                             _tl242915243796_
                                             _e242920243799_
                                             _hd242919243802_
                                             _tl242918243804_
                                             _e242923243807_
                                             _hd242922243810_
                                             _tl242921243812_
                                             _e242926243815_
                                             _hd242925243818_
                                             _tl242924243820_
                                             _e242929243823_
                                             _hd242928243826_
                                             _tl242927243828_
                                             _e242932243831_
                                             _hd242931243834_
                                             _tl242930243836_
                                             _e242935243839_
                                             _hd242934243842_
                                             _tl242933243844_))
                                        (___match253221253222_
                                         _e242914243783_
                                         _hd242913243786_
                                         _tl242912243788_
                                         _e242917243791_
                                         _hd242916243794_
                                         _tl242915243796_
                                         _e242920243799_
                                         _hd242919243802_
                                         _tl242918243804_
                                         _e242923243807_
                                         _hd242922243810_
                                         _tl242921243812_
                                         _e242926243815_
                                         _hd242925243818_
                                         _tl242924243820_
                                         _e242929243823_
                                         _hd242928243826_
                                         _tl242927243828_
                                         _e242932243831_
                                         _hd242931243834_
                                         _tl242930243836_
                                         _e242935243839_
                                         _hd242934243842_
                                         _tl242933243844_
                                         _e242938243847_
                                         _hd242937243850_
                                         _tl242936243852_))
                                    (___match253545253546_
                                     _e242914243783_
                                     _hd242913243786_
                                     _tl242912243788_
                                     _e242917243791_
                                     _hd242916243794_
                                     _tl242915243796_
                                     _e242920243799_
                                     _hd242919243802_
                                     _tl242918243804_
                                     _e242923243807_
                                     _hd242922243810_
                                     _tl242921243812_
                                     _e242926243815_
                                     _hd242925243818_
                                     _tl242924243820_
                                     _e242929243823_
                                     _hd242928243826_
                                     _tl242927243828_
                                     _e242932243831_
                                     _hd242931243834_
                                     _tl242930243836_
                                     _e242935243839_
                                     _hd242934243842_
                                     _tl242933243844_))))
                            (___match253545253546_
                             _e242914243783_
                             _hd242913243786_
                             _tl242912243788_
                             _e242917243791_
                             _hd242916243794_
                             _tl242915243796_
                             _e242920243799_
                             _hd242919243802_
                             _tl242918243804_
                             _e242923243807_
                             _hd242922243810_
                             _tl242921243812_
                             _e242926243815_
                             _hd242925243818_
                             _tl242924243820_
                             _e242929243823_
                             _hd242928243826_
                             _tl242927243828_
                             _e242932243831_
                             _hd242931243834_
                             _tl242930243836_
                             _e242935243839_
                             _hd242934243842_
                             _tl242933243844_))))
                    (___match253483253484_
                     _e242914243783_
                     _hd242913243786_
                     _tl242912243788_
                     _e242917243791_
                     _hd242916243794_
                     _tl242915243796_
                     _e242920243799_
                     _hd242919243802_
                     _tl242918243804_
                     _e242923243807_
                     _hd242922243810_
                     _tl242921243812_
                     _e242926243815_
                     _hd242925243818_
                     _tl242924243820_
                     _e242929243823_
                     _hd242928243826_
                     _tl242927243828_
                     _e242932243831_
                     _hd242931243834_
                     _tl242930243836_))
                (___kont253066253067_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont253066253067_))
                                            (___kont253066253067_))
                                        (___kont253066253067_))))
                                (___kont253066253067_))))
                        (___kont253066253067_))
                    (___kont253066253067_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont253066253067_))
                                                (___kont253066253067_))
                                            (___kont253066253067_))))
                                    (___kont253066253067_))))
                            (___kont253066253067_))))
                    (___kont253066253067_))))))))))
