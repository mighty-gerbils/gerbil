(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1707646855)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl246878_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp252478 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl246878_ __tmp252478))
           (let ()
             (declare (not safe))
             (table-set! _tbl246878_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246878_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246878_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246878_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl246878_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx246861_ . _args246863_)
        (let ((__tmp252480
               (lambda ()
                 (declare (not safe))
                 (if (null? _args246863_)
                     (gxc#compile-e__0 _stx246861_)
                     (let ((_arg1246868_ (car _args246863_))
                           (_rest246870_ (cdr _args246863_)))
                       (if (null? _rest246870_)
                           (gxc#compile-e__1 _stx246861_ _arg1246868_)
                           (let ((_arg2246873_ (car _rest246870_))
                                 (_rest246875_ (cdr _rest246870_)))
                             (if (null? _rest246875_)
                                 (gxc#compile-e__2
                                  _stx246861_
                                  _arg1246868_
                                  _arg2246873_)
                                 (apply gxc#compile-e
                                        _stx246861_
                                        _arg1246868_
                                        _arg2246873_
                                        _rest246875_))))))))
              (__tmp252479 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp252480
           gxc#current-compile-methods
           __tmp252479))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl246858_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp252481 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl246858_ __tmp252481))
           (let ()
             (declare (not safe))
             (table-set! _tbl246858_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246858_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246858_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246858_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246858_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246858_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246858_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246858_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246858_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl246858_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246858_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl246858_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246858_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246858_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246858_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246858_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl246858_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx246841_ . _args246843_)
        (let ((__tmp252483
               (lambda ()
                 (declare (not safe))
                 (if (null? _args246843_)
                     (gxc#compile-e__0 _stx246841_)
                     (let ((_arg1246848_ (car _args246843_))
                           (_rest246850_ (cdr _args246843_)))
                       (if (null? _rest246850_)
                           (gxc#compile-e__1 _stx246841_ _arg1246848_)
                           (let ((_arg2246853_ (car _rest246850_))
                                 (_rest246855_ (cdr _rest246850_)))
                             (if (null? _rest246855_)
                                 (gxc#compile-e__2
                                  _stx246841_
                                  _arg1246848_
                                  _arg2246853_)
                                 (apply gxc#compile-e
                                        _stx246841_
                                        _arg1246848_
                                        _arg2246853_
                                        _rest246855_))))))))
              (__tmp252482 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp252483
           gxc#current-compile-methods
           __tmp252482))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl246838_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp252484 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl246838_ __tmp252484))
           (let ()
             (declare (not safe))
             (table-set! _tbl246838_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246838_ '%#call gxc#subst-object-refs-call%))
           _tbl246838_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx246821_ . _args246823_)
        (let ((__tmp252486
               (lambda ()
                 (declare (not safe))
                 (if (null? _args246823_)
                     (gxc#compile-e__0 _stx246821_)
                     (let ((_arg1246828_ (car _args246823_))
                           (_rest246830_ (cdr _args246823_)))
                       (if (null? _rest246830_)
                           (gxc#compile-e__1 _stx246821_ _arg1246828_)
                           (let ((_arg2246833_ (car _rest246830_))
                                 (_rest246835_ (cdr _rest246830_)))
                             (if (null? _rest246835_)
                                 (gxc#compile-e__2
                                  _stx246821_
                                  _arg1246828_
                                  _arg2246833_)
                                 (apply gxc#compile-e
                                        _stx246821_
                                        _arg1246828_
                                        _arg2246833_
                                        _rest246835_))))))))
              (__tmp252485 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp252486
           gxc#current-compile-methods
           __tmp252485))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx243491_)
        (letrec ((_generate-method-bind243493_
                  (lambda (_$t246815_ _id246816_ _$id246817_)
                    (let ((_$tmp246819_
                           (let ((__tmp252487 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp252487))))
                      (let ((__tmp252532
                             (let ()
                               (declare (not safe))
                               (cons _$id246817_ '())))
                            (__tmp252488
                             (let ((__tmp252489
                                    (let ((__tmp252490
                                           (let ((__tmp252530
                                                  (let ((__tmp252531
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp252531)))
                                                 (__tmp252491
                                                  (let ((__tmp252492
                                                         (let ((__tmp252493
                                                                (let ((__tmp252494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252495
                                      (let ((__tmp252496
                                             (let ((__tmp252516
                                                    (let ((__tmp252517
                                                           (let ((__tmp252529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp246819_ '())))
                         (__tmp252518
                          (let ((__tmp252519
                                 (let ((__tmp252520
                                        (let ((__tmp252527
                                               (let ((__tmp252528
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp252528)))
                                              (__tmp252521
                                               (let ((__tmp252525
                                                      (let ((__tmp252526
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t246815_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp252526)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp252522
                                                      (let ((__tmp252523
                                                             (let ((__tmp252524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id246816_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp252524))))
                (declare (not safe))
                (cons __tmp252523 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp252525
                                                       __tmp252522))))
                                          (declare (not safe))
                                          (cons __tmp252527 __tmp252521))))
                                   (declare (not safe))
                                   (cons '%#call __tmp252520))))
                            (declare (not safe))
                            (cons __tmp252519 '()))))
                     (declare (not safe))
                     (cons __tmp252529 __tmp252518))))
              (declare (not safe))
              (cons __tmp252517 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp252497
                                                    (let ((__tmp252498
                                                           (let ((__tmp252499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252514
                                 (let ((__tmp252515
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp246819_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp252515)))
                                (__tmp252500
                                 (let ((__tmp252512
                                        (let ((__tmp252513
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp246819_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp252513)))
                                       (__tmp252501
                                        (let ((__tmp252502
                                               (let ((__tmp252503
                                                      (let ((__tmp252510
                                                             (let ((__tmp252511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp252511)))
                    (__tmp252504
                     (let ((__tmp252508
                            (let ((__tmp252509
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp252509)))
                           (__tmp252505
                            (let ((__tmp252506
                                   (let ((__tmp252507
                                          (let ()
                                            (declare (not safe))
                                            (cons _id246816_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp252507))))
                              (declare (not safe))
                              (cons __tmp252506 '()))))
                       (declare (not safe))
                       (cons __tmp252508 __tmp252505))))
                (declare (not safe))
                (cons __tmp252510 __tmp252504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp252503))))
                                          (declare (not safe))
                                          (cons __tmp252502 '()))))
                                   (declare (not safe))
                                   (cons __tmp252512 __tmp252501))))
                            (declare (not safe))
                            (cons __tmp252514 __tmp252500))))
                     (declare (not safe))
                     (cons '%#if __tmp252499))))
              (declare (not safe))
              (cons __tmp252498 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp252516
                                                     __tmp252497))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp252496))))
                                 (declare (not safe))
                                 (cons __tmp252495 '()))))
                          (declare (not safe))
                          (cons '() __tmp252494))))
                   (declare (not safe))
                   (cons '%#lambda __tmp252493))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252492 '()))))
                                             (declare (not safe))
                                             (cons __tmp252530 __tmp252491))))
                                      (declare (not safe))
                                      (cons '%#call __tmp252490))))
                               (declare (not safe))
                               (cons __tmp252489 '()))))
                        (declare (not safe))
                        (cons __tmp252532 __tmp252488)))))
                 (_generate-slot-bind243494_
                  (lambda (_$t246809_ _id246810_ _$id246811_)
                    (let ((_$tmp246813_
                           (let ((__tmp252533 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp252533))))
                      (let ((__tmp252570
                             (let ()
                               (declare (not safe))
                               (cons _$id246811_ '())))
                            (__tmp252534
                             (let ((__tmp252535
                                    (let ((__tmp252536
                                           (let ((__tmp252556
                                                  (let ((__tmp252557
                                                         (let ((__tmp252569
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp246813_ '())))
                       (__tmp252558
                        (let ((__tmp252559
                               (let ((__tmp252560
                                      (let ((__tmp252567
                                             (let ((__tmp252568
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp252568)))
                                            (__tmp252561
                                             (let ((__tmp252565
                                                    (let ((__tmp252566
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t246809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp252566)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp252562
                                                    (let ((__tmp252563
                                                           (let ((__tmp252564
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id246810_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp252564))))
              (declare (not safe))
              (cons __tmp252563 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp252565
                                                     __tmp252562))))
                                        (declare (not safe))
                                        (cons __tmp252567 __tmp252561))))
                                 (declare (not safe))
                                 (cons '%#call __tmp252560))))
                          (declare (not safe))
                          (cons __tmp252559 '()))))
                   (declare (not safe))
                   (cons __tmp252569 __tmp252558))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252557 '())))
                                                 (__tmp252537
                                                  (let ((__tmp252538
                                                         (let ((__tmp252539
                                                                (let ((__tmp252554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252555
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp246813_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp252555)))
                              (__tmp252540
                               (let ((__tmp252552
                                      (let ((__tmp252553
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp246813_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp252553)))
                                     (__tmp252541
                                      (let ((__tmp252542
                                             (let ((__tmp252543
                                                    (let ((__tmp252550
                                                           (let ((__tmp252551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp252551)))
                  (__tmp252544
                   (let ((__tmp252548
                          (let ((__tmp252549
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp252549)))
                         (__tmp252545
                          (let ((__tmp252546
                                 (let ((__tmp252547
                                        (let ()
                                          (declare (not safe))
                                          (cons _id246810_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp252547))))
                            (declare (not safe))
                            (cons __tmp252546 '()))))
                     (declare (not safe))
                     (cons __tmp252548 __tmp252545))))
              (declare (not safe))
              (cons __tmp252550 __tmp252544))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp252543))))
                                        (declare (not safe))
                                        (cons __tmp252542 '()))))
                                 (declare (not safe))
                                 (cons __tmp252552 __tmp252541))))
                          (declare (not safe))
                          (cons __tmp252554 __tmp252540))))
                   (declare (not safe))
                   (cons '%#if __tmp252539))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252538 '()))))
                                             (declare (not safe))
                                             (cons __tmp252556 __tmp252537))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp252536))))
                               (declare (not safe))
                               (cons __tmp252535 '()))))
                        (declare (not safe))
                        (cons __tmp252570 __tmp252534)))))
                 (_generate-class-check-bind243495_
                  (lambda (_$t246805_ _class-type246806_ _$class-type246807_)
                    (let ((__tmp252582
                           (let ()
                             (declare (not safe))
                             (cons _$class-type246807_ '())))
                          (__tmp252571
                           (let ((__tmp252572
                                  (let ((__tmp252573
                                         (let ((__tmp252580
                                                (let ((__tmp252581
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp252581)))
                                               (__tmp252574
                                                (let ((__tmp252578
                                                       (let ((__tmp252579
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t246805_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp252579)))
              (__tmp252575
               (let ((__tmp252576
                      (let ((__tmp252577
                             (let ()
                               (declare (not safe))
                               (cons _class-type246806_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp252577))))
                 (declare (not safe))
                 (cons __tmp252576 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252578
                                                        __tmp252575))))
                                           (declare (not safe))
                                           (cons __tmp252580 __tmp252574))))
                                    (declare (not safe))
                                    (cons '%#call __tmp252573))))
                             (declare (not safe))
                             (cons __tmp252572 '()))))
                      (declare (not safe))
                      (cons __tmp252582 __tmp252571))))
                 (_generate-struct-check-bind243496_
                  (lambda (_$t246801_ _class-type246802_ _$class-type246803_)
                    (let ((__tmp252594
                           (let ()
                             (declare (not safe))
                             (cons _$class-type246803_ '())))
                          (__tmp252583
                           (let ((__tmp252584
                                  (let ((__tmp252585
                                         (let ((__tmp252592
                                                (let ((__tmp252593
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp252593)))
                                               (__tmp252586
                                                (let ((__tmp252590
                                                       (let ((__tmp252591
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t246801_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp252591)))
              (__tmp252587
               (let ((__tmp252588
                      (let ((__tmp252589
                             (let ()
                               (declare (not safe))
                               (cons _class-type246802_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp252589))))
                 (declare (not safe))
                 (cons __tmp252588 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252590
                                                        __tmp252587))))
                                           (declare (not safe))
                                           (cons __tmp252592 __tmp252586))))
                                    (declare (not safe))
                                    (cons '%#call __tmp252585))))
                             (declare (not safe))
                             (cons __tmp252584 '()))))
                      (declare (not safe))
                      (cons __tmp252594 __tmp252583))))
                 (_generate-specializer-impl243497_
                  (lambda (_$t246750_
                           _methods-bind246751_
                           _slots-bind246752_
                           _class-check-bind246753_
                           _struct-check-bind246754_
                           _specializer-impl246755_
                           _lifted-specializer-id246756_
                           _unchecked-specializer-impl246757_)
                    (let ((__tmp252595
                           (let ((__tmp252596
                                  (let ((__tmp252622
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t246750_ '())))
                                        (__tmp252597
                                         (let ((__tmp252598
                                                (let ((__tmp252599
                                                       (let ((__tmp252619
                                                              (let ((__tmp252620
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp252621
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind246754_
                                              _class-check-bind246753_))))
                               (declare (not safe))
                               (foldr1 cons __tmp252621 _slots-bind246752_))))
                        (declare (not safe))
                        (foldr1 cons __tmp252620 _methods-bind246751_)))
                     (__tmp252600
                      (let ((__tmp252601
                             (if (or _lifted-specializer-id246756_
                                     _unchecked-specializer-impl246757_)
                                 (let* ((_$specializer246762_
                                         (let ((__tmp252602
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp252602)))
                                        (__tmp252603
                                         (let ((__tmp252615
                                                (let ((__tmp252616
                                                       (let ((__tmp252618
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer246762_ '())))
                     (__tmp252617
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl246755_ '()))))
                 (declare (not safe))
                 (cons __tmp252618 __tmp252617))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252616 '())))
                                               (__tmp252604
                                                (let ((__tmp252605
                                                       (let _recur246764_ ((_rest246766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind246754_)))
                 (let* ((_rest246767246775_ _rest246766_)
                        (_else246769246783_
                         (lambda ()
                           (if _lifted-specializer-id246756_
                               (let ((__tmp252606
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id246756_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp252606))
                               _unchecked-specializer-impl246757_)))
                        (_K246771246789_
                         (lambda (_rest246786_ _checkq246787_)
                           (let ((__tmp252607
                                  (let ((__tmp252613
                                         (let ((__tmp252614
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq246787_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp252614)))
                                        (__tmp252608
                                         (let ((__tmp252612
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur246764_
                                                   _rest246786_)))
                                               (__tmp252609
                                                (let ((__tmp252610
                                                       (let ((__tmp252611
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer246762_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp252611))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252610 '()))))
                                           (declare (not safe))
                                           (cons __tmp252612 __tmp252609))))
                                    (declare (not safe))
                                    (cons __tmp252613 __tmp252608))))
                             (declare (not safe))
                             (cons '%#if __tmp252607)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest246767246775_))
                       (let ((_hd246772246792_
                              (let ()
                                (declare (not safe))
                                (##car _rest246767246775_)))
                             (_tl246773246794_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest246767246775_))))
                         (let* ((_checkq246797_ _hd246772246792_)
                                (_rest246799_ _tl246773246794_))
                           (declare (not safe))
                           (_K246771246789_ _rest246799_ _checkq246797_)))
                       (let () (declare (not safe)) (_else246769246783_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252605 '()))))
                                           (declare (not safe))
                                           (cons __tmp252615 __tmp252604))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp252603))
                                 _specializer-impl246755_)))
                        (declare (not safe))
                        (cons __tmp252601 '()))))
                 (declare (not safe))
                 (cons __tmp252619 __tmp252600))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp252599))))
                                           (declare (not safe))
                                           (cons __tmp252598 '()))))
                                    (declare (not safe))
                                    (cons __tmp252622 __tmp252597))))
                             (declare (not safe))
                             (cons '%#lambda __tmp252596))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252595 _stx243491_))))
                 (_generate-specializer-def243498_
                  (lambda (_id246744_
                           _specializer-id246745_
                           _specializer-impl246746_
                           _lifted-specializer-id246747_
                           _unchecked-specializer-impl246748_)
                    (let ((__tmp252623
                           (let ((__tmp252624
                                  (let ((__tmp252625
                                         (let ((__tmp252645
                                                (let ((__tmp252646
                                                       (let ((__tmp252647
                                                              (let ((__tmp252649
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id246745_ '())))
                            (__tmp252648
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl246746_ '()))))
                        (declare (not safe))
                        (cons __tmp252649 __tmp252648))))
                 (declare (not safe))
                 (cons '%#define-values __tmp252647))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp252646
                                                   _stx243491_)))
                                               (__tmp252626
                                                (let ((__tmp252633
                                                       (let ((__tmp252634
                                                              (let ((__tmp252635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp252636
                                    (let ((__tmp252643
                                           (let ((__tmp252644
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp252644)))
                                          (__tmp252637
                                           (let ((__tmp252641
                                                  (let ((__tmp252642
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id246744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp252642)))
                                                 (__tmp252638
                                                  (let ((__tmp252639
                                                         (let ((__tmp252640
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id246745_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp252640))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252639 '()))))
                                             (declare (not safe))
                                             (cons __tmp252641 __tmp252638))))
                                      (declare (not safe))
                                      (cons __tmp252643 __tmp252637))))
                               (declare (not safe))
                               (cons '%#call __tmp252636))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp252635 _stx243491_))))
                 (declare (not safe))
                 (cons __tmp252634 '())))
              (__tmp252627
               (if _lifted-specializer-id246747_
                   (let ((__tmp252628
                          (let ((__tmp252629
                                 (let ((__tmp252630
                                        (let ((__tmp252632
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id246747_
                                                       '())))
                                              (__tmp252631
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl246748_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp252632 __tmp252631))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp252630))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp252629 _stx243491_))))
                     (declare (not safe))
                     (cons __tmp252628 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp252633
                                                          __tmp252627))))
                                           (declare (not safe))
                                           (cons __tmp252645 __tmp252626))))
                                    (declare (not safe))
                                    (cons _stx243491_ __tmp252625))))
                             (declare (not safe))
                             (cons '%#begin __tmp252624))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252623 _stx243491_)))))
          (let* ((___stx251435251436_ _stx243491_)
                 (_g243501243521_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx251435251436_)))))
            (let ((___kont251437251438_
                   (lambda (_L243565_ _L243566_)
                     (let ((_method-calls243585_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs243586_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check243587_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check243588_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert243589_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty243590_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?243592_
                                 (lambda ()
                                   (if (let ((__tmp252654
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls243585_))))
                                         (declare (not safe))
                                         (fxzero? __tmp252654))
                                       (if (let ((__tmp252653
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs243586_))))
                                             (declare (not safe))
                                             (fxzero? __tmp252653))
                                           (if (let ((__tmp252652
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check243587_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp252652))
                                               (if (let ((__tmp252651
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check243588_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp252651))
                                                   (let ((__tmp252650
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert243589_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp252650))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?243593_
                                 (lambda ()
                                   (let ((_$e246737_
                                          (let ((__tmp252655
                                                 (let ((__tmp252656
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check243588_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp252656))))
                                            (declare (not safe))
                                            (not __tmp252655))))
                                     (if _$e246737_
                                         _$e246737_
                                         (let ((__tmp252657
                                                (let ((__tmp252658
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert243589_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp252658))))
                                           (declare (not safe))
                                           (not __tmp252657))))))
                                (_lift-unchecked-specializer?243594_
                                 (lambda ()
                                   (if (let ((__tmp252661
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls243585_))))
                                         (declare (not safe))
                                         (fxzero? __tmp252661))
                                       (if (let ((__tmp252660
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs243586_))))
                                             (declare (not safe))
                                             (fxzero? __tmp252660))
                                           (let ((__tmp252659
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check243587_))))
                                             (declare (not safe))
                                             (fxzero? __tmp252659))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L243565_))
                             (let* ((___stx251349251350_ _L243565_)
                                    (_g244107244125_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx251349251350_)))))
                               (let ((___kont251351251352_
                                      (lambda (_L244161_ _L244162_ _L244163_)
                                        (for-each
                                         (lambda (_g244178244180_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g244178244180_
                                              _L244163_
                                              _method-calls243585_
                                              _slot-refs243586_
                                              _class-type-check243587_
                                              _struct-type-check243588_
                                              _struct-type-assert243589_)))
                                         _L244161_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?243592_))
                                            _stx243491_
                                            (let* ((_specializer-id244189_
                                                    (let* ((_id244183_
                                                            (let ((__tmp252811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L243566_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp252811 '"::specialize")))
                   (_specializer-id244186_
                    (let ((__tmp252812
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx243491_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id244183_ __tmp252812))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id244186_))
              _specializer-id244186_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id244196_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?243594_))
                                                        (let* ((_id244191_
                                                                (let ((__tmp252813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L243566_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp252813
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id244193_
                        (let ((__tmp252814
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx243491_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id244191_ __tmp252814))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id244193_))
                  _lifted-specializer-id244193_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t244198_
                                                    (let ((__tmp252815
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp252815)))
                                                   (_methods244200_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls243585_)))
                                                   (_$methods244204_
                                                    (map (lambda (_id244202_)
                                                           (let ((__tmp252816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id244202_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp252816)))
                 _methods244200_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g252817_
                                                    (for-each
                                                     (lambda (_g244205244208_
                                                              _g244206244210_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls243585_
                                                          _g244205244208_
                                                          _g244206244210_)))
                                                     _methods244200_
                                                     _$methods244204_))
                                                   (_methods-bind244221_
                                                    (map (lambda (_g244213244216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244214244218_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind243493_
                      _$t244198_
                      _g244213244216_
                      _g244214244218_)))
                 _methods244200_
                 _$methods244204_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots244223_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs243586_)))
                                                   (_$slots244227_
                                                    (map (lambda (_id244225_)
                                                           (let ((__tmp252818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id244225_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp252818)))
                 _slots244223_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g252819_
                                                    (for-each
                                                     (lambda (_g244228244231_
                                                              _g244229244233_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs243586_
                                                          _g244228244231_
                                                          _g244229244233_)))
                                                     _slots244223_
                                                     _$slots244227_))
                                                   (_slots-bind244244_
                                                    (map (lambda (_g244236244239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244237244241_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind243494_
                      _$t244198_
                      _g244236244239_
                      _g244237244241_)))
                 _slots244223_
                 _$slots244227_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check244246_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check243587_)))
                                                   (_$class-check244249_
                                                    (map (lambda (_g252820_)
                                                           (let ((__tmp252821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp252821)))
                 _class-check244246_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g252822_
                                                    (for-each
                                                     (lambda (_g244250244253_
                                                              _g244251244255_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check243587_
                                                          _g244250244253_
                                                          _g244251244255_)))
                                                     _class-check244246_
                                                     _$class-check244249_))
                                                   (_class-check-bind244266_
                                                    (map (lambda (_g244258244261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244259244263_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind243495_
                      _$t244198_
                      _g244258244261_
                      _g244259244263_)))
                 _class-check244246_
                 _$class-check244249_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all244268_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check243588_
                                                       _struct-type-assert243589_)))
                                                   (_struct-check244270_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all244268_)))
                                                   (_$struct-check244273_
                                                    (map (lambda (_g252823_)
                                                           (let ((__tmp252824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp252824)))
                 _struct-check244270_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g252825_
                                                    (for-each
                                                     (lambda (_g244274244277_
                                                              _g244275244279_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all244268_
                                                          _g244274244277_
                                                          _g244275244279_)))
                                                     _struct-check244270_
                                                     _$struct-check244273_))
                                                   (_struct-check-bind244290_
                                                    (map (lambda (_g244282244285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244283244287_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind243496_
                      _$t244198_
                      _g244282244285_
                      _g244283244287_)))
                 _struct-check244270_
                 _$struct-check244273_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl244301_
                                                    (lambda (_struct-type-check1244292_
                                                             _struct-type-check2244293_)
                                                      (let* ((_specializer-body244299_
                                                              (map (lambda (_g244294244296_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g244294244296_
                                _L244163_
                                _$t244198_
                                _method-calls243585_
                                _slot-refs243586_
                                _class-type-check243587_
                                _struct-type-check1244292_
                                _struct-type-check2244293_)))
                           _L244161_))
                     (__tmp252826
                      (let ((__tmp252827
                             (let ((__tmp252828
                                    (let ()
                                      (declare (not safe))
                                      (cons _L244163_ _L244162_))))
                               (declare (not safe))
                               (cons __tmp252828 _specializer-body244299_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp252827))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp252826 _stx243491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl244303_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl244301_
                                                       _struct-check-all244268_
                                                       _empty243590_)))
                                                   (_unchecked-specializer-impl244305_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?243593_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl244301_
                                                           _empty243590_
                                                           _struct-check-all244268_))
                                                        '#f))
                                                   (_specializer-impl244307_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl243497_
                                                       _$t244198_
                                                       _methods-bind244221_
                                                       _slots-bind244244_
                                                       _class-check-bind244266_
                                                       _struct-check-bind244290_
                                                       _specializer-impl244303_
                                                       _lifted-specializer-id244196_
                                                       _unchecked-specializer-impl244305_))))
                                              (let ((__tmp252830
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L243566_)))
                                                    (__tmp252829
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id244189_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp252830
                                                 '" => "
                                                 __tmp252829))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def243498_
                                                 _L243566_
                                                 _specializer-id244189_
                                                 _specializer-impl244307_
                                                 _lifted-specializer-id244196_
                                                 _unchecked-specializer-impl244305_))))))
                                     (___kont251353251354_
                                      (lambda () _stx243491_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx251349251350_))
                                     (let ((_e244114244137_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx251349251350_))))
                                       (let ((_tl244112244142_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e244114244137_)))
                                             (_hd244113244140_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e244114244137_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl244112244142_))
                                             (let ((_e244117244145_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl244112244142_))))
                                               (let ((_tl244115244150_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e244117244145_)))
                                                     (_hd244116244148_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e244117244145_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd244116244148_))
                                                     (let ((_e244120244153_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd244116244148_))))
                                                       (let ((_tl244118244158_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e244120244153_)))
                     (_hd244119244156_
                      (let () (declare (not safe)) (##car _e244120244153_))))
                 (___kont251351251352_
                  _tl244115244150_
                  _tl244118244158_
                  _hd244119244156_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont251353251354_))))
                                             (___kont251353251354_))))
                                     (___kont251353251354_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L243565_))
                                 (let* ((_g244313244332_
                                         (lambda (_g244314244329_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g244314244329_))))
                                        (_g244312244683_
                                         (lambda (_g244314244335_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g244314244335_))
                                               (let ((_e244318244337_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g244314244335_))))
                                                 (let ((_hd244317244340_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e244318244337_)))
                                                       (_tl244316244342_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e244318244337_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl244316244342_))
                                                       (let ((_g252787_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl244316244342_ '0))))
                 (begin
                   (let ((_g252788_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g252787_)
                                (##vector-length _g252787_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g252788_ 2)))
                         (error "Context expects 2 values" _g252788_)))
                   (let ((_target244319244345_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g252787_ 0)))
                         (_tl244321244347_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g252787_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl244321244347_))
                         (letrec ((_loop244322244350_
                                   (lambda (_hd244320244353_
                                            _clause244326244355_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd244320244353_))
                                         (let ((_e244323244358_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd244320244353_))))
                                           (let ((_lp-hd244324244361_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e244323244358_)))
                                                 (_lp-tl244325244363_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e244323244358_))))
                                             (let ((__tmp252810
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd244324244361_
                                                            _clause244326244355_))))
                                               (declare (not safe))
                                               (_loop244322244350_
                                                _lp-tl244325244363_
                                                __tmp252810))))
                                         (let ((_clause244327244366_
                                                (reverse _clause244326244355_)))
                                           ((lambda (_L244369_)
                                              (for-each
                                               (lambda (_clause244382_)
                                                 (let* ((___stx251375251376_
                                                         _clause244382_)
                                                        (_g244385244400_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx251375251376_)))))
                                                   (let ((___kont251377251378_
                                                          (lambda (_L244428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L244429_
                           _L244430_)
                    (for-each
                     (lambda (_g244445244447_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g244445244447_
                          _L244430_
                          _method-calls243585_
                          _slot-refs243586_
                          _class-type-check243587_
                          _struct-type-check243588_
                          _struct-type-assert243589_)))
                     _L244428_)))
                 (___kont251379251380_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx251375251376_))
                                                         (let ((_e244392244412_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx251375251376_))))
                   (let ((_tl244390244417_
                          (let ()
                            (declare (not safe))
                            (##cdr _e244392244412_)))
                         (_hd244391244415_
                          (let ()
                            (declare (not safe))
                            (##car _e244392244412_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd244391244415_))
                         (let ((_e244395244420_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd244391244415_))))
                           (let ((_tl244393244425_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e244395244420_)))
                                 (_hd244394244423_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e244395244420_))))
                             (___kont251377251378_
                              _tl244390244417_
                              _tl244393244425_
                              _hd244394244423_)))
                         (___kont251379251380_))))
                 (___kont251379251380_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp252789
                                                      (lambda (_g244452244455_
                                                               _g244453244457_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g244452244455_
                                                                _g244453244457_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp252789
                                                         '()
                                                         _L244369_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?243592_))
                                                  _stx243491_
                                                  (let* ((_specializer-id244466_
                                                          (let* ((_id244460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252790
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L243566_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp252790 '"::specialize")))
                         (_specializer-id244463_
                          (let ((__tmp252791
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx243491_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id244460_ __tmp252791))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id244463_))
                    _specializer-id244463_))
                 (_lifted-specializer-id244473_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?243594_))
                      (let* ((_id244468_
                              (let ((__tmp252792
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L243566_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp252792
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id244470_
                              (let ((__tmp252793
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx243491_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id244468_
                                 __tmp252793))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id244470_))
                        _lifted-specializer-id244470_)
                      '#f))
                 (_$t244475_
                  (let ((__tmp252794 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp252794)))
                 (_methods244477_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls243585_)))
                 (_$methods244481_
                  (map (lambda (_id244479_)
                         (let ((__tmp252795 (gensym _id244479_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252795)))
                       _methods244477_))
                 (_g252796_
                  (for-each
                   (lambda (_g244482244485_ _g244483244487_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls243585_
                        _g244482244485_
                        _g244483244487_)))
                   _methods244477_
                   _$methods244481_))
                 (_methods-bind244498_
                  (map (lambda (_g244490244493_ _g244491244495_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind243493_
                            _$t244475_
                            _g244490244493_
                            _g244491244495_)))
                       _methods244477_
                       _$methods244481_))
                 (_slots244500_
                  (let () (declare (not safe)) (hash-keys _slot-refs243586_)))
                 (_$slots244504_
                  (map (lambda (_id244502_)
                         (let ((__tmp252797 (gensym _id244502_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252797)))
                       _slots244500_))
                 (_g252798_
                  (for-each
                   (lambda (_g244505244508_ _g244506244510_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs243586_
                        _g244505244508_
                        _g244506244510_)))
                   _slots244500_
                   _$slots244504_))
                 (_slots-bind244521_
                  (map (lambda (_g244513244516_ _g244514244518_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind243494_
                            _$t244475_
                            _g244513244516_
                            _g244514244518_)))
                       _slots244500_
                       _$slots244504_))
                 (_class-check244523_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check243587_)))
                 (_$class-check244526_
                  (map (lambda (_g252799_)
                         (let ((__tmp252800 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252800)))
                       _class-check244523_))
                 (_g252801_
                  (for-each
                   (lambda (_g244527244530_ _g244528244532_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check243587_
                        _g244527244530_
                        _g244528244532_)))
                   _class-check244523_
                   _$class-check244526_))
                 (_class-check-bind244543_
                  (map (lambda (_g244535244538_ _g244536244540_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind243495_
                            _$t244475_
                            _g244535244538_
                            _g244536244540_)))
                       _class-check244523_
                       _$class-check244526_))
                 (_struct-check-all244545_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check243588_
                     _struct-type-assert243589_)))
                 (_struct-check244547_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all244545_)))
                 (_$struct-check244550_
                  (map (lambda (_g252802_)
                         (let ((__tmp252803 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252803)))
                       _struct-check244547_))
                 (_g252804_
                  (for-each
                   (lambda (_g244551244554_ _g244552244556_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all244545_
                        _g244551244554_
                        _g244552244556_)))
                   _struct-check244547_
                   _$struct-check244550_))
                 (_struct-check-bind244567_
                  (map (lambda (_g244559244562_ _g244560244564_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind243496_
                            _$t244475_
                            _g244559244562_
                            _g244560244564_)))
                       _struct-check244547_
                       _$struct-check244550_))
                 (_make-specializer-impl244674_
                  (lambda (_struct-type-check1244569_
                           _struct-type-check2244570_)
                    (let* ((_specializer-clauses244672_
                            (map (lambda (_clause244572_)
                                   (let* ((___stx251395251396_ _clause244572_)
                                          (_g244575244590_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx251395251396_)))))
                                     (let ((___kont251397251398_
                                            (lambda (_L244618_
                                                     _L244619_
                                                     _L244620_)
                                              (let* ((_body244660_
                                                      (map (lambda (_g244655244657_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g244655244657_
                        _L244620_
                        _$t244475_
                        _method-calls243585_
                        _slot-refs243586_
                        _class-type-check243587_
                        _struct-type-check1244569_
                        _struct-type-check2244570_)))
                   _L244618_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp252805
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L244620_
                                                              _L244619_))))
                                                (declare (not safe))
                                                (cons __tmp252805
                                                      _body244660_))))
                                           (___kont251399251400_
                                            (lambda () _clause244572_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx251395251396_))
                                           (let ((_e244582244602_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx251395251396_))))
                                             (let ((_tl244580244607_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e244582244602_)))
                                                   (_hd244581244605_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e244582244602_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd244581244605_))
                                                   (let ((_e244585244610_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd244581244605_))))
                                                     (let ((_tl244583244615_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e244585244610_)))
                                                           (_hd244584244613_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e244585244610_))))
                                                       (___kont251397251398_
                                                        _tl244580244607_
                                                        _tl244583244615_
                                                        _hd244584244613_)))
                                                   (___kont251399251400_))))
                                           (___kont251399251400_)))))
                                 (let ((__tmp252806
                                        (lambda (_g244664244667_
                                                 _g244665244669_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g244664244667_
                                                  _g244665244669_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp252806 '() _L244369_))))
                           (__tmp252807
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses244672_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252807 _stx243491_))))
                 (_specializer-impl244676_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl244674_
                     _struct-check-all244545_
                     _empty243590_)))
                 (_unchecked-specializer-impl244678_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243593_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl244674_
                         _empty243590_
                         _struct-check-all244545_))
                      '#f))
                 (_specializer-impl244680_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl243497_
                     _$t244475_
                     _methods-bind244498_
                     _slots-bind244521_
                     _class-check-bind244543_
                     _struct-check-bind244567_
                     _specializer-impl244676_
                     _lifted-specializer-id244473_
                     _unchecked-specializer-impl244678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp252809
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L243566_)))
                                                          (__tmp252808
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id244466_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp252809
                                                       '" => "
                                                       __tmp252808))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def243498_
                                                       _L243566_
                                                       _specializer-id244466_
                                                       _specializer-impl244680_
                                                       _lifted-specializer-id244473_
                                                       _unchecked-specializer-impl244678_)))))
                                            _clause244327244366_))))))
                           (let ()
                             (declare (not safe))
                             (_loop244322244350_ _target244319244345_ '())))
                         (let ()
                           (declare (not safe))
                           (_g244313244332_ _g244314244335_))))))
               (let ()
                 (declare (not safe))
                 (_g244313244332_ _g244314244335_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g244313244332_
                                                  _g244314244335_))))))
                                   (declare (not safe))
                                   (_g244312244683_ _L243565_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L243565_))
                                     (let* ((_g244686244716_
                                             (lambda (_g244687244713_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g244687244713_))))
                                            (_g244685245404_
                                             (lambda (_g244687244719_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g244687244719_))
                                                   (let ((_e244693244721_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g244687244719_))))
                                                     (let ((_hd244692244724_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e244693244721_)))
                                                           (_tl244691244726_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e244693244721_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl244691244726_))
                                                           (let ((_e244696244729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl244691244726_))))
                     (let ((_hd244695244732_
                            (let ()
                              (declare (not safe))
                              (##car _e244696244729_)))
                           (_tl244694244734_
                            (let ()
                              (declare (not safe))
                              (##cdr _e244696244729_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd244695244732_))
                           (let ((_e244699244737_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd244695244732_))))
                             (let ((_hd244698244740_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e244699244737_)))
                                   (_tl244697244742_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e244699244737_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd244698244740_))
                                   (let ((_e244702244745_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd244698244740_))))
                                     (let ((_hd244701244748_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e244702244745_)))
                                           (_tl244700244750_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e244702244745_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd244701244748_))
                                           (let ((_e244705244753_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd244701244748_))))
                                             (let ((_hd244704244756_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e244705244753_)))
                                                   (_tl244703244758_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e244705244753_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl244703244758_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl244700244750_))
                                                       (let ((_e244708244761_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl244700244750_))))
                 (let ((_hd244707244764_
                        (let () (declare (not safe)) (##car _e244708244761_)))
                       (_tl244706244766_
                        (let () (declare (not safe)) (##cdr _e244708244761_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl244706244766_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl244697244742_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl244694244734_))
                               (let ((_e244711244769_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl244694244734_))))
                                 (let ((_hd244710244772_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e244711244769_)))
                                       (_tl244709244774_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e244711244769_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl244709244774_))
                                       ((lambda (_L244777_ _L244778_ _L244779_)
                                          (let* ((_g244802244820_
                                                  (lambda (_g244803244817_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g244803244817_))))
                                                 (_g244801244871_
                                                  (lambda (_g244803244823_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g244803244823_))
                                                        (let ((_e244809244825_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g244803244823_))))
                  (let ((_hd244808244828_
                         (let () (declare (not safe)) (##car _e244809244825_)))
                        (_tl244807244830_
                         (let ()
                           (declare (not safe))
                           (##cdr _e244809244825_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl244807244830_))
                        (let ((_e244812244833_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl244807244830_))))
                          (let ((_hd244811244836_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e244812244833_)))
                                (_tl244810244838_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e244812244833_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd244811244836_))
                                (let ((_e244815244841_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd244811244836_))))
                                  (let ((_hd244814244844_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244815244841_)))
                                        (_tl244813244846_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244815244841_))))
                                    ((lambda (_L244849_ _L244850_ _L244851_)
                                       (for-each
                                        (lambda (_g244866244868_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g244866244868_
                                             _L244851_
                                             _method-calls243585_
                                             _slot-refs243586_
                                             _class-type-check243587_
                                             _struct-type-check243588_
                                             _struct-type-assert243589_)))
                                        _L244849_))
                                     _tl244810244838_
                                     _tl244813244846_
                                     _hd244814244844_)))
                                (let ()
                                  (declare (not safe))
                                  (_g244802244820_ _g244803244823_)))))
                        (let ()
                          (declare (not safe))
                          (_g244802244820_ _g244803244823_)))))
                (let ()
                  (declare (not safe))
                  (_g244802244820_ _g244803244823_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g244801244871_ _L244778_))
                                          (let* ((_g244874244893_
                                                  (lambda (_g244875244890_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g244875244890_))))
                                                 (_g244873245012_
                                                  (lambda (_g244875244896_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g244875244896_))
                                                        (let ((_e244879244898_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g244875244896_))))
                  (let ((_hd244878244901_
                         (let () (declare (not safe)) (##car _e244879244898_)))
                        (_tl244877244903_
                         (let ()
                           (declare (not safe))
                           (##cdr _e244879244898_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl244877244903_))
                        (let ((_g252750_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl244877244903_
                                  '0))))
                          (begin
                            (let ((_g252751_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g252750_)
                                         (##vector-length _g252750_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g252751_ 2)))
                                  (error "Context expects 2 values"
                                         _g252751_)))
                            (let ((_target244880244906_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g252750_ 0)))
                                  (_tl244882244908_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g252750_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl244882244908_))
                                  (letrec ((_loop244883244911_
                                            (lambda (_hd244881244914_
                                                     _clause244887244916_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd244881244914_))
                                                  (let ((_e244884244919_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd244881244914_))))
                                                    (let ((_lp-hd244885244922_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e244884244919_)))
                                                          (_lp-tl244886244924_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e244884244919_))))
                                                      (let ((__tmp252753
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd244885244922_ _clause244887244916_))))
                (declare (not safe))
                (_loop244883244911_ _lp-tl244886244924_ __tmp252753))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause244888244927_
                                                         (reverse _clause244887244916_)))
                                                    ((lambda (_L244930_)
                                                       (for-each
                                                        (lambda (_clause244943_)
                                                          (let* ((_g244945244960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g244946244957_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g244946244957_))))
                         (_g244944245002_
                          (lambda (_g244946244963_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g244946244963_))
                                (let ((_e244952244965_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g244946244963_))))
                                  (let ((_hd244951244968_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244952244965_)))
                                        (_tl244950244970_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244952244965_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd244951244968_))
                                        (let ((_e244955244973_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd244951244968_))))
                                          (let ((_hd244954244976_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e244955244973_)))
                                                (_tl244953244978_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e244955244973_))))
                                            ((lambda (_L244981_
                                                      _L244982_
                                                      _L244983_)
                                               (for-each
                                                (lambda (_g244997244999_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g244997244999_
                                                     _L244983_
                                                     _method-calls243585_
                                                     _slot-refs243586_
                                                     _class-type-check243587_
                                                     _struct-type-check243588_
                                                     _struct-type-assert243589_)))
                                                _L244981_))
                                             _tl244950244970_
                                             _tl244953244978_
                                             _hd244954244976_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g244945244960_ _g244946244963_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g244945244960_ _g244946244963_))))))
                    (declare (not safe))
                    (_g244944245002_ _clause244943_)))
                (let ((__tmp252752
                       (lambda (_g245004245007_ _g245005245009_)
                         (let ()
                           (declare (not safe))
                           (cons _g245004245007_ _g245005245009_)))))
                  (declare (not safe))
                  (foldr1 __tmp252752 '() _L244930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause244888244927_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop244883244911_
                                       _target244880244906_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g244874244893_ _g244875244896_))))))
                        (let ()
                          (declare (not safe))
                          (_g244874244893_ _g244875244896_)))))
                (let ()
                  (declare (not safe))
                  (_g244874244893_ _g244875244896_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g244873245012_ _L244777_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?243592_))
                                              _stx243491_
                                              (let* ((_specializer-id245021_
                                                      (let* ((_id245015_
                                                              (let ((__tmp252754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L243566_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp252754 '"::specialize")))
                     (_specializer-id245018_
                      (let ((__tmp252755
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx243491_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id245015_ __tmp252755))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id245018_))
                _specializer-id245018_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id245028_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?243594_))
                                                          (let* ((_id245023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252756
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L243566_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp252756
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id245025_
                          (let ((__tmp252757
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx243491_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id245023_ __tmp252757))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id245025_))
                    _lifted-specializer-id245025_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t245030_
                                                      (let ((__tmp252758
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp252758)))
                                                     (_methods245032_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls243585_)))
                                                     (_$methods245036_
                                                      (map (lambda (_id245034_)
                                                             (let ((__tmp252759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id245034_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp252759)))
                   _methods245032_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252760_
                                                      (for-each
                                                       (lambda (_g245037245040_
                                                                _g245038245042_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls243585_
                                                            _g245037245040_
                                                            _g245038245042_)))
                                                       _methods245032_
                                                       _$methods245036_))
                                                     (_methods-bind245053_
                                                      (map (lambda (_g245045245048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g245046245050_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind243493_
                        _$t245030_
                        _g245045245048_
                        _g245046245050_)))
                   _methods245032_
                   _$methods245036_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots245055_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs243586_)))
                                                     (_$slots245059_
                                                      (map (lambda (_id245057_)
                                                             (let ((__tmp252761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id245057_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp252761)))
                   _slots245055_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252762_
                                                      (for-each
                                                       (lambda (_g245060245063_
                                                                _g245061245065_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs243586_
                                                            _g245060245063_
                                                            _g245061245065_)))
                                                       _slots245055_
                                                       _$slots245059_))
                                                     (_slots-bind245076_
                                                      (map (lambda (_g245068245071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g245069245073_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind243494_
                        _$t245030_
                        _g245068245071_
                        _g245069245073_)))
                   _slots245055_
                   _$slots245059_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check245078_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check243587_)))
                                                     (_$class-check245081_
                                                      (map (lambda (_g252763_)
                                                             (let ((__tmp252764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp252764)))
                   _class-check245078_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252765_
                                                      (for-each
                                                       (lambda (_g245082245085_
                                                                _g245083245087_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check243587_
                                                            _g245082245085_
                                                            _g245083245087_)))
                                                       _class-check245078_
                                                       _$class-check245081_))
                                                     (_class-check-bind245098_
                                                      (map (lambda (_g245090245093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g245091245095_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind243495_
                        _$t245030_
                        _g245090245093_
                        _g245091245095_)))
                   _class-check245078_
                   _$class-check245081_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all245100_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check243588_
                                                         _struct-type-assert243589_)))
                                                     (_struct-check245102_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all245100_)))
                                                     (_$struct-check245105_
                                                      (map (lambda (_g252766_)
                                                             (let ((__tmp252767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp252767)))
                   _struct-check245102_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252768_
                                                      (for-each
                                                       (lambda (_g245106245109_
                                                                _g245107245111_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all245100_
                                                            _g245106245109_
                                                            _g245107245111_)))
                                                       _struct-check245102_
                                                       _$struct-check245105_))
                                                     (_struct-check-bind245122_
                                                      (map (lambda (_g245114245117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g245115245119_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind243496_
                        _$t245030_
                        _g245114245117_
                        _g245115245119_)))
                   _struct-check245102_
                   _$struct-check245105_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr245221_
                                                      (lambda (_struct-type-check1245124_
                                                               _struct-type-check2245125_)
                                                        (let* ((_g245127245145_
                                                                (lambda (_g245128245142_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g245128245142_))))
                       (_g245126245218_
                        (lambda (_g245128245148_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g245128245148_))
                              (let ((_e245134245150_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g245128245148_))))
                                (let ((_hd245133245153_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245134245150_)))
                                      (_tl245132245155_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245134245150_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl245132245155_))
                                      (let ((_e245137245158_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl245132245155_))))
                                        (let ((_hd245136245161_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245137245158_)))
                                              (_tl245135245163_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245137245158_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd245136245161_))
                                              (let ((_e245140245166_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd245136245161_))))
                                                (let ((_hd245139245169_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e245140245166_)))
                                                      (_tl245138245171_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e245140245166_))))
                                                  ((lambda (_L245174_
                                                            _L245175_
                                                            _L245176_)
                                                     (let* ((_body245216_
                                                             (map (lambda (_g245211245213_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g245211245213_
                               _L245176_
                               _$t245030_
                               _method-calls243585_
                               _slot-refs243586_
                               _class-type-check243587_
                               _struct-type-check1245124_
                               _struct-type-check2245125_)))
                          _L245174_))
                    (__tmp252769
                     (let ((__tmp252770
                            (let ((__tmp252771
                                   (let ()
                                     (declare (not safe))
                                     (cons _L245176_ _L245175_))))
                              (declare (not safe))
                              (cons __tmp252771 _body245216_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp252770))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp252769 _L244778_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl245135245163_
                                                   _tl245138245171_
                                                   _hd245139245169_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g245127245145_
                                                 _g245128245148_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g245127245145_ _g245128245148_)))))
                              (let ()
                                (declare (not safe))
                                (_g245127245145_ _g245128245148_))))))
                  (declare (not safe))
                  (_g245126245218_ _L244778_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr245382_
                                                      (lambda (_struct-type-check1245223_
                                                               _struct-type-check2245224_)
                                                        (let* ((_g245226245245_
                                                                (lambda (_g245227245242_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g245227245242_))))
                       (_g245225245379_
                        (lambda (_g245227245248_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g245227245248_))
                              (let ((_e245231245250_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g245227245248_))))
                                (let ((_hd245230245253_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245231245250_)))
                                      (_tl245229245255_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245231245250_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl245229245255_))
                                      (let ((_g252772_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl245229245255_
                                                '0))))
                                        (begin
                                          (let ((_g252773_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g252772_)
                                                       (##vector-length
                                                        _g252772_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g252773_ 2)))
                                                (error "Context expects 2 values"
                                                       _g252773_)))
                                          (let ((_target245232245258_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g252772_ 0)))
                                                (_tl245234245260_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g252772_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl245234245260_))
                                                (letrec ((_loop245235245263_
                                                          (lambda (_hd245233245266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause245239245268_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd245233245266_))
                        (let ((_e245236245271_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd245233245266_))))
                          (let ((_lp-hd245237245274_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e245236245271_)))
                                (_lp-tl245238245276_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e245236245271_))))
                            (let ((__tmp252777
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd245237245274_
                                           _clause245239245268_))))
                              (declare (not safe))
                              (_loop245235245263_
                               _lp-tl245238245276_
                               __tmp252777))))
                        (let ((_clause245240245279_
                               (reverse _clause245239245268_)))
                          ((lambda (_L245282_)
                             (let* ((_clauses245377_
                                     (map (lambda (_clause245297_)
                                            (let* ((___stx251415251416_
                                                    _clause245297_)
                                                   (_g245300245315_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx251415251416_)))))
                                              (let ((___kont251417251418_
                                                     (lambda (_L245343_
                                                              _L245344_
                                                              _L245345_)
                                                       (let* ((_body245365_
                                                               (map (lambda (_g245360245362_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g245360245362_
                                 _L245345_
                                 _$t245030_
                                 _method-calls243585_
                                 _slot-refs243586_
                                 _class-type-check243587_
                                 _struct-type-check1245223_
                                 _struct-type-check2245224_)))
                            _L245343_))
                      (__tmp252774
                       (let ()
                         (declare (not safe))
                         (cons _L245345_ _L245344_))))
                 (declare (not safe))
                 (cons __tmp252774 _body245365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251419251420_
                                                     (lambda ()
                                                       _clause245297_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx251415251416_))
                                                    (let ((_e245307245327_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx251415251416_))))
                                                      (let ((_tl245305245332_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e245307245327_)))
                    (_hd245306245330_
                     (let () (declare (not safe)) (##car _e245307245327_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd245306245330_))
                    (let ((_e245310245335_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd245306245330_))))
                      (let ((_tl245308245340_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245310245335_)))
                            (_hd245309245338_
                             (let ()
                               (declare (not safe))
                               (##car _e245310245335_))))
                        (___kont251417251418_
                         _tl245305245332_
                         _tl245308245340_
                         _hd245309245338_)))
                    (___kont251419251420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251419251420_)))))
                                          (let ((__tmp252775
                                                 (lambda (_g245369245372_
                                                          _g245370245374_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g245369245372_
                                                           _g245370245374_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp252775
                                                    '()
                                                    _L245282_))))
                                    (__tmp252776
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses245377_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp252776 _L244777_)))
                           _clause245240245279_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop245235245263_
                                                     _target245232245258_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g245226245245_
                                                   _g245227245248_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g245226245245_ _g245227245248_)))))
                              (let ()
                                (declare (not safe))
                                (_g245226245245_ _g245227245248_))))))
                  (declare (not safe))
                  (_g245225245379_ _L244777_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl245387_
                                                      (lambda (_specializer-lambda-expr245384_
                                                               _specializer-case-lambda-expr245385_)
                                                        (let ((__tmp252778
                                                               (let ((__tmp252779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp252781
                                     (let ((__tmp252782
                                            (let ((__tmp252784
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L244779_ '())))
                                                  (__tmp252783
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr245384_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp252784 __tmp252783))))
                                       (declare (not safe))
                                       (cons __tmp252782 '())))
                                    (__tmp252780
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr245385_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp252781 __tmp252780))))
                         (declare (not safe))
                         (cons '%#let-values __tmp252779))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp252778 _stx243491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr245389_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr245221_
                                                         _struct-check-all245100_
                                                         _empty243590_)))
                                                     (_specializer-case-lambda-expr245391_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr245382_
                                                         _struct-check-all245100_
                                                         _empty243590_)))
                                                     (_specializer-impl245393_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl245387_
                                                         _specializer-lambda-expr245389_
                                                         _specializer-case-lambda-expr245391_)))
                                                     (_unchecked-specializer-lambda-expr245395_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?243593_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr245221_
                                                             _empty243590_
                                                             _struct-check-all245100_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr245397_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?243593_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr245382_
                                                             _empty243590_
                                                             _struct-check-all245100_))
                                                          '#f))
                                                     (_unchecked-specializer-impl245399_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?243593_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl245387_
                                                             _unchecked-specializer-lambda-expr245395_
                                                             _unchecked-specializer-case-lambda-expr245397_))
                                                          '#f))
                                                     (_specializer-impl245401_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl243497_
                                                         _$t245030_
                                                         _methods-bind245053_
                                                         _slots-bind245076_
                                                         _class-check-bind245098_
                                                         _struct-check-bind245122_
                                                         _specializer-impl245393_
                                                         _lifted-specializer-id245028_
                                                         _unchecked-specializer-impl245399_))))
                                                (let ((__tmp252786
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L243566_)))
                                                      (__tmp252785
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id245021_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp252786
                                                   '" => "
                                                   __tmp252785))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def243498_
                                                   _L243566_
                                                   _specializer-id245021_
                                                   _specializer-impl245401_
                                                   _lifted-specializer-id245028_
                                                   _unchecked-specializer-impl245399_)))))
                                        _hd244710244772_
                                        _hd244707244764_
                                        _hd244704244756_)
                                       (let ()
                                         (declare (not safe))
                                         (_g244686244716_ _g244687244719_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g244686244716_ _g244687244719_)))
                           (let ()
                             (declare (not safe))
                             (_g244686244716_ _g244687244719_)))
                       (let ()
                         (declare (not safe))
                         (_g244686244716_ _g244687244719_)))))
               (let () (declare (not safe)) (_g244686244716_ _g244687244719_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g244686244716_
                                                      _g244687244719_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g244686244716_
                                              _g244687244719_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g244686244716_ _g244687244719_)))))
                           (let ()
                             (declare (not safe))
                             (_g244686244716_ _g244687244719_)))))
                   (let ()
                     (declare (not safe))
                     (_g244686244716_ _g244687244719_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g244686244716_
                                                      _g244687244719_))))))
                                       (declare (not safe))
                                       (_g244685245404_ _L243565_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L243565_))
                                         (let* ((_g245407245460_
                                                 (lambda (_g245408245457_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g245408245457_))))
                                                (_g245406246732_
                                                 (lambda (_g245408245463_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g245408245463_))
                                                       (let ((_e245416245465_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g245408245463_))))
                 (let ((_hd245415245468_
                        (let () (declare (not safe)) (##car _e245416245465_)))
                       (_tl245414245470_
                        (let () (declare (not safe)) (##cdr _e245416245465_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd245415245468_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd245415245468_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl245414245470_))
                               (let ((_e245419245473_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl245414245470_))))
                                 (let ((_hd245418245476_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e245419245473_)))
                                       (_tl245417245478_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e245419245473_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd245418245476_))
                                       (let ((_e245422245481_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd245418245476_))))
                                         (let ((_hd245421245484_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e245422245481_)))
                                               (_tl245420245486_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e245422245481_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd245421245484_))
                                               (let ((_e245425245489_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd245421245484_))))
                                                 (let ((_hd245424245492_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e245425245489_)))
                                                       (_tl245423245494_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e245425245489_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd245424245492_))
                                                       (let ((_e245428245497_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd245424245492_))))
                 (let ((_hd245427245500_
                        (let () (declare (not safe)) (##car _e245428245497_)))
                       (_tl245426245502_
                        (let () (declare (not safe)) (##cdr _e245428245497_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl245426245502_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl245423245494_))
                           (let ((_e245431245505_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl245423245494_))))
                             (let ((_hd245430245508_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e245431245505_)))
                                   (_tl245429245510_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e245431245505_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd245430245508_))
                                   (let ((_e245434245513_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd245430245508_))))
                                     (let ((_hd245433245516_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e245434245513_)))
                                           (_tl245432245518_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e245434245513_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd245433245516_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd245433245516_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl245432245518_))
                                                   (let ((_e245437245521_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl245432245518_))))
                                                     (let ((_hd245436245524_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e245437245521_)))
                                                           (_tl245435245526_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e245437245521_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd245436245524_))
                                                           (let ((_e245440245529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd245436245524_))))
                     (let ((_hd245439245532_
                            (let ()
                              (declare (not safe))
                              (##car _e245440245529_)))
                           (_tl245438245534_
                            (let ()
                              (declare (not safe))
                              (##cdr _e245440245529_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd245439245532_))
                           (let ((_e245443245537_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd245439245532_))))
                             (let ((_hd245442245540_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e245443245537_)))
                                   (_tl245441245542_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e245443245537_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd245442245540_))
                                   (let ((_e245446245545_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd245442245540_))))
                                     (let ((_hd245445245548_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e245446245545_)))
                                           (_tl245444245550_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e245446245545_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl245444245550_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl245441245542_))
                                               (let ((_e245449245553_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl245441245542_))))
                                                 (let ((_hd245448245556_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e245449245553_)))
                                                       (_tl245447245558_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e245449245553_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl245447245558_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl245438245534_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl245435245526_))
                       (let ((_e245452245561_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl245435245526_))))
                         (let ((_hd245451245564_
                                (let ()
                                  (declare (not safe))
                                  (##car _e245452245561_)))
                               (_tl245450245566_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e245452245561_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl245450245566_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl245429245510_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl245420245486_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl245417245478_))
                                           (let ((_e245455245569_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl245417245478_))))
                                             (let ((_hd245454245572_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e245455245569_)))
                                                   (_tl245453245574_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e245455245569_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl245453245574_))
                                                   ((lambda (_L245577_
                                                             _L245578_
                                                             _L245579_
                                                             _L245580_
                                                             _L245581_)
                                                      (let* ((_g245620245682_
                                                              (lambda (_g245621245679_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g245621245679_))))
                     (_g245619246729_
                      (lambda (_g245621245685_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g245621245685_))
                            (let ((_e245629245687_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g245621245685_))))
                              (let ((_hd245628245690_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245629245687_)))
                                    (_tl245627245692_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245629245687_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd245628245690_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd245628245690_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl245627245692_))
                                            (let ((_e245632245695_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl245627245692_))))
                                              (let ((_hd245631245698_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e245632245695_)))
                                                    (_tl245630245700_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e245632245695_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl245630245700_))
                                                    (let ((_e245635245703_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl245630245700_))))
                                                      (let ((_hd245634245706_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e245635245703_)))
                    (_tl245633245708_
                     (let () (declare (not safe)) (##cdr _e245635245703_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd245634245706_))
                    (let ((_e245638245711_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd245634245706_))))
                      (let ((_hd245637245714_
                             (let ()
                               (declare (not safe))
                               (##car _e245638245711_)))
                            (_tl245636245716_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245638245711_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd245637245714_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd245637245714_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl245636245716_))
                                    (let ((_e245641245719_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl245636245716_))))
                                      (let ((_hd245640245722_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e245641245719_)))
                                            (_tl245639245724_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e245641245719_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd245640245722_))
                                            (let ((_e245644245727_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd245640245722_))))
                                              (let ((_hd245643245730_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e245644245727_)))
                                                    (_tl245642245732_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e245644245727_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd245643245730_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd245643245730_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl245642245732_))
                                                            (let ((_e245647245735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl245642245732_))))
                      (let ((_hd245646245738_
                             (let ()
                               (declare (not safe))
                               (##car _e245647245735_)))
                            (_tl245645245740_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245647245735_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245645245740_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl245639245724_))
                                (let ((_e245650245743_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl245639245724_))))
                                  (let ((_hd245649245746_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245650245743_)))
                                        (_tl245648245748_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245650245743_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd245649245746_))
                                        (let ((_e245653245751_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd245649245746_))))
                                          (let ((_hd245652245754_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e245653245751_)))
                                                (_tl245651245756_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e245653245751_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd245652245754_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd245652245754_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl245651245756_))
                                                        (let ((_e245656245759_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl245651245756_))))
                  (let ((_hd245655245762_
                         (let () (declare (not safe)) (##car _e245656245759_)))
                        (_tl245654245764_
                         (let ()
                           (declare (not safe))
                           (##cdr _e245656245759_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl245654245764_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245648245748_))
                            (let ((_e245659245767_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245648245748_))))
                              (let ((_hd245658245770_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245659245767_)))
                                    (_tl245657245772_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245659245767_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd245658245770_))
                                    (let ((_e245662245775_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd245658245770_))))
                                      (let ((_hd245661245778_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e245662245775_)))
                                            (_tl245660245780_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e245662245775_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd245661245778_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd245661245778_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl245660245780_))
                                                    (let ((_e245665245783_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl245660245780_))))
                                                      (let ((_hd245664245786_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e245665245783_)))
                    (_tl245663245788_
                     (let () (declare (not safe)) (##cdr _e245665245783_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl245663245788_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl245657245772_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl245657245772_))
                                  '1)
                            (let ((_g252662_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl245657245772_
                                      '1))))
                              (begin
                                (let ((_g252663_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g252662_)
                                             (##vector-length _g252662_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g252663_ 2)))
                                      (error "Context expects 2 values"
                                             _g252663_)))
                                (let ((_target245666245791_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252662_ 0)))
                                      (_tl245668245793_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252662_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl245668245793_))
                                      (let ((_e245677245796_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl245668245793_))))
                                        (let ((_hd245676245799_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245677245796_)))
                                              (_tl245675245801_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245677245796_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl245675245801_))
                                              (letrec ((_loop245669245804_
                                                        (lambda (_hd245667245807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref245673245809_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd245667245807_))
                      (let ((_e245670245812_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd245667245807_))))
                        (let ((_lp-hd245671245815_
                               (let ()
                                 (declare (not safe))
                                 (##car _e245670245812_)))
                              (_lp-tl245672245817_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e245670245812_))))
                          (let ((__tmp252749
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd245671245815_
                                         _kw-ref245673245809_))))
                            (declare (not safe))
                            (_loop245669245804_
                             _lp-tl245672245817_
                             __tmp252749))))
                      (let ((_kw-ref245674245820_
                             (reverse _kw-ref245673245809_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245633245708_))
                            ((lambda (_L245823_
                                      _L245824_
                                      _L245825_
                                      _L245826_
                                      _L245827_)
                               (let* ((_kw-count245878_
                                       (length (let ((__tmp252664
                                                      (lambda (_g245870245873_
                                                               _g245871245875_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g245870245873_
                                                                _g245871245875_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp252664
                                                         '()
                                                         _L245824_))))
                                      (_self-index245880_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count245878_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L245579_))
                                     (let* ((_g245883245897_
                                             (lambda (_g245884245894_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g245884245894_))))
                                            (_g245882246068_
                                             (lambda (_g245884245900_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g245884245900_))
                                                   (let ((_e245889245902_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g245884245900_))))
                                                     (let ((_hd245888245905_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e245889245902_)))
                                                           (_tl245887245907_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e245889245902_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl245887245907_))
                                                           (let ((_e245892245910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl245887245907_))))
                     (let ((_hd245891245913_
                            (let ()
                              (declare (not safe))
                              (##car _e245892245910_)))
                           (_tl245890245915_
                            (let ()
                              (declare (not safe))
                              (##cdr _e245892245910_))))
                       ((lambda (_L245918_ _L245919_)
                          (let ((_self245935_
                                 (list-ref _L245919_ _self-index245880_)))
                            (for-each
                             (lambda (_g245936245938_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g245936245938_
                                  _self245935_
                                  _method-calls243585_
                                  _slot-refs243586_
                                  _class-type-check243587_
                                  _struct-type-check243588_
                                  _struct-type-assert243589_)))
                             _L245918_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?243592_))
                                _stx243491_
                                (let* ((_specializer-id245947_
                                        (let* ((_id245941_
                                                (let ((__tmp252715
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L243566_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp252715
                                                   '"::specialize")))
                                               (_specializer-id245944_
                                                (let ((__tmp252716
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx243491_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id245941_
                                                   __tmp252716))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id245944_))
                                          _specializer-id245944_))
                                       (_lifted-specializer-id245954_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?243594_))
                                            (let* ((_id245949_
                                                    (let ((__tmp252717
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L243566_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp252717
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id245951_
                                                    (let ((__tmp252718
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx243491_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id245949_
                                                       __tmp252718))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id245951_))
                                              _lifted-specializer-id245951_)
                                            '#f))
                                       (_$t245956_
                                        (let ((__tmp252719 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp252719)))
                                       (_methods245958_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls243585_)))
                                       (_$methods245962_
                                        (map (lambda (_id245960_)
                                               (let ((__tmp252720
                                                      (gensym _id245960_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp252720)))
                                             _methods245958_))
                                       (_g252721_
                                        (for-each
                                         (lambda (_g245963245966_
                                                  _g245964245968_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls243585_
                                              _g245963245966_
                                              _g245964245968_)))
                                         _methods245958_
                                         _$methods245962_))
                                       (_methods-bind245979_
                                        (map (lambda (_g245971245974_
                                                      _g245972245976_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind243493_
                                                  _$t245956_
                                                  _g245971245974_
                                                  _g245972245976_)))
                                             _methods245958_
                                             _$methods245962_))
                                       (_slots245981_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs243586_)))
                                       (_$slots245985_
                                        (map (lambda (_id245983_)
                                               (let ((__tmp252722
                                                      (gensym _id245983_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp252722)))
                                             _slots245981_))
                                       (_g252723_
                                        (for-each
                                         (lambda (_g245986245989_
                                                  _g245987245991_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs243586_
                                              _g245986245989_
                                              _g245987245991_)))
                                         _slots245981_
                                         _$slots245985_))
                                       (_slots-bind246002_
                                        (map (lambda (_g245994245997_
                                                      _g245995245999_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind243494_
                                                  _$t245956_
                                                  _g245994245997_
                                                  _g245995245999_)))
                                             _slots245981_
                                             _$slots245985_))
                                       (_class-check246004_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check243587_)))
                                       (_$class-check246007_
                                        (map (lambda (_g252724_)
                                               (let ((__tmp252725
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp252725)))
                                             _class-check246004_))
                                       (_g252726_
                                        (for-each
                                         (lambda (_g246008246011_
                                                  _g246009246013_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check243587_
                                              _g246008246011_
                                              _g246009246013_)))
                                         _class-check246004_
                                         _$class-check246007_))
                                       (_class-check-bind246024_
                                        (map (lambda (_g246016246019_
                                                      _g246017246021_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind243495_
                                                  _$t245956_
                                                  _g246016246019_
                                                  _g246017246021_)))
                                             _class-check246004_
                                             _$class-check246007_))
                                       (_struct-check-all246026_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check243588_
                                           _struct-type-assert243589_)))
                                       (_struct-check246028_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all246026_)))
                                       (_$struct-check246031_
                                        (map (lambda (_g252727_)
                                               (let ((__tmp252728
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp252728)))
                                             _struct-check246028_))
                                       (_g252729_
                                        (for-each
                                         (lambda (_g246032246035_
                                                  _g246033246037_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all246026_
                                              _g246032246035_
                                              _g246033246037_)))
                                         _struct-check246028_
                                         _$struct-check246031_))
                                       (_struct-check-bind246048_
                                        (map (lambda (_g246040246043_
                                                      _g246041246045_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind243496_
                                                  _$t245956_
                                                  _g246040246043_
                                                  _g246041246045_)))
                                             _struct-check246028_
                                             _$struct-check246031_))
                                       (_make-specializer-impl246059_
                                        (lambda (_struct-type-check1246050_
                                                 _struct-type-check2246051_)
                                          (let* ((_specializer-body246057_
                                                  (map (lambda (_g246052246054_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g246052246054_
                                                            _self245935_
                                                            _$t245956_
                                                            _method-calls243585_
                                                            _slot-refs243586_
                                                            _class-type-check243587_
                                                            _struct-type-check1246050_
                                                            _struct-type-check2246051_)))
                                                       _L245918_))
                                                 (__tmp252730
                                                  (let ((__tmp252731
                                                         (let ((__tmp252733
                                                                (let ((__tmp252734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252746
                                      (let ()
                                        (declare (not safe))
                                        (cons _L245581_ '())))
                                     (__tmp252735
                                      (let ((__tmp252736
                                             (let ((__tmp252737
                                                    (let ((__tmp252739
                                                           (let ((__tmp252740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252745
                                 (let ()
                                   (declare (not safe))
                                   (cons _L245580_ '())))
                                (__tmp252741
                                 (let ((__tmp252742
                                        (let ((__tmp252743
                                               (let ((__tmp252744
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L245919_
                                                              _specializer-body246057_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp252744))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp252743
                                           _L245579_))))
                                   (declare (not safe))
                                   (cons __tmp252742 '()))))
                            (declare (not safe))
                            (cons __tmp252745 __tmp252741))))
                     (declare (not safe))
                     (cons __tmp252740 '())))
                  (__tmp252738
                   (let () (declare (not safe)) (cons _L245578_ '()))))
              (declare (not safe))
              (cons __tmp252739 __tmp252738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp252737))))
                                        (declare (not safe))
                                        (cons __tmp252736 '()))))
                                 (declare (not safe))
                                 (cons __tmp252746 __tmp252735))))
                          (declare (not safe))
                          (cons __tmp252734 '())))
                       (__tmp252732
                        (let () (declare (not safe)) (cons _L245577_ '()))))
                   (declare (not safe))
                   (cons __tmp252733 __tmp252732))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp252731))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp252730
                                             _stx243491_))))
                                       (_specializer-impl246061_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl246059_
                                           _struct-check-all246026_
                                           _empty243590_)))
                                       (_unchecked-specializer-impl246063_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?243593_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl246059_
                                               _empty243590_
                                               _struct-check-all246026_))
                                            '#f))
                                       (_specializer-impl246065_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl243497_
                                           _$t245956_
                                           _methods-bind245979_
                                           _slots-bind246002_
                                           _class-check-bind246024_
                                           _struct-check-bind246048_
                                           _specializer-impl246061_
                                           _lifted-specializer-id245954_
                                           _unchecked-specializer-impl246063_))))
                                  (let ((__tmp252748
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L243566_)))
                                        (__tmp252747
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id245947_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp252748
                                     '" => "
                                     __tmp252747))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def243498_
                                     _L243566_
                                     _specializer-id245947_
                                     _specializer-impl246065_
                                     _lifted-specializer-id245954_
                                     _unchecked-specializer-impl246063_))))))
                        _tl245890245915_
                        _hd245891245913_)))
                   (let ()
                     (declare (not safe))
                     (_g245883245897_ _g245884245900_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g245883245897_
                                                      _g245884245900_))))))
                                       (declare (not safe))
                                       (_g245882246068_ _L245579_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L245579_))
                                         (let* ((_g246071246101_
                                                 (lambda (_g246072246098_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g246072246098_))))
                                                (_g246070246726_
                                                 (lambda (_g246072246104_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g246072246104_))
                                                       (let ((_e246078246106_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g246072246104_))))
                 (let ((_hd246077246109_
                        (let () (declare (not safe)) (##car _e246078246106_)))
                       (_tl246076246111_
                        (let () (declare (not safe)) (##cdr _e246078246106_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl246076246111_))
                       (let ((_e246081246114_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl246076246111_))))
                         (let ((_hd246080246117_
                                (let ()
                                  (declare (not safe))
                                  (##car _e246081246114_)))
                               (_tl246079246119_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e246081246114_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd246080246117_))
                               (let ((_e246084246122_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd246080246117_))))
                                 (let ((_hd246083246125_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e246084246122_)))
                                       (_tl246082246127_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e246084246122_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd246083246125_))
                                       (let ((_e246087246130_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd246083246125_))))
                                         (let ((_hd246086246133_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e246087246130_)))
                                               (_tl246085246135_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e246087246130_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd246086246133_))
                                               (let ((_e246090246138_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd246086246133_))))
                                                 (let ((_hd246089246141_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e246090246138_)))
                                                       (_tl246088246143_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e246090246138_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl246088246143_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl246085246135_))
                                                           (let ((_e246093246146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl246085246135_))))
                     (let ((_hd246092246149_
                            (let ()
                              (declare (not safe))
                              (##car _e246093246146_)))
                           (_tl246091246151_
                            (let ()
                              (declare (not safe))
                              (##cdr _e246093246146_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl246091246151_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl246082246127_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl246079246119_))
                                   (let ((_e246096246154_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl246079246119_))))
                                     (let ((_hd246095246157_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e246096246154_)))
                                           (_tl246094246159_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e246096246154_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl246094246159_))
                                           ((lambda (_L246162_
                                                     _L246163_
                                                     _L246164_)
                                              (let* ((_g246187246201_
                                                      (lambda (_g246188246198_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g246188246198_))))
                                                     (_g246186246242_
                                                      (lambda (_g246188246204_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g246188246204_))
                                                            (let ((_e246193246206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g246188246204_))))
                      (let ((_hd246192246209_
                             (let ()
                               (declare (not safe))
                               (##car _e246193246206_)))
                            (_tl246191246211_
                             (let ()
                               (declare (not safe))
                               (##cdr _e246193246206_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl246191246211_))
                            (let ((_e246196246214_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl246191246211_))))
                              (let ((_hd246195246217_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e246196246214_)))
                                    (_tl246194246219_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e246196246214_))))
                                ((lambda (_L246222_ _L246223_)
                                   (let ((_self246236_
                                          (list-ref
                                           _L246223_
                                           _self-index245880_)))
                                     (for-each
                                      (lambda (_g246237246239_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g246237246239_
                                           _self246236_
                                           _method-calls243585_
                                           _slot-refs243586_
                                           _class-type-check243587_
                                           _struct-type-check243588_
                                           _struct-type-assert243589_)))
                                      _L246222_)))
                                 _tl246194246219_
                                 _hd246195246217_)))
                            (let ()
                              (declare (not safe))
                              (_g246187246201_ _g246188246204_)))))
                    (let ()
                      (declare (not safe))
                      (_g246187246201_ _g246188246204_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g246186246242_ _L246163_))
                                              (let* ((_g246245246264_
                                                      (lambda (_g246246246261_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g246246246261_))))
                                                     (_g246244246369_
                                                      (lambda (_g246246246267_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g246246246267_))
                                                            (let ((_e246250246269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g246246246267_))))
                      (let ((_hd246249246272_
                             (let ()
                               (declare (not safe))
                               (##car _e246250246269_)))
                            (_tl246248246274_
                             (let ()
                               (declare (not safe))
                               (##cdr _e246250246269_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl246248246274_))
                            (let ((_g252665_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl246248246274_
                                      '0))))
                              (begin
                                (let ((_g252666_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g252665_)
                                             (##vector-length _g252665_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g252666_ 2)))
                                      (error "Context expects 2 values"
                                             _g252666_)))
                                (let ((_target246251246277_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252665_ 0)))
                                      (_tl246253246279_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252665_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl246253246279_))
                                      (letrec ((_loop246254246282_
                                                (lambda (_hd246252246285_
                                                         _clause246258246287_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd246252246285_))
                                                      (let ((_e246255246290_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd246252246285_))))
                (let ((_lp-hd246256246293_
                       (let () (declare (not safe)) (##car _e246255246290_)))
                      (_lp-tl246257246295_
                       (let () (declare (not safe)) (##cdr _e246255246290_))))
                  (let ((__tmp252668
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd246256246293_ _clause246258246287_))))
                    (declare (not safe))
                    (_loop246254246282_ _lp-tl246257246295_ __tmp252668))))
              (let ((_clause246259246298_ (reverse _clause246258246287_)))
                ((lambda (_L246301_)
                   (for-each
                    (lambda (_clause246314_)
                      (let* ((_g246316246327_
                              (lambda (_g246317246324_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g246317246324_))))
                             (_g246315246359_
                              (lambda (_g246317246330_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g246317246330_))
                                    (let ((_e246322246332_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g246317246330_))))
                                      (let ((_hd246321246335_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e246322246332_)))
                                            (_tl246320246337_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e246322246332_))))
                                        ((lambda (_L246340_ _L246341_)
                                           (let ((_self246353_
                                                  (list-ref
                                                   _L246341_
                                                   _self-index245880_)))
                                             (for-each
                                              (lambda (_g246354246356_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g246354246356_
                                                   _self246353_
                                                   _method-calls243585_
                                                   _slot-refs243586_
                                                   _class-type-check243587_
                                                   _struct-type-check243588_
                                                   _struct-type-assert243589_)))
                                              _L246340_)))
                                         _tl246320246337_
                                         _hd246321246335_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g246316246327_ _g246317246330_))))))
                        (declare (not safe))
                        (_g246315246359_ _clause246314_)))
                    (let ((__tmp252667
                           (lambda (_g246361246364_ _g246362246366_)
                             (let ()
                               (declare (not safe))
                               (cons _g246361246364_ _g246362246366_)))))
                      (declare (not safe))
                      (foldr1 __tmp252667 '() _L246301_))))
                 _clause246259246298_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop246254246282_
                                           _target246251246277_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g246245246264_ _g246246246267_))))))
                            (let ()
                              (declare (not safe))
                              (_g246245246264_ _g246246246267_)))))
                    (let ()
                      (declare (not safe))
                      (_g246245246264_ _g246246246267_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g246244246369_ _L246162_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?243592_))
                                                  _stx243491_
                                                  (let* ((_specializer-id246378_
                                                          (let* ((_id246372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252669
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L243566_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp252669 '"::specialize")))
                         (_specializer-id246375_
                          (let ((__tmp252670
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx243491_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id246372_ __tmp252670))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id246375_))
                    _specializer-id246375_))
                 (_lifted-specializer-id246385_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?243594_))
                      (let* ((_id246380_
                              (let ((__tmp252671
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L243566_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp252671
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id246382_
                              (let ((__tmp252672
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx243491_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id246380_
                                 __tmp252672))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id246382_))
                        _lifted-specializer-id246382_)
                      '#f))
                 (_$t246387_
                  (let ((__tmp252673 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp252673)))
                 (_methods246389_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls243585_)))
                 (_$methods246393_
                  (map (lambda (_id246391_)
                         (let ((__tmp252674 (gensym _id246391_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252674)))
                       _methods246389_))
                 (_g252675_
                  (for-each
                   (lambda (_g246394246397_ _g246395246399_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls243585_
                        _g246394246397_
                        _g246395246399_)))
                   _methods246389_
                   _$methods246393_))
                 (_methods-bind246410_
                  (map (lambda (_g246402246405_ _g246403246407_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind243493_
                            _$t246387_
                            _g246402246405_
                            _g246403246407_)))
                       _methods246389_
                       _$methods246393_))
                 (_slots246412_
                  (let () (declare (not safe)) (hash-keys _slot-refs243586_)))
                 (_$slots246416_
                  (map (lambda (_id246414_)
                         (let ((__tmp252676 (gensym _id246414_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252676)))
                       _slots246412_))
                 (_g252677_
                  (for-each
                   (lambda (_g246417246420_ _g246418246422_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs243586_
                        _g246417246420_
                        _g246418246422_)))
                   _slots246412_
                   _$slots246416_))
                 (_slots-bind246433_
                  (map (lambda (_g246425246428_ _g246426246430_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind243494_
                            _$t246387_
                            _g246425246428_
                            _g246426246430_)))
                       _slots246412_
                       _$slots246416_))
                 (_class-check246435_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check243587_)))
                 (_$class-check246438_
                  (map (lambda (_g252678_)
                         (let ((__tmp252679 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252679)))
                       _class-check246435_))
                 (_g252680_
                  (for-each
                   (lambda (_g246439246442_ _g246440246444_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check243587_
                        _g246439246442_
                        _g246440246444_)))
                   _class-check246435_
                   _$class-check246438_))
                 (_class-check-bind246455_
                  (map (lambda (_g246447246450_ _g246448246452_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind243495_
                            _$t246387_
                            _g246447246450_
                            _g246448246452_)))
                       _class-check246435_
                       _$class-check246438_))
                 (_struct-check-all246457_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check243588_
                     _struct-type-assert243589_)))
                 (_struct-check246459_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all246457_)))
                 (_$struct-check246462_
                  (map (lambda (_g252681_)
                         (let ((__tmp252682 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252682)))
                       _struct-check246459_))
                 (_g252683_
                  (for-each
                   (lambda (_g246463246466_ _g246464246468_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all246457_
                        _g246463246466_
                        _g246464246468_)))
                   _struct-check246459_
                   _$struct-check246462_))
                 (_struct-check-bind246479_
                  (map (lambda (_g246471246474_ _g246472246476_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind243496_
                            _$t246387_
                            _g246471246474_
                            _g246472246476_)))
                       _struct-check246459_
                       _$struct-check246462_))
                 (_make-specializer-lambda-expr246565_
                  (lambda (_struct-type-check1246481_
                           _struct-type-check2246482_)
                    (let* ((_g246484246498_
                            (lambda (_g246485246495_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g246485246495_))))
                           (_g246483246562_
                            (lambda (_g246485246501_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g246485246501_))
                                  (let ((_e246490246503_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g246485246501_))))
                                    (let ((_hd246489246506_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e246490246503_)))
                                          (_tl246488246508_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e246490246503_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl246488246508_))
                                          (let ((_e246493246511_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl246488246508_))))
                                            (let ((_hd246492246514_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e246493246511_)))
                                                  (_tl246491246516_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e246493246511_))))
                                              ((lambda (_L246519_ _L246520_)
                                                 (let* ((_self246553_
                                                         (list-ref
                                                          _L246520_
                                                          _self-index245880_))
                                                        (_body246559_
                                                         (map (lambda (_g246554246556_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g246554246556_
                           _self246553_
                           _$t246387_
                           _method-calls243585_
                           _slot-refs243586_
                           _class-type-check243587_
                           _struct-type-check1246481_
                           _struct-type-check2246482_)))
                      _L246519_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp252684
                                                          (let ((__tmp252685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L246520_ _body246559_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp252685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp252684
                                                      _L246163_))))
                                               _tl246491246516_
                                               _hd246492246514_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g246484246498_
                                             _g246485246501_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g246484246498_ _g246485246501_))))))
                      (declare (not safe))
                      (_g246483246562_ _L246163_))))
                 (_make-specializer-case-lambda-expr246704_
                  (lambda (_struct-type-check1246567_
                           _struct-type-check2246568_)
                    (let* ((_g246570246589_
                            (lambda (_g246571246586_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g246571246586_))))
                           (_g246569246701_
                            (lambda (_g246571246592_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g246571246592_))
                                  (let ((_e246575246594_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g246571246592_))))
                                    (let ((_hd246574246597_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e246575246594_)))
                                          (_tl246573246599_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e246575246594_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl246573246599_))
                                          (let ((_g252686_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl246573246599_
                                                    '0))))
                                            (begin
                                              (let ((_g252687_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g252686_)
                                                           (##vector-length
                                                            _g252686_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g252687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g252687_)))
                                              (let ((_target246576246602_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g252686_
                                                        0)))
                                                    (_tl246578246604_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g252686_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl246578246604_))
                                                    (letrec ((_loop246579246607_
                                                              (lambda (_hd246577246610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause246583246612_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd246577246610_))
                            (let ((_e246580246615_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd246577246610_))))
                              (let ((_lp-hd246581246618_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e246580246615_)))
                                    (_lp-tl246582246620_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e246580246615_))))
                                (let ((__tmp252690
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd246581246618_
                                               _clause246583246612_))))
                                  (declare (not safe))
                                  (_loop246579246607_
                                   _lp-tl246582246620_
                                   __tmp252690))))
                            (let ((_clause246584246623_
                                   (reverse _clause246583246612_)))
                              ((lambda (_L246626_)
                                 (let* ((_clauses246699_
                                         (map (lambda (_clause246641_)
                                                (let* ((_g246643246654_
                                                        (lambda (_g246644246651_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g246644246651_))))
                                                       (_g246642246689_
                                                        (lambda (_g246644246657_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g246644246657_))
                      (let ((_e246649246659_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g246644246657_))))
                        (let ((_hd246648246662_
                               (let ()
                                 (declare (not safe))
                                 (##car _e246649246659_)))
                              (_tl246647246664_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e246649246659_))))
                          ((lambda (_L246667_ _L246668_)
                             (let* ((_self246680_
                                     (list-ref _L246668_ _self-index245880_))
                                    (_body246686_
                                     (map (lambda (_g246681246683_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g246681246683_
                                               _self246680_
                                               _$t246387_
                                               _method-calls243585_
                                               _slot-refs243586_
                                               _class-type-check243587_
                                               _struct-type-check1246567_
                                               _struct-type-check2246568_)))
                                          _L246667_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L246668_ _body246686_))))
                           _tl246647246664_
                           _hd246648246662_)))
                      (let ()
                        (declare (not safe))
                        (_g246643246654_ _g246644246657_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g246642246689_
                                                   _clause246641_)))
                                              (let ((__tmp252688
                                                     (lambda (_g246691246694_
                                                              _g246692246696_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g246691246694_
                                                               _g246692246696_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp252688
                                                        '()
                                                        _L246626_))))
                                        (__tmp252689
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses246699_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp252689
                                    _L246162_)))
                               _clause246584246623_))))))
              (let ()
                (declare (not safe))
                (_loop246579246607_ _target246576246602_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g246570246589_
                                                       _g246571246592_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g246570246589_
                                             _g246571246592_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g246570246589_ _g246571246592_))))))
                      (declare (not safe))
                      (_g246569246701_ _L246162_))))
                 (_make-specializer-impl246709_
                  (lambda (_specializer-lambda-expr246706_
                           _specializer-case-lambda-expr246707_)
                    (let ((__tmp252691
                           (let ((__tmp252692
                                  (let ((__tmp252694
                                         (let ((__tmp252695
                                                (let ((__tmp252712
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L245581_ '())))
                                                      (__tmp252696
                                                       (let ((__tmp252697
                                                              (let ((__tmp252698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp252700
                                    (let ((__tmp252701
                                           (let ((__tmp252711
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L245580_ '())))
                                                 (__tmp252702
                                                  (let ((__tmp252703
                                                         (let ((__tmp252704
                                                                (let ((__tmp252705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252707
                                      (let ((__tmp252708
                                             (let ((__tmp252710
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L246164_ '())))
                                                   (__tmp252709
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr246706_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp252710
                                                     __tmp252709))))
                                        (declare (not safe))
                                        (cons __tmp252708 '())))
                                     (__tmp252706
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr246707_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp252707 __tmp252706))))
                          (declare (not safe))
                          (cons '%#let-values __tmp252705))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp252704 _stx243491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252703 '()))))
                                             (declare (not safe))
                                             (cons __tmp252711 __tmp252702))))
                                      (declare (not safe))
                                      (cons __tmp252701 '())))
                                   (__tmp252699
                                    (let ()
                                      (declare (not safe))
                                      (cons _L245578_ '()))))
                               (declare (not safe))
                               (cons __tmp252700 __tmp252699))))
                        (declare (not safe))
                        (cons '%#let-values __tmp252698))))
                 (declare (not safe))
                 (cons __tmp252697 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252712
                                                        __tmp252696))))
                                           (declare (not safe))
                                           (cons __tmp252695 '())))
                                        (__tmp252693
                                         (let ()
                                           (declare (not safe))
                                           (cons _L245577_ '()))))
                                    (declare (not safe))
                                    (cons __tmp252694 __tmp252693))))
                             (declare (not safe))
                             (cons '%#let-values __tmp252692))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252691 _stx243491_))))
                 (_specializer-lambda-expr246711_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr246565_
                     _struct-check-all246457_
                     _empty243590_)))
                 (_specializer-case-lambda-expr246713_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr246704_
                     _struct-check-all246457_
                     _empty243590_)))
                 (_specializer-impl246715_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl246709_
                     _specializer-lambda-expr246711_
                     _specializer-case-lambda-expr246713_)))
                 (_unchecked-specializer-lambda-expr246717_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243593_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr246565_
                         _empty243590_
                         _struct-check-all246457_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr246719_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243593_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr246704_
                         _empty243590_
                         _struct-check-all246457_))
                      '#f))
                 (_unchecked-specializer-impl246721_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243593_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl246709_
                         _unchecked-specializer-lambda-expr246717_
                         _unchecked-specializer-case-lambda-expr246719_))
                      '#f))
                 (_specializer-impl246723_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl243497_
                     _$t246387_
                     _methods-bind246410_
                     _slots-bind246433_
                     _class-check-bind246455_
                     _struct-check-bind246479_
                     _specializer-impl246715_
                     _lifted-specializer-id246385_
                     _unchecked-specializer-impl246721_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp252714
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L243566_)))
                                                          (__tmp252713
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id246378_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp252714
                                                       '" => "
                                                       __tmp252713))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def243498_
                                                       _L243566_
                                                       _specializer-id246378_
                                                       _specializer-impl246723_
                                                       _lifted-specializer-id246385_
                                                       _unchecked-specializer-impl246721_)))))
                                            _hd246095246157_
                                            _hd246092246149_
                                            _hd246089246141_)
                                           (let ()
                                             (declare (not safe))
                                             (_g246071246101_
                                              _g246072246104_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g246071246101_ _g246072246104_)))
                               (let ()
                                 (declare (not safe))
                                 (_g246071246101_ _g246072246104_)))
                           (let ()
                             (declare (not safe))
                             (_g246071246101_ _g246072246104_)))))
                   (let ()
                     (declare (not safe))
                     (_g246071246101_ _g246072246104_)))
               (let ()
                 (declare (not safe))
                 (_g246071246101_ _g246072246104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g246071246101_
                                                  _g246072246104_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g246071246101_ _g246072246104_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g246071246101_ _g246072246104_)))))
                       (let ()
                         (declare (not safe))
                         (_g246071246101_ _g246072246104_)))))
               (let ()
                 (declare (not safe))
                 (_g246071246101_ _g246072246104_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g246070246726_ _L245579_))
                                         _stx243491_))))
                             _hd245676245799_
                             _kw-ref245674245820_
                             _hd245664245786_
                             _hd245655245762_
                             _hd245646245738_)
                            (let ()
                              (declare (not safe))
                              (_g245620245682_ _g245621245685_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop245669245804_
                                                   _target245666245791_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g245620245682_
                                                 _g245621245685_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g245620245682_ _g245621245685_))))))
                            (let ()
                              (declare (not safe))
                              (_g245620245682_ _g245621245685_)))
                        (let ()
                          (declare (not safe))
                          (_g245620245682_ _g245621245685_)))
                    (let ()
                      (declare (not safe))
                      (_g245620245682_ _g245621245685_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245620245682_
                                                       _g245621245685_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g245620245682_
                                                   _g245621245685_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g245620245682_
                                               _g245621245685_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g245620245682_ _g245621245685_)))))
                            (let ()
                              (declare (not safe))
                              (_g245620245682_ _g245621245685_)))
                        (let ()
                          (declare (not safe))
                          (_g245620245682_ _g245621245685_)))))
                (let ()
                  (declare (not safe))
                  (_g245620245682_ _g245621245685_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245620245682_
                                                       _g245621245685_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g245620245682_
                                                   _g245621245685_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g245620245682_ _g245621245685_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g245620245682_ _g245621245685_)))
                            (let ()
                              (declare (not safe))
                              (_g245620245682_ _g245621245685_)))))
                    (let ()
                      (declare (not safe))
                      (_g245620245682_ _g245621245685_)))
                (let ()
                  (declare (not safe))
                  (_g245620245682_ _g245621245685_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245620245682_
                                                       _g245621245685_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g245620245682_
                                               _g245621245685_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g245620245682_ _g245621245685_)))
                                (let ()
                                  (declare (not safe))
                                  (_g245620245682_ _g245621245685_)))
                            (let ()
                              (declare (not safe))
                              (_g245620245682_ _g245621245685_)))))
                    (let ()
                      (declare (not safe))
                      (_g245620245682_ _g245621245685_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245620245682_
                                                       _g245621245685_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g245620245682_
                                               _g245621245685_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g245620245682_ _g245621245685_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g245620245682_ _g245621245685_)))))
                            (let ()
                              (declare (not safe))
                              (_g245620245682_ _g245621245685_))))))
                (declare (not safe))
                (_g245619246729_ _L245578_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd245454245572_
                                                    _hd245451245564_
                                                    _hd245448245556_
                                                    _hd245445245548_
                                                    _hd245427245500_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g245407245460_
                                                      _g245408245463_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g245407245460_
                                              _g245408245463_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g245407245460_ _g245408245463_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g245407245460_ _g245408245463_)))
                               (let ()
                                 (declare (not safe))
                                 (_g245407245460_ _g245408245463_)))))
                       (let ()
                         (declare (not safe))
                         (_g245407245460_ _g245408245463_)))
                   (let ()
                     (declare (not safe))
                     (_g245407245460_ _g245408245463_)))
               (let ()
                 (declare (not safe))
                 (_g245407245460_ _g245408245463_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245407245460_
                                                  _g245408245463_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g245407245460_
                                              _g245408245463_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g245407245460_ _g245408245463_)))))
                           (let ()
                             (declare (not safe))
                             (_g245407245460_ _g245408245463_)))))
                   (let ()
                     (declare (not safe))
                     (_g245407245460_ _g245408245463_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g245407245460_
                                                      _g245408245463_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245407245460_
                                                  _g245408245463_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g245407245460_
                                              _g245408245463_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g245407245460_ _g245408245463_)))))
                           (let ()
                             (declare (not safe))
                             (_g245407245460_ _g245408245463_)))
                       (let ()
                         (declare (not safe))
                         (_g245407245460_ _g245408245463_)))))
               (let ()
                 (declare (not safe))
                 (_g245407245460_ _g245408245463_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245407245460_
                                                  _g245408245463_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g245407245460_ _g245408245463_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g245407245460_ _g245408245463_)))
                           (let ()
                             (declare (not safe))
                             (_g245407245460_ _g245408245463_)))
                       (let ()
                         (declare (not safe))
                         (_g245407245460_ _g245408245463_)))))
               (let ()
                 (declare (not safe))
                 (_g245407245460_ _g245408245463_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g245406246732_ _L243565_))
                                         _stx243491_))))))))
                  (___kont251439251440_ (lambda () _stx243491_)))
              (let ((___match251468251469_
                     (lambda (_e243507243533_
                              _hd243506243536_
                              _tl243505243538_
                              _e243510243541_
                              _hd243509243544_
                              _tl243508243546_
                              _e243513243549_
                              _hd243512243552_
                              _tl243511243554_
                              _e243516243557_
                              _hd243515243560_
                              _tl243514243562_)
                       (let ((_L243565_ _hd243515243560_)
                             (_L243566_ _hd243512243552_))
                         (if (let ((__tmp252831
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L243566_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp252831))
                             (___kont251437251438_ _L243565_ _L243566_)
                             (___kont251439251440_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx251435251436_))
                    (let ((_e243507243533_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx251435251436_))))
                      (let ((_tl243505243538_
                             (let ()
                               (declare (not safe))
                               (##cdr _e243507243533_)))
                            (_hd243506243536_
                             (let ()
                               (declare (not safe))
                               (##car _e243507243533_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl243505243538_))
                            (let ((_e243510243541_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl243505243538_))))
                              (let ((_tl243508243546_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e243510243541_)))
                                    (_hd243509243544_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e243510243541_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd243509243544_))
                                    (let ((_e243513243549_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd243509243544_))))
                                      (let ((_tl243511243554_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e243513243549_)))
                                            (_hd243512243552_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e243513243549_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl243511243554_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl243508243546_))
                                                (let ((_e243516243557_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl243508243546_))))
                                                  (let ((_tl243514243562_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e243516243557_)))
                                                        (_hd243515243560_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e243516243557_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl243514243562_))
                                                        (___match251468251469_
                                                         _e243507243533_
                                                         _hd243506243536_
                                                         _tl243505243538_
                                                         _e243510243541_
                                                         _hd243509243544_
                                                         _tl243508243546_
                                                         _e243513243549_
                                                         _hd243512243552_
                                                         _tl243511243554_
                                                         _e243516243557_
                                                         _hd243515243560_
                                                         _tl243514243562_)
                                                        (___kont251439251440_))))
                                                (___kont251439251440_))
                                            (___kont251439251440_))))
                                    (___kont251439251440_))))
                            (___kont251439251440_))))
                    (___kont251439251440_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx242467_
               _self242468_
               _methods242469_
               _slots242470_
               _class-check242471_
               _struct-check242472_
               _struct-assert242473_)
        (let* ((___stx251471251472_ _stx242467_)
               (_g242481242703_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx251471251472_)))))
          (let ((___kont251473251474_
                 (lambda (_L243440_ _L243441_ _L243442_ _L243443_)
                   (let ((__tmp252832
                          (let () (declare (not safe)) (gx#stx-e _L243441_))))
                     (declare (not safe))
                     (table-set! _methods242469_ __tmp252832 '#t))
                   (for-each
                    (lambda (_g243476243478_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g243476243478_
                         _self242468_
                         _methods242469_
                         _slots242470_
                         _class-check242471_
                         _struct-check242472_
                         _struct-assert242473_)))
                    (let ((__tmp252833
                           (lambda (_g243480243483_ _g243481243485_)
                             (let ()
                               (declare (not safe))
                               (cons _g243480243483_ _g243481243485_)))))
                      (declare (not safe))
                      (foldr1 __tmp252833 '() _L243440_)))))
                (___kont251477251478_
                 (lambda (_L243275_ _L243276_ _L243277_ _L243278_ _L243279_)
                   (let ((__tmp252834
                          (let () (declare (not safe)) (gx#stx-e _L243276_))))
                     (declare (not safe))
                     (table-set! _methods242469_ __tmp252834 '#t))
                   (for-each
                    (lambda (_g243319243321_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g243319243321_
                         _self242468_
                         _methods242469_
                         _slots242470_
                         _class-check242471_
                         _struct-check242472_
                         _struct-assert242473_)))
                    (let ((__tmp252835
                           (lambda (_g243323243326_ _g243324243328_)
                             (let ()
                               (declare (not safe))
                               (cons _g243323243326_ _g243324243328_)))))
                      (declare (not safe))
                      (foldr1 __tmp252835 '() _L243275_)))))
                (___kont251481251482_
                 (lambda (_L243108_ _L243109_ _L243110_)
                   (let ((__tmp252836
                          (let () (declare (not safe)) (gx#stx-e _L243108_))))
                     (declare (not safe))
                     (table-set! _slots242470_ __tmp252836 '#t))))
                (___kont251483251484_
                 (lambda (_L242985_ _L242986_ _L242987_ _L242988_)
                   (let ((__tmp252837
                          (let () (declare (not safe)) (gx#stx-e _L242986_))))
                     (declare (not safe))
                     (table-set! _slots242470_ __tmp252837 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L242985_
                      _self242468_
                      _methods242469_
                      _slots242470_
                      _class-check242471_
                      _struct-check242472_
                      _struct-assert242473_))))
                (___kont251485251486_
                 (lambda (_L242869_ _L242870_)
                   (let ((__tmp252838
                          (let ((__obj252474
                                 (let ((__tmp252839
                                        (let ()
                                          (declare (not safe))
                                          (gxc#identifier-symbol _L242870_))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-type __tmp252839))))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj252474
                                   'gxc#!accessor::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj252474
                                   '2
                                   gxc#!accessor::t
                                   '#f))
                                (class-slot-ref
                                 gxc#!accessor::t
                                 __obj252474
                                 'slot)))))
                     (declare (not safe))
                     (table-set! _slots242470_ __tmp252838 '#t))))
                (___kont251487251488_
                 (lambda (_L242779_ _L242780_ _L242781_)
                   (let ((__tmp252840
                          (let ((__obj252475
                                 (let ((__tmp252841
                                        (let ()
                                          (declare (not safe))
                                          (gxc#identifier-symbol _L242781_))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-type __tmp252841))))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj252475
                                   'gxc#!mutator::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj252475
                                   '2
                                   gxc#!mutator::t
                                   '#f))
                                (class-slot-ref
                                 gxc#!mutator::t
                                 __obj252475
                                 'slot)))))
                     (declare (not safe))
                     (table-set! _slots242470_ __tmp252840 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L242779_
                      _self242468_
                      _methods242469_
                      _slots242470_
                      _class-check242471_
                      _struct-check242472_
                      _struct-assert242473_))))
                (___kont251489251490_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx242467_
                      _self242468_
                      _methods242469_
                      _slots242470_
                      _class-check242471_
                      _struct-check242472_
                      _struct-assert242473_)))))
            (let* ((___match251970251971_
                    (lambda (_e242677242715_
                             _hd242676242718_
                             _tl242675242720_
                             _e242680242723_
                             _hd242679242726_
                             _tl242678242728_
                             _e242683242731_
                             _hd242682242734_
                             _tl242681242736_
                             _e242686242739_
                             _hd242685242742_
                             _tl242684242744_
                             _e242689242747_
                             _hd242688242750_
                             _tl242687242752_
                             _e242692242755_
                             _hd242691242758_
                             _tl242690242760_
                             _e242695242763_
                             _hd242694242766_
                             _tl242693242768_
                             _e242698242771_
                             _hd242697242774_
                             _tl242696242776_)
                      (let ((_L242779_ _hd242697242774_)
                            (_L242780_ _hd242694242766_)
                            (_L242781_ _hd242685242742_))
                        (if (and (let ((__tmp252842
                                        (let ((__tmp252843
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L242781_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp252843))))
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!mutator::t
                                    __tmp252842))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L242780_
                                    _self242468_)))
                            (___kont251487251488_
                             _L242779_
                             _L242780_
                             _L242781_)
                            (___kont251489251490_)))))
                   (___match251968251969_
                    (lambda (_e242677242715_
                             _hd242676242718_
                             _tl242675242720_
                             _e242680242723_
                             _hd242679242726_
                             _tl242678242728_
                             _e242683242731_
                             _hd242682242734_
                             _tl242681242736_
                             _e242686242739_
                             _hd242685242742_
                             _tl242684242744_
                             _e242689242747_
                             _hd242688242750_
                             _tl242687242752_
                             _e242692242755_
                             _hd242691242758_
                             _tl242690242760_
                             _e242695242763_
                             _hd242694242766_
                             _tl242693242768_
                             _e242698242771_
                             _hd242697242774_
                             _tl242696242776_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242696242776_))
                          (___match251970251971_
                           _e242677242715_
                           _hd242676242718_
                           _tl242675242720_
                           _e242680242723_
                           _hd242679242726_
                           _tl242678242728_
                           _e242683242731_
                           _hd242682242734_
                           _tl242681242736_
                           _e242686242739_
                           _hd242685242742_
                           _tl242684242744_
                           _e242689242747_
                           _hd242688242750_
                           _tl242687242752_
                           _e242692242755_
                           _hd242691242758_
                           _tl242690242760_
                           _e242695242763_
                           _hd242694242766_
                           _tl242693242768_
                           _e242698242771_
                           _hd242697242774_
                           _tl242696242776_)
                          (___kont251489251490_))))
                   (___match251962251963_
                    (lambda (_e242677242715_
                             _hd242676242718_
                             _tl242675242720_
                             _e242680242723_
                             _hd242679242726_
                             _tl242678242728_
                             _e242683242731_
                             _hd242682242734_
                             _tl242681242736_
                             _e242686242739_
                             _hd242685242742_
                             _tl242684242744_
                             _e242689242747_
                             _hd242688242750_
                             _tl242687242752_
                             _e242692242755_
                             _hd242691242758_
                             _tl242690242760_
                             _e242695242763_
                             _hd242694242766_
                             _tl242693242768_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242687242752_))
                          (let ((_e242698242771_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242687242752_))))
                            (let ((_tl242696242776_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242698242771_)))
                                  (_hd242697242774_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242698242771_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242696242776_))
                                  (___match251970251971_
                                   _e242677242715_
                                   _hd242676242718_
                                   _tl242675242720_
                                   _e242680242723_
                                   _hd242679242726_
                                   _tl242678242728_
                                   _e242683242731_
                                   _hd242682242734_
                                   _tl242681242736_
                                   _e242686242739_
                                   _hd242685242742_
                                   _tl242684242744_
                                   _e242689242747_
                                   _hd242688242750_
                                   _tl242687242752_
                                   _e242692242755_
                                   _hd242691242758_
                                   _tl242690242760_
                                   _e242695242763_
                                   _hd242694242766_
                                   _tl242693242768_
                                   _e242698242771_
                                   _hd242697242774_
                                   _tl242696242776_)
                                  (___kont251489251490_))))
                          (___kont251489251490_))))
                   (___match251908251909_
                    (lambda (_e242653242813_
                             _hd242652242816_
                             _tl242651242818_
                             _e242656242821_
                             _hd242655242824_
                             _tl242654242826_
                             _e242659242829_
                             _hd242658242832_
                             _tl242657242834_
                             _e242662242837_
                             _hd242661242840_
                             _tl242660242842_
                             _e242665242845_
                             _hd242664242848_
                             _tl242663242850_
                             _e242668242853_
                             _hd242667242856_
                             _tl242666242858_
                             _e242671242861_
                             _hd242670242864_
                             _tl242669242866_)
                      (let ((_L242869_ _hd242670242864_)
                            (_L242870_ _hd242661242840_))
                        (if (and (let ((__tmp252844
                                        (let ((__tmp252845
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L242870_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp252845))))
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!accessor::t
                                    __tmp252844))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L242869_
                                    _self242468_)))
                            (___kont251485251486_ _L242869_ _L242870_)
                            (___kont251489251490_)))))
                   (___match251906251907_
                    (lambda (_e242653242813_
                             _hd242652242816_
                             _tl242651242818_
                             _e242656242821_
                             _hd242655242824_
                             _tl242654242826_
                             _e242659242829_
                             _hd242658242832_
                             _tl242657242834_
                             _e242662242837_
                             _hd242661242840_
                             _tl242660242842_
                             _e242665242845_
                             _hd242664242848_
                             _tl242663242850_
                             _e242668242853_
                             _hd242667242856_
                             _tl242666242858_
                             _e242671242861_
                             _hd242670242864_
                             _tl242669242866_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242663242850_))
                          (___match251908251909_
                           _e242653242813_
                           _hd242652242816_
                           _tl242651242818_
                           _e242656242821_
                           _hd242655242824_
                           _tl242654242826_
                           _e242659242829_
                           _hd242658242832_
                           _tl242657242834_
                           _e242662242837_
                           _hd242661242840_
                           _tl242660242842_
                           _e242665242845_
                           _hd242664242848_
                           _tl242663242850_
                           _e242668242853_
                           _hd242667242856_
                           _tl242666242858_
                           _e242671242861_
                           _hd242670242864_
                           _tl242669242866_)
                          (___match251962251963_
                           _e242653242813_
                           _hd242652242816_
                           _tl242651242818_
                           _e242656242821_
                           _hd242655242824_
                           _tl242654242826_
                           _e242659242829_
                           _hd242658242832_
                           _tl242657242834_
                           _e242662242837_
                           _hd242661242840_
                           _tl242660242842_
                           _e242665242845_
                           _hd242664242848_
                           _tl242663242850_
                           _e242668242853_
                           _hd242667242856_
                           _tl242666242858_
                           _e242671242861_
                           _hd242670242864_
                           _tl242669242866_))))
                   (___match251852251853_
                    (lambda (_e242618242897_
                             _hd242617242900_
                             _tl242616242902_
                             _e242621242905_
                             _hd242620242908_
                             _tl242619242910_
                             _e242624242913_
                             _hd242623242916_
                             _tl242622242918_
                             _e242627242921_
                             _hd242626242924_
                             _tl242625242926_
                             _e242630242929_
                             _hd242629242932_
                             _tl242628242934_
                             _e242633242937_
                             _hd242632242940_
                             _tl242631242942_
                             _e242636242945_
                             _hd242635242948_
                             _tl242634242950_
                             _e242639242953_
                             _hd242638242956_
                             _tl242637242958_
                             _e242642242961_
                             _hd242641242964_
                             _tl242640242966_
                             _e242645242969_
                             _hd242644242972_
                             _tl242643242974_
                             _e242648242977_
                             _hd242647242980_
                             _tl242646242982_)
                      (let ((_L242985_ _hd242647242980_)
                            (_L242986_ _hd242644242972_)
                            (_L242987_ _hd242635242948_)
                            (_L242988_ _hd242626242924_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L242988_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L242988_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L242987_
                                    _self242468_)))
                            (___kont251483251484_
                             _L242985_
                             _L242986_
                             _L242987_
                             _L242988_)
                            (___kont251489251490_)))))
                   (___match251844251845_
                    (lambda (_e242618242897_
                             _hd242617242900_
                             _tl242616242902_
                             _e242621242905_
                             _hd242620242908_
                             _tl242619242910_
                             _e242624242913_
                             _hd242623242916_
                             _tl242622242918_
                             _e242627242921_
                             _hd242626242924_
                             _tl242625242926_
                             _e242630242929_
                             _hd242629242932_
                             _tl242628242934_
                             _e242633242937_
                             _hd242632242940_
                             _tl242631242942_
                             _e242636242945_
                             _hd242635242948_
                             _tl242634242950_
                             _e242639242953_
                             _hd242638242956_
                             _tl242637242958_
                             _e242642242961_
                             _hd242641242964_
                             _tl242640242966_
                             _e242645242969_
                             _hd242644242972_
                             _tl242643242974_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242637242958_))
                          (let ((_e242648242977_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242637242958_))))
                            (let ((_tl242646242982_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242648242977_)))
                                  (_hd242647242980_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242648242977_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242646242982_))
                                  (___match251852251853_
                                   _e242618242897_
                                   _hd242617242900_
                                   _tl242616242902_
                                   _e242621242905_
                                   _hd242620242908_
                                   _tl242619242910_
                                   _e242624242913_
                                   _hd242623242916_
                                   _tl242622242918_
                                   _e242627242921_
                                   _hd242626242924_
                                   _tl242625242926_
                                   _e242630242929_
                                   _hd242629242932_
                                   _tl242628242934_
                                   _e242633242937_
                                   _hd242632242940_
                                   _tl242631242942_
                                   _e242636242945_
                                   _hd242635242948_
                                   _tl242634242950_
                                   _e242639242953_
                                   _hd242638242956_
                                   _tl242637242958_
                                   _e242642242961_
                                   _hd242641242964_
                                   _tl242640242966_
                                   _e242645242969_
                                   _hd242644242972_
                                   _tl242643242974_
                                   _e242648242977_
                                   _hd242647242980_
                                   _tl242646242982_)
                                  (___kont251489251490_))))
                          (___match251968251969_
                           _e242618242897_
                           _hd242617242900_
                           _tl242616242902_
                           _e242621242905_
                           _hd242620242908_
                           _tl242619242910_
                           _e242624242913_
                           _hd242623242916_
                           _tl242622242918_
                           _e242627242921_
                           _hd242626242924_
                           _tl242625242926_
                           _e242630242929_
                           _hd242629242932_
                           _tl242628242934_
                           _e242633242937_
                           _hd242632242940_
                           _tl242631242942_
                           _e242636242945_
                           _hd242635242948_
                           _tl242634242950_
                           _e242639242953_
                           _hd242638242956_
                           _tl242637242958_))))
                   (___match251766251767_
                    (lambda (_e242584243028_
                             _hd242583243031_
                             _tl242582243033_
                             _e242587243036_
                             _hd242586243039_
                             _tl242585243041_
                             _e242590243044_
                             _hd242589243047_
                             _tl242588243049_
                             _e242593243052_
                             _hd242592243055_
                             _tl242591243057_
                             _e242596243060_
                             _hd242595243063_
                             _tl242594243065_
                             _e242599243068_
                             _hd242598243071_
                             _tl242597243073_
                             _e242602243076_
                             _hd242601243079_
                             _tl242600243081_
                             _e242605243084_
                             _hd242604243087_
                             _tl242603243089_
                             _e242608243092_
                             _hd242607243095_
                             _tl242606243097_
                             _e242611243100_
                             _hd242610243103_
                             _tl242609243105_)
                      (let ((_L243108_ _hd242610243103_)
                            (_L243109_ _hd242601243079_)
                            (_L243110_ _hd242592243055_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L243110_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L243110_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L243109_
                                    _self242468_)))
                            (___kont251481251482_
                             _L243108_
                             _L243109_
                             _L243110_)
                            (___match251970251971_
                             _e242584243028_
                             _hd242583243031_
                             _tl242582243033_
                             _e242587243036_
                             _hd242586243039_
                             _tl242585243041_
                             _e242590243044_
                             _hd242589243047_
                             _tl242588243049_
                             _e242593243052_
                             _hd242592243055_
                             _tl242591243057_
                             _e242596243060_
                             _hd242595243063_
                             _tl242594243065_
                             _e242599243068_
                             _hd242598243071_
                             _tl242597243073_
                             _e242602243076_
                             _hd242601243079_
                             _tl242600243081_
                             _e242605243084_
                             _hd242604243087_
                             _tl242603243089_)))))
                   (___match251764251765_
                    (lambda (_e242584243028_
                             _hd242583243031_
                             _tl242582243033_
                             _e242587243036_
                             _hd242586243039_
                             _tl242585243041_
                             _e242590243044_
                             _hd242589243047_
                             _tl242588243049_
                             _e242593243052_
                             _hd242592243055_
                             _tl242591243057_
                             _e242596243060_
                             _hd242595243063_
                             _tl242594243065_
                             _e242599243068_
                             _hd242598243071_
                             _tl242597243073_
                             _e242602243076_
                             _hd242601243079_
                             _tl242600243081_
                             _e242605243084_
                             _hd242604243087_
                             _tl242603243089_
                             _e242608243092_
                             _hd242607243095_
                             _tl242606243097_
                             _e242611243100_
                             _hd242610243103_
                             _tl242609243105_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242603243089_))
                          (___match251766251767_
                           _e242584243028_
                           _hd242583243031_
                           _tl242582243033_
                           _e242587243036_
                           _hd242586243039_
                           _tl242585243041_
                           _e242590243044_
                           _hd242589243047_
                           _tl242588243049_
                           _e242593243052_
                           _hd242592243055_
                           _tl242591243057_
                           _e242596243060_
                           _hd242595243063_
                           _tl242594243065_
                           _e242599243068_
                           _hd242598243071_
                           _tl242597243073_
                           _e242602243076_
                           _hd242601243079_
                           _tl242600243081_
                           _e242605243084_
                           _hd242604243087_
                           _tl242603243089_
                           _e242608243092_
                           _hd242607243095_
                           _tl242606243097_
                           _e242611243100_
                           _hd242610243103_
                           _tl242609243105_)
                          (___match251844251845_
                           _e242584243028_
                           _hd242583243031_
                           _tl242582243033_
                           _e242587243036_
                           _hd242586243039_
                           _tl242585243041_
                           _e242590243044_
                           _hd242589243047_
                           _tl242588243049_
                           _e242593243052_
                           _hd242592243055_
                           _tl242591243057_
                           _e242596243060_
                           _hd242595243063_
                           _tl242594243065_
                           _e242599243068_
                           _hd242598243071_
                           _tl242597243073_
                           _e242602243076_
                           _hd242601243079_
                           _tl242600243081_
                           _e242605243084_
                           _hd242604243087_
                           _tl242603243089_
                           _e242608243092_
                           _hd242607243095_
                           _tl242606243097_
                           _e242611243100_
                           _hd242610243103_
                           _tl242609243105_))))
                   (___match251754251755_
                    (lambda (_e242584243028_
                             _hd242583243031_
                             _tl242582243033_
                             _e242587243036_
                             _hd242586243039_
                             _tl242585243041_
                             _e242590243044_
                             _hd242589243047_
                             _tl242588243049_
                             _e242593243052_
                             _hd242592243055_
                             _tl242591243057_
                             _e242596243060_
                             _hd242595243063_
                             _tl242594243065_
                             _e242599243068_
                             _hd242598243071_
                             _tl242597243073_
                             _e242602243076_
                             _hd242601243079_
                             _tl242600243081_
                             _e242605243084_
                             _hd242604243087_
                             _tl242603243089_
                             _e242608243092_
                             _hd242607243095_
                             _tl242606243097_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd242607243095_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242606243097_))
                              (let ((_e242611243100_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242606243097_))))
                                (let ((_tl242609243105_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242611243100_)))
                                      (_hd242610243103_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242611243100_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242609243105_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242603243089_))
                                          (___match251766251767_
                                           _e242584243028_
                                           _hd242583243031_
                                           _tl242582243033_
                                           _e242587243036_
                                           _hd242586243039_
                                           _tl242585243041_
                                           _e242590243044_
                                           _hd242589243047_
                                           _tl242588243049_
                                           _e242593243052_
                                           _hd242592243055_
                                           _tl242591243057_
                                           _e242596243060_
                                           _hd242595243063_
                                           _tl242594243065_
                                           _e242599243068_
                                           _hd242598243071_
                                           _tl242597243073_
                                           _e242602243076_
                                           _hd242601243079_
                                           _tl242600243081_
                                           _e242605243084_
                                           _hd242604243087_
                                           _tl242603243089_
                                           _e242608243092_
                                           _hd242607243095_
                                           _tl242606243097_
                                           _e242611243100_
                                           _hd242610243103_
                                           _tl242609243105_)
                                          (___match251844251845_
                                           _e242584243028_
                                           _hd242583243031_
                                           _tl242582243033_
                                           _e242587243036_
                                           _hd242586243039_
                                           _tl242585243041_
                                           _e242590243044_
                                           _hd242589243047_
                                           _tl242588243049_
                                           _e242593243052_
                                           _hd242592243055_
                                           _tl242591243057_
                                           _e242596243060_
                                           _hd242595243063_
                                           _tl242594243065_
                                           _e242599243068_
                                           _hd242598243071_
                                           _tl242597243073_
                                           _e242602243076_
                                           _hd242601243079_
                                           _tl242600243081_
                                           _e242605243084_
                                           _hd242604243087_
                                           _tl242603243089_
                                           _e242608243092_
                                           _hd242607243095_
                                           _tl242606243097_
                                           _e242611243100_
                                           _hd242610243103_
                                           _tl242609243105_))
                                      (___match251968251969_
                                       _e242584243028_
                                       _hd242583243031_
                                       _tl242582243033_
                                       _e242587243036_
                                       _hd242586243039_
                                       _tl242585243041_
                                       _e242590243044_
                                       _hd242589243047_
                                       _tl242588243049_
                                       _e242593243052_
                                       _hd242592243055_
                                       _tl242591243057_
                                       _e242596243060_
                                       _hd242595243063_
                                       _tl242594243065_
                                       _e242599243068_
                                       _hd242598243071_
                                       _tl242597243073_
                                       _e242602243076_
                                       _hd242601243079_
                                       _tl242600243081_
                                       _e242605243084_
                                       _hd242604243087_
                                       _tl242603243089_))))
                              (___match251968251969_
                               _e242584243028_
                               _hd242583243031_
                               _tl242582243033_
                               _e242587243036_
                               _hd242586243039_
                               _tl242585243041_
                               _e242590243044_
                               _hd242589243047_
                               _tl242588243049_
                               _e242593243052_
                               _hd242592243055_
                               _tl242591243057_
                               _e242596243060_
                               _hd242595243063_
                               _tl242594243065_
                               _e242599243068_
                               _hd242598243071_
                               _tl242597243073_
                               _e242602243076_
                               _hd242601243079_
                               _tl242600243081_
                               _e242605243084_
                               _hd242604243087_
                               _tl242603243089_))
                          (___match251968251969_
                           _e242584243028_
                           _hd242583243031_
                           _tl242582243033_
                           _e242587243036_
                           _hd242586243039_
                           _tl242585243041_
                           _e242590243044_
                           _hd242589243047_
                           _tl242588243049_
                           _e242593243052_
                           _hd242592243055_
                           _tl242591243057_
                           _e242596243060_
                           _hd242595243063_
                           _tl242594243065_
                           _e242599243068_
                           _hd242598243071_
                           _tl242597243073_
                           _e242602243076_
                           _hd242601243079_
                           _tl242600243081_
                           _e242605243084_
                           _hd242604243087_
                           _tl242603243089_))))
                   (___match251686251687_
                    (lambda (_e242533243147_
                             _hd242532243150_
                             _tl242531243152_
                             _e242536243155_
                             _hd242535243158_
                             _tl242534243160_
                             _e242539243163_
                             _hd242538243166_
                             _tl242537243168_
                             _e242542243171_
                             _hd242541243174_
                             _tl242540243176_
                             _e242545243179_
                             _hd242544243182_
                             _tl242543243184_
                             _e242548243187_
                             _hd242547243190_
                             _tl242546243192_
                             _e242551243195_
                             _hd242550243198_
                             _tl242549243200_
                             _e242554243203_
                             _hd242553243206_
                             _tl242552243208_
                             _e242557243211_
                             _hd242556243214_
                             _tl242555243216_
                             _e242560243219_
                             _hd242559243222_
                             _tl242558243224_
                             _e242563243227_
                             _hd242562243230_
                             _tl242561243232_
                             _e242566243235_
                             _hd242565243238_
                             _tl242564243240_
                             _e242569243243_
                             _hd242568243246_
                             _tl242567243248_
                             ___splice251479251480_
                             _target242570243251_
                             _tl242572243253_)
                      (letrec ((_loop242573243256_
                                (lambda (_hd242571243259_ _args242577243261_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd242571243259_))
                                      (let ((_e242574243264_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd242571243259_))))
                                        (let ((_lp-tl242576243269_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242574243264_)))
                                              (_lp-hd242575243267_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242574243264_))))
                                          (let ((__tmp252846
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd242575243267_
                                                         _args242577243261_))))
                                            (declare (not safe))
                                            (_loop242573243256_
                                             _lp-tl242576243269_
                                             __tmp252846))))
                                      (let ((_args242578243272_
                                             (reverse _args242577243261_)))
                                        (let ((_L243275_ _args242578243272_)
                                              (_L243276_ _hd242568243246_)
                                              (_L243277_ _hd242559243222_)
                                              (_L243278_ _hd242550243198_)
                                              (_L243279_ _hd242541243174_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L243279_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L243278_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L243277_
                                                      _self242468_)))
                                              (___kont251477251478_
                                               _L243275_
                                               _L243276_
                                               _L243277_
                                               _L243278_
                                               _L243279_)
                                              (___kont251489251490_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop242573243256_ _target242570243251_ '())))))
                   (___match251644251645_
                    (lambda (_e242533243147_
                             _hd242532243150_
                             _tl242531243152_
                             _e242536243155_
                             _hd242535243158_
                             _tl242534243160_
                             _e242539243163_
                             _hd242538243166_
                             _tl242537243168_
                             _e242542243171_
                             _hd242541243174_
                             _tl242540243176_
                             _e242545243179_
                             _hd242544243182_
                             _tl242543243184_
                             _e242548243187_
                             _hd242547243190_
                             _tl242546243192_
                             _e242551243195_
                             _hd242550243198_
                             _tl242549243200_
                             _e242554243203_
                             _hd242553243206_
                             _tl242552243208_
                             _e242557243211_
                             _hd242556243214_
                             _tl242555243216_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd242556243214_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242555243216_))
                              (let ((_e242560243219_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242555243216_))))
                                (let ((_tl242558243224_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242560243219_)))
                                      (_hd242559243222_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242560243219_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242558243224_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242552243208_))
                                          (let ((_e242563243227_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242552243208_))))
                                            (let ((_tl242561243232_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242563243227_)))
                                                  (_hd242562243230_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242563243227_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd242562243230_))
                                                  (let ((_e242566243235_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd242562243230_))))
                                                    (let ((_tl242564243240_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242566243235_)))
                                                          (_hd242565243238_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242566243235_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd242565243238_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd242565243238_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242564243240_))
                          (let ((_e242569243243_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242564243240_))))
                            (let ((_tl242567243248_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242569243243_)))
                                  (_hd242568243246_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242569243243_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242567243248_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl242561243232_))
                                      (let ((___splice251479251480_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl242561243232_
                                                '0))))
                                        (let ((_tl242572243253_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice251479251480_
                                                  '1)))
                                              (_target242570243251_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice251479251480_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242572243253_))
                                              (___match251686251687_
                                               _e242533243147_
                                               _hd242532243150_
                                               _tl242531243152_
                                               _e242536243155_
                                               _hd242535243158_
                                               _tl242534243160_
                                               _e242539243163_
                                               _hd242538243166_
                                               _tl242537243168_
                                               _e242542243171_
                                               _hd242541243174_
                                               _tl242540243176_
                                               _e242545243179_
                                               _hd242544243182_
                                               _tl242543243184_
                                               _e242548243187_
                                               _hd242547243190_
                                               _tl242546243192_
                                               _e242551243195_
                                               _hd242550243198_
                                               _tl242549243200_
                                               _e242554243203_
                                               _hd242553243206_
                                               _tl242552243208_
                                               _e242557243211_
                                               _hd242556243214_
                                               _tl242555243216_
                                               _e242560243219_
                                               _hd242559243222_
                                               _tl242558243224_
                                               _e242563243227_
                                               _hd242562243230_
                                               _tl242561243232_
                                               _e242566243235_
                                               _hd242565243238_
                                               _tl242564243240_
                                               _e242569243243_
                                               _hd242568243246_
                                               _tl242567243248_
                                               ___splice251479251480_
                                               _target242570243251_
                                               _tl242572243253_)
                                              (___kont251489251490_))))
                                      (___kont251489251490_))
                                  (___kont251489251490_))))
                          (___kont251489251490_))
                      (___kont251489251490_))
                  (___kont251489251490_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont251489251490_))))
                                          (___match251968251969_
                                           _e242533243147_
                                           _hd242532243150_
                                           _tl242531243152_
                                           _e242536243155_
                                           _hd242535243158_
                                           _tl242534243160_
                                           _e242539243163_
                                           _hd242538243166_
                                           _tl242537243168_
                                           _e242542243171_
                                           _hd242541243174_
                                           _tl242540243176_
                                           _e242545243179_
                                           _hd242544243182_
                                           _tl242543243184_
                                           _e242548243187_
                                           _hd242547243190_
                                           _tl242546243192_
                                           _e242551243195_
                                           _hd242550243198_
                                           _tl242549243200_
                                           _e242554243203_
                                           _hd242553243206_
                                           _tl242552243208_))
                                      (___match251968251969_
                                       _e242533243147_
                                       _hd242532243150_
                                       _tl242531243152_
                                       _e242536243155_
                                       _hd242535243158_
                                       _tl242534243160_
                                       _e242539243163_
                                       _hd242538243166_
                                       _tl242537243168_
                                       _e242542243171_
                                       _hd242541243174_
                                       _tl242540243176_
                                       _e242545243179_
                                       _hd242544243182_
                                       _tl242543243184_
                                       _e242548243187_
                                       _hd242547243190_
                                       _tl242546243192_
                                       _e242551243195_
                                       _hd242550243198_
                                       _tl242549243200_
                                       _e242554243203_
                                       _hd242553243206_
                                       _tl242552243208_))))
                              (___match251968251969_
                               _e242533243147_
                               _hd242532243150_
                               _tl242531243152_
                               _e242536243155_
                               _hd242535243158_
                               _tl242534243160_
                               _e242539243163_
                               _hd242538243166_
                               _tl242537243168_
                               _e242542243171_
                               _hd242541243174_
                               _tl242540243176_
                               _e242545243179_
                               _hd242544243182_
                               _tl242543243184_
                               _e242548243187_
                               _hd242547243190_
                               _tl242546243192_
                               _e242551243195_
                               _hd242550243198_
                               _tl242549243200_
                               _e242554243203_
                               _hd242553243206_
                               _tl242552243208_))
                          (___match251754251755_
                           _e242533243147_
                           _hd242532243150_
                           _tl242531243152_
                           _e242536243155_
                           _hd242535243158_
                           _tl242534243160_
                           _e242539243163_
                           _hd242538243166_
                           _tl242537243168_
                           _e242542243171_
                           _hd242541243174_
                           _tl242540243176_
                           _e242545243179_
                           _hd242544243182_
                           _tl242543243184_
                           _e242548243187_
                           _hd242547243190_
                           _tl242546243192_
                           _e242551243195_
                           _hd242550243198_
                           _tl242549243200_
                           _e242554243203_
                           _hd242553243206_
                           _tl242552243208_
                           _e242557243211_
                           _hd242556243214_
                           _tl242555243216_))))
                   (___match251576251577_
                    (lambda (_e242489243336_
                             _hd242488243339_
                             _tl242487243341_
                             _e242492243344_
                             _hd242491243347_
                             _tl242490243349_
                             _e242495243352_
                             _hd242494243355_
                             _tl242493243357_
                             _e242498243360_
                             _hd242497243363_
                             _tl242496243365_
                             _e242501243368_
                             _hd242500243371_
                             _tl242499243373_
                             _e242504243376_
                             _hd242503243379_
                             _tl242502243381_
                             _e242507243384_
                             _hd242506243387_
                             _tl242505243389_
                             _e242510243392_
                             _hd242509243395_
                             _tl242508243397_
                             _e242513243400_
                             _hd242512243403_
                             _tl242511243405_
                             _e242516243408_
                             _hd242515243411_
                             _tl242514243413_
                             ___splice251475251476_
                             _target242517243416_
                             _tl242519243418_)
                      (letrec ((_loop242520243421_
                                (lambda (_hd242518243424_ _args242524243426_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd242518243424_))
                                      (let ((_e242521243429_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd242518243424_))))
                                        (let ((_lp-tl242523243434_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242521243429_)))
                                              (_lp-hd242522243432_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242521243429_))))
                                          (let ((__tmp252847
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd242522243432_
                                                         _args242524243426_))))
                                            (declare (not safe))
                                            (_loop242520243421_
                                             _lp-tl242523243434_
                                             __tmp252847))))
                                      (let ((_args242525243437_
                                             (reverse _args242524243426_)))
                                        (let ((_L243440_ _args242525243437_)
                                              (_L243441_ _hd242515243411_)
                                              (_L243442_ _hd242506243387_)
                                              (_L243443_ _hd242497243363_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L243443_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L243442_
                                                      _self242468_)))
                                              (___kont251473251474_
                                               _L243440_
                                               _L243441_
                                               _L243442_
                                               _L243443_)
                                              (___match251764251765_
                                               _e242489243336_
                                               _hd242488243339_
                                               _tl242487243341_
                                               _e242492243344_
                                               _hd242491243347_
                                               _tl242490243349_
                                               _e242495243352_
                                               _hd242494243355_
                                               _tl242493243357_
                                               _e242498243360_
                                               _hd242497243363_
                                               _tl242496243365_
                                               _e242501243368_
                                               _hd242500243371_
                                               _tl242499243373_
                                               _e242504243376_
                                               _hd242503243379_
                                               _tl242502243381_
                                               _e242507243384_
                                               _hd242506243387_
                                               _tl242505243389_
                                               _e242510243392_
                                               _hd242509243395_
                                               _tl242508243397_
                                               _e242513243400_
                                               _hd242512243403_
                                               _tl242511243405_
                                               _e242516243408_
                                               _hd242515243411_
                                               _tl242514243413_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop242520243421_ _target242517243416_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx251471251472_))
                  (let ((_e242489243336_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx251471251472_))))
                    (let ((_tl242487243341_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242489243336_)))
                          (_hd242488243339_
                           (let ()
                             (declare (not safe))
                             (##car _e242489243336_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242487243341_))
                          (let ((_e242492243344_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242487243341_))))
                            (let ((_tl242490243349_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242492243344_)))
                                  (_hd242491243347_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242492243344_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd242491243347_))
                                  (let ((_e242495243352_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd242491243347_))))
                                    (let ((_tl242493243357_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242495243352_)))
                                          (_hd242494243355_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242495243352_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd242494243355_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd242494243355_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242493243357_))
                                                  (let ((_e242498243360_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242493243357_))))
                                                    (let ((_tl242496243365_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242498243360_)))
                                                          (_hd242497243363_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242498243360_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl242496243365_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl242490243349_))
                      (let ((_e242501243368_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl242490243349_))))
                        (let ((_tl242499243373_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242501243368_)))
                              (_hd242500243371_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242501243368_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd242500243371_))
                              (let ((_e242504243376_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd242500243371_))))
                                (let ((_tl242502243381_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242504243376_)))
                                      (_hd242503243379_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242504243376_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd242503243379_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd242503243379_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242502243381_))
                                              (let ((_e242507243384_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242502243381_))))
                                                (let ((_tl242505243389_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242507243384_)))
                                                      (_hd242506243387_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242507243384_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242505243389_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242499243373_))
                                                          (let ((_e242510243392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242499243373_))))
                    (let ((_tl242508243397_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242510243392_)))
                          (_hd242509243395_
                           (let ()
                             (declare (not safe))
                             (##car _e242510243392_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242509243395_))
                          (let ((_e242513243400_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242509243395_))))
                            (let ((_tl242511243405_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242513243400_)))
                                  (_hd242512243403_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242513243400_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242512243403_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd242512243403_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242511243405_))
                                          (let ((_e242516243408_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242511243405_))))
                                            (let ((_tl242514243413_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242516243408_)))
                                                  (_hd242515243411_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242516243408_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242514243413_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl242508243397_))
                                                      (let ((___splice251475251476_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl242508243397_ '0))))
                (let ((_tl242519243418_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice251475251476_ '1)))
                      (_target242517243416_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice251475251476_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl242519243418_))
                      (___match251576251577_
                       _e242489243336_
                       _hd242488243339_
                       _tl242487243341_
                       _e242492243344_
                       _hd242491243347_
                       _tl242490243349_
                       _e242495243352_
                       _hd242494243355_
                       _tl242493243357_
                       _e242498243360_
                       _hd242497243363_
                       _tl242496243365_
                       _e242501243368_
                       _hd242500243371_
                       _tl242499243373_
                       _e242504243376_
                       _hd242503243379_
                       _tl242502243381_
                       _e242507243384_
                       _hd242506243387_
                       _tl242505243389_
                       _e242510243392_
                       _hd242509243395_
                       _tl242508243397_
                       _e242513243400_
                       _hd242512243403_
                       _tl242511243405_
                       _e242516243408_
                       _hd242515243411_
                       _tl242514243413_
                       ___splice251475251476_
                       _target242517243416_
                       _tl242519243418_)
                      (___match251764251765_
                       _e242489243336_
                       _hd242488243339_
                       _tl242487243341_
                       _e242492243344_
                       _hd242491243347_
                       _tl242490243349_
                       _e242495243352_
                       _hd242494243355_
                       _tl242493243357_
                       _e242498243360_
                       _hd242497243363_
                       _tl242496243365_
                       _e242501243368_
                       _hd242500243371_
                       _tl242499243373_
                       _e242504243376_
                       _hd242503243379_
                       _tl242502243381_
                       _e242507243384_
                       _hd242506243387_
                       _tl242505243389_
                       _e242510243392_
                       _hd242509243395_
                       _tl242508243397_
                       _e242513243400_
                       _hd242512243403_
                       _tl242511243405_
                       _e242516243408_
                       _hd242515243411_
                       _tl242514243413_))))
              (___match251764251765_
               _e242489243336_
               _hd242488243339_
               _tl242487243341_
               _e242492243344_
               _hd242491243347_
               _tl242490243349_
               _e242495243352_
               _hd242494243355_
               _tl242493243357_
               _e242498243360_
               _hd242497243363_
               _tl242496243365_
               _e242501243368_
               _hd242500243371_
               _tl242499243373_
               _e242504243376_
               _hd242503243379_
               _tl242502243381_
               _e242507243384_
               _hd242506243387_
               _tl242505243389_
               _e242510243392_
               _hd242509243395_
               _tl242508243397_
               _e242513243400_
               _hd242512243403_
               _tl242511243405_
               _e242516243408_
               _hd242515243411_
               _tl242514243413_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match251968251969_
                                                   _e242489243336_
                                                   _hd242488243339_
                                                   _tl242487243341_
                                                   _e242492243344_
                                                   _hd242491243347_
                                                   _tl242490243349_
                                                   _e242495243352_
                                                   _hd242494243355_
                                                   _tl242493243357_
                                                   _e242498243360_
                                                   _hd242497243363_
                                                   _tl242496243365_
                                                   _e242501243368_
                                                   _hd242500243371_
                                                   _tl242499243373_
                                                   _e242504243376_
                                                   _hd242503243379_
                                                   _tl242502243381_
                                                   _e242507243384_
                                                   _hd242506243387_
                                                   _tl242505243389_
                                                   _e242510243392_
                                                   _hd242509243395_
                                                   _tl242508243397_))))
                                          (___match251968251969_
                                           _e242489243336_
                                           _hd242488243339_
                                           _tl242487243341_
                                           _e242492243344_
                                           _hd242491243347_
                                           _tl242490243349_
                                           _e242495243352_
                                           _hd242494243355_
                                           _tl242493243357_
                                           _e242498243360_
                                           _hd242497243363_
                                           _tl242496243365_
                                           _e242501243368_
                                           _hd242500243371_
                                           _tl242499243373_
                                           _e242504243376_
                                           _hd242503243379_
                                           _tl242502243381_
                                           _e242507243384_
                                           _hd242506243387_
                                           _tl242505243389_
                                           _e242510243392_
                                           _hd242509243395_
                                           _tl242508243397_))
                                      (___match251644251645_
                                       _e242489243336_
                                       _hd242488243339_
                                       _tl242487243341_
                                       _e242492243344_
                                       _hd242491243347_
                                       _tl242490243349_
                                       _e242495243352_
                                       _hd242494243355_
                                       _tl242493243357_
                                       _e242498243360_
                                       _hd242497243363_
                                       _tl242496243365_
                                       _e242501243368_
                                       _hd242500243371_
                                       _tl242499243373_
                                       _e242504243376_
                                       _hd242503243379_
                                       _tl242502243381_
                                       _e242507243384_
                                       _hd242506243387_
                                       _tl242505243389_
                                       _e242510243392_
                                       _hd242509243395_
                                       _tl242508243397_
                                       _e242513243400_
                                       _hd242512243403_
                                       _tl242511243405_))
                                  (___match251968251969_
                                   _e242489243336_
                                   _hd242488243339_
                                   _tl242487243341_
                                   _e242492243344_
                                   _hd242491243347_
                                   _tl242490243349_
                                   _e242495243352_
                                   _hd242494243355_
                                   _tl242493243357_
                                   _e242498243360_
                                   _hd242497243363_
                                   _tl242496243365_
                                   _e242501243368_
                                   _hd242500243371_
                                   _tl242499243373_
                                   _e242504243376_
                                   _hd242503243379_
                                   _tl242502243381_
                                   _e242507243384_
                                   _hd242506243387_
                                   _tl242505243389_
                                   _e242510243392_
                                   _hd242509243395_
                                   _tl242508243397_))))
                          (___match251968251969_
                           _e242489243336_
                           _hd242488243339_
                           _tl242487243341_
                           _e242492243344_
                           _hd242491243347_
                           _tl242490243349_
                           _e242495243352_
                           _hd242494243355_
                           _tl242493243357_
                           _e242498243360_
                           _hd242497243363_
                           _tl242496243365_
                           _e242501243368_
                           _hd242500243371_
                           _tl242499243373_
                           _e242504243376_
                           _hd242503243379_
                           _tl242502243381_
                           _e242507243384_
                           _hd242506243387_
                           _tl242505243389_
                           _e242510243392_
                           _hd242509243395_
                           _tl242508243397_))))
                  (___match251906251907_
                   _e242489243336_
                   _hd242488243339_
                   _tl242487243341_
                   _e242492243344_
                   _hd242491243347_
                   _tl242490243349_
                   _e242495243352_
                   _hd242494243355_
                   _tl242493243357_
                   _e242498243360_
                   _hd242497243363_
                   _tl242496243365_
                   _e242501243368_
                   _hd242500243371_
                   _tl242499243373_
                   _e242504243376_
                   _hd242503243379_
                   _tl242502243381_
                   _e242507243384_
                   _hd242506243387_
                   _tl242505243389_))
              (___kont251489251490_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont251489251490_))
                                          (___kont251489251490_))
                                      (___kont251489251490_))))
                              (___kont251489251490_))))
                      (___kont251489251490_))
                  (___kont251489251490_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont251489251490_))
                                              (___kont251489251490_))
                                          (___kont251489251490_))))
                                  (___kont251489251490_))))
                          (___kont251489251490_))))
                  (___kont251489251490_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx241413_
               _self241414_
               _$t241415_
               _methods241416_
               _slots241417_
               _class-check241418_
               _struct-check241419_
               _struct-assert241420_)
        (letrec ((_force-e241422_
                  (lambda (_what242465_)
                    (let ((__tmp252848
                           (let ((__tmp252852
                                  (let ((__tmp252853
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp252853)))
                                 (__tmp252849
                                  (let ((__tmp252850
                                         (let ((__tmp252851
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what242465_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp252851))))
                                    (declare (not safe))
                                    (cons __tmp252850 '()))))
                             (declare (not safe))
                             (cons __tmp252852 __tmp252849))))
                      (declare (not safe))
                      (cons '%#call __tmp252848)))))
          (let* ((___stx251973251974_ _stx241413_)
                 (_g241430241652_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx251973251974_)))))
            (let ((___kont251975251976_
                   (lambda (_L242411_ _L242412_ _L242413_ _L242414_)
                     (let ((_$method242459_
                            (let ((__tmp252854
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L242412_))))
                              (declare (not safe))
                              (table-ref _methods241416_ __tmp252854)))
                           (_args242460_
                            (map (lambda (_g242447242449_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g242447242449_
                                      _self241414_
                                      _$t241415_
                                      _methods241416_
                                      _slots241417_
                                      _class-check241418_
                                      _struct-check241419_
                                      _struct-assert241420_)))
                                 (let ((__tmp252855
                                        (lambda (_g242451242454_
                                                 _g242452242456_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g242451242454_
                                                  _g242452242456_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp252855 '() _L242411_)))))
                       (let ((__tmp252856
                              (let ((__tmp252857
                                     (let ((__tmp252861
                                            (let ()
                                              (declare (not safe))
                                              (_force-e241422_
                                               _$method242459_)))
                                           (__tmp252858
                                            (let ((__tmp252859
                                                   (let ((__tmp252860
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self241414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252860))))
                                              (declare (not safe))
                                              (cons __tmp252859
                                                    _args242460_))))
                                       (declare (not safe))
                                       (cons __tmp252861 __tmp252858))))
                                (declare (not safe))
                                (cons '%#call __tmp252857))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252856 _stx241413_)))))
                  (___kont251979251980_
                   (lambda (_L242243_ _L242244_ _L242245_ _L242246_ _L242247_)
                     (let ((_$method242299_
                            (let ((__tmp252862
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L242244_))))
                              (declare (not safe))
                              (table-ref _methods241416_ __tmp252862)))
                           (_args242300_
                            (map (lambda (_g242287242289_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g242287242289_
                                      _self241414_
                                      _$t241415_
                                      _methods241416_
                                      _slots241417_
                                      _class-check241418_
                                      _struct-check241419_
                                      _struct-assert241420_)))
                                 (let ((__tmp252863
                                        (lambda (_g242291242294_
                                                 _g242292242296_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g242291242294_
                                                  _g242292242296_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp252863 '() _L242243_)))))
                       (let ((__tmp252864
                              (let ((__tmp252865
                                     (let ((__tmp252871
                                            (let ((__tmp252872
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252872)))
                                           (__tmp252866
                                            (let ((__tmp252870
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e241422_
                                                      _$method242299_)))
                                                  (__tmp252867
                                                   (let ((__tmp252868
                                                          (let ((__tmp252869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241414_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252868
                                                           _args242300_))))
                                              (declare (not safe))
                                              (cons __tmp252870 __tmp252867))))
                                       (declare (not safe))
                                       (cons __tmp252871 __tmp252866))))
                                (declare (not safe))
                                (cons '%#call __tmp252865))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252864 _stx241413_)))))
                  (___kont251983251984_
                   (lambda (_L242074_ _L242075_ _L242076_)
                     (let* ((_$field242108_
                             (let ((__tmp252873
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L242074_))))
                               (declare (not safe))
                               (table-ref _slots241417_ __tmp252873)))
                            (__tmp252874
                             (let ((__tmp252875
                                    (let ((__tmp252882
                                           (let ((__tmp252883
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t241415_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp252883)))
                                          (__tmp252876
                                           (let ((__tmp252880
                                                  (let ((__tmp252881
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field242108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp252881)))
                                                 (__tmp252877
                                                  (let ((__tmp252878
                                                         (let ((__tmp252879
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self241414_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp252879))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252878 '()))))
                                             (declare (not safe))
                                             (cons __tmp252880 __tmp252877))))
                                      (declare (not safe))
                                      (cons __tmp252882 __tmp252876))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp252875))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp252874 _stx241413_))))
                  (___kont251985251986_
                   (lambda (_L241948_ _L241949_ _L241950_ _L241951_)
                     (let ((_$field241986_
                            (let ((__tmp252884
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L241949_))))
                              (declare (not safe))
                              (table-ref _slots241417_ __tmp252884)))
                           (_expr241987_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L241948_
                               _self241414_
                               _$t241415_
                               _methods241416_
                               _slots241417_
                               _class-check241418_
                               _struct-check241419_
                               _struct-assert241420_))))
                       (let ((__tmp252885
                              (let ((__tmp252886
                                     (let ((__tmp252894
                                            (let ((__tmp252895
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t241415_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252895)))
                                           (__tmp252887
                                            (let ((__tmp252892
                                                   (let ((__tmp252893
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field241986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252893)))
                                                  (__tmp252888
                                                   (let ((__tmp252890
                                                          (let ((__tmp252891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241414_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252891)))
                 (__tmp252889
                  (let () (declare (not safe)) (cons _expr241987_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252890
                                                           __tmp252889))))
                                              (declare (not safe))
                                              (cons __tmp252892 __tmp252888))))
                                       (declare (not safe))
                                       (cons __tmp252894 __tmp252887))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp252886))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252885 _stx241413_)))))
                  (___kont251987251988_
                   (lambda (_L241827_ _L241828_)
                     (let* ((_slot241850_
                             (let ((__obj252476
                                    (let ((__tmp252896
                                           (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _L241828_))))
                                      (declare (not safe))
                                      (gxc#optimizer-resolve-type
                                       __tmp252896))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj252476
                                      'gxc#!accessor::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj252476
                                      '2
                                      gxc#!accessor::t
                                      '#f))
                                   (class-slot-ref
                                    gxc#!accessor::t
                                    __obj252476
                                    'slot))))
                            (_$field241852_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots241417_ _slot241850_))))
                       (let ((__tmp252897
                              (let ((__tmp252898
                                     (let ((__tmp252905
                                            (let ((__tmp252906
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t241415_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252906)))
                                           (__tmp252899
                                            (let ((__tmp252903
                                                   (let ((__tmp252904
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field241852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252904)))
                                                  (__tmp252900
                                                   (let ((__tmp252901
                                                          (let ((__tmp252902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241414_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252902))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252901 '()))))
                                              (declare (not safe))
                                              (cons __tmp252903 __tmp252900))))
                                       (declare (not safe))
                                       (cons __tmp252905 __tmp252899))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp252898))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252897 _stx241413_)))))
                  (___kont251989251990_
                   (lambda (_L241728_ _L241729_ _L241730_)
                     (let* ((_slot241759_
                             (let ((__obj252477
                                    (let ((__tmp252907
                                           (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _L241730_))))
                                      (declare (not safe))
                                      (gxc#optimizer-resolve-type
                                       __tmp252907))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj252477
                                      'gxc#!mutator::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj252477
                                      '2
                                      gxc#!mutator::t
                                      '#f))
                                   (class-slot-ref
                                    gxc#!mutator::t
                                    __obj252477
                                    'slot))))
                            (_$field241761_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots241417_ _slot241759_)))
                            (_expr241763_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L241728_
                                _self241414_
                                _$t241415_
                                _methods241416_
                                _slots241417_
                                _class-check241418_
                                _struct-check241419_
                                _struct-assert241420_))))
                       (let ((__tmp252908
                              (let ((__tmp252909
                                     (let ((__tmp252917
                                            (let ((__tmp252918
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t241415_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252918)))
                                           (__tmp252910
                                            (let ((__tmp252915
                                                   (let ((__tmp252916
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field241761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252916)))
                                                  (__tmp252911
                                                   (let ((__tmp252913
                                                          (let ((__tmp252914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241414_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252914)))
                 (__tmp252912
                  (let () (declare (not safe)) (cons _expr241763_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252913
                                                           __tmp252912))))
                                              (declare (not safe))
                                              (cons __tmp252915 __tmp252911))))
                                       (declare (not safe))
                                       (cons __tmp252917 __tmp252910))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp252909))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252908 _stx241413_)))))
                  (___kont251991251992_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx241413_
                        _self241414_
                        _$t241415_
                        _methods241416_
                        _slots241417_
                        _class-check241418_
                        _struct-check241419_
                        _struct-assert241420_)))))
              (let* ((___match252472252473_
                      (lambda (_e241626241664_
                               _hd241625241667_
                               _tl241624241669_
                               _e241629241672_
                               _hd241628241675_
                               _tl241627241677_
                               _e241632241680_
                               _hd241631241683_
                               _tl241630241685_
                               _e241635241688_
                               _hd241634241691_
                               _tl241633241693_
                               _e241638241696_
                               _hd241637241699_
                               _tl241636241701_
                               _e241641241704_
                               _hd241640241707_
                               _tl241639241709_
                               _e241644241712_
                               _hd241643241715_
                               _tl241642241717_
                               _e241647241720_
                               _hd241646241723_
                               _tl241645241725_)
                        (let ((_L241728_ _hd241646241723_)
                              (_L241729_ _hd241643241715_)
                              (_L241730_ _hd241634241691_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L241729_
                                      _self241414_))
                                   (let ((__tmp252919
                                          (let ((__tmp252920
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L241730_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp252920))))
                                     (declare (not safe))
                                     (class-instance?
                                      gxc#!mutator::t
                                      __tmp252919)))
                              (___kont251989251990_
                               _L241728_
                               _L241729_
                               _L241730_)
                              (___kont251991251992_)))))
                     (___match252470252471_
                      (lambda (_e241626241664_
                               _hd241625241667_
                               _tl241624241669_
                               _e241629241672_
                               _hd241628241675_
                               _tl241627241677_
                               _e241632241680_
                               _hd241631241683_
                               _tl241630241685_
                               _e241635241688_
                               _hd241634241691_
                               _tl241633241693_
                               _e241638241696_
                               _hd241637241699_
                               _tl241636241701_
                               _e241641241704_
                               _hd241640241707_
                               _tl241639241709_
                               _e241644241712_
                               _hd241643241715_
                               _tl241642241717_
                               _e241647241720_
                               _hd241646241723_
                               _tl241645241725_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241645241725_))
                            (___match252472252473_
                             _e241626241664_
                             _hd241625241667_
                             _tl241624241669_
                             _e241629241672_
                             _hd241628241675_
                             _tl241627241677_
                             _e241632241680_
                             _hd241631241683_
                             _tl241630241685_
                             _e241635241688_
                             _hd241634241691_
                             _tl241633241693_
                             _e241638241696_
                             _hd241637241699_
                             _tl241636241701_
                             _e241641241704_
                             _hd241640241707_
                             _tl241639241709_
                             _e241644241712_
                             _hd241643241715_
                             _tl241642241717_
                             _e241647241720_
                             _hd241646241723_
                             _tl241645241725_)
                            (___kont251991251992_))))
                     (___match252464252465_
                      (lambda (_e241626241664_
                               _hd241625241667_
                               _tl241624241669_
                               _e241629241672_
                               _hd241628241675_
                               _tl241627241677_
                               _e241632241680_
                               _hd241631241683_
                               _tl241630241685_
                               _e241635241688_
                               _hd241634241691_
                               _tl241633241693_
                               _e241638241696_
                               _hd241637241699_
                               _tl241636241701_
                               _e241641241704_
                               _hd241640241707_
                               _tl241639241709_
                               _e241644241712_
                               _hd241643241715_
                               _tl241642241717_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241636241701_))
                            (let ((_e241647241720_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241636241701_))))
                              (let ((_tl241645241725_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241647241720_)))
                                    (_hd241646241723_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241647241720_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241645241725_))
                                    (___match252472252473_
                                     _e241626241664_
                                     _hd241625241667_
                                     _tl241624241669_
                                     _e241629241672_
                                     _hd241628241675_
                                     _tl241627241677_
                                     _e241632241680_
                                     _hd241631241683_
                                     _tl241630241685_
                                     _e241635241688_
                                     _hd241634241691_
                                     _tl241633241693_
                                     _e241638241696_
                                     _hd241637241699_
                                     _tl241636241701_
                                     _e241641241704_
                                     _hd241640241707_
                                     _tl241639241709_
                                     _e241644241712_
                                     _hd241643241715_
                                     _tl241642241717_
                                     _e241647241720_
                                     _hd241646241723_
                                     _tl241645241725_)
                                    (___kont251991251992_))))
                            (___kont251991251992_))))
                     (___match252410252411_
                      (lambda (_e241602241771_
                               _hd241601241774_
                               _tl241600241776_
                               _e241605241779_
                               _hd241604241782_
                               _tl241603241784_
                               _e241608241787_
                               _hd241607241790_
                               _tl241606241792_
                               _e241611241795_
                               _hd241610241798_
                               _tl241609241800_
                               _e241614241803_
                               _hd241613241806_
                               _tl241612241808_
                               _e241617241811_
                               _hd241616241814_
                               _tl241615241816_
                               _e241620241819_
                               _hd241619241822_
                               _tl241618241824_)
                        (let ((_L241827_ _hd241619241822_)
                              (_L241828_ _hd241610241798_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L241827_
                                      _self241414_))
                                   (let ((__tmp252921
                                          (let ((__tmp252922
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L241828_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp252922))))
                                     (declare (not safe))
                                     (class-instance?
                                      gxc#!accessor::t
                                      __tmp252921)))
                              (___kont251987251988_ _L241827_ _L241828_)
                              (___kont251991251992_)))))
                     (___match252408252409_
                      (lambda (_e241602241771_
                               _hd241601241774_
                               _tl241600241776_
                               _e241605241779_
                               _hd241604241782_
                               _tl241603241784_
                               _e241608241787_
                               _hd241607241790_
                               _tl241606241792_
                               _e241611241795_
                               _hd241610241798_
                               _tl241609241800_
                               _e241614241803_
                               _hd241613241806_
                               _tl241612241808_
                               _e241617241811_
                               _hd241616241814_
                               _tl241615241816_
                               _e241620241819_
                               _hd241619241822_
                               _tl241618241824_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241612241808_))
                            (___match252410252411_
                             _e241602241771_
                             _hd241601241774_
                             _tl241600241776_
                             _e241605241779_
                             _hd241604241782_
                             _tl241603241784_
                             _e241608241787_
                             _hd241607241790_
                             _tl241606241792_
                             _e241611241795_
                             _hd241610241798_
                             _tl241609241800_
                             _e241614241803_
                             _hd241613241806_
                             _tl241612241808_
                             _e241617241811_
                             _hd241616241814_
                             _tl241615241816_
                             _e241620241819_
                             _hd241619241822_
                             _tl241618241824_)
                            (___match252464252465_
                             _e241602241771_
                             _hd241601241774_
                             _tl241600241776_
                             _e241605241779_
                             _hd241604241782_
                             _tl241603241784_
                             _e241608241787_
                             _hd241607241790_
                             _tl241606241792_
                             _e241611241795_
                             _hd241610241798_
                             _tl241609241800_
                             _e241614241803_
                             _hd241613241806_
                             _tl241612241808_
                             _e241617241811_
                             _hd241616241814_
                             _tl241615241816_
                             _e241620241819_
                             _hd241619241822_
                             _tl241618241824_))))
                     (___match252354252355_
                      (lambda (_e241567241860_
                               _hd241566241863_
                               _tl241565241865_
                               _e241570241868_
                               _hd241569241871_
                               _tl241568241873_
                               _e241573241876_
                               _hd241572241879_
                               _tl241571241881_
                               _e241576241884_
                               _hd241575241887_
                               _tl241574241889_
                               _e241579241892_
                               _hd241578241895_
                               _tl241577241897_
                               _e241582241900_
                               _hd241581241903_
                               _tl241580241905_
                               _e241585241908_
                               _hd241584241911_
                               _tl241583241913_
                               _e241588241916_
                               _hd241587241919_
                               _tl241586241921_
                               _e241591241924_
                               _hd241590241927_
                               _tl241589241929_
                               _e241594241932_
                               _hd241593241935_
                               _tl241592241937_
                               _e241597241940_
                               _hd241596241943_
                               _tl241595241945_)
                        (let ((_L241948_ _hd241596241943_)
                              (_L241949_ _hd241593241935_)
                              (_L241950_ _hd241584241911_)
                              (_L241951_ _hd241575241887_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L241951_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L241951_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L241950_
                                      _self241414_)))
                              (___kont251985251986_
                               _L241948_
                               _L241949_
                               _L241950_
                               _L241951_)
                              (___kont251991251992_)))))
                     (___match252346252347_
                      (lambda (_e241567241860_
                               _hd241566241863_
                               _tl241565241865_
                               _e241570241868_
                               _hd241569241871_
                               _tl241568241873_
                               _e241573241876_
                               _hd241572241879_
                               _tl241571241881_
                               _e241576241884_
                               _hd241575241887_
                               _tl241574241889_
                               _e241579241892_
                               _hd241578241895_
                               _tl241577241897_
                               _e241582241900_
                               _hd241581241903_
                               _tl241580241905_
                               _e241585241908_
                               _hd241584241911_
                               _tl241583241913_
                               _e241588241916_
                               _hd241587241919_
                               _tl241586241921_
                               _e241591241924_
                               _hd241590241927_
                               _tl241589241929_
                               _e241594241932_
                               _hd241593241935_
                               _tl241592241937_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241586241921_))
                            (let ((_e241597241940_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241586241921_))))
                              (let ((_tl241595241945_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241597241940_)))
                                    (_hd241596241943_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241597241940_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241595241945_))
                                    (___match252354252355_
                                     _e241567241860_
                                     _hd241566241863_
                                     _tl241565241865_
                                     _e241570241868_
                                     _hd241569241871_
                                     _tl241568241873_
                                     _e241573241876_
                                     _hd241572241879_
                                     _tl241571241881_
                                     _e241576241884_
                                     _hd241575241887_
                                     _tl241574241889_
                                     _e241579241892_
                                     _hd241578241895_
                                     _tl241577241897_
                                     _e241582241900_
                                     _hd241581241903_
                                     _tl241580241905_
                                     _e241585241908_
                                     _hd241584241911_
                                     _tl241583241913_
                                     _e241588241916_
                                     _hd241587241919_
                                     _tl241586241921_
                                     _e241591241924_
                                     _hd241590241927_
                                     _tl241589241929_
                                     _e241594241932_
                                     _hd241593241935_
                                     _tl241592241937_
                                     _e241597241940_
                                     _hd241596241943_
                                     _tl241595241945_)
                                    (___kont251991251992_))))
                            (___match252470252471_
                             _e241567241860_
                             _hd241566241863_
                             _tl241565241865_
                             _e241570241868_
                             _hd241569241871_
                             _tl241568241873_
                             _e241573241876_
                             _hd241572241879_
                             _tl241571241881_
                             _e241576241884_
                             _hd241575241887_
                             _tl241574241889_
                             _e241579241892_
                             _hd241578241895_
                             _tl241577241897_
                             _e241582241900_
                             _hd241581241903_
                             _tl241580241905_
                             _e241585241908_
                             _hd241584241911_
                             _tl241583241913_
                             _e241588241916_
                             _hd241587241919_
                             _tl241586241921_))))
                     (___match252268252269_
                      (lambda (_e241533241994_
                               _hd241532241997_
                               _tl241531241999_
                               _e241536242002_
                               _hd241535242005_
                               _tl241534242007_
                               _e241539242010_
                               _hd241538242013_
                               _tl241537242015_
                               _e241542242018_
                               _hd241541242021_
                               _tl241540242023_
                               _e241545242026_
                               _hd241544242029_
                               _tl241543242031_
                               _e241548242034_
                               _hd241547242037_
                               _tl241546242039_
                               _e241551242042_
                               _hd241550242045_
                               _tl241549242047_
                               _e241554242050_
                               _hd241553242053_
                               _tl241552242055_
                               _e241557242058_
                               _hd241556242061_
                               _tl241555242063_
                               _e241560242066_
                               _hd241559242069_
                               _tl241558242071_)
                        (let ((_L242074_ _hd241559242069_)
                              (_L242075_ _hd241550242045_)
                              (_L242076_ _hd241541242021_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L242076_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L242076_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L242075_
                                      _self241414_)))
                              (___kont251983251984_
                               _L242074_
                               _L242075_
                               _L242076_)
                              (___match252472252473_
                               _e241533241994_
                               _hd241532241997_
                               _tl241531241999_
                               _e241536242002_
                               _hd241535242005_
                               _tl241534242007_
                               _e241539242010_
                               _hd241538242013_
                               _tl241537242015_
                               _e241542242018_
                               _hd241541242021_
                               _tl241540242023_
                               _e241545242026_
                               _hd241544242029_
                               _tl241543242031_
                               _e241548242034_
                               _hd241547242037_
                               _tl241546242039_
                               _e241551242042_
                               _hd241550242045_
                               _tl241549242047_
                               _e241554242050_
                               _hd241553242053_
                               _tl241552242055_)))))
                     (___match252266252267_
                      (lambda (_e241533241994_
                               _hd241532241997_
                               _tl241531241999_
                               _e241536242002_
                               _hd241535242005_
                               _tl241534242007_
                               _e241539242010_
                               _hd241538242013_
                               _tl241537242015_
                               _e241542242018_
                               _hd241541242021_
                               _tl241540242023_
                               _e241545242026_
                               _hd241544242029_
                               _tl241543242031_
                               _e241548242034_
                               _hd241547242037_
                               _tl241546242039_
                               _e241551242042_
                               _hd241550242045_
                               _tl241549242047_
                               _e241554242050_
                               _hd241553242053_
                               _tl241552242055_
                               _e241557242058_
                               _hd241556242061_
                               _tl241555242063_
                               _e241560242066_
                               _hd241559242069_
                               _tl241558242071_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241552242055_))
                            (___match252268252269_
                             _e241533241994_
                             _hd241532241997_
                             _tl241531241999_
                             _e241536242002_
                             _hd241535242005_
                             _tl241534242007_
                             _e241539242010_
                             _hd241538242013_
                             _tl241537242015_
                             _e241542242018_
                             _hd241541242021_
                             _tl241540242023_
                             _e241545242026_
                             _hd241544242029_
                             _tl241543242031_
                             _e241548242034_
                             _hd241547242037_
                             _tl241546242039_
                             _e241551242042_
                             _hd241550242045_
                             _tl241549242047_
                             _e241554242050_
                             _hd241553242053_
                             _tl241552242055_
                             _e241557242058_
                             _hd241556242061_
                             _tl241555242063_
                             _e241560242066_
                             _hd241559242069_
                             _tl241558242071_)
                            (___match252346252347_
                             _e241533241994_
                             _hd241532241997_
                             _tl241531241999_
                             _e241536242002_
                             _hd241535242005_
                             _tl241534242007_
                             _e241539242010_
                             _hd241538242013_
                             _tl241537242015_
                             _e241542242018_
                             _hd241541242021_
                             _tl241540242023_
                             _e241545242026_
                             _hd241544242029_
                             _tl241543242031_
                             _e241548242034_
                             _hd241547242037_
                             _tl241546242039_
                             _e241551242042_
                             _hd241550242045_
                             _tl241549242047_
                             _e241554242050_
                             _hd241553242053_
                             _tl241552242055_
                             _e241557242058_
                             _hd241556242061_
                             _tl241555242063_
                             _e241560242066_
                             _hd241559242069_
                             _tl241558242071_))))
                     (___match252256252257_
                      (lambda (_e241533241994_
                               _hd241532241997_
                               _tl241531241999_
                               _e241536242002_
                               _hd241535242005_
                               _tl241534242007_
                               _e241539242010_
                               _hd241538242013_
                               _tl241537242015_
                               _e241542242018_
                               _hd241541242021_
                               _tl241540242023_
                               _e241545242026_
                               _hd241544242029_
                               _tl241543242031_
                               _e241548242034_
                               _hd241547242037_
                               _tl241546242039_
                               _e241551242042_
                               _hd241550242045_
                               _tl241549242047_
                               _e241554242050_
                               _hd241553242053_
                               _tl241552242055_
                               _e241557242058_
                               _hd241556242061_
                               _tl241555242063_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd241556242061_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241555242063_))
                                (let ((_e241560242066_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241555242063_))))
                                  (let ((_tl241558242071_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241560242066_)))
                                        (_hd241559242069_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241560242066_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl241558242071_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl241552242055_))
                                            (___match252268252269_
                                             _e241533241994_
                                             _hd241532241997_
                                             _tl241531241999_
                                             _e241536242002_
                                             _hd241535242005_
                                             _tl241534242007_
                                             _e241539242010_
                                             _hd241538242013_
                                             _tl241537242015_
                                             _e241542242018_
                                             _hd241541242021_
                                             _tl241540242023_
                                             _e241545242026_
                                             _hd241544242029_
                                             _tl241543242031_
                                             _e241548242034_
                                             _hd241547242037_
                                             _tl241546242039_
                                             _e241551242042_
                                             _hd241550242045_
                                             _tl241549242047_
                                             _e241554242050_
                                             _hd241553242053_
                                             _tl241552242055_
                                             _e241557242058_
                                             _hd241556242061_
                                             _tl241555242063_
                                             _e241560242066_
                                             _hd241559242069_
                                             _tl241558242071_)
                                            (___match252346252347_
                                             _e241533241994_
                                             _hd241532241997_
                                             _tl241531241999_
                                             _e241536242002_
                                             _hd241535242005_
                                             _tl241534242007_
                                             _e241539242010_
                                             _hd241538242013_
                                             _tl241537242015_
                                             _e241542242018_
                                             _hd241541242021_
                                             _tl241540242023_
                                             _e241545242026_
                                             _hd241544242029_
                                             _tl241543242031_
                                             _e241548242034_
                                             _hd241547242037_
                                             _tl241546242039_
                                             _e241551242042_
                                             _hd241550242045_
                                             _tl241549242047_
                                             _e241554242050_
                                             _hd241553242053_
                                             _tl241552242055_
                                             _e241557242058_
                                             _hd241556242061_
                                             _tl241555242063_
                                             _e241560242066_
                                             _hd241559242069_
                                             _tl241558242071_))
                                        (___match252470252471_
                                         _e241533241994_
                                         _hd241532241997_
                                         _tl241531241999_
                                         _e241536242002_
                                         _hd241535242005_
                                         _tl241534242007_
                                         _e241539242010_
                                         _hd241538242013_
                                         _tl241537242015_
                                         _e241542242018_
                                         _hd241541242021_
                                         _tl241540242023_
                                         _e241545242026_
                                         _hd241544242029_
                                         _tl241543242031_
                                         _e241548242034_
                                         _hd241547242037_
                                         _tl241546242039_
                                         _e241551242042_
                                         _hd241550242045_
                                         _tl241549242047_
                                         _e241554242050_
                                         _hd241553242053_
                                         _tl241552242055_))))
                                (___match252470252471_
                                 _e241533241994_
                                 _hd241532241997_
                                 _tl241531241999_
                                 _e241536242002_
                                 _hd241535242005_
                                 _tl241534242007_
                                 _e241539242010_
                                 _hd241538242013_
                                 _tl241537242015_
                                 _e241542242018_
                                 _hd241541242021_
                                 _tl241540242023_
                                 _e241545242026_
                                 _hd241544242029_
                                 _tl241543242031_
                                 _e241548242034_
                                 _hd241547242037_
                                 _tl241546242039_
                                 _e241551242042_
                                 _hd241550242045_
                                 _tl241549242047_
                                 _e241554242050_
                                 _hd241553242053_
                                 _tl241552242055_))
                            (___match252470252471_
                             _e241533241994_
                             _hd241532241997_
                             _tl241531241999_
                             _e241536242002_
                             _hd241535242005_
                             _tl241534242007_
                             _e241539242010_
                             _hd241538242013_
                             _tl241537242015_
                             _e241542242018_
                             _hd241541242021_
                             _tl241540242023_
                             _e241545242026_
                             _hd241544242029_
                             _tl241543242031_
                             _e241548242034_
                             _hd241547242037_
                             _tl241546242039_
                             _e241551242042_
                             _hd241550242045_
                             _tl241549242047_
                             _e241554242050_
                             _hd241553242053_
                             _tl241552242055_))))
                     (___match252188252189_
                      (lambda (_e241482242115_
                               _hd241481242118_
                               _tl241480242120_
                               _e241485242123_
                               _hd241484242126_
                               _tl241483242128_
                               _e241488242131_
                               _hd241487242134_
                               _tl241486242136_
                               _e241491242139_
                               _hd241490242142_
                               _tl241489242144_
                               _e241494242147_
                               _hd241493242150_
                               _tl241492242152_
                               _e241497242155_
                               _hd241496242158_
                               _tl241495242160_
                               _e241500242163_
                               _hd241499242166_
                               _tl241498242168_
                               _e241503242171_
                               _hd241502242174_
                               _tl241501242176_
                               _e241506242179_
                               _hd241505242182_
                               _tl241504242184_
                               _e241509242187_
                               _hd241508242190_
                               _tl241507242192_
                               _e241512242195_
                               _hd241511242198_
                               _tl241510242200_
                               _e241515242203_
                               _hd241514242206_
                               _tl241513242208_
                               _e241518242211_
                               _hd241517242214_
                               _tl241516242216_
                               ___splice251981251982_
                               _target241519242219_
                               _tl241521242221_)
                        (letrec ((_loop241522242224_
                                  (lambda (_hd241520242227_ _args241526242229_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd241520242227_))
                                        (let ((_e241523242232_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd241520242227_))))
                                          (let ((_lp-tl241525242237_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e241523242232_)))
                                                (_lp-hd241524242235_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e241523242232_))))
                                            (let ((__tmp252923
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd241524242235_
                                                           _args241526242229_))))
                                              (declare (not safe))
                                              (_loop241522242224_
                                               _lp-tl241525242237_
                                               __tmp252923))))
                                        (let ((_args241527242240_
                                               (reverse _args241526242229_)))
                                          (let ((_L242243_ _args241527242240_)
                                                (_L242244_ _hd241517242214_)
                                                (_L242245_ _hd241508242190_)
                                                (_L242246_ _hd241499242166_)
                                                (_L242247_ _hd241490242142_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L242247_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L242246_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L242245_
                                                        _self241414_)))
                                                (___kont251979251980_
                                                 _L242243_
                                                 _L242244_
                                                 _L242245_
                                                 _L242246_
                                                 _L242247_)
                                                (___kont251991251992_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop241522242224_ _target241519242219_ '())))))
                     (___match252146252147_
                      (lambda (_e241482242115_
                               _hd241481242118_
                               _tl241480242120_
                               _e241485242123_
                               _hd241484242126_
                               _tl241483242128_
                               _e241488242131_
                               _hd241487242134_
                               _tl241486242136_
                               _e241491242139_
                               _hd241490242142_
                               _tl241489242144_
                               _e241494242147_
                               _hd241493242150_
                               _tl241492242152_
                               _e241497242155_
                               _hd241496242158_
                               _tl241495242160_
                               _e241500242163_
                               _hd241499242166_
                               _tl241498242168_
                               _e241503242171_
                               _hd241502242174_
                               _tl241501242176_
                               _e241506242179_
                               _hd241505242182_
                               _tl241504242184_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd241505242182_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241504242184_))
                                (let ((_e241509242187_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241504242184_))))
                                  (let ((_tl241507242192_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241509242187_)))
                                        (_hd241508242190_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241509242187_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl241507242192_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241501242176_))
                                            (let ((_e241512242195_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241501242176_))))
                                              (let ((_tl241510242200_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241512242195_)))
                                                    (_hd241511242198_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241512242195_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd241511242198_))
                                                    (let ((_e241515242203_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd241511242198_))))
                                                      (let ((_tl241513242208_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241515242203_)))
                    (_hd241514242206_
                     (let () (declare (not safe)) (##car _e241515242203_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241514242206_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd241514242206_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241513242208_))
                            (let ((_e241518242211_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241513242208_))))
                              (let ((_tl241516242216_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241518242211_)))
                                    (_hd241517242214_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241518242211_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241516242216_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl241510242200_))
                                        (let ((___splice251981251982_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl241510242200_
                                                  '0))))
                                          (let ((_tl241521242221_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice251981251982_
                                                    '1)))
                                                (_target241519242219_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice251981251982_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl241521242221_))
                                                (___match252188252189_
                                                 _e241482242115_
                                                 _hd241481242118_
                                                 _tl241480242120_
                                                 _e241485242123_
                                                 _hd241484242126_
                                                 _tl241483242128_
                                                 _e241488242131_
                                                 _hd241487242134_
                                                 _tl241486242136_
                                                 _e241491242139_
                                                 _hd241490242142_
                                                 _tl241489242144_
                                                 _e241494242147_
                                                 _hd241493242150_
                                                 _tl241492242152_
                                                 _e241497242155_
                                                 _hd241496242158_
                                                 _tl241495242160_
                                                 _e241500242163_
                                                 _hd241499242166_
                                                 _tl241498242168_
                                                 _e241503242171_
                                                 _hd241502242174_
                                                 _tl241501242176_
                                                 _e241506242179_
                                                 _hd241505242182_
                                                 _tl241504242184_
                                                 _e241509242187_
                                                 _hd241508242190_
                                                 _tl241507242192_
                                                 _e241512242195_
                                                 _hd241511242198_
                                                 _tl241510242200_
                                                 _e241515242203_
                                                 _hd241514242206_
                                                 _tl241513242208_
                                                 _e241518242211_
                                                 _hd241517242214_
                                                 _tl241516242216_
                                                 ___splice251981251982_
                                                 _target241519242219_
                                                 _tl241521242221_)
                                                (___kont251991251992_))))
                                        (___kont251991251992_))
                                    (___kont251991251992_))))
                            (___kont251991251992_))
                        (___kont251991251992_))
                    (___kont251991251992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251991251992_))))
                                            (___match252470252471_
                                             _e241482242115_
                                             _hd241481242118_
                                             _tl241480242120_
                                             _e241485242123_
                                             _hd241484242126_
                                             _tl241483242128_
                                             _e241488242131_
                                             _hd241487242134_
                                             _tl241486242136_
                                             _e241491242139_
                                             _hd241490242142_
                                             _tl241489242144_
                                             _e241494242147_
                                             _hd241493242150_
                                             _tl241492242152_
                                             _e241497242155_
                                             _hd241496242158_
                                             _tl241495242160_
                                             _e241500242163_
                                             _hd241499242166_
                                             _tl241498242168_
                                             _e241503242171_
                                             _hd241502242174_
                                             _tl241501242176_))
                                        (___match252470252471_
                                         _e241482242115_
                                         _hd241481242118_
                                         _tl241480242120_
                                         _e241485242123_
                                         _hd241484242126_
                                         _tl241483242128_
                                         _e241488242131_
                                         _hd241487242134_
                                         _tl241486242136_
                                         _e241491242139_
                                         _hd241490242142_
                                         _tl241489242144_
                                         _e241494242147_
                                         _hd241493242150_
                                         _tl241492242152_
                                         _e241497242155_
                                         _hd241496242158_
                                         _tl241495242160_
                                         _e241500242163_
                                         _hd241499242166_
                                         _tl241498242168_
                                         _e241503242171_
                                         _hd241502242174_
                                         _tl241501242176_))))
                                (___match252470252471_
                                 _e241482242115_
                                 _hd241481242118_
                                 _tl241480242120_
                                 _e241485242123_
                                 _hd241484242126_
                                 _tl241483242128_
                                 _e241488242131_
                                 _hd241487242134_
                                 _tl241486242136_
                                 _e241491242139_
                                 _hd241490242142_
                                 _tl241489242144_
                                 _e241494242147_
                                 _hd241493242150_
                                 _tl241492242152_
                                 _e241497242155_
                                 _hd241496242158_
                                 _tl241495242160_
                                 _e241500242163_
                                 _hd241499242166_
                                 _tl241498242168_
                                 _e241503242171_
                                 _hd241502242174_
                                 _tl241501242176_))
                            (___match252256252257_
                             _e241482242115_
                             _hd241481242118_
                             _tl241480242120_
                             _e241485242123_
                             _hd241484242126_
                             _tl241483242128_
                             _e241488242131_
                             _hd241487242134_
                             _tl241486242136_
                             _e241491242139_
                             _hd241490242142_
                             _tl241489242144_
                             _e241494242147_
                             _hd241493242150_
                             _tl241492242152_
                             _e241497242155_
                             _hd241496242158_
                             _tl241495242160_
                             _e241500242163_
                             _hd241499242166_
                             _tl241498242168_
                             _e241503242171_
                             _hd241502242174_
                             _tl241501242176_
                             _e241506242179_
                             _hd241505242182_
                             _tl241504242184_))))
                     (___match252078252079_
                      (lambda (_e241438242307_
                               _hd241437242310_
                               _tl241436242312_
                               _e241441242315_
                               _hd241440242318_
                               _tl241439242320_
                               _e241444242323_
                               _hd241443242326_
                               _tl241442242328_
                               _e241447242331_
                               _hd241446242334_
                               _tl241445242336_
                               _e241450242339_
                               _hd241449242342_
                               _tl241448242344_
                               _e241453242347_
                               _hd241452242350_
                               _tl241451242352_
                               _e241456242355_
                               _hd241455242358_
                               _tl241454242360_
                               _e241459242363_
                               _hd241458242366_
                               _tl241457242368_
                               _e241462242371_
                               _hd241461242374_
                               _tl241460242376_
                               _e241465242379_
                               _hd241464242382_
                               _tl241463242384_
                               ___splice251977251978_
                               _target241466242387_
                               _tl241468242389_)
                        (letrec ((_loop241469242392_
                                  (lambda (_hd241467242395_ _args241473242397_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd241467242395_))
                                        (let ((_e241470242400_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd241467242395_))))
                                          (let ((_lp-tl241472242405_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e241470242400_)))
                                                (_lp-hd241471242403_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e241470242400_))))
                                            (let ((__tmp252924
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd241471242403_
                                                           _args241473242397_))))
                                              (declare (not safe))
                                              (_loop241469242392_
                                               _lp-tl241472242405_
                                               __tmp252924))))
                                        (let ((_args241474242408_
                                               (reverse _args241473242397_)))
                                          (let ((_L242411_ _args241474242408_)
                                                (_L242412_ _hd241464242382_)
                                                (_L242413_ _hd241455242358_)
                                                (_L242414_ _hd241446242334_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L242414_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L242413_
                                                        _self241414_)))
                                                (___kont251975251976_
                                                 _L242411_
                                                 _L242412_
                                                 _L242413_
                                                 _L242414_)
                                                (___match252266252267_
                                                 _e241438242307_
                                                 _hd241437242310_
                                                 _tl241436242312_
                                                 _e241441242315_
                                                 _hd241440242318_
                                                 _tl241439242320_
                                                 _e241444242323_
                                                 _hd241443242326_
                                                 _tl241442242328_
                                                 _e241447242331_
                                                 _hd241446242334_
                                                 _tl241445242336_
                                                 _e241450242339_
                                                 _hd241449242342_
                                                 _tl241448242344_
                                                 _e241453242347_
                                                 _hd241452242350_
                                                 _tl241451242352_
                                                 _e241456242355_
                                                 _hd241455242358_
                                                 _tl241454242360_
                                                 _e241459242363_
                                                 _hd241458242366_
                                                 _tl241457242368_
                                                 _e241462242371_
                                                 _hd241461242374_
                                                 _tl241460242376_
                                                 _e241465242379_
                                                 _hd241464242382_
                                                 _tl241463242384_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop241469242392_ _target241466242387_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx251973251974_))
                    (let ((_e241438242307_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx251973251974_))))
                      (let ((_tl241436242312_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241438242307_)))
                            (_hd241437242310_
                             (let ()
                               (declare (not safe))
                               (##car _e241438242307_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241436242312_))
                            (let ((_e241441242315_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241436242312_))))
                              (let ((_tl241439242320_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241441242315_)))
                                    (_hd241440242318_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241441242315_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd241440242318_))
                                    (let ((_e241444242323_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd241440242318_))))
                                      (let ((_tl241442242328_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241444242323_)))
                                            (_hd241443242326_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241444242323_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd241443242326_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd241443242326_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241442242328_))
                                                    (let ((_e241447242331_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241442242328_))))
                                                      (let ((_tl241445242336_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241447242331_)))
                    (_hd241446242334_
                     (let () (declare (not safe)) (##car _e241447242331_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl241445242336_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl241439242320_))
                        (let ((_e241450242339_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl241439242320_))))
                          (let ((_tl241448242344_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e241450242339_)))
                                (_hd241449242342_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e241450242339_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd241449242342_))
                                (let ((_e241453242347_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd241449242342_))))
                                  (let ((_tl241451242352_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241453242347_)))
                                        (_hd241452242350_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241453242347_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd241452242350_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd241452242350_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl241451242352_))
                                                (let ((_e241456242355_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl241451242352_))))
                                                  (let ((_tl241454242360_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e241456242355_)))
                                                        (_hd241455242358_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e241456242355_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl241454242360_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl241448242344_))
                                                            (let ((_e241459242363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl241448242344_))))
                      (let ((_tl241457242368_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241459242363_)))
                            (_hd241458242366_
                             (let ()
                               (declare (not safe))
                               (##car _e241459242363_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd241458242366_))
                            (let ((_e241462242371_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd241458242366_))))
                              (let ((_tl241460242376_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241462242371_)))
                                    (_hd241461242374_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241462242371_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd241461242374_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd241461242374_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241460242376_))
                                            (let ((_e241465242379_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241460242376_))))
                                              (let ((_tl241463242384_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241465242379_)))
                                                    (_hd241464242382_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241465242379_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl241463242384_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl241457242368_))
                                                        (let ((___splice251977251978_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl241457242368_ '0))))
                  (let ((_tl241468242389_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice251977251978_ '1)))
                        (_target241466242387_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice251977251978_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl241468242389_))
                        (___match252078252079_
                         _e241438242307_
                         _hd241437242310_
                         _tl241436242312_
                         _e241441242315_
                         _hd241440242318_
                         _tl241439242320_
                         _e241444242323_
                         _hd241443242326_
                         _tl241442242328_
                         _e241447242331_
                         _hd241446242334_
                         _tl241445242336_
                         _e241450242339_
                         _hd241449242342_
                         _tl241448242344_
                         _e241453242347_
                         _hd241452242350_
                         _tl241451242352_
                         _e241456242355_
                         _hd241455242358_
                         _tl241454242360_
                         _e241459242363_
                         _hd241458242366_
                         _tl241457242368_
                         _e241462242371_
                         _hd241461242374_
                         _tl241460242376_
                         _e241465242379_
                         _hd241464242382_
                         _tl241463242384_
                         ___splice251977251978_
                         _target241466242387_
                         _tl241468242389_)
                        (___match252266252267_
                         _e241438242307_
                         _hd241437242310_
                         _tl241436242312_
                         _e241441242315_
                         _hd241440242318_
                         _tl241439242320_
                         _e241444242323_
                         _hd241443242326_
                         _tl241442242328_
                         _e241447242331_
                         _hd241446242334_
                         _tl241445242336_
                         _e241450242339_
                         _hd241449242342_
                         _tl241448242344_
                         _e241453242347_
                         _hd241452242350_
                         _tl241451242352_
                         _e241456242355_
                         _hd241455242358_
                         _tl241454242360_
                         _e241459242363_
                         _hd241458242366_
                         _tl241457242368_
                         _e241462242371_
                         _hd241461242374_
                         _tl241460242376_
                         _e241465242379_
                         _hd241464242382_
                         _tl241463242384_))))
                (___match252266252267_
                 _e241438242307_
                 _hd241437242310_
                 _tl241436242312_
                 _e241441242315_
                 _hd241440242318_
                 _tl241439242320_
                 _e241444242323_
                 _hd241443242326_
                 _tl241442242328_
                 _e241447242331_
                 _hd241446242334_
                 _tl241445242336_
                 _e241450242339_
                 _hd241449242342_
                 _tl241448242344_
                 _e241453242347_
                 _hd241452242350_
                 _tl241451242352_
                 _e241456242355_
                 _hd241455242358_
                 _tl241454242360_
                 _e241459242363_
                 _hd241458242366_
                 _tl241457242368_
                 _e241462242371_
                 _hd241461242374_
                 _tl241460242376_
                 _e241465242379_
                 _hd241464242382_
                 _tl241463242384_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match252470252471_
                                                     _e241438242307_
                                                     _hd241437242310_
                                                     _tl241436242312_
                                                     _e241441242315_
                                                     _hd241440242318_
                                                     _tl241439242320_
                                                     _e241444242323_
                                                     _hd241443242326_
                                                     _tl241442242328_
                                                     _e241447242331_
                                                     _hd241446242334_
                                                     _tl241445242336_
                                                     _e241450242339_
                                                     _hd241449242342_
                                                     _tl241448242344_
                                                     _e241453242347_
                                                     _hd241452242350_
                                                     _tl241451242352_
                                                     _e241456242355_
                                                     _hd241455242358_
                                                     _tl241454242360_
                                                     _e241459242363_
                                                     _hd241458242366_
                                                     _tl241457242368_))))
                                            (___match252470252471_
                                             _e241438242307_
                                             _hd241437242310_
                                             _tl241436242312_
                                             _e241441242315_
                                             _hd241440242318_
                                             _tl241439242320_
                                             _e241444242323_
                                             _hd241443242326_
                                             _tl241442242328_
                                             _e241447242331_
                                             _hd241446242334_
                                             _tl241445242336_
                                             _e241450242339_
                                             _hd241449242342_
                                             _tl241448242344_
                                             _e241453242347_
                                             _hd241452242350_
                                             _tl241451242352_
                                             _e241456242355_
                                             _hd241455242358_
                                             _tl241454242360_
                                             _e241459242363_
                                             _hd241458242366_
                                             _tl241457242368_))
                                        (___match252146252147_
                                         _e241438242307_
                                         _hd241437242310_
                                         _tl241436242312_
                                         _e241441242315_
                                         _hd241440242318_
                                         _tl241439242320_
                                         _e241444242323_
                                         _hd241443242326_
                                         _tl241442242328_
                                         _e241447242331_
                                         _hd241446242334_
                                         _tl241445242336_
                                         _e241450242339_
                                         _hd241449242342_
                                         _tl241448242344_
                                         _e241453242347_
                                         _hd241452242350_
                                         _tl241451242352_
                                         _e241456242355_
                                         _hd241455242358_
                                         _tl241454242360_
                                         _e241459242363_
                                         _hd241458242366_
                                         _tl241457242368_
                                         _e241462242371_
                                         _hd241461242374_
                                         _tl241460242376_))
                                    (___match252470252471_
                                     _e241438242307_
                                     _hd241437242310_
                                     _tl241436242312_
                                     _e241441242315_
                                     _hd241440242318_
                                     _tl241439242320_
                                     _e241444242323_
                                     _hd241443242326_
                                     _tl241442242328_
                                     _e241447242331_
                                     _hd241446242334_
                                     _tl241445242336_
                                     _e241450242339_
                                     _hd241449242342_
                                     _tl241448242344_
                                     _e241453242347_
                                     _hd241452242350_
                                     _tl241451242352_
                                     _e241456242355_
                                     _hd241455242358_
                                     _tl241454242360_
                                     _e241459242363_
                                     _hd241458242366_
                                     _tl241457242368_))))
                            (___match252470252471_
                             _e241438242307_
                             _hd241437242310_
                             _tl241436242312_
                             _e241441242315_
                             _hd241440242318_
                             _tl241439242320_
                             _e241444242323_
                             _hd241443242326_
                             _tl241442242328_
                             _e241447242331_
                             _hd241446242334_
                             _tl241445242336_
                             _e241450242339_
                             _hd241449242342_
                             _tl241448242344_
                             _e241453242347_
                             _hd241452242350_
                             _tl241451242352_
                             _e241456242355_
                             _hd241455242358_
                             _tl241454242360_
                             _e241459242363_
                             _hd241458242366_
                             _tl241457242368_))))
                    (___match252408252409_
                     _e241438242307_
                     _hd241437242310_
                     _tl241436242312_
                     _e241441242315_
                     _hd241440242318_
                     _tl241439242320_
                     _e241444242323_
                     _hd241443242326_
                     _tl241442242328_
                     _e241447242331_
                     _hd241446242334_
                     _tl241445242336_
                     _e241450242339_
                     _hd241449242342_
                     _tl241448242344_
                     _e241453242347_
                     _hd241452242350_
                     _tl241451242352_
                     _e241456242355_
                     _hd241455242358_
                     _tl241454242360_))
                (___kont251991251992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont251991251992_))
                                            (___kont251991251992_))
                                        (___kont251991251992_))))
                                (___kont251991251992_))))
                        (___kont251991251992_))
                    (___kont251991251992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251991251992_))
                                                (___kont251991251992_))
                                            (___kont251991251992_))))
                                    (___kont251991251992_))))
                            (___kont251991251992_))))
                    (___kont251991251992_))))))))))
