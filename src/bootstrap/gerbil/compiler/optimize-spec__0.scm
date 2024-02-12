(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1707772769)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl249744_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp255440 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl249744_ __tmp255440))
           (let ()
             (declare (not safe))
             (table-set! _tbl249744_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249744_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249744_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249744_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl249744_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx249727_ . _args249729_)
        (let ((__tmp255442
               (lambda ()
                 (declare (not safe))
                 (if (null? _args249729_)
                     (gxc#compile-e__0 _stx249727_)
                     (let ((_arg1249734_ (car _args249729_))
                           (_rest249736_ (cdr _args249729_)))
                       (if (null? _rest249736_)
                           (gxc#compile-e__1 _stx249727_ _arg1249734_)
                           (let ((_arg2249739_ (car _rest249736_))
                                 (_rest249741_ (cdr _rest249736_)))
                             (if (null? _rest249741_)
                                 (gxc#compile-e__2
                                  _stx249727_
                                  _arg1249734_
                                  _arg2249739_)
                                 (apply gxc#compile-e
                                        _stx249727_
                                        _arg1249734_
                                        _arg2249739_
                                        _rest249741_))))))))
              (__tmp255441 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp255442
           gxc#current-compile-methods
           __tmp255441))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl249724_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp255443 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl249724_ __tmp255443))
           (let ()
             (declare (not safe))
             (table-set! _tbl249724_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249724_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249724_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249724_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249724_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249724_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249724_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249724_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249724_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl249724_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249724_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl249724_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249724_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249724_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249724_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249724_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl249724_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx249707_ . _args249709_)
        (let ((__tmp255445
               (lambda ()
                 (declare (not safe))
                 (if (null? _args249709_)
                     (gxc#compile-e__0 _stx249707_)
                     (let ((_arg1249714_ (car _args249709_))
                           (_rest249716_ (cdr _args249709_)))
                       (if (null? _rest249716_)
                           (gxc#compile-e__1 _stx249707_ _arg1249714_)
                           (let ((_arg2249719_ (car _rest249716_))
                                 (_rest249721_ (cdr _rest249716_)))
                             (if (null? _rest249721_)
                                 (gxc#compile-e__2
                                  _stx249707_
                                  _arg1249714_
                                  _arg2249719_)
                                 (apply gxc#compile-e
                                        _stx249707_
                                        _arg1249714_
                                        _arg2249719_
                                        _rest249721_))))))))
              (__tmp255444 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp255445
           gxc#current-compile-methods
           __tmp255444))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl249704_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp255446 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl249704_ __tmp255446))
           (let ()
             (declare (not safe))
             (table-set! _tbl249704_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249704_ '%#call gxc#subst-object-refs-call%))
           _tbl249704_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx249687_ . _args249689_)
        (let ((__tmp255448
               (lambda ()
                 (declare (not safe))
                 (if (null? _args249689_)
                     (gxc#compile-e__0 _stx249687_)
                     (let ((_arg1249694_ (car _args249689_))
                           (_rest249696_ (cdr _args249689_)))
                       (if (null? _rest249696_)
                           (gxc#compile-e__1 _stx249687_ _arg1249694_)
                           (let ((_arg2249699_ (car _rest249696_))
                                 (_rest249701_ (cdr _rest249696_)))
                             (if (null? _rest249701_)
                                 (gxc#compile-e__2
                                  _stx249687_
                                  _arg1249694_
                                  _arg2249699_)
                                 (apply gxc#compile-e
                                        _stx249687_
                                        _arg1249694_
                                        _arg2249699_
                                        _rest249701_))))))))
              (__tmp255447 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp255448
           gxc#current-compile-methods
           __tmp255447))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx246357_)
        (letrec ((_generate-method-bind246359_
                  (lambda (_$t249681_ _id249682_ _$id249683_)
                    (let ((_$tmp249685_
                           (let ((__tmp255449 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp255449))))
                      (let ((__tmp255494
                             (let ()
                               (declare (not safe))
                               (cons _$id249683_ '())))
                            (__tmp255450
                             (let ((__tmp255451
                                    (let ((__tmp255452
                                           (let ((__tmp255492
                                                  (let ((__tmp255493
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp255493)))
                                                 (__tmp255453
                                                  (let ((__tmp255454
                                                         (let ((__tmp255455
                                                                (let ((__tmp255456
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255457
                                      (let ((__tmp255458
                                             (let ((__tmp255478
                                                    (let ((__tmp255479
                                                           (let ((__tmp255491
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp249685_ '())))
                         (__tmp255480
                          (let ((__tmp255481
                                 (let ((__tmp255482
                                        (let ((__tmp255489
                                               (let ((__tmp255490
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp255490)))
                                              (__tmp255483
                                               (let ((__tmp255487
                                                      (let ((__tmp255488
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t249681_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp255488)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp255484
                                                      (let ((__tmp255485
                                                             (let ((__tmp255486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id249682_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp255486))))
                (declare (not safe))
                (cons __tmp255485 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp255487
                                                       __tmp255484))))
                                          (declare (not safe))
                                          (cons __tmp255489 __tmp255483))))
                                   (declare (not safe))
                                   (cons '%#call __tmp255482))))
                            (declare (not safe))
                            (cons __tmp255481 '()))))
                     (declare (not safe))
                     (cons __tmp255491 __tmp255480))))
              (declare (not safe))
              (cons __tmp255479 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp255459
                                                    (let ((__tmp255460
                                                           (let ((__tmp255461
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255476
                                 (let ((__tmp255477
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp249685_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp255477)))
                                (__tmp255462
                                 (let ((__tmp255474
                                        (let ((__tmp255475
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp249685_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp255475)))
                                       (__tmp255463
                                        (let ((__tmp255464
                                               (let ((__tmp255465
                                                      (let ((__tmp255472
                                                             (let ((__tmp255473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp255473)))
                    (__tmp255466
                     (let ((__tmp255470
                            (let ((__tmp255471
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp255471)))
                           (__tmp255467
                            (let ((__tmp255468
                                   (let ((__tmp255469
                                          (let ()
                                            (declare (not safe))
                                            (cons _id249682_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp255469))))
                              (declare (not safe))
                              (cons __tmp255468 '()))))
                       (declare (not safe))
                       (cons __tmp255470 __tmp255467))))
                (declare (not safe))
                (cons __tmp255472 __tmp255466))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp255465))))
                                          (declare (not safe))
                                          (cons __tmp255464 '()))))
                                   (declare (not safe))
                                   (cons __tmp255474 __tmp255463))))
                            (declare (not safe))
                            (cons __tmp255476 __tmp255462))))
                     (declare (not safe))
                     (cons '%#if __tmp255461))))
              (declare (not safe))
              (cons __tmp255460 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp255478
                                                     __tmp255459))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp255458))))
                                 (declare (not safe))
                                 (cons __tmp255457 '()))))
                          (declare (not safe))
                          (cons '() __tmp255456))))
                   (declare (not safe))
                   (cons '%#lambda __tmp255455))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255454 '()))))
                                             (declare (not safe))
                                             (cons __tmp255492 __tmp255453))))
                                      (declare (not safe))
                                      (cons '%#call __tmp255452))))
                               (declare (not safe))
                               (cons __tmp255451 '()))))
                        (declare (not safe))
                        (cons __tmp255494 __tmp255450)))))
                 (_generate-slot-bind246360_
                  (lambda (_$t249675_ _id249676_ _$id249677_)
                    (let ((_$tmp249679_
                           (let ((__tmp255495 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp255495))))
                      (let ((__tmp255532
                             (let ()
                               (declare (not safe))
                               (cons _$id249677_ '())))
                            (__tmp255496
                             (let ((__tmp255497
                                    (let ((__tmp255498
                                           (let ((__tmp255518
                                                  (let ((__tmp255519
                                                         (let ((__tmp255531
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp249679_ '())))
                       (__tmp255520
                        (let ((__tmp255521
                               (let ((__tmp255522
                                      (let ((__tmp255529
                                             (let ((__tmp255530
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp255530)))
                                            (__tmp255523
                                             (let ((__tmp255527
                                                    (let ((__tmp255528
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t249675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp255528)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp255524
                                                    (let ((__tmp255525
                                                           (let ((__tmp255526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id249676_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp255526))))
              (declare (not safe))
              (cons __tmp255525 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp255527
                                                     __tmp255524))))
                                        (declare (not safe))
                                        (cons __tmp255529 __tmp255523))))
                                 (declare (not safe))
                                 (cons '%#call __tmp255522))))
                          (declare (not safe))
                          (cons __tmp255521 '()))))
                   (declare (not safe))
                   (cons __tmp255531 __tmp255520))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255519 '())))
                                                 (__tmp255499
                                                  (let ((__tmp255500
                                                         (let ((__tmp255501
                                                                (let ((__tmp255516
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255517
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp249679_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp255517)))
                              (__tmp255502
                               (let ((__tmp255514
                                      (let ((__tmp255515
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp249679_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp255515)))
                                     (__tmp255503
                                      (let ((__tmp255504
                                             (let ((__tmp255505
                                                    (let ((__tmp255512
                                                           (let ((__tmp255513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp255513)))
                  (__tmp255506
                   (let ((__tmp255510
                          (let ((__tmp255511
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp255511)))
                         (__tmp255507
                          (let ((__tmp255508
                                 (let ((__tmp255509
                                        (let ()
                                          (declare (not safe))
                                          (cons _id249676_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp255509))))
                            (declare (not safe))
                            (cons __tmp255508 '()))))
                     (declare (not safe))
                     (cons __tmp255510 __tmp255507))))
              (declare (not safe))
              (cons __tmp255512 __tmp255506))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp255505))))
                                        (declare (not safe))
                                        (cons __tmp255504 '()))))
                                 (declare (not safe))
                                 (cons __tmp255514 __tmp255503))))
                          (declare (not safe))
                          (cons __tmp255516 __tmp255502))))
                   (declare (not safe))
                   (cons '%#if __tmp255501))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255500 '()))))
                                             (declare (not safe))
                                             (cons __tmp255518 __tmp255499))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp255498))))
                               (declare (not safe))
                               (cons __tmp255497 '()))))
                        (declare (not safe))
                        (cons __tmp255532 __tmp255496)))))
                 (_generate-class-check-bind246361_
                  (lambda (_$t249671_ _class-type249672_ _$class-type249673_)
                    (let ((__tmp255544
                           (let ()
                             (declare (not safe))
                             (cons _$class-type249673_ '())))
                          (__tmp255533
                           (let ((__tmp255534
                                  (let ((__tmp255535
                                         (let ((__tmp255542
                                                (let ((__tmp255543
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp255543)))
                                               (__tmp255536
                                                (let ((__tmp255540
                                                       (let ((__tmp255541
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t249671_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp255541)))
              (__tmp255537
               (let ((__tmp255538
                      (let ((__tmp255539
                             (let ()
                               (declare (not safe))
                               (cons _class-type249672_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp255539))))
                 (declare (not safe))
                 (cons __tmp255538 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255540
                                                        __tmp255537))))
                                           (declare (not safe))
                                           (cons __tmp255542 __tmp255536))))
                                    (declare (not safe))
                                    (cons '%#call __tmp255535))))
                             (declare (not safe))
                             (cons __tmp255534 '()))))
                      (declare (not safe))
                      (cons __tmp255544 __tmp255533))))
                 (_generate-struct-check-bind246362_
                  (lambda (_$t249667_ _class-type249668_ _$class-type249669_)
                    (let ((__tmp255556
                           (let ()
                             (declare (not safe))
                             (cons _$class-type249669_ '())))
                          (__tmp255545
                           (let ((__tmp255546
                                  (let ((__tmp255547
                                         (let ((__tmp255554
                                                (let ((__tmp255555
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp255555)))
                                               (__tmp255548
                                                (let ((__tmp255552
                                                       (let ((__tmp255553
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t249667_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp255553)))
              (__tmp255549
               (let ((__tmp255550
                      (let ((__tmp255551
                             (let ()
                               (declare (not safe))
                               (cons _class-type249668_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp255551))))
                 (declare (not safe))
                 (cons __tmp255550 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255552
                                                        __tmp255549))))
                                           (declare (not safe))
                                           (cons __tmp255554 __tmp255548))))
                                    (declare (not safe))
                                    (cons '%#call __tmp255547))))
                             (declare (not safe))
                             (cons __tmp255546 '()))))
                      (declare (not safe))
                      (cons __tmp255556 __tmp255545))))
                 (_generate-specializer-impl246363_
                  (lambda (_$t249616_
                           _methods-bind249617_
                           _slots-bind249618_
                           _class-check-bind249619_
                           _struct-check-bind249620_
                           _specializer-impl249621_
                           _lifted-specializer-id249622_
                           _unchecked-specializer-impl249623_)
                    (let ((__tmp255557
                           (let ((__tmp255558
                                  (let ((__tmp255584
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t249616_ '())))
                                        (__tmp255559
                                         (let ((__tmp255560
                                                (let ((__tmp255561
                                                       (let ((__tmp255581
                                                              (let ((__tmp255582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp255583
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind249620_
                                              _class-check-bind249619_))))
                               (declare (not safe))
                               (foldr1 cons __tmp255583 _slots-bind249618_))))
                        (declare (not safe))
                        (foldr1 cons __tmp255582 _methods-bind249617_)))
                     (__tmp255562
                      (let ((__tmp255563
                             (if (or _lifted-specializer-id249622_
                                     _unchecked-specializer-impl249623_)
                                 (let* ((_$specializer249628_
                                         (let ((__tmp255564
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp255564)))
                                        (__tmp255565
                                         (let ((__tmp255577
                                                (let ((__tmp255578
                                                       (let ((__tmp255580
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer249628_ '())))
                     (__tmp255579
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl249621_ '()))))
                 (declare (not safe))
                 (cons __tmp255580 __tmp255579))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255578 '())))
                                               (__tmp255566
                                                (let ((__tmp255567
                                                       (let _recur249630_ ((_rest249632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind249620_)))
                 (let* ((_rest249633249641_ _rest249632_)
                        (_else249635249649_
                         (lambda ()
                           (if _lifted-specializer-id249622_
                               (let ((__tmp255568
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id249622_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp255568))
                               _unchecked-specializer-impl249623_)))
                        (_K249637249655_
                         (lambda (_rest249652_ _checkq249653_)
                           (let ((__tmp255569
                                  (let ((__tmp255575
                                         (let ((__tmp255576
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq249653_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp255576)))
                                        (__tmp255570
                                         (let ((__tmp255574
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur249630_
                                                   _rest249652_)))
                                               (__tmp255571
                                                (let ((__tmp255572
                                                       (let ((__tmp255573
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer249628_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp255573))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255572 '()))))
                                           (declare (not safe))
                                           (cons __tmp255574 __tmp255571))))
                                    (declare (not safe))
                                    (cons __tmp255575 __tmp255570))))
                             (declare (not safe))
                             (cons '%#if __tmp255569)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest249633249641_))
                       (let ((_hd249638249658_
                              (let ()
                                (declare (not safe))
                                (##car _rest249633249641_)))
                             (_tl249639249660_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest249633249641_))))
                         (let* ((_checkq249663_ _hd249638249658_)
                                (_rest249665_ _tl249639249660_))
                           (declare (not safe))
                           (_K249637249655_ _rest249665_ _checkq249663_)))
                       (let () (declare (not safe)) (_else249635249649_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255567 '()))))
                                           (declare (not safe))
                                           (cons __tmp255577 __tmp255566))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp255565))
                                 _specializer-impl249621_)))
                        (declare (not safe))
                        (cons __tmp255563 '()))))
                 (declare (not safe))
                 (cons __tmp255581 __tmp255562))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp255561))))
                                           (declare (not safe))
                                           (cons __tmp255560 '()))))
                                    (declare (not safe))
                                    (cons __tmp255584 __tmp255559))))
                             (declare (not safe))
                             (cons '%#lambda __tmp255558))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255557 _stx246357_))))
                 (_generate-specializer-def246364_
                  (lambda (_id249610_
                           _specializer-id249611_
                           _specializer-impl249612_
                           _lifted-specializer-id249613_
                           _unchecked-specializer-impl249614_)
                    (let ((__tmp255585
                           (let ((__tmp255586
                                  (let ((__tmp255587
                                         (let ((__tmp255607
                                                (let ((__tmp255608
                                                       (let ((__tmp255609
                                                              (let ((__tmp255611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id249611_ '())))
                            (__tmp255610
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl249612_ '()))))
                        (declare (not safe))
                        (cons __tmp255611 __tmp255610))))
                 (declare (not safe))
                 (cons '%#define-values __tmp255609))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp255608
                                                   _stx246357_)))
                                               (__tmp255588
                                                (let ((__tmp255595
                                                       (let ((__tmp255596
                                                              (let ((__tmp255597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp255598
                                    (let ((__tmp255605
                                           (let ((__tmp255606
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp255606)))
                                          (__tmp255599
                                           (let ((__tmp255603
                                                  (let ((__tmp255604
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id249610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp255604)))
                                                 (__tmp255600
                                                  (let ((__tmp255601
                                                         (let ((__tmp255602
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id249611_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp255602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255601 '()))))
                                             (declare (not safe))
                                             (cons __tmp255603 __tmp255600))))
                                      (declare (not safe))
                                      (cons __tmp255605 __tmp255599))))
                               (declare (not safe))
                               (cons '%#call __tmp255598))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp255597 _stx246357_))))
                 (declare (not safe))
                 (cons __tmp255596 '())))
              (__tmp255589
               (if _lifted-specializer-id249613_
                   (let ((__tmp255590
                          (let ((__tmp255591
                                 (let ((__tmp255592
                                        (let ((__tmp255594
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id249613_
                                                       '())))
                                              (__tmp255593
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl249614_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp255594 __tmp255593))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp255592))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp255591 _stx246357_))))
                     (declare (not safe))
                     (cons __tmp255590 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp255595
                                                          __tmp255589))))
                                           (declare (not safe))
                                           (cons __tmp255607 __tmp255588))))
                                    (declare (not safe))
                                    (cons _stx246357_ __tmp255587))))
                             (declare (not safe))
                             (cons '%#begin __tmp255586))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255585 _stx246357_)))))
          (let* ((___stx254401254402_ _stx246357_)
                 (_g246367246387_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx254401254402_)))))
            (let ((___kont254403254404_
                   (lambda (_L246431_ _L246432_)
                     (let ((_method-calls246451_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs246452_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check246453_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check246454_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert246455_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty246456_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?246458_
                                 (lambda ()
                                   (if (let ((__tmp255616
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls246451_))))
                                         (declare (not safe))
                                         (fxzero? __tmp255616))
                                       (if (let ((__tmp255615
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs246452_))))
                                             (declare (not safe))
                                             (fxzero? __tmp255615))
                                           (if (let ((__tmp255614
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check246453_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp255614))
                                               (if (let ((__tmp255613
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check246454_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp255613))
                                                   (let ((__tmp255612
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert246455_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp255612))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?246459_
                                 (lambda ()
                                   (let ((_$e249603_
                                          (let ((__tmp255617
                                                 (let ((__tmp255618
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check246454_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp255618))))
                                            (declare (not safe))
                                            (not __tmp255617))))
                                     (if _$e249603_
                                         _$e249603_
                                         (let ((__tmp255619
                                                (let ((__tmp255620
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert246455_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp255620))))
                                           (declare (not safe))
                                           (not __tmp255619))))))
                                (_lift-unchecked-specializer?246460_
                                 (lambda ()
                                   (if (let ((__tmp255623
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls246451_))))
                                         (declare (not safe))
                                         (fxzero? __tmp255623))
                                       (if (let ((__tmp255622
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs246452_))))
                                             (declare (not safe))
                                             (fxzero? __tmp255622))
                                           (let ((__tmp255621
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check246453_))))
                                             (declare (not safe))
                                             (fxzero? __tmp255621))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L246431_))
                             (let* ((___stx254315254316_ _L246431_)
                                    (_g246973246991_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx254315254316_)))))
                               (let ((___kont254317254318_
                                      (lambda (_L247027_ _L247028_ _L247029_)
                                        (for-each
                                         (lambda (_g247044247046_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g247044247046_
                                              _L247029_
                                              _method-calls246451_
                                              _slot-refs246452_
                                              _class-type-check246453_
                                              _struct-type-check246454_
                                              _struct-type-assert246455_)))
                                         _L247027_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?246458_))
                                            _stx246357_
                                            (let* ((_specializer-id247055_
                                                    (let* ((_id247049_
                                                            (let ((__tmp255773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L246432_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp255773 '"::specialize")))
                   (_specializer-id247052_
                    (let ((__tmp255774
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx246357_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id247049_ __tmp255774))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id247052_))
              _specializer-id247052_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id247062_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?246460_))
                                                        (let* ((_id247057_
                                                                (let ((__tmp255775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L246432_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp255775
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id247059_
                        (let ((__tmp255776
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx246357_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id247057_ __tmp255776))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id247059_))
                  _lifted-specializer-id247059_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t247064_
                                                    (let ((__tmp255777
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp255777)))
                                                   (_methods247066_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls246451_)))
                                                   (_$methods247070_
                                                    (map (lambda (_id247068_)
                                                           (let ((__tmp255778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id247068_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp255778)))
                 _methods247066_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g255779_
                                                    (for-each
                                                     (lambda (_g247071247074_
                                                              _g247072247076_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls246451_
                                                          _g247071247074_
                                                          _g247072247076_)))
                                                     _methods247066_
                                                     _$methods247070_))
                                                   (_methods-bind247087_
                                                    (map (lambda (_g247079247082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g247080247084_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind246359_
                      _$t247064_
                      _g247079247082_
                      _g247080247084_)))
                 _methods247066_
                 _$methods247070_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots247089_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs246452_)))
                                                   (_$slots247093_
                                                    (map (lambda (_id247091_)
                                                           (let ((__tmp255780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id247091_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp255780)))
                 _slots247089_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g255781_
                                                    (for-each
                                                     (lambda (_g247094247097_
                                                              _g247095247099_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs246452_
                                                          _g247094247097_
                                                          _g247095247099_)))
                                                     _slots247089_
                                                     _$slots247093_))
                                                   (_slots-bind247110_
                                                    (map (lambda (_g247102247105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g247103247107_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind246360_
                      _$t247064_
                      _g247102247105_
                      _g247103247107_)))
                 _slots247089_
                 _$slots247093_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check247112_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check246453_)))
                                                   (_$class-check247115_
                                                    (map (lambda (_g255782_)
                                                           (let ((__tmp255783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp255783)))
                 _class-check247112_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g255784_
                                                    (for-each
                                                     (lambda (_g247116247119_
                                                              _g247117247121_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check246453_
                                                          _g247116247119_
                                                          _g247117247121_)))
                                                     _class-check247112_
                                                     _$class-check247115_))
                                                   (_class-check-bind247132_
                                                    (map (lambda (_g247124247127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g247125247129_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind246361_
                      _$t247064_
                      _g247124247127_
                      _g247125247129_)))
                 _class-check247112_
                 _$class-check247115_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all247134_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check246454_
                                                       _struct-type-assert246455_)))
                                                   (_struct-check247136_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all247134_)))
                                                   (_$struct-check247139_
                                                    (map (lambda (_g255785_)
                                                           (let ((__tmp255786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp255786)))
                 _struct-check247136_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g255787_
                                                    (for-each
                                                     (lambda (_g247140247143_
                                                              _g247141247145_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all247134_
                                                          _g247140247143_
                                                          _g247141247145_)))
                                                     _struct-check247136_
                                                     _$struct-check247139_))
                                                   (_struct-check-bind247156_
                                                    (map (lambda (_g247148247151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g247149247153_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind246362_
                      _$t247064_
                      _g247148247151_
                      _g247149247153_)))
                 _struct-check247136_
                 _$struct-check247139_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl247167_
                                                    (lambda (_struct-type-check1247158_
                                                             _struct-type-check2247159_)
                                                      (let* ((_specializer-body247165_
                                                              (map (lambda (_g247160247162_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g247160247162_
                                _L247029_
                                _$t247064_
                                _method-calls246451_
                                _slot-refs246452_
                                _class-type-check246453_
                                _struct-type-check1247158_
                                _struct-type-check2247159_)))
                           _L247027_))
                     (__tmp255788
                      (let ((__tmp255789
                             (let ((__tmp255790
                                    (let ()
                                      (declare (not safe))
                                      (cons _L247029_ _L247028_))))
                               (declare (not safe))
                               (cons __tmp255790 _specializer-body247165_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp255789))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp255788 _stx246357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl247169_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl247167_
                                                       _struct-check-all247134_
                                                       _empty246456_)))
                                                   (_unchecked-specializer-impl247171_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?246459_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl247167_
                                                           _empty246456_
                                                           _struct-check-all247134_))
                                                        '#f))
                                                   (_specializer-impl247173_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl246363_
                                                       _$t247064_
                                                       _methods-bind247087_
                                                       _slots-bind247110_
                                                       _class-check-bind247132_
                                                       _struct-check-bind247156_
                                                       _specializer-impl247169_
                                                       _lifted-specializer-id247062_
                                                       _unchecked-specializer-impl247171_))))
                                              (let ((__tmp255792
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L246432_)))
                                                    (__tmp255791
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id247055_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp255792
                                                 '" => "
                                                 __tmp255791))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def246364_
                                                 _L246432_
                                                 _specializer-id247055_
                                                 _specializer-impl247173_
                                                 _lifted-specializer-id247062_
                                                 _unchecked-specializer-impl247171_))))))
                                     (___kont254319254320_
                                      (lambda () _stx246357_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx254315254316_))
                                     (let ((_e246980247003_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx254315254316_))))
                                       (let ((_tl246978247008_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e246980247003_)))
                                             (_hd246979247006_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e246980247003_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl246978247008_))
                                             (let ((_e246983247011_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl246978247008_))))
                                               (let ((_tl246981247016_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e246983247011_)))
                                                     (_hd246982247014_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e246983247011_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd246982247014_))
                                                     (let ((_e246986247019_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd246982247014_))))
                                                       (let ((_tl246984247024_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e246986247019_)))
                     (_hd246985247022_
                      (let () (declare (not safe)) (##car _e246986247019_))))
                 (___kont254317254318_
                  _tl246981247016_
                  _tl246984247024_
                  _hd246985247022_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont254319254320_))))
                                             (___kont254319254320_))))
                                     (___kont254319254320_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L246431_))
                                 (let* ((_g247179247198_
                                         (lambda (_g247180247195_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g247180247195_))))
                                        (_g247178247549_
                                         (lambda (_g247180247201_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g247180247201_))
                                               (let ((_e247184247203_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g247180247201_))))
                                                 (let ((_hd247183247206_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e247184247203_)))
                                                       (_tl247182247208_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e247184247203_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl247182247208_))
                                                       (let ((_g255749_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl247182247208_ '0))))
                 (begin
                   (let ((_g255750_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g255749_)
                                (##vector-length _g255749_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g255750_ 2)))
                         (error "Context expects 2 values" _g255750_)))
                   (let ((_target247185247211_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g255749_ 0)))
                         (_tl247187247213_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g255749_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl247187247213_))
                         (letrec ((_loop247188247216_
                                   (lambda (_hd247186247219_
                                            _clause247192247221_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd247186247219_))
                                         (let ((_e247189247224_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd247186247219_))))
                                           (let ((_lp-hd247190247227_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e247189247224_)))
                                                 (_lp-tl247191247229_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e247189247224_))))
                                             (let ((__tmp255772
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd247190247227_
                                                            _clause247192247221_))))
                                               (declare (not safe))
                                               (_loop247188247216_
                                                _lp-tl247191247229_
                                                __tmp255772))))
                                         (let ((_clause247193247232_
                                                (reverse _clause247192247221_)))
                                           ((lambda (_L247235_)
                                              (for-each
                                               (lambda (_clause247248_)
                                                 (let* ((___stx254341254342_
                                                         _clause247248_)
                                                        (_g247251247266_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx254341254342_)))))
                                                   (let ((___kont254343254344_
                                                          (lambda (_L247294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L247295_
                           _L247296_)
                    (for-each
                     (lambda (_g247311247313_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g247311247313_
                          _L247296_
                          _method-calls246451_
                          _slot-refs246452_
                          _class-type-check246453_
                          _struct-type-check246454_
                          _struct-type-assert246455_)))
                     _L247294_)))
                 (___kont254345254346_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx254341254342_))
                                                         (let ((_e247258247278_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx254341254342_))))
                   (let ((_tl247256247283_
                          (let ()
                            (declare (not safe))
                            (##cdr _e247258247278_)))
                         (_hd247257247281_
                          (let ()
                            (declare (not safe))
                            (##car _e247258247278_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd247257247281_))
                         (let ((_e247261247286_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd247257247281_))))
                           (let ((_tl247259247291_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e247261247286_)))
                                 (_hd247260247289_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e247261247286_))))
                             (___kont254343254344_
                              _tl247256247283_
                              _tl247259247291_
                              _hd247260247289_)))
                         (___kont254345254346_))))
                 (___kont254345254346_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp255751
                                                      (lambda (_g247318247321_
                                                               _g247319247323_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g247318247321_
                                                                _g247319247323_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp255751
                                                         '()
                                                         _L247235_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?246458_))
                                                  _stx246357_
                                                  (let* ((_specializer-id247332_
                                                          (let* ((_id247326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255752
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L246432_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp255752 '"::specialize")))
                         (_specializer-id247329_
                          (let ((__tmp255753
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx246357_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id247326_ __tmp255753))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id247329_))
                    _specializer-id247329_))
                 (_lifted-specializer-id247339_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?246460_))
                      (let* ((_id247334_
                              (let ((__tmp255754
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L246432_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp255754
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id247336_
                              (let ((__tmp255755
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx246357_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id247334_
                                 __tmp255755))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id247336_))
                        _lifted-specializer-id247336_)
                      '#f))
                 (_$t247341_
                  (let ((__tmp255756 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp255756)))
                 (_methods247343_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls246451_)))
                 (_$methods247347_
                  (map (lambda (_id247345_)
                         (let ((__tmp255757 (gensym _id247345_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp255757)))
                       _methods247343_))
                 (_g255758_
                  (for-each
                   (lambda (_g247348247351_ _g247349247353_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls246451_
                        _g247348247351_
                        _g247349247353_)))
                   _methods247343_
                   _$methods247347_))
                 (_methods-bind247364_
                  (map (lambda (_g247356247359_ _g247357247361_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind246359_
                            _$t247341_
                            _g247356247359_
                            _g247357247361_)))
                       _methods247343_
                       _$methods247347_))
                 (_slots247366_
                  (let () (declare (not safe)) (hash-keys _slot-refs246452_)))
                 (_$slots247370_
                  (map (lambda (_id247368_)
                         (let ((__tmp255759 (gensym _id247368_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp255759)))
                       _slots247366_))
                 (_g255760_
                  (for-each
                   (lambda (_g247371247374_ _g247372247376_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs246452_
                        _g247371247374_
                        _g247372247376_)))
                   _slots247366_
                   _$slots247370_))
                 (_slots-bind247387_
                  (map (lambda (_g247379247382_ _g247380247384_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind246360_
                            _$t247341_
                            _g247379247382_
                            _g247380247384_)))
                       _slots247366_
                       _$slots247370_))
                 (_class-check247389_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check246453_)))
                 (_$class-check247392_
                  (map (lambda (_g255761_)
                         (let ((__tmp255762 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp255762)))
                       _class-check247389_))
                 (_g255763_
                  (for-each
                   (lambda (_g247393247396_ _g247394247398_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check246453_
                        _g247393247396_
                        _g247394247398_)))
                   _class-check247389_
                   _$class-check247392_))
                 (_class-check-bind247409_
                  (map (lambda (_g247401247404_ _g247402247406_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind246361_
                            _$t247341_
                            _g247401247404_
                            _g247402247406_)))
                       _class-check247389_
                       _$class-check247392_))
                 (_struct-check-all247411_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check246454_
                     _struct-type-assert246455_)))
                 (_struct-check247413_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all247411_)))
                 (_$struct-check247416_
                  (map (lambda (_g255764_)
                         (let ((__tmp255765 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp255765)))
                       _struct-check247413_))
                 (_g255766_
                  (for-each
                   (lambda (_g247417247420_ _g247418247422_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all247411_
                        _g247417247420_
                        _g247418247422_)))
                   _struct-check247413_
                   _$struct-check247416_))
                 (_struct-check-bind247433_
                  (map (lambda (_g247425247428_ _g247426247430_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind246362_
                            _$t247341_
                            _g247425247428_
                            _g247426247430_)))
                       _struct-check247413_
                       _$struct-check247416_))
                 (_make-specializer-impl247540_
                  (lambda (_struct-type-check1247435_
                           _struct-type-check2247436_)
                    (let* ((_specializer-clauses247538_
                            (map (lambda (_clause247438_)
                                   (let* ((___stx254361254362_ _clause247438_)
                                          (_g247441247456_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx254361254362_)))))
                                     (let ((___kont254363254364_
                                            (lambda (_L247484_
                                                     _L247485_
                                                     _L247486_)
                                              (let* ((_body247526_
                                                      (map (lambda (_g247521247523_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g247521247523_
                        _L247486_
                        _$t247341_
                        _method-calls246451_
                        _slot-refs246452_
                        _class-type-check246453_
                        _struct-type-check1247435_
                        _struct-type-check2247436_)))
                   _L247484_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp255767
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L247486_
                                                              _L247485_))))
                                                (declare (not safe))
                                                (cons __tmp255767
                                                      _body247526_))))
                                           (___kont254365254366_
                                            (lambda () _clause247438_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx254361254362_))
                                           (let ((_e247448247468_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx254361254362_))))
                                             (let ((_tl247446247473_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e247448247468_)))
                                                   (_hd247447247471_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e247448247468_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd247447247471_))
                                                   (let ((_e247451247476_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd247447247471_))))
                                                     (let ((_tl247449247481_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e247451247476_)))
                                                           (_hd247450247479_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e247451247476_))))
                                                       (___kont254363254364_
                                                        _tl247446247473_
                                                        _tl247449247481_
                                                        _hd247450247479_)))
                                                   (___kont254365254366_))))
                                           (___kont254365254366_)))))
                                 (let ((__tmp255768
                                        (lambda (_g247530247533_
                                                 _g247531247535_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g247530247533_
                                                  _g247531247535_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp255768 '() _L247235_))))
                           (__tmp255769
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses247538_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255769 _stx246357_))))
                 (_specializer-impl247542_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl247540_
                     _struct-check-all247411_
                     _empty246456_)))
                 (_unchecked-specializer-impl247544_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?246459_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl247540_
                         _empty246456_
                         _struct-check-all247411_))
                      '#f))
                 (_specializer-impl247546_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl246363_
                     _$t247341_
                     _methods-bind247364_
                     _slots-bind247387_
                     _class-check-bind247409_
                     _struct-check-bind247433_
                     _specializer-impl247542_
                     _lifted-specializer-id247339_
                     _unchecked-specializer-impl247544_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp255771
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L246432_)))
                                                          (__tmp255770
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id247332_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp255771
                                                       '" => "
                                                       __tmp255770))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def246364_
                                                       _L246432_
                                                       _specializer-id247332_
                                                       _specializer-impl247546_
                                                       _lifted-specializer-id247339_
                                                       _unchecked-specializer-impl247544_)))))
                                            _clause247193247232_))))))
                           (let ()
                             (declare (not safe))
                             (_loop247188247216_ _target247185247211_ '())))
                         (let ()
                           (declare (not safe))
                           (_g247179247198_ _g247180247201_))))))
               (let ()
                 (declare (not safe))
                 (_g247179247198_ _g247180247201_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g247179247198_
                                                  _g247180247201_))))))
                                   (declare (not safe))
                                   (_g247178247549_ _L246431_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L246431_))
                                     (let* ((_g247552247582_
                                             (lambda (_g247553247579_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g247553247579_))))
                                            (_g247551248270_
                                             (lambda (_g247553247585_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g247553247585_))
                                                   (let ((_e247559247587_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g247553247585_))))
                                                     (let ((_hd247558247590_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e247559247587_)))
                                                           (_tl247557247592_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e247559247587_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl247557247592_))
                                                           (let ((_e247562247595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl247557247592_))))
                     (let ((_hd247561247598_
                            (let ()
                              (declare (not safe))
                              (##car _e247562247595_)))
                           (_tl247560247600_
                            (let ()
                              (declare (not safe))
                              (##cdr _e247562247595_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd247561247598_))
                           (let ((_e247565247603_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd247561247598_))))
                             (let ((_hd247564247606_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e247565247603_)))
                                   (_tl247563247608_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e247565247603_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd247564247606_))
                                   (let ((_e247568247611_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd247564247606_))))
                                     (let ((_hd247567247614_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e247568247611_)))
                                           (_tl247566247616_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e247568247611_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd247567247614_))
                                           (let ((_e247571247619_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd247567247614_))))
                                             (let ((_hd247570247622_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e247571247619_)))
                                                   (_tl247569247624_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e247571247619_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl247569247624_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl247566247616_))
                                                       (let ((_e247574247627_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl247566247616_))))
                 (let ((_hd247573247630_
                        (let () (declare (not safe)) (##car _e247574247627_)))
                       (_tl247572247632_
                        (let () (declare (not safe)) (##cdr _e247574247627_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl247572247632_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl247563247608_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl247560247600_))
                               (let ((_e247577247635_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl247560247600_))))
                                 (let ((_hd247576247638_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e247577247635_)))
                                       (_tl247575247640_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e247577247635_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl247575247640_))
                                       ((lambda (_L247643_ _L247644_ _L247645_)
                                          (let* ((_g247668247686_
                                                  (lambda (_g247669247683_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g247669247683_))))
                                                 (_g247667247737_
                                                  (lambda (_g247669247689_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g247669247689_))
                                                        (let ((_e247675247691_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g247669247689_))))
                  (let ((_hd247674247694_
                         (let () (declare (not safe)) (##car _e247675247691_)))
                        (_tl247673247696_
                         (let ()
                           (declare (not safe))
                           (##cdr _e247675247691_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl247673247696_))
                        (let ((_e247678247699_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl247673247696_))))
                          (let ((_hd247677247702_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e247678247699_)))
                                (_tl247676247704_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e247678247699_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd247677247702_))
                                (let ((_e247681247707_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd247677247702_))))
                                  (let ((_hd247680247710_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e247681247707_)))
                                        (_tl247679247712_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e247681247707_))))
                                    ((lambda (_L247715_ _L247716_ _L247717_)
                                       (for-each
                                        (lambda (_g247732247734_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g247732247734_
                                             _L247717_
                                             _method-calls246451_
                                             _slot-refs246452_
                                             _class-type-check246453_
                                             _struct-type-check246454_
                                             _struct-type-assert246455_)))
                                        _L247715_))
                                     _tl247676247704_
                                     _tl247679247712_
                                     _hd247680247710_)))
                                (let ()
                                  (declare (not safe))
                                  (_g247668247686_ _g247669247689_)))))
                        (let ()
                          (declare (not safe))
                          (_g247668247686_ _g247669247689_)))))
                (let ()
                  (declare (not safe))
                  (_g247668247686_ _g247669247689_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g247667247737_ _L247644_))
                                          (let* ((_g247740247759_
                                                  (lambda (_g247741247756_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g247741247756_))))
                                                 (_g247739247878_
                                                  (lambda (_g247741247762_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g247741247762_))
                                                        (let ((_e247745247764_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g247741247762_))))
                  (let ((_hd247744247767_
                         (let () (declare (not safe)) (##car _e247745247764_)))
                        (_tl247743247769_
                         (let ()
                           (declare (not safe))
                           (##cdr _e247745247764_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl247743247769_))
                        (let ((_g255712_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl247743247769_
                                  '0))))
                          (begin
                            (let ((_g255713_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g255712_)
                                         (##vector-length _g255712_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g255713_ 2)))
                                  (error "Context expects 2 values"
                                         _g255713_)))
                            (let ((_target247746247772_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g255712_ 0)))
                                  (_tl247748247774_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g255712_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl247748247774_))
                                  (letrec ((_loop247749247777_
                                            (lambda (_hd247747247780_
                                                     _clause247753247782_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd247747247780_))
                                                  (let ((_e247750247785_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd247747247780_))))
                                                    (let ((_lp-hd247751247788_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e247750247785_)))
                                                          (_lp-tl247752247790_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e247750247785_))))
                                                      (let ((__tmp255715
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd247751247788_ _clause247753247782_))))
                (declare (not safe))
                (_loop247749247777_ _lp-tl247752247790_ __tmp255715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause247754247793_
                                                         (reverse _clause247753247782_)))
                                                    ((lambda (_L247796_)
                                                       (for-each
                                                        (lambda (_clause247809_)
                                                          (let* ((_g247811247826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g247812247823_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g247812247823_))))
                         (_g247810247868_
                          (lambda (_g247812247829_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g247812247829_))
                                (let ((_e247818247831_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g247812247829_))))
                                  (let ((_hd247817247834_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e247818247831_)))
                                        (_tl247816247836_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e247818247831_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd247817247834_))
                                        (let ((_e247821247839_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd247817247834_))))
                                          (let ((_hd247820247842_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e247821247839_)))
                                                (_tl247819247844_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e247821247839_))))
                                            ((lambda (_L247847_
                                                      _L247848_
                                                      _L247849_)
                                               (for-each
                                                (lambda (_g247863247865_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g247863247865_
                                                     _L247849_
                                                     _method-calls246451_
                                                     _slot-refs246452_
                                                     _class-type-check246453_
                                                     _struct-type-check246454_
                                                     _struct-type-assert246455_)))
                                                _L247847_))
                                             _tl247816247836_
                                             _tl247819247844_
                                             _hd247820247842_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g247811247826_ _g247812247829_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g247811247826_ _g247812247829_))))))
                    (declare (not safe))
                    (_g247810247868_ _clause247809_)))
                (let ((__tmp255714
                       (lambda (_g247870247873_ _g247871247875_)
                         (let ()
                           (declare (not safe))
                           (cons _g247870247873_ _g247871247875_)))))
                  (declare (not safe))
                  (foldr1 __tmp255714 '() _L247796_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause247754247793_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop247749247777_
                                       _target247746247772_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g247740247759_ _g247741247762_))))))
                        (let ()
                          (declare (not safe))
                          (_g247740247759_ _g247741247762_)))))
                (let ()
                  (declare (not safe))
                  (_g247740247759_ _g247741247762_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g247739247878_ _L247643_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?246458_))
                                              _stx246357_
                                              (let* ((_specializer-id247887_
                                                      (let* ((_id247881_
                                                              (let ((__tmp255716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L246432_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp255716 '"::specialize")))
                     (_specializer-id247884_
                      (let ((__tmp255717
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx246357_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id247881_ __tmp255717))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id247884_))
                _specializer-id247884_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id247894_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?246460_))
                                                          (let* ((_id247889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255718
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L246432_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp255718
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id247891_
                          (let ((__tmp255719
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx246357_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id247889_ __tmp255719))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id247891_))
                    _lifted-specializer-id247891_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t247896_
                                                      (let ((__tmp255720
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp255720)))
                                                     (_methods247898_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls246451_)))
                                                     (_$methods247902_
                                                      (map (lambda (_id247900_)
                                                             (let ((__tmp255721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id247900_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp255721)))
                   _methods247898_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g255722_
                                                      (for-each
                                                       (lambda (_g247903247906_
                                                                _g247904247908_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls246451_
                                                            _g247903247906_
                                                            _g247904247908_)))
                                                       _methods247898_
                                                       _$methods247902_))
                                                     (_methods-bind247919_
                                                      (map (lambda (_g247911247914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g247912247916_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind246359_
                        _$t247896_
                        _g247911247914_
                        _g247912247916_)))
                   _methods247898_
                   _$methods247902_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots247921_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs246452_)))
                                                     (_$slots247925_
                                                      (map (lambda (_id247923_)
                                                             (let ((__tmp255723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id247923_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp255723)))
                   _slots247921_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g255724_
                                                      (for-each
                                                       (lambda (_g247926247929_
                                                                _g247927247931_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs246452_
                                                            _g247926247929_
                                                            _g247927247931_)))
                                                       _slots247921_
                                                       _$slots247925_))
                                                     (_slots-bind247942_
                                                      (map (lambda (_g247934247937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g247935247939_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind246360_
                        _$t247896_
                        _g247934247937_
                        _g247935247939_)))
                   _slots247921_
                   _$slots247925_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check247944_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check246453_)))
                                                     (_$class-check247947_
                                                      (map (lambda (_g255725_)
                                                             (let ((__tmp255726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp255726)))
                   _class-check247944_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g255727_
                                                      (for-each
                                                       (lambda (_g247948247951_
                                                                _g247949247953_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check246453_
                                                            _g247948247951_
                                                            _g247949247953_)))
                                                       _class-check247944_
                                                       _$class-check247947_))
                                                     (_class-check-bind247964_
                                                      (map (lambda (_g247956247959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g247957247961_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind246361_
                        _$t247896_
                        _g247956247959_
                        _g247957247961_)))
                   _class-check247944_
                   _$class-check247947_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all247966_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check246454_
                                                         _struct-type-assert246455_)))
                                                     (_struct-check247968_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all247966_)))
                                                     (_$struct-check247971_
                                                      (map (lambda (_g255728_)
                                                             (let ((__tmp255729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp255729)))
                   _struct-check247968_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g255730_
                                                      (for-each
                                                       (lambda (_g247972247975_
                                                                _g247973247977_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all247966_
                                                            _g247972247975_
                                                            _g247973247977_)))
                                                       _struct-check247968_
                                                       _$struct-check247971_))
                                                     (_struct-check-bind247988_
                                                      (map (lambda (_g247980247983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g247981247985_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind246362_
                        _$t247896_
                        _g247980247983_
                        _g247981247985_)))
                   _struct-check247968_
                   _$struct-check247971_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr248087_
                                                      (lambda (_struct-type-check1247990_
                                                               _struct-type-check2247991_)
                                                        (let* ((_g247993248011_
                                                                (lambda (_g247994248008_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g247994248008_))))
                       (_g247992248084_
                        (lambda (_g247994248014_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g247994248014_))
                              (let ((_e248000248016_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g247994248014_))))
                                (let ((_hd247999248019_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e248000248016_)))
                                      (_tl247998248021_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e248000248016_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl247998248021_))
                                      (let ((_e248003248024_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl247998248021_))))
                                        (let ((_hd248002248027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e248003248024_)))
                                              (_tl248001248029_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e248003248024_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd248002248027_))
                                              (let ((_e248006248032_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd248002248027_))))
                                                (let ((_hd248005248035_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e248006248032_)))
                                                      (_tl248004248037_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e248006248032_))))
                                                  ((lambda (_L248040_
                                                            _L248041_
                                                            _L248042_)
                                                     (let* ((_body248082_
                                                             (map (lambda (_g248077248079_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g248077248079_
                               _L248042_
                               _$t247896_
                               _method-calls246451_
                               _slot-refs246452_
                               _class-type-check246453_
                               _struct-type-check1247990_
                               _struct-type-check2247991_)))
                          _L248040_))
                    (__tmp255731
                     (let ((__tmp255732
                            (let ((__tmp255733
                                   (let ()
                                     (declare (not safe))
                                     (cons _L248042_ _L248041_))))
                              (declare (not safe))
                              (cons __tmp255733 _body248082_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp255732))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp255731 _L247644_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl248001248029_
                                                   _tl248004248037_
                                                   _hd248005248035_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g247993248011_
                                                 _g247994248014_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g247993248011_ _g247994248014_)))))
                              (let ()
                                (declare (not safe))
                                (_g247993248011_ _g247994248014_))))))
                  (declare (not safe))
                  (_g247992248084_ _L247644_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr248248_
                                                      (lambda (_struct-type-check1248089_
                                                               _struct-type-check2248090_)
                                                        (let* ((_g248092248111_
                                                                (lambda (_g248093248108_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g248093248108_))))
                       (_g248091248245_
                        (lambda (_g248093248114_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g248093248114_))
                              (let ((_e248097248116_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g248093248114_))))
                                (let ((_hd248096248119_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e248097248116_)))
                                      (_tl248095248121_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e248097248116_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl248095248121_))
                                      (let ((_g255734_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl248095248121_
                                                '0))))
                                        (begin
                                          (let ((_g255735_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g255734_)
                                                       (##vector-length
                                                        _g255734_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g255735_ 2)))
                                                (error "Context expects 2 values"
                                                       _g255735_)))
                                          (let ((_target248098248124_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g255734_ 0)))
                                                (_tl248100248126_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g255734_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl248100248126_))
                                                (letrec ((_loop248101248129_
                                                          (lambda (_hd248099248132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause248105248134_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd248099248132_))
                        (let ((_e248102248137_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd248099248132_))))
                          (let ((_lp-hd248103248140_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e248102248137_)))
                                (_lp-tl248104248142_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e248102248137_))))
                            (let ((__tmp255739
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd248103248140_
                                           _clause248105248134_))))
                              (declare (not safe))
                              (_loop248101248129_
                               _lp-tl248104248142_
                               __tmp255739))))
                        (let ((_clause248106248145_
                               (reverse _clause248105248134_)))
                          ((lambda (_L248148_)
                             (let* ((_clauses248243_
                                     (map (lambda (_clause248163_)
                                            (let* ((___stx254381254382_
                                                    _clause248163_)
                                                   (_g248166248181_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx254381254382_)))))
                                              (let ((___kont254383254384_
                                                     (lambda (_L248209_
                                                              _L248210_
                                                              _L248211_)
                                                       (let* ((_body248231_
                                                               (map (lambda (_g248226248228_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g248226248228_
                                 _L248211_
                                 _$t247896_
                                 _method-calls246451_
                                 _slot-refs246452_
                                 _class-type-check246453_
                                 _struct-type-check1248089_
                                 _struct-type-check2248090_)))
                            _L248209_))
                      (__tmp255736
                       (let ()
                         (declare (not safe))
                         (cons _L248211_ _L248210_))))
                 (declare (not safe))
                 (cons __tmp255736 _body248231_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont254385254386_
                                                     (lambda ()
                                                       _clause248163_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx254381254382_))
                                                    (let ((_e248173248193_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx254381254382_))))
                                                      (let ((_tl248171248198_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e248173248193_)))
                    (_hd248172248196_
                     (let () (declare (not safe)) (##car _e248173248193_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd248172248196_))
                    (let ((_e248176248201_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd248172248196_))))
                      (let ((_tl248174248206_
                             (let ()
                               (declare (not safe))
                               (##cdr _e248176248201_)))
                            (_hd248175248204_
                             (let ()
                               (declare (not safe))
                               (##car _e248176248201_))))
                        (___kont254383254384_
                         _tl248171248198_
                         _tl248174248206_
                         _hd248175248204_)))
                    (___kont254385254386_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont254385254386_)))))
                                          (let ((__tmp255737
                                                 (lambda (_g248235248238_
                                                          _g248236248240_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g248235248238_
                                                           _g248236248240_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp255737
                                                    '()
                                                    _L248148_))))
                                    (__tmp255738
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses248243_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp255738 _L247643_)))
                           _clause248106248145_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop248101248129_
                                                     _target248098248124_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g248092248111_
                                                   _g248093248114_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g248092248111_ _g248093248114_)))))
                              (let ()
                                (declare (not safe))
                                (_g248092248111_ _g248093248114_))))))
                  (declare (not safe))
                  (_g248091248245_ _L247643_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl248253_
                                                      (lambda (_specializer-lambda-expr248250_
                                                               _specializer-case-lambda-expr248251_)
                                                        (let ((__tmp255740
                                                               (let ((__tmp255741
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp255743
                                     (let ((__tmp255744
                                            (let ((__tmp255746
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L247645_ '())))
                                                  (__tmp255745
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr248250_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp255746 __tmp255745))))
                                       (declare (not safe))
                                       (cons __tmp255744 '())))
                                    (__tmp255742
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr248251_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp255743 __tmp255742))))
                         (declare (not safe))
                         (cons '%#let-values __tmp255741))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp255740 _stx246357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr248255_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr248087_
                                                         _struct-check-all247966_
                                                         _empty246456_)))
                                                     (_specializer-case-lambda-expr248257_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr248248_
                                                         _struct-check-all247966_
                                                         _empty246456_)))
                                                     (_specializer-impl248259_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl248253_
                                                         _specializer-lambda-expr248255_
                                                         _specializer-case-lambda-expr248257_)))
                                                     (_unchecked-specializer-lambda-expr248261_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?246459_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr248087_
                                                             _empty246456_
                                                             _struct-check-all247966_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr248263_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?246459_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr248248_
                                                             _empty246456_
                                                             _struct-check-all247966_))
                                                          '#f))
                                                     (_unchecked-specializer-impl248265_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?246459_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl248253_
                                                             _unchecked-specializer-lambda-expr248261_
                                                             _unchecked-specializer-case-lambda-expr248263_))
                                                          '#f))
                                                     (_specializer-impl248267_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl246363_
                                                         _$t247896_
                                                         _methods-bind247919_
                                                         _slots-bind247942_
                                                         _class-check-bind247964_
                                                         _struct-check-bind247988_
                                                         _specializer-impl248259_
                                                         _lifted-specializer-id247894_
                                                         _unchecked-specializer-impl248265_))))
                                                (let ((__tmp255748
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L246432_)))
                                                      (__tmp255747
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id247887_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp255748
                                                   '" => "
                                                   __tmp255747))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def246364_
                                                   _L246432_
                                                   _specializer-id247887_
                                                   _specializer-impl248267_
                                                   _lifted-specializer-id247894_
                                                   _unchecked-specializer-impl248265_)))))
                                        _hd247576247638_
                                        _hd247573247630_
                                        _hd247570247622_)
                                       (let ()
                                         (declare (not safe))
                                         (_g247552247582_ _g247553247585_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g247552247582_ _g247553247585_)))
                           (let ()
                             (declare (not safe))
                             (_g247552247582_ _g247553247585_)))
                       (let ()
                         (declare (not safe))
                         (_g247552247582_ _g247553247585_)))))
               (let () (declare (not safe)) (_g247552247582_ _g247553247585_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g247552247582_
                                                      _g247553247585_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g247552247582_
                                              _g247553247585_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g247552247582_ _g247553247585_)))))
                           (let ()
                             (declare (not safe))
                             (_g247552247582_ _g247553247585_)))))
                   (let ()
                     (declare (not safe))
                     (_g247552247582_ _g247553247585_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g247552247582_
                                                      _g247553247585_))))))
                                       (declare (not safe))
                                       (_g247551248270_ _L246431_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L246431_))
                                         (let* ((_g248273248326_
                                                 (lambda (_g248274248323_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g248274248323_))))
                                                (_g248272249598_
                                                 (lambda (_g248274248329_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g248274248329_))
                                                       (let ((_e248282248331_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g248274248329_))))
                 (let ((_hd248281248334_
                        (let () (declare (not safe)) (##car _e248282248331_)))
                       (_tl248280248336_
                        (let () (declare (not safe)) (##cdr _e248282248331_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd248281248334_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd248281248334_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl248280248336_))
                               (let ((_e248285248339_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl248280248336_))))
                                 (let ((_hd248284248342_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e248285248339_)))
                                       (_tl248283248344_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e248285248339_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd248284248342_))
                                       (let ((_e248288248347_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd248284248342_))))
                                         (let ((_hd248287248350_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e248288248347_)))
                                               (_tl248286248352_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e248288248347_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd248287248350_))
                                               (let ((_e248291248355_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd248287248350_))))
                                                 (let ((_hd248290248358_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e248291248355_)))
                                                       (_tl248289248360_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e248291248355_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd248290248358_))
                                                       (let ((_e248294248363_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd248290248358_))))
                 (let ((_hd248293248366_
                        (let () (declare (not safe)) (##car _e248294248363_)))
                       (_tl248292248368_
                        (let () (declare (not safe)) (##cdr _e248294248363_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl248292248368_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl248289248360_))
                           (let ((_e248297248371_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl248289248360_))))
                             (let ((_hd248296248374_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e248297248371_)))
                                   (_tl248295248376_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e248297248371_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd248296248374_))
                                   (let ((_e248300248379_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd248296248374_))))
                                     (let ((_hd248299248382_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e248300248379_)))
                                           (_tl248298248384_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e248300248379_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd248299248382_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd248299248382_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl248298248384_))
                                                   (let ((_e248303248387_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl248298248384_))))
                                                     (let ((_hd248302248390_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e248303248387_)))
                                                           (_tl248301248392_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e248303248387_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd248302248390_))
                                                           (let ((_e248306248395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd248302248390_))))
                     (let ((_hd248305248398_
                            (let ()
                              (declare (not safe))
                              (##car _e248306248395_)))
                           (_tl248304248400_
                            (let ()
                              (declare (not safe))
                              (##cdr _e248306248395_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd248305248398_))
                           (let ((_e248309248403_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd248305248398_))))
                             (let ((_hd248308248406_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e248309248403_)))
                                   (_tl248307248408_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e248309248403_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd248308248406_))
                                   (let ((_e248312248411_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd248308248406_))))
                                     (let ((_hd248311248414_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e248312248411_)))
                                           (_tl248310248416_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e248312248411_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl248310248416_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl248307248408_))
                                               (let ((_e248315248419_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl248307248408_))))
                                                 (let ((_hd248314248422_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e248315248419_)))
                                                       (_tl248313248424_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e248315248419_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl248313248424_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl248304248400_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl248301248392_))
                       (let ((_e248318248427_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl248301248392_))))
                         (let ((_hd248317248430_
                                (let ()
                                  (declare (not safe))
                                  (##car _e248318248427_)))
                               (_tl248316248432_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e248318248427_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl248316248432_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl248295248376_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl248286248352_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl248283248344_))
                                           (let ((_e248321248435_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl248283248344_))))
                                             (let ((_hd248320248438_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e248321248435_)))
                                                   (_tl248319248440_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e248321248435_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl248319248440_))
                                                   ((lambda (_L248443_
                                                             _L248444_
                                                             _L248445_
                                                             _L248446_
                                                             _L248447_)
                                                      (let* ((_g248486248548_
                                                              (lambda (_g248487248545_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g248487248545_))))
                     (_g248485249595_
                      (lambda (_g248487248551_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g248487248551_))
                            (let ((_e248495248553_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g248487248551_))))
                              (let ((_hd248494248556_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e248495248553_)))
                                    (_tl248493248558_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e248495248553_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd248494248556_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd248494248556_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl248493248558_))
                                            (let ((_e248498248561_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl248493248558_))))
                                              (let ((_hd248497248564_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e248498248561_)))
                                                    (_tl248496248566_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e248498248561_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl248496248566_))
                                                    (let ((_e248501248569_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl248496248566_))))
                                                      (let ((_hd248500248572_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e248501248569_)))
                    (_tl248499248574_
                     (let () (declare (not safe)) (##cdr _e248501248569_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd248500248572_))
                    (let ((_e248504248577_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd248500248572_))))
                      (let ((_hd248503248580_
                             (let ()
                               (declare (not safe))
                               (##car _e248504248577_)))
                            (_tl248502248582_
                             (let ()
                               (declare (not safe))
                               (##cdr _e248504248577_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd248503248580_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd248503248580_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl248502248582_))
                                    (let ((_e248507248585_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl248502248582_))))
                                      (let ((_hd248506248588_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e248507248585_)))
                                            (_tl248505248590_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e248507248585_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd248506248588_))
                                            (let ((_e248510248593_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd248506248588_))))
                                              (let ((_hd248509248596_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e248510248593_)))
                                                    (_tl248508248598_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e248510248593_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd248509248596_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd248509248596_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl248508248598_))
                                                            (let ((_e248513248601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl248508248598_))))
                      (let ((_hd248512248604_
                             (let ()
                               (declare (not safe))
                               (##car _e248513248601_)))
                            (_tl248511248606_
                             (let ()
                               (declare (not safe))
                               (##cdr _e248513248601_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl248511248606_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl248505248590_))
                                (let ((_e248516248609_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl248505248590_))))
                                  (let ((_hd248515248612_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e248516248609_)))
                                        (_tl248514248614_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e248516248609_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd248515248612_))
                                        (let ((_e248519248617_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd248515248612_))))
                                          (let ((_hd248518248620_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e248519248617_)))
                                                (_tl248517248622_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e248519248617_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd248518248620_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd248518248620_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl248517248622_))
                                                        (let ((_e248522248625_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl248517248622_))))
                  (let ((_hd248521248628_
                         (let () (declare (not safe)) (##car _e248522248625_)))
                        (_tl248520248630_
                         (let ()
                           (declare (not safe))
                           (##cdr _e248522248625_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl248520248630_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl248514248614_))
                            (let ((_e248525248633_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl248514248614_))))
                              (let ((_hd248524248636_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e248525248633_)))
                                    (_tl248523248638_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e248525248633_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd248524248636_))
                                    (let ((_e248528248641_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd248524248636_))))
                                      (let ((_hd248527248644_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e248528248641_)))
                                            (_tl248526248646_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e248528248641_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd248527248644_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd248527248644_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl248526248646_))
                                                    (let ((_e248531248649_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl248526248646_))))
                                                      (let ((_hd248530248652_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e248531248649_)))
                    (_tl248529248654_
                     (let () (declare (not safe)) (##cdr _e248531248649_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl248529248654_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl248523248638_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl248523248638_))
                                  '1)
                            (let ((_g255624_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl248523248638_
                                      '1))))
                              (begin
                                (let ((_g255625_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g255624_)
                                             (##vector-length _g255624_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g255625_ 2)))
                                      (error "Context expects 2 values"
                                             _g255625_)))
                                (let ((_target248532248657_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g255624_ 0)))
                                      (_tl248534248659_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g255624_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl248534248659_))
                                      (let ((_e248543248662_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl248534248659_))))
                                        (let ((_hd248542248665_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e248543248662_)))
                                              (_tl248541248667_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e248543248662_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl248541248667_))
                                              (letrec ((_loop248535248670_
                                                        (lambda (_hd248533248673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref248539248675_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd248533248673_))
                      (let ((_e248536248678_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd248533248673_))))
                        (let ((_lp-hd248537248681_
                               (let ()
                                 (declare (not safe))
                                 (##car _e248536248678_)))
                              (_lp-tl248538248683_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e248536248678_))))
                          (let ((__tmp255711
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd248537248681_
                                         _kw-ref248539248675_))))
                            (declare (not safe))
                            (_loop248535248670_
                             _lp-tl248538248683_
                             __tmp255711))))
                      (let ((_kw-ref248540248686_
                             (reverse _kw-ref248539248675_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl248499248574_))
                            ((lambda (_L248689_
                                      _L248690_
                                      _L248691_
                                      _L248692_
                                      _L248693_)
                               (let* ((_kw-count248744_
                                       (length (let ((__tmp255626
                                                      (lambda (_g248736248739_
                                                               _g248737248741_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g248736248739_
                                                                _g248737248741_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp255626
                                                         '()
                                                         _L248690_))))
                                      (_self-index248746_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count248744_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L248445_))
                                     (let* ((_g248749248763_
                                             (lambda (_g248750248760_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g248750248760_))))
                                            (_g248748248934_
                                             (lambda (_g248750248766_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g248750248766_))
                                                   (let ((_e248755248768_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g248750248766_))))
                                                     (let ((_hd248754248771_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e248755248768_)))
                                                           (_tl248753248773_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e248755248768_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl248753248773_))
                                                           (let ((_e248758248776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl248753248773_))))
                     (let ((_hd248757248779_
                            (let ()
                              (declare (not safe))
                              (##car _e248758248776_)))
                           (_tl248756248781_
                            (let ()
                              (declare (not safe))
                              (##cdr _e248758248776_))))
                       ((lambda (_L248784_ _L248785_)
                          (let ((_self248801_
                                 (list-ref _L248785_ _self-index248746_)))
                            (for-each
                             (lambda (_g248802248804_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g248802248804_
                                  _self248801_
                                  _method-calls246451_
                                  _slot-refs246452_
                                  _class-type-check246453_
                                  _struct-type-check246454_
                                  _struct-type-assert246455_)))
                             _L248784_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?246458_))
                                _stx246357_
                                (let* ((_specializer-id248813_
                                        (let* ((_id248807_
                                                (let ((__tmp255677
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L246432_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp255677
                                                   '"::specialize")))
                                               (_specializer-id248810_
                                                (let ((__tmp255678
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx246357_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id248807_
                                                   __tmp255678))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id248810_))
                                          _specializer-id248810_))
                                       (_lifted-specializer-id248820_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?246460_))
                                            (let* ((_id248815_
                                                    (let ((__tmp255679
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L246432_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp255679
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id248817_
                                                    (let ((__tmp255680
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx246357_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id248815_
                                                       __tmp255680))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id248817_))
                                              _lifted-specializer-id248817_)
                                            '#f))
                                       (_$t248822_
                                        (let ((__tmp255681 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp255681)))
                                       (_methods248824_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls246451_)))
                                       (_$methods248828_
                                        (map (lambda (_id248826_)
                                               (let ((__tmp255682
                                                      (gensym _id248826_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp255682)))
                                             _methods248824_))
                                       (_g255683_
                                        (for-each
                                         (lambda (_g248829248832_
                                                  _g248830248834_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls246451_
                                              _g248829248832_
                                              _g248830248834_)))
                                         _methods248824_
                                         _$methods248828_))
                                       (_methods-bind248845_
                                        (map (lambda (_g248837248840_
                                                      _g248838248842_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind246359_
                                                  _$t248822_
                                                  _g248837248840_
                                                  _g248838248842_)))
                                             _methods248824_
                                             _$methods248828_))
                                       (_slots248847_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs246452_)))
                                       (_$slots248851_
                                        (map (lambda (_id248849_)
                                               (let ((__tmp255684
                                                      (gensym _id248849_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp255684)))
                                             _slots248847_))
                                       (_g255685_
                                        (for-each
                                         (lambda (_g248852248855_
                                                  _g248853248857_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs246452_
                                              _g248852248855_
                                              _g248853248857_)))
                                         _slots248847_
                                         _$slots248851_))
                                       (_slots-bind248868_
                                        (map (lambda (_g248860248863_
                                                      _g248861248865_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind246360_
                                                  _$t248822_
                                                  _g248860248863_
                                                  _g248861248865_)))
                                             _slots248847_
                                             _$slots248851_))
                                       (_class-check248870_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check246453_)))
                                       (_$class-check248873_
                                        (map (lambda (_g255686_)
                                               (let ((__tmp255687
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp255687)))
                                             _class-check248870_))
                                       (_g255688_
                                        (for-each
                                         (lambda (_g248874248877_
                                                  _g248875248879_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check246453_
                                              _g248874248877_
                                              _g248875248879_)))
                                         _class-check248870_
                                         _$class-check248873_))
                                       (_class-check-bind248890_
                                        (map (lambda (_g248882248885_
                                                      _g248883248887_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind246361_
                                                  _$t248822_
                                                  _g248882248885_
                                                  _g248883248887_)))
                                             _class-check248870_
                                             _$class-check248873_))
                                       (_struct-check-all248892_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check246454_
                                           _struct-type-assert246455_)))
                                       (_struct-check248894_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all248892_)))
                                       (_$struct-check248897_
                                        (map (lambda (_g255689_)
                                               (let ((__tmp255690
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp255690)))
                                             _struct-check248894_))
                                       (_g255691_
                                        (for-each
                                         (lambda (_g248898248901_
                                                  _g248899248903_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all248892_
                                              _g248898248901_
                                              _g248899248903_)))
                                         _struct-check248894_
                                         _$struct-check248897_))
                                       (_struct-check-bind248914_
                                        (map (lambda (_g248906248909_
                                                      _g248907248911_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind246362_
                                                  _$t248822_
                                                  _g248906248909_
                                                  _g248907248911_)))
                                             _struct-check248894_
                                             _$struct-check248897_))
                                       (_make-specializer-impl248925_
                                        (lambda (_struct-type-check1248916_
                                                 _struct-type-check2248917_)
                                          (let* ((_specializer-body248923_
                                                  (map (lambda (_g248918248920_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g248918248920_
                                                            _self248801_
                                                            _$t248822_
                                                            _method-calls246451_
                                                            _slot-refs246452_
                                                            _class-type-check246453_
                                                            _struct-type-check1248916_
                                                            _struct-type-check2248917_)))
                                                       _L248784_))
                                                 (__tmp255692
                                                  (let ((__tmp255693
                                                         (let ((__tmp255695
                                                                (let ((__tmp255696
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255708
                                      (let ()
                                        (declare (not safe))
                                        (cons _L248447_ '())))
                                     (__tmp255697
                                      (let ((__tmp255698
                                             (let ((__tmp255699
                                                    (let ((__tmp255701
                                                           (let ((__tmp255702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255707
                                 (let ()
                                   (declare (not safe))
                                   (cons _L248446_ '())))
                                (__tmp255703
                                 (let ((__tmp255704
                                        (let ((__tmp255705
                                               (let ((__tmp255706
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L248785_
                                                              _specializer-body248923_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp255706))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp255705
                                           _L248445_))))
                                   (declare (not safe))
                                   (cons __tmp255704 '()))))
                            (declare (not safe))
                            (cons __tmp255707 __tmp255703))))
                     (declare (not safe))
                     (cons __tmp255702 '())))
                  (__tmp255700
                   (let () (declare (not safe)) (cons _L248444_ '()))))
              (declare (not safe))
              (cons __tmp255701 __tmp255700))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp255699))))
                                        (declare (not safe))
                                        (cons __tmp255698 '()))))
                                 (declare (not safe))
                                 (cons __tmp255708 __tmp255697))))
                          (declare (not safe))
                          (cons __tmp255696 '())))
                       (__tmp255694
                        (let () (declare (not safe)) (cons _L248443_ '()))))
                   (declare (not safe))
                   (cons __tmp255695 __tmp255694))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp255693))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp255692
                                             _stx246357_))))
                                       (_specializer-impl248927_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl248925_
                                           _struct-check-all248892_
                                           _empty246456_)))
                                       (_unchecked-specializer-impl248929_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?246459_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl248925_
                                               _empty246456_
                                               _struct-check-all248892_))
                                            '#f))
                                       (_specializer-impl248931_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl246363_
                                           _$t248822_
                                           _methods-bind248845_
                                           _slots-bind248868_
                                           _class-check-bind248890_
                                           _struct-check-bind248914_
                                           _specializer-impl248927_
                                           _lifted-specializer-id248820_
                                           _unchecked-specializer-impl248929_))))
                                  (let ((__tmp255710
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L246432_)))
                                        (__tmp255709
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id248813_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp255710
                                     '" => "
                                     __tmp255709))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def246364_
                                     _L246432_
                                     _specializer-id248813_
                                     _specializer-impl248931_
                                     _lifted-specializer-id248820_
                                     _unchecked-specializer-impl248929_))))))
                        _tl248756248781_
                        _hd248757248779_)))
                   (let ()
                     (declare (not safe))
                     (_g248749248763_ _g248750248766_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248749248763_
                                                      _g248750248766_))))))
                                       (declare (not safe))
                                       (_g248748248934_ _L248445_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L248445_))
                                         (let* ((_g248937248967_
                                                 (lambda (_g248938248964_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g248938248964_))))
                                                (_g248936249592_
                                                 (lambda (_g248938248970_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g248938248970_))
                                                       (let ((_e248944248972_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g248938248970_))))
                 (let ((_hd248943248975_
                        (let () (declare (not safe)) (##car _e248944248972_)))
                       (_tl248942248977_
                        (let () (declare (not safe)) (##cdr _e248944248972_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl248942248977_))
                       (let ((_e248947248980_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl248942248977_))))
                         (let ((_hd248946248983_
                                (let ()
                                  (declare (not safe))
                                  (##car _e248947248980_)))
                               (_tl248945248985_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e248947248980_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd248946248983_))
                               (let ((_e248950248988_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd248946248983_))))
                                 (let ((_hd248949248991_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e248950248988_)))
                                       (_tl248948248993_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e248950248988_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd248949248991_))
                                       (let ((_e248953248996_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd248949248991_))))
                                         (let ((_hd248952248999_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e248953248996_)))
                                               (_tl248951249001_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e248953248996_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd248952248999_))
                                               (let ((_e248956249004_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd248952248999_))))
                                                 (let ((_hd248955249007_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e248956249004_)))
                                                       (_tl248954249009_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e248956249004_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl248954249009_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl248951249001_))
                                                           (let ((_e248959249012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl248951249001_))))
                     (let ((_hd248958249015_
                            (let ()
                              (declare (not safe))
                              (##car _e248959249012_)))
                           (_tl248957249017_
                            (let ()
                              (declare (not safe))
                              (##cdr _e248959249012_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl248957249017_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl248948248993_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl248945248985_))
                                   (let ((_e248962249020_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl248945248985_))))
                                     (let ((_hd248961249023_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e248962249020_)))
                                           (_tl248960249025_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e248962249020_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl248960249025_))
                                           ((lambda (_L249028_
                                                     _L249029_
                                                     _L249030_)
                                              (let* ((_g249053249067_
                                                      (lambda (_g249054249064_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g249054249064_))))
                                                     (_g249052249108_
                                                      (lambda (_g249054249070_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g249054249070_))
                                                            (let ((_e249059249072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g249054249070_))))
                      (let ((_hd249058249075_
                             (let ()
                               (declare (not safe))
                               (##car _e249059249072_)))
                            (_tl249057249077_
                             (let ()
                               (declare (not safe))
                               (##cdr _e249059249072_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl249057249077_))
                            (let ((_e249062249080_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl249057249077_))))
                              (let ((_hd249061249083_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249062249080_)))
                                    (_tl249060249085_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249062249080_))))
                                ((lambda (_L249088_ _L249089_)
                                   (let ((_self249102_
                                          (list-ref
                                           _L249089_
                                           _self-index248746_)))
                                     (for-each
                                      (lambda (_g249103249105_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g249103249105_
                                           _self249102_
                                           _method-calls246451_
                                           _slot-refs246452_
                                           _class-type-check246453_
                                           _struct-type-check246454_
                                           _struct-type-assert246455_)))
                                      _L249088_)))
                                 _tl249060249085_
                                 _hd249061249083_)))
                            (let ()
                              (declare (not safe))
                              (_g249053249067_ _g249054249070_)))))
                    (let ()
                      (declare (not safe))
                      (_g249053249067_ _g249054249070_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g249052249108_ _L249029_))
                                              (let* ((_g249111249130_
                                                      (lambda (_g249112249127_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g249112249127_))))
                                                     (_g249110249235_
                                                      (lambda (_g249112249133_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g249112249133_))
                                                            (let ((_e249116249135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g249112249133_))))
                      (let ((_hd249115249138_
                             (let ()
                               (declare (not safe))
                               (##car _e249116249135_)))
                            (_tl249114249140_
                             (let ()
                               (declare (not safe))
                               (##cdr _e249116249135_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl249114249140_))
                            (let ((_g255627_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl249114249140_
                                      '0))))
                              (begin
                                (let ((_g255628_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g255627_)
                                             (##vector-length _g255627_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g255628_ 2)))
                                      (error "Context expects 2 values"
                                             _g255628_)))
                                (let ((_target249117249143_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g255627_ 0)))
                                      (_tl249119249145_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g255627_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl249119249145_))
                                      (letrec ((_loop249120249148_
                                                (lambda (_hd249118249151_
                                                         _clause249124249153_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd249118249151_))
                                                      (let ((_e249121249156_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd249118249151_))))
                (let ((_lp-hd249122249159_
                       (let () (declare (not safe)) (##car _e249121249156_)))
                      (_lp-tl249123249161_
                       (let () (declare (not safe)) (##cdr _e249121249156_))))
                  (let ((__tmp255630
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd249122249159_ _clause249124249153_))))
                    (declare (not safe))
                    (_loop249120249148_ _lp-tl249123249161_ __tmp255630))))
              (let ((_clause249125249164_ (reverse _clause249124249153_)))
                ((lambda (_L249167_)
                   (for-each
                    (lambda (_clause249180_)
                      (let* ((_g249182249193_
                              (lambda (_g249183249190_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g249183249190_))))
                             (_g249181249225_
                              (lambda (_g249183249196_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g249183249196_))
                                    (let ((_e249188249198_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g249183249196_))))
                                      (let ((_hd249187249201_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e249188249198_)))
                                            (_tl249186249203_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e249188249198_))))
                                        ((lambda (_L249206_ _L249207_)
                                           (let ((_self249219_
                                                  (list-ref
                                                   _L249207_
                                                   _self-index248746_)))
                                             (for-each
                                              (lambda (_g249220249222_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g249220249222_
                                                   _self249219_
                                                   _method-calls246451_
                                                   _slot-refs246452_
                                                   _class-type-check246453_
                                                   _struct-type-check246454_
                                                   _struct-type-assert246455_)))
                                              _L249206_)))
                                         _tl249186249203_
                                         _hd249187249201_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g249182249193_ _g249183249196_))))))
                        (declare (not safe))
                        (_g249181249225_ _clause249180_)))
                    (let ((__tmp255629
                           (lambda (_g249227249230_ _g249228249232_)
                             (let ()
                               (declare (not safe))
                               (cons _g249227249230_ _g249228249232_)))))
                      (declare (not safe))
                      (foldr1 __tmp255629 '() _L249167_))))
                 _clause249125249164_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop249120249148_
                                           _target249117249143_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g249111249130_ _g249112249133_))))))
                            (let ()
                              (declare (not safe))
                              (_g249111249130_ _g249112249133_)))))
                    (let ()
                      (declare (not safe))
                      (_g249111249130_ _g249112249133_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g249110249235_ _L249028_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?246458_))
                                                  _stx246357_
                                                  (let* ((_specializer-id249244_
                                                          (let* ((_id249238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255631
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L246432_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp255631 '"::specialize")))
                         (_specializer-id249241_
                          (let ((__tmp255632
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx246357_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id249238_ __tmp255632))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id249241_))
                    _specializer-id249241_))
                 (_lifted-specializer-id249251_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?246460_))
                      (let* ((_id249246_
                              (let ((__tmp255633
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L246432_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp255633
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id249248_
                              (let ((__tmp255634
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx246357_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id249246_
                                 __tmp255634))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id249248_))
                        _lifted-specializer-id249248_)
                      '#f))
                 (_$t249253_
                  (let ((__tmp255635 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp255635)))
                 (_methods249255_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls246451_)))
                 (_$methods249259_
                  (map (lambda (_id249257_)
                         (let ((__tmp255636 (gensym _id249257_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp255636)))
                       _methods249255_))
                 (_g255637_
                  (for-each
                   (lambda (_g249260249263_ _g249261249265_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls246451_
                        _g249260249263_
                        _g249261249265_)))
                   _methods249255_
                   _$methods249259_))
                 (_methods-bind249276_
                  (map (lambda (_g249268249271_ _g249269249273_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind246359_
                            _$t249253_
                            _g249268249271_
                            _g249269249273_)))
                       _methods249255_
                       _$methods249259_))
                 (_slots249278_
                  (let () (declare (not safe)) (hash-keys _slot-refs246452_)))
                 (_$slots249282_
                  (map (lambda (_id249280_)
                         (let ((__tmp255638 (gensym _id249280_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp255638)))
                       _slots249278_))
                 (_g255639_
                  (for-each
                   (lambda (_g249283249286_ _g249284249288_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs246452_
                        _g249283249286_
                        _g249284249288_)))
                   _slots249278_
                   _$slots249282_))
                 (_slots-bind249299_
                  (map (lambda (_g249291249294_ _g249292249296_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind246360_
                            _$t249253_
                            _g249291249294_
                            _g249292249296_)))
                       _slots249278_
                       _$slots249282_))
                 (_class-check249301_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check246453_)))
                 (_$class-check249304_
                  (map (lambda (_g255640_)
                         (let ((__tmp255641 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp255641)))
                       _class-check249301_))
                 (_g255642_
                  (for-each
                   (lambda (_g249305249308_ _g249306249310_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check246453_
                        _g249305249308_
                        _g249306249310_)))
                   _class-check249301_
                   _$class-check249304_))
                 (_class-check-bind249321_
                  (map (lambda (_g249313249316_ _g249314249318_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind246361_
                            _$t249253_
                            _g249313249316_
                            _g249314249318_)))
                       _class-check249301_
                       _$class-check249304_))
                 (_struct-check-all249323_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check246454_
                     _struct-type-assert246455_)))
                 (_struct-check249325_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all249323_)))
                 (_$struct-check249328_
                  (map (lambda (_g255643_)
                         (let ((__tmp255644 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp255644)))
                       _struct-check249325_))
                 (_g255645_
                  (for-each
                   (lambda (_g249329249332_ _g249330249334_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all249323_
                        _g249329249332_
                        _g249330249334_)))
                   _struct-check249325_
                   _$struct-check249328_))
                 (_struct-check-bind249345_
                  (map (lambda (_g249337249340_ _g249338249342_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind246362_
                            _$t249253_
                            _g249337249340_
                            _g249338249342_)))
                       _struct-check249325_
                       _$struct-check249328_))
                 (_make-specializer-lambda-expr249431_
                  (lambda (_struct-type-check1249347_
                           _struct-type-check2249348_)
                    (let* ((_g249350249364_
                            (lambda (_g249351249361_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g249351249361_))))
                           (_g249349249428_
                            (lambda (_g249351249367_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g249351249367_))
                                  (let ((_e249356249369_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g249351249367_))))
                                    (let ((_hd249355249372_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e249356249369_)))
                                          (_tl249354249374_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e249356249369_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl249354249374_))
                                          (let ((_e249359249377_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl249354249374_))))
                                            (let ((_hd249358249380_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e249359249377_)))
                                                  (_tl249357249382_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e249359249377_))))
                                              ((lambda (_L249385_ _L249386_)
                                                 (let* ((_self249419_
                                                         (list-ref
                                                          _L249386_
                                                          _self-index248746_))
                                                        (_body249425_
                                                         (map (lambda (_g249420249422_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g249420249422_
                           _self249419_
                           _$t249253_
                           _method-calls246451_
                           _slot-refs246452_
                           _class-type-check246453_
                           _struct-type-check1249347_
                           _struct-type-check2249348_)))
                      _L249385_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp255646
                                                          (let ((__tmp255647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L249386_ _body249425_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp255647))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp255646
                                                      _L249029_))))
                                               _tl249357249382_
                                               _hd249358249380_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g249350249364_
                                             _g249351249367_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g249350249364_ _g249351249367_))))))
                      (declare (not safe))
                      (_g249349249428_ _L249029_))))
                 (_make-specializer-case-lambda-expr249570_
                  (lambda (_struct-type-check1249433_
                           _struct-type-check2249434_)
                    (let* ((_g249436249455_
                            (lambda (_g249437249452_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g249437249452_))))
                           (_g249435249567_
                            (lambda (_g249437249458_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g249437249458_))
                                  (let ((_e249441249460_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g249437249458_))))
                                    (let ((_hd249440249463_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e249441249460_)))
                                          (_tl249439249465_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e249441249460_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl249439249465_))
                                          (let ((_g255648_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl249439249465_
                                                    '0))))
                                            (begin
                                              (let ((_g255649_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g255648_)
                                                           (##vector-length
                                                            _g255648_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g255649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g255649_)))
                                              (let ((_target249442249468_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g255648_
                                                        0)))
                                                    (_tl249444249470_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g255648_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl249444249470_))
                                                    (letrec ((_loop249445249473_
                                                              (lambda (_hd249443249476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause249449249478_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd249443249476_))
                            (let ((_e249446249481_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd249443249476_))))
                              (let ((_lp-hd249447249484_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249446249481_)))
                                    (_lp-tl249448249486_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249446249481_))))
                                (let ((__tmp255652
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd249447249484_
                                               _clause249449249478_))))
                                  (declare (not safe))
                                  (_loop249445249473_
                                   _lp-tl249448249486_
                                   __tmp255652))))
                            (let ((_clause249450249489_
                                   (reverse _clause249449249478_)))
                              ((lambda (_L249492_)
                                 (let* ((_clauses249565_
                                         (map (lambda (_clause249507_)
                                                (let* ((_g249509249520_
                                                        (lambda (_g249510249517_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g249510249517_))))
                                                       (_g249508249555_
                                                        (lambda (_g249510249523_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g249510249523_))
                      (let ((_e249515249525_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g249510249523_))))
                        (let ((_hd249514249528_
                               (let ()
                                 (declare (not safe))
                                 (##car _e249515249525_)))
                              (_tl249513249530_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e249515249525_))))
                          ((lambda (_L249533_ _L249534_)
                             (let* ((_self249546_
                                     (list-ref _L249534_ _self-index248746_))
                                    (_body249552_
                                     (map (lambda (_g249547249549_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g249547249549_
                                               _self249546_
                                               _$t249253_
                                               _method-calls246451_
                                               _slot-refs246452_
                                               _class-type-check246453_
                                               _struct-type-check1249433_
                                               _struct-type-check2249434_)))
                                          _L249533_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L249534_ _body249552_))))
                           _tl249513249530_
                           _hd249514249528_)))
                      (let ()
                        (declare (not safe))
                        (_g249509249520_ _g249510249523_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g249508249555_
                                                   _clause249507_)))
                                              (let ((__tmp255650
                                                     (lambda (_g249557249560_
                                                              _g249558249562_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g249557249560_
                                                               _g249558249562_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp255650
                                                        '()
                                                        _L249492_))))
                                        (__tmp255651
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses249565_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp255651
                                    _L249028_)))
                               _clause249450249489_))))))
              (let ()
                (declare (not safe))
                (_loop249445249473_ _target249442249468_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249436249455_
                                                       _g249437249458_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g249436249455_
                                             _g249437249458_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g249436249455_ _g249437249458_))))))
                      (declare (not safe))
                      (_g249435249567_ _L249028_))))
                 (_make-specializer-impl249575_
                  (lambda (_specializer-lambda-expr249572_
                           _specializer-case-lambda-expr249573_)
                    (let ((__tmp255653
                           (let ((__tmp255654
                                  (let ((__tmp255656
                                         (let ((__tmp255657
                                                (let ((__tmp255674
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L248447_ '())))
                                                      (__tmp255658
                                                       (let ((__tmp255659
                                                              (let ((__tmp255660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp255662
                                    (let ((__tmp255663
                                           (let ((__tmp255673
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L248446_ '())))
                                                 (__tmp255664
                                                  (let ((__tmp255665
                                                         (let ((__tmp255666
                                                                (let ((__tmp255667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255669
                                      (let ((__tmp255670
                                             (let ((__tmp255672
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L249030_ '())))
                                                   (__tmp255671
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr249572_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp255672
                                                     __tmp255671))))
                                        (declare (not safe))
                                        (cons __tmp255670 '())))
                                     (__tmp255668
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr249573_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp255669 __tmp255668))))
                          (declare (not safe))
                          (cons '%#let-values __tmp255667))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp255666 _stx246357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255665 '()))))
                                             (declare (not safe))
                                             (cons __tmp255673 __tmp255664))))
                                      (declare (not safe))
                                      (cons __tmp255663 '())))
                                   (__tmp255661
                                    (let ()
                                      (declare (not safe))
                                      (cons _L248444_ '()))))
                               (declare (not safe))
                               (cons __tmp255662 __tmp255661))))
                        (declare (not safe))
                        (cons '%#let-values __tmp255660))))
                 (declare (not safe))
                 (cons __tmp255659 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255674
                                                        __tmp255658))))
                                           (declare (not safe))
                                           (cons __tmp255657 '())))
                                        (__tmp255655
                                         (let ()
                                           (declare (not safe))
                                           (cons _L248443_ '()))))
                                    (declare (not safe))
                                    (cons __tmp255656 __tmp255655))))
                             (declare (not safe))
                             (cons '%#let-values __tmp255654))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255653 _stx246357_))))
                 (_specializer-lambda-expr249577_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr249431_
                     _struct-check-all249323_
                     _empty246456_)))
                 (_specializer-case-lambda-expr249579_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr249570_
                     _struct-check-all249323_
                     _empty246456_)))
                 (_specializer-impl249581_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl249575_
                     _specializer-lambda-expr249577_
                     _specializer-case-lambda-expr249579_)))
                 (_unchecked-specializer-lambda-expr249583_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?246459_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr249431_
                         _empty246456_
                         _struct-check-all249323_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr249585_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?246459_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr249570_
                         _empty246456_
                         _struct-check-all249323_))
                      '#f))
                 (_unchecked-specializer-impl249587_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?246459_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl249575_
                         _unchecked-specializer-lambda-expr249583_
                         _unchecked-specializer-case-lambda-expr249585_))
                      '#f))
                 (_specializer-impl249589_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl246363_
                     _$t249253_
                     _methods-bind249276_
                     _slots-bind249299_
                     _class-check-bind249321_
                     _struct-check-bind249345_
                     _specializer-impl249581_
                     _lifted-specializer-id249251_
                     _unchecked-specializer-impl249587_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp255676
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L246432_)))
                                                          (__tmp255675
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id249244_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp255676
                                                       '" => "
                                                       __tmp255675))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def246364_
                                                       _L246432_
                                                       _specializer-id249244_
                                                       _specializer-impl249589_
                                                       _lifted-specializer-id249251_
                                                       _unchecked-specializer-impl249587_)))))
                                            _hd248961249023_
                                            _hd248958249015_
                                            _hd248955249007_)
                                           (let ()
                                             (declare (not safe))
                                             (_g248937248967_
                                              _g248938248970_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g248937248967_ _g248938248970_)))
                               (let ()
                                 (declare (not safe))
                                 (_g248937248967_ _g248938248970_)))
                           (let ()
                             (declare (not safe))
                             (_g248937248967_ _g248938248970_)))))
                   (let ()
                     (declare (not safe))
                     (_g248937248967_ _g248938248970_)))
               (let ()
                 (declare (not safe))
                 (_g248937248967_ _g248938248970_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248937248967_
                                                  _g248938248970_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g248937248967_ _g248938248970_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g248937248967_ _g248938248970_)))))
                       (let ()
                         (declare (not safe))
                         (_g248937248967_ _g248938248970_)))))
               (let ()
                 (declare (not safe))
                 (_g248937248967_ _g248938248970_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g248936249592_ _L248445_))
                                         _stx246357_))))
                             _hd248542248665_
                             _kw-ref248540248686_
                             _hd248530248652_
                             _hd248521248628_
                             _hd248512248604_)
                            (let ()
                              (declare (not safe))
                              (_g248486248548_ _g248487248551_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop248535248670_
                                                   _target248532248657_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g248486248548_
                                                 _g248487248551_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g248486248548_ _g248487248551_))))))
                            (let ()
                              (declare (not safe))
                              (_g248486248548_ _g248487248551_)))
                        (let ()
                          (declare (not safe))
                          (_g248486248548_ _g248487248551_)))
                    (let ()
                      (declare (not safe))
                      (_g248486248548_ _g248487248551_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g248486248548_
                                                       _g248487248551_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g248486248548_
                                                   _g248487248551_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g248486248548_
                                               _g248487248551_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g248486248548_ _g248487248551_)))))
                            (let ()
                              (declare (not safe))
                              (_g248486248548_ _g248487248551_)))
                        (let ()
                          (declare (not safe))
                          (_g248486248548_ _g248487248551_)))))
                (let ()
                  (declare (not safe))
                  (_g248486248548_ _g248487248551_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g248486248548_
                                                       _g248487248551_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g248486248548_
                                                   _g248487248551_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g248486248548_ _g248487248551_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g248486248548_ _g248487248551_)))
                            (let ()
                              (declare (not safe))
                              (_g248486248548_ _g248487248551_)))))
                    (let ()
                      (declare (not safe))
                      (_g248486248548_ _g248487248551_)))
                (let ()
                  (declare (not safe))
                  (_g248486248548_ _g248487248551_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g248486248548_
                                                       _g248487248551_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g248486248548_
                                               _g248487248551_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g248486248548_ _g248487248551_)))
                                (let ()
                                  (declare (not safe))
                                  (_g248486248548_ _g248487248551_)))
                            (let ()
                              (declare (not safe))
                              (_g248486248548_ _g248487248551_)))))
                    (let ()
                      (declare (not safe))
                      (_g248486248548_ _g248487248551_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g248486248548_
                                                       _g248487248551_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g248486248548_
                                               _g248487248551_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g248486248548_ _g248487248551_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g248486248548_ _g248487248551_)))))
                            (let ()
                              (declare (not safe))
                              (_g248486248548_ _g248487248551_))))))
                (declare (not safe))
                (_g248485249595_ _L248444_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd248320248438_
                                                    _hd248317248430_
                                                    _hd248314248422_
                                                    _hd248311248414_
                                                    _hd248293248366_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248273248326_
                                                      _g248274248329_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g248273248326_
                                              _g248274248329_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g248273248326_ _g248274248329_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g248273248326_ _g248274248329_)))
                               (let ()
                                 (declare (not safe))
                                 (_g248273248326_ _g248274248329_)))))
                       (let ()
                         (declare (not safe))
                         (_g248273248326_ _g248274248329_)))
                   (let ()
                     (declare (not safe))
                     (_g248273248326_ _g248274248329_)))
               (let ()
                 (declare (not safe))
                 (_g248273248326_ _g248274248329_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248273248326_
                                                  _g248274248329_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g248273248326_
                                              _g248274248329_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g248273248326_ _g248274248329_)))))
                           (let ()
                             (declare (not safe))
                             (_g248273248326_ _g248274248329_)))))
                   (let ()
                     (declare (not safe))
                     (_g248273248326_ _g248274248329_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248273248326_
                                                      _g248274248329_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248273248326_
                                                  _g248274248329_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g248273248326_
                                              _g248274248329_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g248273248326_ _g248274248329_)))))
                           (let ()
                             (declare (not safe))
                             (_g248273248326_ _g248274248329_)))
                       (let ()
                         (declare (not safe))
                         (_g248273248326_ _g248274248329_)))))
               (let ()
                 (declare (not safe))
                 (_g248273248326_ _g248274248329_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248273248326_
                                                  _g248274248329_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g248273248326_ _g248274248329_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g248273248326_ _g248274248329_)))
                           (let ()
                             (declare (not safe))
                             (_g248273248326_ _g248274248329_)))
                       (let ()
                         (declare (not safe))
                         (_g248273248326_ _g248274248329_)))))
               (let ()
                 (declare (not safe))
                 (_g248273248326_ _g248274248329_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g248272249598_ _L246431_))
                                         _stx246357_))))))))
                  (___kont254405254406_ (lambda () _stx246357_)))
              (let ((___match254434254435_
                     (lambda (_e246373246399_
                              _hd246372246402_
                              _tl246371246404_
                              _e246376246407_
                              _hd246375246410_
                              _tl246374246412_
                              _e246379246415_
                              _hd246378246418_
                              _tl246377246420_
                              _e246382246423_
                              _hd246381246426_
                              _tl246380246428_)
                       (let ((_L246431_ _hd246381246426_)
                             (_L246432_ _hd246378246418_))
                         (if (let ((__tmp255793
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L246432_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp255793))
                             (___kont254403254404_ _L246431_ _L246432_)
                             (___kont254405254406_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx254401254402_))
                    (let ((_e246373246399_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx254401254402_))))
                      (let ((_tl246371246404_
                             (let ()
                               (declare (not safe))
                               (##cdr _e246373246399_)))
                            (_hd246372246402_
                             (let ()
                               (declare (not safe))
                               (##car _e246373246399_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl246371246404_))
                            (let ((_e246376246407_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl246371246404_))))
                              (let ((_tl246374246412_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e246376246407_)))
                                    (_hd246375246410_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e246376246407_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd246375246410_))
                                    (let ((_e246379246415_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd246375246410_))))
                                      (let ((_tl246377246420_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e246379246415_)))
                                            (_hd246378246418_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e246379246415_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl246377246420_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl246374246412_))
                                                (let ((_e246382246423_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl246374246412_))))
                                                  (let ((_tl246380246428_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e246382246423_)))
                                                        (_hd246381246426_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e246382246423_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl246380246428_))
                                                        (___match254434254435_
                                                         _e246373246399_
                                                         _hd246372246402_
                                                         _tl246371246404_
                                                         _e246376246407_
                                                         _hd246375246410_
                                                         _tl246374246412_
                                                         _e246379246415_
                                                         _hd246378246418_
                                                         _tl246377246420_
                                                         _e246382246423_
                                                         _hd246381246426_
                                                         _tl246380246428_)
                                                        (___kont254405254406_))))
                                                (___kont254405254406_))
                                            (___kont254405254406_))))
                                    (___kont254405254406_))))
                            (___kont254405254406_))))
                    (___kont254405254406_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx245333_
               _self245334_
               _methods245335_
               _slots245336_
               _class-check245337_
               _struct-check245338_
               _struct-assert245339_)
        (let* ((___stx254437254438_ _stx245333_)
               (_g245347245569_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx254437254438_)))))
          (let ((___kont254439254440_
                 (lambda (_L246306_ _L246307_ _L246308_ _L246309_)
                   (let ((__tmp255794
                          (let () (declare (not safe)) (gx#stx-e _L246307_))))
                     (declare (not safe))
                     (table-set! _methods245335_ __tmp255794 '#t))
                   (for-each
                    (lambda (_g246342246344_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g246342246344_
                         _self245334_
                         _methods245335_
                         _slots245336_
                         _class-check245337_
                         _struct-check245338_
                         _struct-assert245339_)))
                    (let ((__tmp255795
                           (lambda (_g246346246349_ _g246347246351_)
                             (let ()
                               (declare (not safe))
                               (cons _g246346246349_ _g246347246351_)))))
                      (declare (not safe))
                      (foldr1 __tmp255795 '() _L246306_)))))
                (___kont254443254444_
                 (lambda (_L246141_ _L246142_ _L246143_ _L246144_ _L246145_)
                   (let ((__tmp255796
                          (let () (declare (not safe)) (gx#stx-e _L246142_))))
                     (declare (not safe))
                     (table-set! _methods245335_ __tmp255796 '#t))
                   (for-each
                    (lambda (_g246185246187_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g246185246187_
                         _self245334_
                         _methods245335_
                         _slots245336_
                         _class-check245337_
                         _struct-check245338_
                         _struct-assert245339_)))
                    (let ((__tmp255797
                           (lambda (_g246189246192_ _g246190246194_)
                             (let ()
                               (declare (not safe))
                               (cons _g246189246192_ _g246190246194_)))))
                      (declare (not safe))
                      (foldr1 __tmp255797 '() _L246141_)))))
                (___kont254447254448_
                 (lambda (_L245974_ _L245975_ _L245976_)
                   (let ((__tmp255798
                          (let () (declare (not safe)) (gx#stx-e _L245974_))))
                     (declare (not safe))
                     (table-set! _slots245336_ __tmp255798 '#t))))
                (___kont254449254450_
                 (lambda (_L245851_ _L245852_ _L245853_ _L245854_)
                   (let ((__tmp255799
                          (let () (declare (not safe)) (gx#stx-e _L245852_))))
                     (declare (not safe))
                     (table-set! _slots245336_ __tmp255799 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L245851_
                      _self245334_
                      _methods245335_
                      _slots245336_
                      _class-check245337_
                      _struct-check245338_
                      _struct-assert245339_))))
                (___kont254451254452_
                 (lambda (_L245735_ _L245736_)
                   (let ((__tmp255800
                          (##structure-ref
                           (let ((__tmp255801
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L245736_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp255801))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots245336_ __tmp255800 '#t))))
                (___kont254453254454_
                 (lambda (_L245645_ _L245646_ _L245647_)
                   (let ((__tmp255802
                          (##structure-ref
                           (let ((__tmp255803
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L245647_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp255803))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots245336_ __tmp255802 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L245645_
                      _self245334_
                      _methods245335_
                      _slots245336_
                      _class-check245337_
                      _struct-check245338_
                      _struct-assert245339_))))
                (___kont254455254456_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx245333_
                      _self245334_
                      _methods245335_
                      _slots245336_
                      _class-check245337_
                      _struct-check245338_
                      _struct-assert245339_)))))
            (let* ((___match254936254937_
                    (lambda (_e245543245581_
                             _hd245542245584_
                             _tl245541245586_
                             _e245546245589_
                             _hd245545245592_
                             _tl245544245594_
                             _e245549245597_
                             _hd245548245600_
                             _tl245547245602_
                             _e245552245605_
                             _hd245551245608_
                             _tl245550245610_
                             _e245555245613_
                             _hd245554245616_
                             _tl245553245618_
                             _e245558245621_
                             _hd245557245624_
                             _tl245556245626_
                             _e245561245629_
                             _hd245560245632_
                             _tl245559245634_
                             _e245564245637_
                             _hd245563245640_
                             _tl245562245642_)
                      (let ((_L245645_ _hd245563245640_)
                            (_L245646_ _hd245560245632_)
                            (_L245647_ _hd245551245608_))
                        (if (and (let ((__tmp255804
                                        (let ((__tmp255805
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L245647_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp255805))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp255804
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L245646_
                                    _self245334_)))
                            (___kont254453254454_
                             _L245645_
                             _L245646_
                             _L245647_)
                            (___kont254455254456_)))))
                   (___match254934254935_
                    (lambda (_e245543245581_
                             _hd245542245584_
                             _tl245541245586_
                             _e245546245589_
                             _hd245545245592_
                             _tl245544245594_
                             _e245549245597_
                             _hd245548245600_
                             _tl245547245602_
                             _e245552245605_
                             _hd245551245608_
                             _tl245550245610_
                             _e245555245613_
                             _hd245554245616_
                             _tl245553245618_
                             _e245558245621_
                             _hd245557245624_
                             _tl245556245626_
                             _e245561245629_
                             _hd245560245632_
                             _tl245559245634_
                             _e245564245637_
                             _hd245563245640_
                             _tl245562245642_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl245562245642_))
                          (___match254936254937_
                           _e245543245581_
                           _hd245542245584_
                           _tl245541245586_
                           _e245546245589_
                           _hd245545245592_
                           _tl245544245594_
                           _e245549245597_
                           _hd245548245600_
                           _tl245547245602_
                           _e245552245605_
                           _hd245551245608_
                           _tl245550245610_
                           _e245555245613_
                           _hd245554245616_
                           _tl245553245618_
                           _e245558245621_
                           _hd245557245624_
                           _tl245556245626_
                           _e245561245629_
                           _hd245560245632_
                           _tl245559245634_
                           _e245564245637_
                           _hd245563245640_
                           _tl245562245642_)
                          (___kont254455254456_))))
                   (___match254928254929_
                    (lambda (_e245543245581_
                             _hd245542245584_
                             _tl245541245586_
                             _e245546245589_
                             _hd245545245592_
                             _tl245544245594_
                             _e245549245597_
                             _hd245548245600_
                             _tl245547245602_
                             _e245552245605_
                             _hd245551245608_
                             _tl245550245610_
                             _e245555245613_
                             _hd245554245616_
                             _tl245553245618_
                             _e245558245621_
                             _hd245557245624_
                             _tl245556245626_
                             _e245561245629_
                             _hd245560245632_
                             _tl245559245634_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl245553245618_))
                          (let ((_e245564245637_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl245553245618_))))
                            (let ((_tl245562245642_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245564245637_)))
                                  (_hd245563245640_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245564245637_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl245562245642_))
                                  (___match254936254937_
                                   _e245543245581_
                                   _hd245542245584_
                                   _tl245541245586_
                                   _e245546245589_
                                   _hd245545245592_
                                   _tl245544245594_
                                   _e245549245597_
                                   _hd245548245600_
                                   _tl245547245602_
                                   _e245552245605_
                                   _hd245551245608_
                                   _tl245550245610_
                                   _e245555245613_
                                   _hd245554245616_
                                   _tl245553245618_
                                   _e245558245621_
                                   _hd245557245624_
                                   _tl245556245626_
                                   _e245561245629_
                                   _hd245560245632_
                                   _tl245559245634_
                                   _e245564245637_
                                   _hd245563245640_
                                   _tl245562245642_)
                                  (___kont254455254456_))))
                          (___kont254455254456_))))
                   (___match254874254875_
                    (lambda (_e245519245679_
                             _hd245518245682_
                             _tl245517245684_
                             _e245522245687_
                             _hd245521245690_
                             _tl245520245692_
                             _e245525245695_
                             _hd245524245698_
                             _tl245523245700_
                             _e245528245703_
                             _hd245527245706_
                             _tl245526245708_
                             _e245531245711_
                             _hd245530245714_
                             _tl245529245716_
                             _e245534245719_
                             _hd245533245722_
                             _tl245532245724_
                             _e245537245727_
                             _hd245536245730_
                             _tl245535245732_)
                      (let ((_L245735_ _hd245536245730_)
                            (_L245736_ _hd245527245706_))
                        (if (and (let ((__tmp255806
                                        (let ((__tmp255807
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L245736_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp255807))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp255806
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L245735_
                                    _self245334_)))
                            (___kont254451254452_ _L245735_ _L245736_)
                            (___kont254455254456_)))))
                   (___match254872254873_
                    (lambda (_e245519245679_
                             _hd245518245682_
                             _tl245517245684_
                             _e245522245687_
                             _hd245521245690_
                             _tl245520245692_
                             _e245525245695_
                             _hd245524245698_
                             _tl245523245700_
                             _e245528245703_
                             _hd245527245706_
                             _tl245526245708_
                             _e245531245711_
                             _hd245530245714_
                             _tl245529245716_
                             _e245534245719_
                             _hd245533245722_
                             _tl245532245724_
                             _e245537245727_
                             _hd245536245730_
                             _tl245535245732_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl245529245716_))
                          (___match254874254875_
                           _e245519245679_
                           _hd245518245682_
                           _tl245517245684_
                           _e245522245687_
                           _hd245521245690_
                           _tl245520245692_
                           _e245525245695_
                           _hd245524245698_
                           _tl245523245700_
                           _e245528245703_
                           _hd245527245706_
                           _tl245526245708_
                           _e245531245711_
                           _hd245530245714_
                           _tl245529245716_
                           _e245534245719_
                           _hd245533245722_
                           _tl245532245724_
                           _e245537245727_
                           _hd245536245730_
                           _tl245535245732_)
                          (___match254928254929_
                           _e245519245679_
                           _hd245518245682_
                           _tl245517245684_
                           _e245522245687_
                           _hd245521245690_
                           _tl245520245692_
                           _e245525245695_
                           _hd245524245698_
                           _tl245523245700_
                           _e245528245703_
                           _hd245527245706_
                           _tl245526245708_
                           _e245531245711_
                           _hd245530245714_
                           _tl245529245716_
                           _e245534245719_
                           _hd245533245722_
                           _tl245532245724_
                           _e245537245727_
                           _hd245536245730_
                           _tl245535245732_))))
                   (___match254818254819_
                    (lambda (_e245484245763_
                             _hd245483245766_
                             _tl245482245768_
                             _e245487245771_
                             _hd245486245774_
                             _tl245485245776_
                             _e245490245779_
                             _hd245489245782_
                             _tl245488245784_
                             _e245493245787_
                             _hd245492245790_
                             _tl245491245792_
                             _e245496245795_
                             _hd245495245798_
                             _tl245494245800_
                             _e245499245803_
                             _hd245498245806_
                             _tl245497245808_
                             _e245502245811_
                             _hd245501245814_
                             _tl245500245816_
                             _e245505245819_
                             _hd245504245822_
                             _tl245503245824_
                             _e245508245827_
                             _hd245507245830_
                             _tl245506245832_
                             _e245511245835_
                             _hd245510245838_
                             _tl245509245840_
                             _e245514245843_
                             _hd245513245846_
                             _tl245512245848_)
                      (let ((_L245851_ _hd245513245846_)
                            (_L245852_ _hd245510245838_)
                            (_L245853_ _hd245501245814_)
                            (_L245854_ _hd245492245790_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L245854_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L245854_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L245853_
                                    _self245334_)))
                            (___kont254449254450_
                             _L245851_
                             _L245852_
                             _L245853_
                             _L245854_)
                            (___kont254455254456_)))))
                   (___match254810254811_
                    (lambda (_e245484245763_
                             _hd245483245766_
                             _tl245482245768_
                             _e245487245771_
                             _hd245486245774_
                             _tl245485245776_
                             _e245490245779_
                             _hd245489245782_
                             _tl245488245784_
                             _e245493245787_
                             _hd245492245790_
                             _tl245491245792_
                             _e245496245795_
                             _hd245495245798_
                             _tl245494245800_
                             _e245499245803_
                             _hd245498245806_
                             _tl245497245808_
                             _e245502245811_
                             _hd245501245814_
                             _tl245500245816_
                             _e245505245819_
                             _hd245504245822_
                             _tl245503245824_
                             _e245508245827_
                             _hd245507245830_
                             _tl245506245832_
                             _e245511245835_
                             _hd245510245838_
                             _tl245509245840_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl245503245824_))
                          (let ((_e245514245843_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl245503245824_))))
                            (let ((_tl245512245848_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245514245843_)))
                                  (_hd245513245846_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245514245843_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl245512245848_))
                                  (___match254818254819_
                                   _e245484245763_
                                   _hd245483245766_
                                   _tl245482245768_
                                   _e245487245771_
                                   _hd245486245774_
                                   _tl245485245776_
                                   _e245490245779_
                                   _hd245489245782_
                                   _tl245488245784_
                                   _e245493245787_
                                   _hd245492245790_
                                   _tl245491245792_
                                   _e245496245795_
                                   _hd245495245798_
                                   _tl245494245800_
                                   _e245499245803_
                                   _hd245498245806_
                                   _tl245497245808_
                                   _e245502245811_
                                   _hd245501245814_
                                   _tl245500245816_
                                   _e245505245819_
                                   _hd245504245822_
                                   _tl245503245824_
                                   _e245508245827_
                                   _hd245507245830_
                                   _tl245506245832_
                                   _e245511245835_
                                   _hd245510245838_
                                   _tl245509245840_
                                   _e245514245843_
                                   _hd245513245846_
                                   _tl245512245848_)
                                  (___kont254455254456_))))
                          (___match254934254935_
                           _e245484245763_
                           _hd245483245766_
                           _tl245482245768_
                           _e245487245771_
                           _hd245486245774_
                           _tl245485245776_
                           _e245490245779_
                           _hd245489245782_
                           _tl245488245784_
                           _e245493245787_
                           _hd245492245790_
                           _tl245491245792_
                           _e245496245795_
                           _hd245495245798_
                           _tl245494245800_
                           _e245499245803_
                           _hd245498245806_
                           _tl245497245808_
                           _e245502245811_
                           _hd245501245814_
                           _tl245500245816_
                           _e245505245819_
                           _hd245504245822_
                           _tl245503245824_))))
                   (___match254732254733_
                    (lambda (_e245450245894_
                             _hd245449245897_
                             _tl245448245899_
                             _e245453245902_
                             _hd245452245905_
                             _tl245451245907_
                             _e245456245910_
                             _hd245455245913_
                             _tl245454245915_
                             _e245459245918_
                             _hd245458245921_
                             _tl245457245923_
                             _e245462245926_
                             _hd245461245929_
                             _tl245460245931_
                             _e245465245934_
                             _hd245464245937_
                             _tl245463245939_
                             _e245468245942_
                             _hd245467245945_
                             _tl245466245947_
                             _e245471245950_
                             _hd245470245953_
                             _tl245469245955_
                             _e245474245958_
                             _hd245473245961_
                             _tl245472245963_
                             _e245477245966_
                             _hd245476245969_
                             _tl245475245971_)
                      (let ((_L245974_ _hd245476245969_)
                            (_L245975_ _hd245467245945_)
                            (_L245976_ _hd245458245921_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L245976_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L245976_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L245975_
                                    _self245334_)))
                            (___kont254447254448_
                             _L245974_
                             _L245975_
                             _L245976_)
                            (___match254936254937_
                             _e245450245894_
                             _hd245449245897_
                             _tl245448245899_
                             _e245453245902_
                             _hd245452245905_
                             _tl245451245907_
                             _e245456245910_
                             _hd245455245913_
                             _tl245454245915_
                             _e245459245918_
                             _hd245458245921_
                             _tl245457245923_
                             _e245462245926_
                             _hd245461245929_
                             _tl245460245931_
                             _e245465245934_
                             _hd245464245937_
                             _tl245463245939_
                             _e245468245942_
                             _hd245467245945_
                             _tl245466245947_
                             _e245471245950_
                             _hd245470245953_
                             _tl245469245955_)))))
                   (___match254730254731_
                    (lambda (_e245450245894_
                             _hd245449245897_
                             _tl245448245899_
                             _e245453245902_
                             _hd245452245905_
                             _tl245451245907_
                             _e245456245910_
                             _hd245455245913_
                             _tl245454245915_
                             _e245459245918_
                             _hd245458245921_
                             _tl245457245923_
                             _e245462245926_
                             _hd245461245929_
                             _tl245460245931_
                             _e245465245934_
                             _hd245464245937_
                             _tl245463245939_
                             _e245468245942_
                             _hd245467245945_
                             _tl245466245947_
                             _e245471245950_
                             _hd245470245953_
                             _tl245469245955_
                             _e245474245958_
                             _hd245473245961_
                             _tl245472245963_
                             _e245477245966_
                             _hd245476245969_
                             _tl245475245971_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl245469245955_))
                          (___match254732254733_
                           _e245450245894_
                           _hd245449245897_
                           _tl245448245899_
                           _e245453245902_
                           _hd245452245905_
                           _tl245451245907_
                           _e245456245910_
                           _hd245455245913_
                           _tl245454245915_
                           _e245459245918_
                           _hd245458245921_
                           _tl245457245923_
                           _e245462245926_
                           _hd245461245929_
                           _tl245460245931_
                           _e245465245934_
                           _hd245464245937_
                           _tl245463245939_
                           _e245468245942_
                           _hd245467245945_
                           _tl245466245947_
                           _e245471245950_
                           _hd245470245953_
                           _tl245469245955_
                           _e245474245958_
                           _hd245473245961_
                           _tl245472245963_
                           _e245477245966_
                           _hd245476245969_
                           _tl245475245971_)
                          (___match254810254811_
                           _e245450245894_
                           _hd245449245897_
                           _tl245448245899_
                           _e245453245902_
                           _hd245452245905_
                           _tl245451245907_
                           _e245456245910_
                           _hd245455245913_
                           _tl245454245915_
                           _e245459245918_
                           _hd245458245921_
                           _tl245457245923_
                           _e245462245926_
                           _hd245461245929_
                           _tl245460245931_
                           _e245465245934_
                           _hd245464245937_
                           _tl245463245939_
                           _e245468245942_
                           _hd245467245945_
                           _tl245466245947_
                           _e245471245950_
                           _hd245470245953_
                           _tl245469245955_
                           _e245474245958_
                           _hd245473245961_
                           _tl245472245963_
                           _e245477245966_
                           _hd245476245969_
                           _tl245475245971_))))
                   (___match254720254721_
                    (lambda (_e245450245894_
                             _hd245449245897_
                             _tl245448245899_
                             _e245453245902_
                             _hd245452245905_
                             _tl245451245907_
                             _e245456245910_
                             _hd245455245913_
                             _tl245454245915_
                             _e245459245918_
                             _hd245458245921_
                             _tl245457245923_
                             _e245462245926_
                             _hd245461245929_
                             _tl245460245931_
                             _e245465245934_
                             _hd245464245937_
                             _tl245463245939_
                             _e245468245942_
                             _hd245467245945_
                             _tl245466245947_
                             _e245471245950_
                             _hd245470245953_
                             _tl245469245955_
                             _e245474245958_
                             _hd245473245961_
                             _tl245472245963_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd245473245961_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl245472245963_))
                              (let ((_e245477245966_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl245472245963_))))
                                (let ((_tl245475245971_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245477245966_)))
                                      (_hd245476245969_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245477245966_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl245475245971_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl245469245955_))
                                          (___match254732254733_
                                           _e245450245894_
                                           _hd245449245897_
                                           _tl245448245899_
                                           _e245453245902_
                                           _hd245452245905_
                                           _tl245451245907_
                                           _e245456245910_
                                           _hd245455245913_
                                           _tl245454245915_
                                           _e245459245918_
                                           _hd245458245921_
                                           _tl245457245923_
                                           _e245462245926_
                                           _hd245461245929_
                                           _tl245460245931_
                                           _e245465245934_
                                           _hd245464245937_
                                           _tl245463245939_
                                           _e245468245942_
                                           _hd245467245945_
                                           _tl245466245947_
                                           _e245471245950_
                                           _hd245470245953_
                                           _tl245469245955_
                                           _e245474245958_
                                           _hd245473245961_
                                           _tl245472245963_
                                           _e245477245966_
                                           _hd245476245969_
                                           _tl245475245971_)
                                          (___match254810254811_
                                           _e245450245894_
                                           _hd245449245897_
                                           _tl245448245899_
                                           _e245453245902_
                                           _hd245452245905_
                                           _tl245451245907_
                                           _e245456245910_
                                           _hd245455245913_
                                           _tl245454245915_
                                           _e245459245918_
                                           _hd245458245921_
                                           _tl245457245923_
                                           _e245462245926_
                                           _hd245461245929_
                                           _tl245460245931_
                                           _e245465245934_
                                           _hd245464245937_
                                           _tl245463245939_
                                           _e245468245942_
                                           _hd245467245945_
                                           _tl245466245947_
                                           _e245471245950_
                                           _hd245470245953_
                                           _tl245469245955_
                                           _e245474245958_
                                           _hd245473245961_
                                           _tl245472245963_
                                           _e245477245966_
                                           _hd245476245969_
                                           _tl245475245971_))
                                      (___match254934254935_
                                       _e245450245894_
                                       _hd245449245897_
                                       _tl245448245899_
                                       _e245453245902_
                                       _hd245452245905_
                                       _tl245451245907_
                                       _e245456245910_
                                       _hd245455245913_
                                       _tl245454245915_
                                       _e245459245918_
                                       _hd245458245921_
                                       _tl245457245923_
                                       _e245462245926_
                                       _hd245461245929_
                                       _tl245460245931_
                                       _e245465245934_
                                       _hd245464245937_
                                       _tl245463245939_
                                       _e245468245942_
                                       _hd245467245945_
                                       _tl245466245947_
                                       _e245471245950_
                                       _hd245470245953_
                                       _tl245469245955_))))
                              (___match254934254935_
                               _e245450245894_
                               _hd245449245897_
                               _tl245448245899_
                               _e245453245902_
                               _hd245452245905_
                               _tl245451245907_
                               _e245456245910_
                               _hd245455245913_
                               _tl245454245915_
                               _e245459245918_
                               _hd245458245921_
                               _tl245457245923_
                               _e245462245926_
                               _hd245461245929_
                               _tl245460245931_
                               _e245465245934_
                               _hd245464245937_
                               _tl245463245939_
                               _e245468245942_
                               _hd245467245945_
                               _tl245466245947_
                               _e245471245950_
                               _hd245470245953_
                               _tl245469245955_))
                          (___match254934254935_
                           _e245450245894_
                           _hd245449245897_
                           _tl245448245899_
                           _e245453245902_
                           _hd245452245905_
                           _tl245451245907_
                           _e245456245910_
                           _hd245455245913_
                           _tl245454245915_
                           _e245459245918_
                           _hd245458245921_
                           _tl245457245923_
                           _e245462245926_
                           _hd245461245929_
                           _tl245460245931_
                           _e245465245934_
                           _hd245464245937_
                           _tl245463245939_
                           _e245468245942_
                           _hd245467245945_
                           _tl245466245947_
                           _e245471245950_
                           _hd245470245953_
                           _tl245469245955_))))
                   (___match254652254653_
                    (lambda (_e245399246013_
                             _hd245398246016_
                             _tl245397246018_
                             _e245402246021_
                             _hd245401246024_
                             _tl245400246026_
                             _e245405246029_
                             _hd245404246032_
                             _tl245403246034_
                             _e245408246037_
                             _hd245407246040_
                             _tl245406246042_
                             _e245411246045_
                             _hd245410246048_
                             _tl245409246050_
                             _e245414246053_
                             _hd245413246056_
                             _tl245412246058_
                             _e245417246061_
                             _hd245416246064_
                             _tl245415246066_
                             _e245420246069_
                             _hd245419246072_
                             _tl245418246074_
                             _e245423246077_
                             _hd245422246080_
                             _tl245421246082_
                             _e245426246085_
                             _hd245425246088_
                             _tl245424246090_
                             _e245429246093_
                             _hd245428246096_
                             _tl245427246098_
                             _e245432246101_
                             _hd245431246104_
                             _tl245430246106_
                             _e245435246109_
                             _hd245434246112_
                             _tl245433246114_
                             ___splice254445254446_
                             _target245436246117_
                             _tl245438246119_)
                      (letrec ((_loop245439246122_
                                (lambda (_hd245437246125_ _args245443246127_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd245437246125_))
                                      (let ((_e245440246130_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd245437246125_))))
                                        (let ((_lp-tl245442246135_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245440246130_)))
                                              (_lp-hd245441246133_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245440246130_))))
                                          (let ((__tmp255808
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd245441246133_
                                                         _args245443246127_))))
                                            (declare (not safe))
                                            (_loop245439246122_
                                             _lp-tl245442246135_
                                             __tmp255808))))
                                      (let ((_args245444246138_
                                             (reverse _args245443246127_)))
                                        (let ((_L246141_ _args245444246138_)
                                              (_L246142_ _hd245434246112_)
                                              (_L246143_ _hd245425246088_)
                                              (_L246144_ _hd245416246064_)
                                              (_L246145_ _hd245407246040_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L246145_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L246144_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L246143_
                                                      _self245334_)))
                                              (___kont254443254444_
                                               _L246141_
                                               _L246142_
                                               _L246143_
                                               _L246144_
                                               _L246145_)
                                              (___kont254455254456_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop245439246122_ _target245436246117_ '())))))
                   (___match254610254611_
                    (lambda (_e245399246013_
                             _hd245398246016_
                             _tl245397246018_
                             _e245402246021_
                             _hd245401246024_
                             _tl245400246026_
                             _e245405246029_
                             _hd245404246032_
                             _tl245403246034_
                             _e245408246037_
                             _hd245407246040_
                             _tl245406246042_
                             _e245411246045_
                             _hd245410246048_
                             _tl245409246050_
                             _e245414246053_
                             _hd245413246056_
                             _tl245412246058_
                             _e245417246061_
                             _hd245416246064_
                             _tl245415246066_
                             _e245420246069_
                             _hd245419246072_
                             _tl245418246074_
                             _e245423246077_
                             _hd245422246080_
                             _tl245421246082_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd245422246080_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl245421246082_))
                              (let ((_e245426246085_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl245421246082_))))
                                (let ((_tl245424246090_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245426246085_)))
                                      (_hd245425246088_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245426246085_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl245424246090_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl245418246074_))
                                          (let ((_e245429246093_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl245418246074_))))
                                            (let ((_tl245427246098_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e245429246093_)))
                                                  (_hd245428246096_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e245429246093_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd245428246096_))
                                                  (let ((_e245432246101_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd245428246096_))))
                                                    (let ((_tl245430246106_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e245432246101_)))
                                                          (_hd245431246104_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e245432246101_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd245431246104_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd245431246104_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl245430246106_))
                          (let ((_e245435246109_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl245430246106_))))
                            (let ((_tl245433246114_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245435246109_)))
                                  (_hd245434246112_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245435246109_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl245433246114_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl245427246098_))
                                      (let ((___splice254445254446_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl245427246098_
                                                '0))))
                                        (let ((_tl245438246119_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice254445254446_
                                                  '1)))
                                              (_target245436246117_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice254445254446_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl245438246119_))
                                              (___match254652254653_
                                               _e245399246013_
                                               _hd245398246016_
                                               _tl245397246018_
                                               _e245402246021_
                                               _hd245401246024_
                                               _tl245400246026_
                                               _e245405246029_
                                               _hd245404246032_
                                               _tl245403246034_
                                               _e245408246037_
                                               _hd245407246040_
                                               _tl245406246042_
                                               _e245411246045_
                                               _hd245410246048_
                                               _tl245409246050_
                                               _e245414246053_
                                               _hd245413246056_
                                               _tl245412246058_
                                               _e245417246061_
                                               _hd245416246064_
                                               _tl245415246066_
                                               _e245420246069_
                                               _hd245419246072_
                                               _tl245418246074_
                                               _e245423246077_
                                               _hd245422246080_
                                               _tl245421246082_
                                               _e245426246085_
                                               _hd245425246088_
                                               _tl245424246090_
                                               _e245429246093_
                                               _hd245428246096_
                                               _tl245427246098_
                                               _e245432246101_
                                               _hd245431246104_
                                               _tl245430246106_
                                               _e245435246109_
                                               _hd245434246112_
                                               _tl245433246114_
                                               ___splice254445254446_
                                               _target245436246117_
                                               _tl245438246119_)
                                              (___kont254455254456_))))
                                      (___kont254455254456_))
                                  (___kont254455254456_))))
                          (___kont254455254456_))
                      (___kont254455254456_))
                  (___kont254455254456_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont254455254456_))))
                                          (___match254934254935_
                                           _e245399246013_
                                           _hd245398246016_
                                           _tl245397246018_
                                           _e245402246021_
                                           _hd245401246024_
                                           _tl245400246026_
                                           _e245405246029_
                                           _hd245404246032_
                                           _tl245403246034_
                                           _e245408246037_
                                           _hd245407246040_
                                           _tl245406246042_
                                           _e245411246045_
                                           _hd245410246048_
                                           _tl245409246050_
                                           _e245414246053_
                                           _hd245413246056_
                                           _tl245412246058_
                                           _e245417246061_
                                           _hd245416246064_
                                           _tl245415246066_
                                           _e245420246069_
                                           _hd245419246072_
                                           _tl245418246074_))
                                      (___match254934254935_
                                       _e245399246013_
                                       _hd245398246016_
                                       _tl245397246018_
                                       _e245402246021_
                                       _hd245401246024_
                                       _tl245400246026_
                                       _e245405246029_
                                       _hd245404246032_
                                       _tl245403246034_
                                       _e245408246037_
                                       _hd245407246040_
                                       _tl245406246042_
                                       _e245411246045_
                                       _hd245410246048_
                                       _tl245409246050_
                                       _e245414246053_
                                       _hd245413246056_
                                       _tl245412246058_
                                       _e245417246061_
                                       _hd245416246064_
                                       _tl245415246066_
                                       _e245420246069_
                                       _hd245419246072_
                                       _tl245418246074_))))
                              (___match254934254935_
                               _e245399246013_
                               _hd245398246016_
                               _tl245397246018_
                               _e245402246021_
                               _hd245401246024_
                               _tl245400246026_
                               _e245405246029_
                               _hd245404246032_
                               _tl245403246034_
                               _e245408246037_
                               _hd245407246040_
                               _tl245406246042_
                               _e245411246045_
                               _hd245410246048_
                               _tl245409246050_
                               _e245414246053_
                               _hd245413246056_
                               _tl245412246058_
                               _e245417246061_
                               _hd245416246064_
                               _tl245415246066_
                               _e245420246069_
                               _hd245419246072_
                               _tl245418246074_))
                          (___match254720254721_
                           _e245399246013_
                           _hd245398246016_
                           _tl245397246018_
                           _e245402246021_
                           _hd245401246024_
                           _tl245400246026_
                           _e245405246029_
                           _hd245404246032_
                           _tl245403246034_
                           _e245408246037_
                           _hd245407246040_
                           _tl245406246042_
                           _e245411246045_
                           _hd245410246048_
                           _tl245409246050_
                           _e245414246053_
                           _hd245413246056_
                           _tl245412246058_
                           _e245417246061_
                           _hd245416246064_
                           _tl245415246066_
                           _e245420246069_
                           _hd245419246072_
                           _tl245418246074_
                           _e245423246077_
                           _hd245422246080_
                           _tl245421246082_))))
                   (___match254542254543_
                    (lambda (_e245355246202_
                             _hd245354246205_
                             _tl245353246207_
                             _e245358246210_
                             _hd245357246213_
                             _tl245356246215_
                             _e245361246218_
                             _hd245360246221_
                             _tl245359246223_
                             _e245364246226_
                             _hd245363246229_
                             _tl245362246231_
                             _e245367246234_
                             _hd245366246237_
                             _tl245365246239_
                             _e245370246242_
                             _hd245369246245_
                             _tl245368246247_
                             _e245373246250_
                             _hd245372246253_
                             _tl245371246255_
                             _e245376246258_
                             _hd245375246261_
                             _tl245374246263_
                             _e245379246266_
                             _hd245378246269_
                             _tl245377246271_
                             _e245382246274_
                             _hd245381246277_
                             _tl245380246279_
                             ___splice254441254442_
                             _target245383246282_
                             _tl245385246284_)
                      (letrec ((_loop245386246287_
                                (lambda (_hd245384246290_ _args245390246292_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd245384246290_))
                                      (let ((_e245387246295_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd245384246290_))))
                                        (let ((_lp-tl245389246300_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245387246295_)))
                                              (_lp-hd245388246298_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245387246295_))))
                                          (let ((__tmp255809
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd245388246298_
                                                         _args245390246292_))))
                                            (declare (not safe))
                                            (_loop245386246287_
                                             _lp-tl245389246300_
                                             __tmp255809))))
                                      (let ((_args245391246303_
                                             (reverse _args245390246292_)))
                                        (let ((_L246306_ _args245391246303_)
                                              (_L246307_ _hd245381246277_)
                                              (_L246308_ _hd245372246253_)
                                              (_L246309_ _hd245363246229_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L246309_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L246308_
                                                      _self245334_)))
                                              (___kont254439254440_
                                               _L246306_
                                               _L246307_
                                               _L246308_
                                               _L246309_)
                                              (___match254730254731_
                                               _e245355246202_
                                               _hd245354246205_
                                               _tl245353246207_
                                               _e245358246210_
                                               _hd245357246213_
                                               _tl245356246215_
                                               _e245361246218_
                                               _hd245360246221_
                                               _tl245359246223_
                                               _e245364246226_
                                               _hd245363246229_
                                               _tl245362246231_
                                               _e245367246234_
                                               _hd245366246237_
                                               _tl245365246239_
                                               _e245370246242_
                                               _hd245369246245_
                                               _tl245368246247_
                                               _e245373246250_
                                               _hd245372246253_
                                               _tl245371246255_
                                               _e245376246258_
                                               _hd245375246261_
                                               _tl245374246263_
                                               _e245379246266_
                                               _hd245378246269_
                                               _tl245377246271_
                                               _e245382246274_
                                               _hd245381246277_
                                               _tl245380246279_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop245386246287_ _target245383246282_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx254437254438_))
                  (let ((_e245355246202_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx254437254438_))))
                    (let ((_tl245353246207_
                           (let ()
                             (declare (not safe))
                             (##cdr _e245355246202_)))
                          (_hd245354246205_
                           (let ()
                             (declare (not safe))
                             (##car _e245355246202_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl245353246207_))
                          (let ((_e245358246210_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl245353246207_))))
                            (let ((_tl245356246215_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245358246210_)))
                                  (_hd245357246213_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245358246210_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd245357246213_))
                                  (let ((_e245361246218_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd245357246213_))))
                                    (let ((_tl245359246223_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e245361246218_)))
                                          (_hd245360246221_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e245361246218_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd245360246221_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd245360246221_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl245359246223_))
                                                  (let ((_e245364246226_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl245359246223_))))
                                                    (let ((_tl245362246231_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e245364246226_)))
                                                          (_hd245363246229_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e245364246226_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl245362246231_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl245356246215_))
                      (let ((_e245367246234_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl245356246215_))))
                        (let ((_tl245365246239_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e245367246234_)))
                              (_hd245366246237_
                               (let ()
                                 (declare (not safe))
                                 (##car _e245367246234_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd245366246237_))
                              (let ((_e245370246242_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd245366246237_))))
                                (let ((_tl245368246247_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245370246242_)))
                                      (_hd245369246245_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245370246242_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd245369246245_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd245369246245_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl245368246247_))
                                              (let ((_e245373246250_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl245368246247_))))
                                                (let ((_tl245371246255_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e245373246250_)))
                                                      (_hd245372246253_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e245373246250_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl245371246255_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl245365246239_))
                                                          (let ((_e245376246258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl245365246239_))))
                    (let ((_tl245374246263_
                           (let ()
                             (declare (not safe))
                             (##cdr _e245376246258_)))
                          (_hd245375246261_
                           (let ()
                             (declare (not safe))
                             (##car _e245376246258_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd245375246261_))
                          (let ((_e245379246266_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd245375246261_))))
                            (let ((_tl245377246271_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245379246266_)))
                                  (_hd245378246269_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245379246266_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd245378246269_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd245378246269_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl245377246271_))
                                          (let ((_e245382246274_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl245377246271_))))
                                            (let ((_tl245380246279_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e245382246274_)))
                                                  (_hd245381246277_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e245382246274_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl245380246279_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl245374246263_))
                                                      (let ((___splice254441254442_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl245374246263_ '0))))
                (let ((_tl245385246284_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice254441254442_ '1)))
                      (_target245383246282_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice254441254442_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl245385246284_))
                      (___match254542254543_
                       _e245355246202_
                       _hd245354246205_
                       _tl245353246207_
                       _e245358246210_
                       _hd245357246213_
                       _tl245356246215_
                       _e245361246218_
                       _hd245360246221_
                       _tl245359246223_
                       _e245364246226_
                       _hd245363246229_
                       _tl245362246231_
                       _e245367246234_
                       _hd245366246237_
                       _tl245365246239_
                       _e245370246242_
                       _hd245369246245_
                       _tl245368246247_
                       _e245373246250_
                       _hd245372246253_
                       _tl245371246255_
                       _e245376246258_
                       _hd245375246261_
                       _tl245374246263_
                       _e245379246266_
                       _hd245378246269_
                       _tl245377246271_
                       _e245382246274_
                       _hd245381246277_
                       _tl245380246279_
                       ___splice254441254442_
                       _target245383246282_
                       _tl245385246284_)
                      (___match254730254731_
                       _e245355246202_
                       _hd245354246205_
                       _tl245353246207_
                       _e245358246210_
                       _hd245357246213_
                       _tl245356246215_
                       _e245361246218_
                       _hd245360246221_
                       _tl245359246223_
                       _e245364246226_
                       _hd245363246229_
                       _tl245362246231_
                       _e245367246234_
                       _hd245366246237_
                       _tl245365246239_
                       _e245370246242_
                       _hd245369246245_
                       _tl245368246247_
                       _e245373246250_
                       _hd245372246253_
                       _tl245371246255_
                       _e245376246258_
                       _hd245375246261_
                       _tl245374246263_
                       _e245379246266_
                       _hd245378246269_
                       _tl245377246271_
                       _e245382246274_
                       _hd245381246277_
                       _tl245380246279_))))
              (___match254730254731_
               _e245355246202_
               _hd245354246205_
               _tl245353246207_
               _e245358246210_
               _hd245357246213_
               _tl245356246215_
               _e245361246218_
               _hd245360246221_
               _tl245359246223_
               _e245364246226_
               _hd245363246229_
               _tl245362246231_
               _e245367246234_
               _hd245366246237_
               _tl245365246239_
               _e245370246242_
               _hd245369246245_
               _tl245368246247_
               _e245373246250_
               _hd245372246253_
               _tl245371246255_
               _e245376246258_
               _hd245375246261_
               _tl245374246263_
               _e245379246266_
               _hd245378246269_
               _tl245377246271_
               _e245382246274_
               _hd245381246277_
               _tl245380246279_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match254934254935_
                                                   _e245355246202_
                                                   _hd245354246205_
                                                   _tl245353246207_
                                                   _e245358246210_
                                                   _hd245357246213_
                                                   _tl245356246215_
                                                   _e245361246218_
                                                   _hd245360246221_
                                                   _tl245359246223_
                                                   _e245364246226_
                                                   _hd245363246229_
                                                   _tl245362246231_
                                                   _e245367246234_
                                                   _hd245366246237_
                                                   _tl245365246239_
                                                   _e245370246242_
                                                   _hd245369246245_
                                                   _tl245368246247_
                                                   _e245373246250_
                                                   _hd245372246253_
                                                   _tl245371246255_
                                                   _e245376246258_
                                                   _hd245375246261_
                                                   _tl245374246263_))))
                                          (___match254934254935_
                                           _e245355246202_
                                           _hd245354246205_
                                           _tl245353246207_
                                           _e245358246210_
                                           _hd245357246213_
                                           _tl245356246215_
                                           _e245361246218_
                                           _hd245360246221_
                                           _tl245359246223_
                                           _e245364246226_
                                           _hd245363246229_
                                           _tl245362246231_
                                           _e245367246234_
                                           _hd245366246237_
                                           _tl245365246239_
                                           _e245370246242_
                                           _hd245369246245_
                                           _tl245368246247_
                                           _e245373246250_
                                           _hd245372246253_
                                           _tl245371246255_
                                           _e245376246258_
                                           _hd245375246261_
                                           _tl245374246263_))
                                      (___match254610254611_
                                       _e245355246202_
                                       _hd245354246205_
                                       _tl245353246207_
                                       _e245358246210_
                                       _hd245357246213_
                                       _tl245356246215_
                                       _e245361246218_
                                       _hd245360246221_
                                       _tl245359246223_
                                       _e245364246226_
                                       _hd245363246229_
                                       _tl245362246231_
                                       _e245367246234_
                                       _hd245366246237_
                                       _tl245365246239_
                                       _e245370246242_
                                       _hd245369246245_
                                       _tl245368246247_
                                       _e245373246250_
                                       _hd245372246253_
                                       _tl245371246255_
                                       _e245376246258_
                                       _hd245375246261_
                                       _tl245374246263_
                                       _e245379246266_
                                       _hd245378246269_
                                       _tl245377246271_))
                                  (___match254934254935_
                                   _e245355246202_
                                   _hd245354246205_
                                   _tl245353246207_
                                   _e245358246210_
                                   _hd245357246213_
                                   _tl245356246215_
                                   _e245361246218_
                                   _hd245360246221_
                                   _tl245359246223_
                                   _e245364246226_
                                   _hd245363246229_
                                   _tl245362246231_
                                   _e245367246234_
                                   _hd245366246237_
                                   _tl245365246239_
                                   _e245370246242_
                                   _hd245369246245_
                                   _tl245368246247_
                                   _e245373246250_
                                   _hd245372246253_
                                   _tl245371246255_
                                   _e245376246258_
                                   _hd245375246261_
                                   _tl245374246263_))))
                          (___match254934254935_
                           _e245355246202_
                           _hd245354246205_
                           _tl245353246207_
                           _e245358246210_
                           _hd245357246213_
                           _tl245356246215_
                           _e245361246218_
                           _hd245360246221_
                           _tl245359246223_
                           _e245364246226_
                           _hd245363246229_
                           _tl245362246231_
                           _e245367246234_
                           _hd245366246237_
                           _tl245365246239_
                           _e245370246242_
                           _hd245369246245_
                           _tl245368246247_
                           _e245373246250_
                           _hd245372246253_
                           _tl245371246255_
                           _e245376246258_
                           _hd245375246261_
                           _tl245374246263_))))
                  (___match254872254873_
                   _e245355246202_
                   _hd245354246205_
                   _tl245353246207_
                   _e245358246210_
                   _hd245357246213_
                   _tl245356246215_
                   _e245361246218_
                   _hd245360246221_
                   _tl245359246223_
                   _e245364246226_
                   _hd245363246229_
                   _tl245362246231_
                   _e245367246234_
                   _hd245366246237_
                   _tl245365246239_
                   _e245370246242_
                   _hd245369246245_
                   _tl245368246247_
                   _e245373246250_
                   _hd245372246253_
                   _tl245371246255_))
              (___kont254455254456_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont254455254456_))
                                          (___kont254455254456_))
                                      (___kont254455254456_))))
                              (___kont254455254456_))))
                      (___kont254455254456_))
                  (___kont254455254456_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont254455254456_))
                                              (___kont254455254456_))
                                          (___kont254455254456_))))
                                  (___kont254455254456_))))
                          (___kont254455254456_))))
                  (___kont254455254456_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx244279_
               _self244280_
               _$t244281_
               _methods244282_
               _slots244283_
               _class-check244284_
               _struct-check244285_
               _struct-assert244286_)
        (letrec ((_force-e244288_
                  (lambda (_what245331_)
                    (let ((__tmp255810
                           (let ((__tmp255814
                                  (let ((__tmp255815
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp255815)))
                                 (__tmp255811
                                  (let ((__tmp255812
                                         (let ((__tmp255813
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what245331_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp255813))))
                                    (declare (not safe))
                                    (cons __tmp255812 '()))))
                             (declare (not safe))
                             (cons __tmp255814 __tmp255811))))
                      (declare (not safe))
                      (cons '%#call __tmp255810)))))
          (let* ((___stx254939254940_ _stx244279_)
                 (_g244296244518_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx254939254940_)))))
            (let ((___kont254941254942_
                   (lambda (_L245277_ _L245278_ _L245279_ _L245280_)
                     (let ((_$method245325_
                            (let ((__tmp255816
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L245278_))))
                              (declare (not safe))
                              (table-ref _methods244282_ __tmp255816)))
                           (_args245326_
                            (map (lambda (_g245313245315_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g245313245315_
                                      _self244280_
                                      _$t244281_
                                      _methods244282_
                                      _slots244283_
                                      _class-check244284_
                                      _struct-check244285_
                                      _struct-assert244286_)))
                                 (let ((__tmp255817
                                        (lambda (_g245317245320_
                                                 _g245318245322_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g245317245320_
                                                  _g245318245322_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp255817 '() _L245277_)))))
                       (let ((__tmp255818
                              (let ((__tmp255819
                                     (let ((__tmp255823
                                            (let ()
                                              (declare (not safe))
                                              (_force-e244288_
                                               _$method245325_)))
                                           (__tmp255820
                                            (let ((__tmp255821
                                                   (let ((__tmp255822
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self244280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp255822))))
                                              (declare (not safe))
                                              (cons __tmp255821
                                                    _args245326_))))
                                       (declare (not safe))
                                       (cons __tmp255823 __tmp255820))))
                                (declare (not safe))
                                (cons '%#call __tmp255819))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255818 _stx244279_)))))
                  (___kont254945254946_
                   (lambda (_L245109_ _L245110_ _L245111_ _L245112_ _L245113_)
                     (let ((_$method245165_
                            (let ((__tmp255824
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L245110_))))
                              (declare (not safe))
                              (table-ref _methods244282_ __tmp255824)))
                           (_args245166_
                            (map (lambda (_g245153245155_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g245153245155_
                                      _self244280_
                                      _$t244281_
                                      _methods244282_
                                      _slots244283_
                                      _class-check244284_
                                      _struct-check244285_
                                      _struct-assert244286_)))
                                 (let ((__tmp255825
                                        (lambda (_g245157245160_
                                                 _g245158245162_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g245157245160_
                                                  _g245158245162_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp255825 '() _L245109_)))))
                       (let ((__tmp255826
                              (let ((__tmp255827
                                     (let ((__tmp255833
                                            (let ((__tmp255834
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp255834)))
                                           (__tmp255828
                                            (let ((__tmp255832
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e244288_
                                                      _$method245165_)))
                                                  (__tmp255829
                                                   (let ((__tmp255830
                                                          (let ((__tmp255831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244280_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp255831))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp255830
                                                           _args245166_))))
                                              (declare (not safe))
                                              (cons __tmp255832 __tmp255829))))
                                       (declare (not safe))
                                       (cons __tmp255833 __tmp255828))))
                                (declare (not safe))
                                (cons '%#call __tmp255827))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255826 _stx244279_)))))
                  (___kont254949254950_
                   (lambda (_L244940_ _L244941_ _L244942_)
                     (let* ((_$field244974_
                             (let ((__tmp255835
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L244940_))))
                               (declare (not safe))
                               (table-ref _slots244283_ __tmp255835)))
                            (__tmp255836
                             (let ((__tmp255837
                                    (let ((__tmp255844
                                           (let ((__tmp255845
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t244281_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp255845)))
                                          (__tmp255838
                                           (let ((__tmp255842
                                                  (let ((__tmp255843
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field244974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp255843)))
                                                 (__tmp255839
                                                  (let ((__tmp255840
                                                         (let ((__tmp255841
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self244280_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp255841))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255840 '()))))
                                             (declare (not safe))
                                             (cons __tmp255842 __tmp255839))))
                                      (declare (not safe))
                                      (cons __tmp255844 __tmp255838))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp255837))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp255836 _stx244279_))))
                  (___kont254951254952_
                   (lambda (_L244814_ _L244815_ _L244816_ _L244817_)
                     (let ((_$field244852_
                            (let ((__tmp255846
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L244815_))))
                              (declare (not safe))
                              (table-ref _slots244283_ __tmp255846)))
                           (_expr244853_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L244814_
                               _self244280_
                               _$t244281_
                               _methods244282_
                               _slots244283_
                               _class-check244284_
                               _struct-check244285_
                               _struct-assert244286_))))
                       (let ((__tmp255847
                              (let ((__tmp255848
                                     (let ((__tmp255856
                                            (let ((__tmp255857
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t244281_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp255857)))
                                           (__tmp255849
                                            (let ((__tmp255854
                                                   (let ((__tmp255855
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field244852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp255855)))
                                                  (__tmp255850
                                                   (let ((__tmp255852
                                                          (let ((__tmp255853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244280_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp255853)))
                 (__tmp255851
                  (let () (declare (not safe)) (cons _expr244853_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp255852
                                                           __tmp255851))))
                                              (declare (not safe))
                                              (cons __tmp255854 __tmp255850))))
                                       (declare (not safe))
                                       (cons __tmp255856 __tmp255849))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp255848))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255847 _stx244279_)))))
                  (___kont254953254954_
                   (lambda (_L244693_ _L244694_)
                     (let* ((_slot244716_
                             (##structure-ref
                              (let ((__tmp255858
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L244694_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp255858))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field244718_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots244283_ _slot244716_))))
                       (let ((__tmp255859
                              (let ((__tmp255860
                                     (let ((__tmp255867
                                            (let ((__tmp255868
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t244281_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp255868)))
                                           (__tmp255861
                                            (let ((__tmp255865
                                                   (let ((__tmp255866
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field244718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp255866)))
                                                  (__tmp255862
                                                   (let ((__tmp255863
                                                          (let ((__tmp255864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244280_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp255864))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp255863 '()))))
                                              (declare (not safe))
                                              (cons __tmp255865 __tmp255862))))
                                       (declare (not safe))
                                       (cons __tmp255867 __tmp255861))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp255860))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255859 _stx244279_)))))
                  (___kont254955254956_
                   (lambda (_L244594_ _L244595_ _L244596_)
                     (let* ((_slot244625_
                             (##structure-ref
                              (let ((__tmp255869
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L244596_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp255869))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field244627_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots244283_ _slot244625_)))
                            (_expr244629_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L244594_
                                _self244280_
                                _$t244281_
                                _methods244282_
                                _slots244283_
                                _class-check244284_
                                _struct-check244285_
                                _struct-assert244286_))))
                       (let ((__tmp255870
                              (let ((__tmp255871
                                     (let ((__tmp255879
                                            (let ((__tmp255880
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t244281_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp255880)))
                                           (__tmp255872
                                            (let ((__tmp255877
                                                   (let ((__tmp255878
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field244627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp255878)))
                                                  (__tmp255873
                                                   (let ((__tmp255875
                                                          (let ((__tmp255876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244280_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp255876)))
                 (__tmp255874
                  (let () (declare (not safe)) (cons _expr244629_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp255875
                                                           __tmp255874))))
                                              (declare (not safe))
                                              (cons __tmp255877 __tmp255873))))
                                       (declare (not safe))
                                       (cons __tmp255879 __tmp255872))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp255871))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255870 _stx244279_)))))
                  (___kont254957254958_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx244279_
                        _self244280_
                        _$t244281_
                        _methods244282_
                        _slots244283_
                        _class-check244284_
                        _struct-check244285_
                        _struct-assert244286_)))))
              (let* ((___match255438255439_
                      (lambda (_e244492244530_
                               _hd244491244533_
                               _tl244490244535_
                               _e244495244538_
                               _hd244494244541_
                               _tl244493244543_
                               _e244498244546_
                               _hd244497244549_
                               _tl244496244551_
                               _e244501244554_
                               _hd244500244557_
                               _tl244499244559_
                               _e244504244562_
                               _hd244503244565_
                               _tl244502244567_
                               _e244507244570_
                               _hd244506244573_
                               _tl244505244575_
                               _e244510244578_
                               _hd244509244581_
                               _tl244508244583_
                               _e244513244586_
                               _hd244512244589_
                               _tl244511244591_)
                        (let ((_L244594_ _hd244512244589_)
                              (_L244595_ _hd244509244581_)
                              (_L244596_ _hd244500244557_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L244595_
                                      _self244280_))
                                   (let ((__tmp255881
                                          (let ((__tmp255882
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L244596_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp255882))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp255881
                                      'gxc#!mutator::t)))
                              (___kont254955254956_
                               _L244594_
                               _L244595_
                               _L244596_)
                              (___kont254957254958_)))))
                     (___match255436255437_
                      (lambda (_e244492244530_
                               _hd244491244533_
                               _tl244490244535_
                               _e244495244538_
                               _hd244494244541_
                               _tl244493244543_
                               _e244498244546_
                               _hd244497244549_
                               _tl244496244551_
                               _e244501244554_
                               _hd244500244557_
                               _tl244499244559_
                               _e244504244562_
                               _hd244503244565_
                               _tl244502244567_
                               _e244507244570_
                               _hd244506244573_
                               _tl244505244575_
                               _e244510244578_
                               _hd244509244581_
                               _tl244508244583_
                               _e244513244586_
                               _hd244512244589_
                               _tl244511244591_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl244511244591_))
                            (___match255438255439_
                             _e244492244530_
                             _hd244491244533_
                             _tl244490244535_
                             _e244495244538_
                             _hd244494244541_
                             _tl244493244543_
                             _e244498244546_
                             _hd244497244549_
                             _tl244496244551_
                             _e244501244554_
                             _hd244500244557_
                             _tl244499244559_
                             _e244504244562_
                             _hd244503244565_
                             _tl244502244567_
                             _e244507244570_
                             _hd244506244573_
                             _tl244505244575_
                             _e244510244578_
                             _hd244509244581_
                             _tl244508244583_
                             _e244513244586_
                             _hd244512244589_
                             _tl244511244591_)
                            (___kont254957254958_))))
                     (___match255430255431_
                      (lambda (_e244492244530_
                               _hd244491244533_
                               _tl244490244535_
                               _e244495244538_
                               _hd244494244541_
                               _tl244493244543_
                               _e244498244546_
                               _hd244497244549_
                               _tl244496244551_
                               _e244501244554_
                               _hd244500244557_
                               _tl244499244559_
                               _e244504244562_
                               _hd244503244565_
                               _tl244502244567_
                               _e244507244570_
                               _hd244506244573_
                               _tl244505244575_
                               _e244510244578_
                               _hd244509244581_
                               _tl244508244583_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244502244567_))
                            (let ((_e244513244586_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244502244567_))))
                              (let ((_tl244511244591_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244513244586_)))
                                    (_hd244512244589_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244513244586_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl244511244591_))
                                    (___match255438255439_
                                     _e244492244530_
                                     _hd244491244533_
                                     _tl244490244535_
                                     _e244495244538_
                                     _hd244494244541_
                                     _tl244493244543_
                                     _e244498244546_
                                     _hd244497244549_
                                     _tl244496244551_
                                     _e244501244554_
                                     _hd244500244557_
                                     _tl244499244559_
                                     _e244504244562_
                                     _hd244503244565_
                                     _tl244502244567_
                                     _e244507244570_
                                     _hd244506244573_
                                     _tl244505244575_
                                     _e244510244578_
                                     _hd244509244581_
                                     _tl244508244583_
                                     _e244513244586_
                                     _hd244512244589_
                                     _tl244511244591_)
                                    (___kont254957254958_))))
                            (___kont254957254958_))))
                     (___match255376255377_
                      (lambda (_e244468244637_
                               _hd244467244640_
                               _tl244466244642_
                               _e244471244645_
                               _hd244470244648_
                               _tl244469244650_
                               _e244474244653_
                               _hd244473244656_
                               _tl244472244658_
                               _e244477244661_
                               _hd244476244664_
                               _tl244475244666_
                               _e244480244669_
                               _hd244479244672_
                               _tl244478244674_
                               _e244483244677_
                               _hd244482244680_
                               _tl244481244682_
                               _e244486244685_
                               _hd244485244688_
                               _tl244484244690_)
                        (let ((_L244693_ _hd244485244688_)
                              (_L244694_ _hd244476244664_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L244693_
                                      _self244280_))
                                   (let ((__tmp255883
                                          (let ((__tmp255884
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L244694_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp255884))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp255883
                                      'gxc#!accessor::t)))
                              (___kont254953254954_ _L244693_ _L244694_)
                              (___kont254957254958_)))))
                     (___match255374255375_
                      (lambda (_e244468244637_
                               _hd244467244640_
                               _tl244466244642_
                               _e244471244645_
                               _hd244470244648_
                               _tl244469244650_
                               _e244474244653_
                               _hd244473244656_
                               _tl244472244658_
                               _e244477244661_
                               _hd244476244664_
                               _tl244475244666_
                               _e244480244669_
                               _hd244479244672_
                               _tl244478244674_
                               _e244483244677_
                               _hd244482244680_
                               _tl244481244682_
                               _e244486244685_
                               _hd244485244688_
                               _tl244484244690_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl244478244674_))
                            (___match255376255377_
                             _e244468244637_
                             _hd244467244640_
                             _tl244466244642_
                             _e244471244645_
                             _hd244470244648_
                             _tl244469244650_
                             _e244474244653_
                             _hd244473244656_
                             _tl244472244658_
                             _e244477244661_
                             _hd244476244664_
                             _tl244475244666_
                             _e244480244669_
                             _hd244479244672_
                             _tl244478244674_
                             _e244483244677_
                             _hd244482244680_
                             _tl244481244682_
                             _e244486244685_
                             _hd244485244688_
                             _tl244484244690_)
                            (___match255430255431_
                             _e244468244637_
                             _hd244467244640_
                             _tl244466244642_
                             _e244471244645_
                             _hd244470244648_
                             _tl244469244650_
                             _e244474244653_
                             _hd244473244656_
                             _tl244472244658_
                             _e244477244661_
                             _hd244476244664_
                             _tl244475244666_
                             _e244480244669_
                             _hd244479244672_
                             _tl244478244674_
                             _e244483244677_
                             _hd244482244680_
                             _tl244481244682_
                             _e244486244685_
                             _hd244485244688_
                             _tl244484244690_))))
                     (___match255320255321_
                      (lambda (_e244433244726_
                               _hd244432244729_
                               _tl244431244731_
                               _e244436244734_
                               _hd244435244737_
                               _tl244434244739_
                               _e244439244742_
                               _hd244438244745_
                               _tl244437244747_
                               _e244442244750_
                               _hd244441244753_
                               _tl244440244755_
                               _e244445244758_
                               _hd244444244761_
                               _tl244443244763_
                               _e244448244766_
                               _hd244447244769_
                               _tl244446244771_
                               _e244451244774_
                               _hd244450244777_
                               _tl244449244779_
                               _e244454244782_
                               _hd244453244785_
                               _tl244452244787_
                               _e244457244790_
                               _hd244456244793_
                               _tl244455244795_
                               _e244460244798_
                               _hd244459244801_
                               _tl244458244803_
                               _e244463244806_
                               _hd244462244809_
                               _tl244461244811_)
                        (let ((_L244814_ _hd244462244809_)
                              (_L244815_ _hd244459244801_)
                              (_L244816_ _hd244450244777_)
                              (_L244817_ _hd244441244753_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L244817_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L244817_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L244816_
                                      _self244280_)))
                              (___kont254951254952_
                               _L244814_
                               _L244815_
                               _L244816_
                               _L244817_)
                              (___kont254957254958_)))))
                     (___match255312255313_
                      (lambda (_e244433244726_
                               _hd244432244729_
                               _tl244431244731_
                               _e244436244734_
                               _hd244435244737_
                               _tl244434244739_
                               _e244439244742_
                               _hd244438244745_
                               _tl244437244747_
                               _e244442244750_
                               _hd244441244753_
                               _tl244440244755_
                               _e244445244758_
                               _hd244444244761_
                               _tl244443244763_
                               _e244448244766_
                               _hd244447244769_
                               _tl244446244771_
                               _e244451244774_
                               _hd244450244777_
                               _tl244449244779_
                               _e244454244782_
                               _hd244453244785_
                               _tl244452244787_
                               _e244457244790_
                               _hd244456244793_
                               _tl244455244795_
                               _e244460244798_
                               _hd244459244801_
                               _tl244458244803_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244452244787_))
                            (let ((_e244463244806_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244452244787_))))
                              (let ((_tl244461244811_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244463244806_)))
                                    (_hd244462244809_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244463244806_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl244461244811_))
                                    (___match255320255321_
                                     _e244433244726_
                                     _hd244432244729_
                                     _tl244431244731_
                                     _e244436244734_
                                     _hd244435244737_
                                     _tl244434244739_
                                     _e244439244742_
                                     _hd244438244745_
                                     _tl244437244747_
                                     _e244442244750_
                                     _hd244441244753_
                                     _tl244440244755_
                                     _e244445244758_
                                     _hd244444244761_
                                     _tl244443244763_
                                     _e244448244766_
                                     _hd244447244769_
                                     _tl244446244771_
                                     _e244451244774_
                                     _hd244450244777_
                                     _tl244449244779_
                                     _e244454244782_
                                     _hd244453244785_
                                     _tl244452244787_
                                     _e244457244790_
                                     _hd244456244793_
                                     _tl244455244795_
                                     _e244460244798_
                                     _hd244459244801_
                                     _tl244458244803_
                                     _e244463244806_
                                     _hd244462244809_
                                     _tl244461244811_)
                                    (___kont254957254958_))))
                            (___match255436255437_
                             _e244433244726_
                             _hd244432244729_
                             _tl244431244731_
                             _e244436244734_
                             _hd244435244737_
                             _tl244434244739_
                             _e244439244742_
                             _hd244438244745_
                             _tl244437244747_
                             _e244442244750_
                             _hd244441244753_
                             _tl244440244755_
                             _e244445244758_
                             _hd244444244761_
                             _tl244443244763_
                             _e244448244766_
                             _hd244447244769_
                             _tl244446244771_
                             _e244451244774_
                             _hd244450244777_
                             _tl244449244779_
                             _e244454244782_
                             _hd244453244785_
                             _tl244452244787_))))
                     (___match255234255235_
                      (lambda (_e244399244860_
                               _hd244398244863_
                               _tl244397244865_
                               _e244402244868_
                               _hd244401244871_
                               _tl244400244873_
                               _e244405244876_
                               _hd244404244879_
                               _tl244403244881_
                               _e244408244884_
                               _hd244407244887_
                               _tl244406244889_
                               _e244411244892_
                               _hd244410244895_
                               _tl244409244897_
                               _e244414244900_
                               _hd244413244903_
                               _tl244412244905_
                               _e244417244908_
                               _hd244416244911_
                               _tl244415244913_
                               _e244420244916_
                               _hd244419244919_
                               _tl244418244921_
                               _e244423244924_
                               _hd244422244927_
                               _tl244421244929_
                               _e244426244932_
                               _hd244425244935_
                               _tl244424244937_)
                        (let ((_L244940_ _hd244425244935_)
                              (_L244941_ _hd244416244911_)
                              (_L244942_ _hd244407244887_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L244942_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L244942_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L244941_
                                      _self244280_)))
                              (___kont254949254950_
                               _L244940_
                               _L244941_
                               _L244942_)
                              (___match255438255439_
                               _e244399244860_
                               _hd244398244863_
                               _tl244397244865_
                               _e244402244868_
                               _hd244401244871_
                               _tl244400244873_
                               _e244405244876_
                               _hd244404244879_
                               _tl244403244881_
                               _e244408244884_
                               _hd244407244887_
                               _tl244406244889_
                               _e244411244892_
                               _hd244410244895_
                               _tl244409244897_
                               _e244414244900_
                               _hd244413244903_
                               _tl244412244905_
                               _e244417244908_
                               _hd244416244911_
                               _tl244415244913_
                               _e244420244916_
                               _hd244419244919_
                               _tl244418244921_)))))
                     (___match255232255233_
                      (lambda (_e244399244860_
                               _hd244398244863_
                               _tl244397244865_
                               _e244402244868_
                               _hd244401244871_
                               _tl244400244873_
                               _e244405244876_
                               _hd244404244879_
                               _tl244403244881_
                               _e244408244884_
                               _hd244407244887_
                               _tl244406244889_
                               _e244411244892_
                               _hd244410244895_
                               _tl244409244897_
                               _e244414244900_
                               _hd244413244903_
                               _tl244412244905_
                               _e244417244908_
                               _hd244416244911_
                               _tl244415244913_
                               _e244420244916_
                               _hd244419244919_
                               _tl244418244921_
                               _e244423244924_
                               _hd244422244927_
                               _tl244421244929_
                               _e244426244932_
                               _hd244425244935_
                               _tl244424244937_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl244418244921_))
                            (___match255234255235_
                             _e244399244860_
                             _hd244398244863_
                             _tl244397244865_
                             _e244402244868_
                             _hd244401244871_
                             _tl244400244873_
                             _e244405244876_
                             _hd244404244879_
                             _tl244403244881_
                             _e244408244884_
                             _hd244407244887_
                             _tl244406244889_
                             _e244411244892_
                             _hd244410244895_
                             _tl244409244897_
                             _e244414244900_
                             _hd244413244903_
                             _tl244412244905_
                             _e244417244908_
                             _hd244416244911_
                             _tl244415244913_
                             _e244420244916_
                             _hd244419244919_
                             _tl244418244921_
                             _e244423244924_
                             _hd244422244927_
                             _tl244421244929_
                             _e244426244932_
                             _hd244425244935_
                             _tl244424244937_)
                            (___match255312255313_
                             _e244399244860_
                             _hd244398244863_
                             _tl244397244865_
                             _e244402244868_
                             _hd244401244871_
                             _tl244400244873_
                             _e244405244876_
                             _hd244404244879_
                             _tl244403244881_
                             _e244408244884_
                             _hd244407244887_
                             _tl244406244889_
                             _e244411244892_
                             _hd244410244895_
                             _tl244409244897_
                             _e244414244900_
                             _hd244413244903_
                             _tl244412244905_
                             _e244417244908_
                             _hd244416244911_
                             _tl244415244913_
                             _e244420244916_
                             _hd244419244919_
                             _tl244418244921_
                             _e244423244924_
                             _hd244422244927_
                             _tl244421244929_
                             _e244426244932_
                             _hd244425244935_
                             _tl244424244937_))))
                     (___match255222255223_
                      (lambda (_e244399244860_
                               _hd244398244863_
                               _tl244397244865_
                               _e244402244868_
                               _hd244401244871_
                               _tl244400244873_
                               _e244405244876_
                               _hd244404244879_
                               _tl244403244881_
                               _e244408244884_
                               _hd244407244887_
                               _tl244406244889_
                               _e244411244892_
                               _hd244410244895_
                               _tl244409244897_
                               _e244414244900_
                               _hd244413244903_
                               _tl244412244905_
                               _e244417244908_
                               _hd244416244911_
                               _tl244415244913_
                               _e244420244916_
                               _hd244419244919_
                               _tl244418244921_
                               _e244423244924_
                               _hd244422244927_
                               _tl244421244929_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd244422244927_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl244421244929_))
                                (let ((_e244426244932_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl244421244929_))))
                                  (let ((_tl244424244937_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244426244932_)))
                                        (_hd244425244935_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244426244932_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl244424244937_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl244418244921_))
                                            (___match255234255235_
                                             _e244399244860_
                                             _hd244398244863_
                                             _tl244397244865_
                                             _e244402244868_
                                             _hd244401244871_
                                             _tl244400244873_
                                             _e244405244876_
                                             _hd244404244879_
                                             _tl244403244881_
                                             _e244408244884_
                                             _hd244407244887_
                                             _tl244406244889_
                                             _e244411244892_
                                             _hd244410244895_
                                             _tl244409244897_
                                             _e244414244900_
                                             _hd244413244903_
                                             _tl244412244905_
                                             _e244417244908_
                                             _hd244416244911_
                                             _tl244415244913_
                                             _e244420244916_
                                             _hd244419244919_
                                             _tl244418244921_
                                             _e244423244924_
                                             _hd244422244927_
                                             _tl244421244929_
                                             _e244426244932_
                                             _hd244425244935_
                                             _tl244424244937_)
                                            (___match255312255313_
                                             _e244399244860_
                                             _hd244398244863_
                                             _tl244397244865_
                                             _e244402244868_
                                             _hd244401244871_
                                             _tl244400244873_
                                             _e244405244876_
                                             _hd244404244879_
                                             _tl244403244881_
                                             _e244408244884_
                                             _hd244407244887_
                                             _tl244406244889_
                                             _e244411244892_
                                             _hd244410244895_
                                             _tl244409244897_
                                             _e244414244900_
                                             _hd244413244903_
                                             _tl244412244905_
                                             _e244417244908_
                                             _hd244416244911_
                                             _tl244415244913_
                                             _e244420244916_
                                             _hd244419244919_
                                             _tl244418244921_
                                             _e244423244924_
                                             _hd244422244927_
                                             _tl244421244929_
                                             _e244426244932_
                                             _hd244425244935_
                                             _tl244424244937_))
                                        (___match255436255437_
                                         _e244399244860_
                                         _hd244398244863_
                                         _tl244397244865_
                                         _e244402244868_
                                         _hd244401244871_
                                         _tl244400244873_
                                         _e244405244876_
                                         _hd244404244879_
                                         _tl244403244881_
                                         _e244408244884_
                                         _hd244407244887_
                                         _tl244406244889_
                                         _e244411244892_
                                         _hd244410244895_
                                         _tl244409244897_
                                         _e244414244900_
                                         _hd244413244903_
                                         _tl244412244905_
                                         _e244417244908_
                                         _hd244416244911_
                                         _tl244415244913_
                                         _e244420244916_
                                         _hd244419244919_
                                         _tl244418244921_))))
                                (___match255436255437_
                                 _e244399244860_
                                 _hd244398244863_
                                 _tl244397244865_
                                 _e244402244868_
                                 _hd244401244871_
                                 _tl244400244873_
                                 _e244405244876_
                                 _hd244404244879_
                                 _tl244403244881_
                                 _e244408244884_
                                 _hd244407244887_
                                 _tl244406244889_
                                 _e244411244892_
                                 _hd244410244895_
                                 _tl244409244897_
                                 _e244414244900_
                                 _hd244413244903_
                                 _tl244412244905_
                                 _e244417244908_
                                 _hd244416244911_
                                 _tl244415244913_
                                 _e244420244916_
                                 _hd244419244919_
                                 _tl244418244921_))
                            (___match255436255437_
                             _e244399244860_
                             _hd244398244863_
                             _tl244397244865_
                             _e244402244868_
                             _hd244401244871_
                             _tl244400244873_
                             _e244405244876_
                             _hd244404244879_
                             _tl244403244881_
                             _e244408244884_
                             _hd244407244887_
                             _tl244406244889_
                             _e244411244892_
                             _hd244410244895_
                             _tl244409244897_
                             _e244414244900_
                             _hd244413244903_
                             _tl244412244905_
                             _e244417244908_
                             _hd244416244911_
                             _tl244415244913_
                             _e244420244916_
                             _hd244419244919_
                             _tl244418244921_))))
                     (___match255154255155_
                      (lambda (_e244348244981_
                               _hd244347244984_
                               _tl244346244986_
                               _e244351244989_
                               _hd244350244992_
                               _tl244349244994_
                               _e244354244997_
                               _hd244353245000_
                               _tl244352245002_
                               _e244357245005_
                               _hd244356245008_
                               _tl244355245010_
                               _e244360245013_
                               _hd244359245016_
                               _tl244358245018_
                               _e244363245021_
                               _hd244362245024_
                               _tl244361245026_
                               _e244366245029_
                               _hd244365245032_
                               _tl244364245034_
                               _e244369245037_
                               _hd244368245040_
                               _tl244367245042_
                               _e244372245045_
                               _hd244371245048_
                               _tl244370245050_
                               _e244375245053_
                               _hd244374245056_
                               _tl244373245058_
                               _e244378245061_
                               _hd244377245064_
                               _tl244376245066_
                               _e244381245069_
                               _hd244380245072_
                               _tl244379245074_
                               _e244384245077_
                               _hd244383245080_
                               _tl244382245082_
                               ___splice254947254948_
                               _target244385245085_
                               _tl244387245087_)
                        (letrec ((_loop244388245090_
                                  (lambda (_hd244386245093_ _args244392245095_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd244386245093_))
                                        (let ((_e244389245098_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd244386245093_))))
                                          (let ((_lp-tl244391245103_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e244389245098_)))
                                                (_lp-hd244390245101_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e244389245098_))))
                                            (let ((__tmp255885
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd244390245101_
                                                           _args244392245095_))))
                                              (declare (not safe))
                                              (_loop244388245090_
                                               _lp-tl244391245103_
                                               __tmp255885))))
                                        (let ((_args244393245106_
                                               (reverse _args244392245095_)))
                                          (let ((_L245109_ _args244393245106_)
                                                (_L245110_ _hd244383245080_)
                                                (_L245111_ _hd244374245056_)
                                                (_L245112_ _hd244365245032_)
                                                (_L245113_ _hd244356245008_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L245113_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L245112_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L245111_
                                                        _self244280_)))
                                                (___kont254945254946_
                                                 _L245109_
                                                 _L245110_
                                                 _L245111_
                                                 _L245112_
                                                 _L245113_)
                                                (___kont254957254958_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop244388245090_ _target244385245085_ '())))))
                     (___match255112255113_
                      (lambda (_e244348244981_
                               _hd244347244984_
                               _tl244346244986_
                               _e244351244989_
                               _hd244350244992_
                               _tl244349244994_
                               _e244354244997_
                               _hd244353245000_
                               _tl244352245002_
                               _e244357245005_
                               _hd244356245008_
                               _tl244355245010_
                               _e244360245013_
                               _hd244359245016_
                               _tl244358245018_
                               _e244363245021_
                               _hd244362245024_
                               _tl244361245026_
                               _e244366245029_
                               _hd244365245032_
                               _tl244364245034_
                               _e244369245037_
                               _hd244368245040_
                               _tl244367245042_
                               _e244372245045_
                               _hd244371245048_
                               _tl244370245050_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd244371245048_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl244370245050_))
                                (let ((_e244375245053_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl244370245050_))))
                                  (let ((_tl244373245058_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244375245053_)))
                                        (_hd244374245056_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244375245053_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl244373245058_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl244367245042_))
                                            (let ((_e244378245061_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl244367245042_))))
                                              (let ((_tl244376245066_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e244378245061_)))
                                                    (_hd244377245064_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e244378245061_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd244377245064_))
                                                    (let ((_e244381245069_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd244377245064_))))
                                                      (let ((_tl244379245074_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e244381245069_)))
                    (_hd244380245072_
                     (let () (declare (not safe)) (##car _e244381245069_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd244380245072_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd244380245072_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244379245074_))
                            (let ((_e244384245077_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244379245074_))))
                              (let ((_tl244382245082_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244384245077_)))
                                    (_hd244383245080_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244384245077_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl244382245082_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl244376245066_))
                                        (let ((___splice254947254948_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl244376245066_
                                                  '0))))
                                          (let ((_tl244387245087_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice254947254948_
                                                    '1)))
                                                (_target244385245085_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice254947254948_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl244387245087_))
                                                (___match255154255155_
                                                 _e244348244981_
                                                 _hd244347244984_
                                                 _tl244346244986_
                                                 _e244351244989_
                                                 _hd244350244992_
                                                 _tl244349244994_
                                                 _e244354244997_
                                                 _hd244353245000_
                                                 _tl244352245002_
                                                 _e244357245005_
                                                 _hd244356245008_
                                                 _tl244355245010_
                                                 _e244360245013_
                                                 _hd244359245016_
                                                 _tl244358245018_
                                                 _e244363245021_
                                                 _hd244362245024_
                                                 _tl244361245026_
                                                 _e244366245029_
                                                 _hd244365245032_
                                                 _tl244364245034_
                                                 _e244369245037_
                                                 _hd244368245040_
                                                 _tl244367245042_
                                                 _e244372245045_
                                                 _hd244371245048_
                                                 _tl244370245050_
                                                 _e244375245053_
                                                 _hd244374245056_
                                                 _tl244373245058_
                                                 _e244378245061_
                                                 _hd244377245064_
                                                 _tl244376245066_
                                                 _e244381245069_
                                                 _hd244380245072_
                                                 _tl244379245074_
                                                 _e244384245077_
                                                 _hd244383245080_
                                                 _tl244382245082_
                                                 ___splice254947254948_
                                                 _target244385245085_
                                                 _tl244387245087_)
                                                (___kont254957254958_))))
                                        (___kont254957254958_))
                                    (___kont254957254958_))))
                            (___kont254957254958_))
                        (___kont254957254958_))
                    (___kont254957254958_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont254957254958_))))
                                            (___match255436255437_
                                             _e244348244981_
                                             _hd244347244984_
                                             _tl244346244986_
                                             _e244351244989_
                                             _hd244350244992_
                                             _tl244349244994_
                                             _e244354244997_
                                             _hd244353245000_
                                             _tl244352245002_
                                             _e244357245005_
                                             _hd244356245008_
                                             _tl244355245010_
                                             _e244360245013_
                                             _hd244359245016_
                                             _tl244358245018_
                                             _e244363245021_
                                             _hd244362245024_
                                             _tl244361245026_
                                             _e244366245029_
                                             _hd244365245032_
                                             _tl244364245034_
                                             _e244369245037_
                                             _hd244368245040_
                                             _tl244367245042_))
                                        (___match255436255437_
                                         _e244348244981_
                                         _hd244347244984_
                                         _tl244346244986_
                                         _e244351244989_
                                         _hd244350244992_
                                         _tl244349244994_
                                         _e244354244997_
                                         _hd244353245000_
                                         _tl244352245002_
                                         _e244357245005_
                                         _hd244356245008_
                                         _tl244355245010_
                                         _e244360245013_
                                         _hd244359245016_
                                         _tl244358245018_
                                         _e244363245021_
                                         _hd244362245024_
                                         _tl244361245026_
                                         _e244366245029_
                                         _hd244365245032_
                                         _tl244364245034_
                                         _e244369245037_
                                         _hd244368245040_
                                         _tl244367245042_))))
                                (___match255436255437_
                                 _e244348244981_
                                 _hd244347244984_
                                 _tl244346244986_
                                 _e244351244989_
                                 _hd244350244992_
                                 _tl244349244994_
                                 _e244354244997_
                                 _hd244353245000_
                                 _tl244352245002_
                                 _e244357245005_
                                 _hd244356245008_
                                 _tl244355245010_
                                 _e244360245013_
                                 _hd244359245016_
                                 _tl244358245018_
                                 _e244363245021_
                                 _hd244362245024_
                                 _tl244361245026_
                                 _e244366245029_
                                 _hd244365245032_
                                 _tl244364245034_
                                 _e244369245037_
                                 _hd244368245040_
                                 _tl244367245042_))
                            (___match255222255223_
                             _e244348244981_
                             _hd244347244984_
                             _tl244346244986_
                             _e244351244989_
                             _hd244350244992_
                             _tl244349244994_
                             _e244354244997_
                             _hd244353245000_
                             _tl244352245002_
                             _e244357245005_
                             _hd244356245008_
                             _tl244355245010_
                             _e244360245013_
                             _hd244359245016_
                             _tl244358245018_
                             _e244363245021_
                             _hd244362245024_
                             _tl244361245026_
                             _e244366245029_
                             _hd244365245032_
                             _tl244364245034_
                             _e244369245037_
                             _hd244368245040_
                             _tl244367245042_
                             _e244372245045_
                             _hd244371245048_
                             _tl244370245050_))))
                     (___match255044255045_
                      (lambda (_e244304245173_
                               _hd244303245176_
                               _tl244302245178_
                               _e244307245181_
                               _hd244306245184_
                               _tl244305245186_
                               _e244310245189_
                               _hd244309245192_
                               _tl244308245194_
                               _e244313245197_
                               _hd244312245200_
                               _tl244311245202_
                               _e244316245205_
                               _hd244315245208_
                               _tl244314245210_
                               _e244319245213_
                               _hd244318245216_
                               _tl244317245218_
                               _e244322245221_
                               _hd244321245224_
                               _tl244320245226_
                               _e244325245229_
                               _hd244324245232_
                               _tl244323245234_
                               _e244328245237_
                               _hd244327245240_
                               _tl244326245242_
                               _e244331245245_
                               _hd244330245248_
                               _tl244329245250_
                               ___splice254943254944_
                               _target244332245253_
                               _tl244334245255_)
                        (letrec ((_loop244335245258_
                                  (lambda (_hd244333245261_ _args244339245263_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd244333245261_))
                                        (let ((_e244336245266_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd244333245261_))))
                                          (let ((_lp-tl244338245271_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e244336245266_)))
                                                (_lp-hd244337245269_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e244336245266_))))
                                            (let ((__tmp255886
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd244337245269_
                                                           _args244339245263_))))
                                              (declare (not safe))
                                              (_loop244335245258_
                                               _lp-tl244338245271_
                                               __tmp255886))))
                                        (let ((_args244340245274_
                                               (reverse _args244339245263_)))
                                          (let ((_L245277_ _args244340245274_)
                                                (_L245278_ _hd244330245248_)
                                                (_L245279_ _hd244321245224_)
                                                (_L245280_ _hd244312245200_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L245280_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L245279_
                                                        _self244280_)))
                                                (___kont254941254942_
                                                 _L245277_
                                                 _L245278_
                                                 _L245279_
                                                 _L245280_)
                                                (___match255232255233_
                                                 _e244304245173_
                                                 _hd244303245176_
                                                 _tl244302245178_
                                                 _e244307245181_
                                                 _hd244306245184_
                                                 _tl244305245186_
                                                 _e244310245189_
                                                 _hd244309245192_
                                                 _tl244308245194_
                                                 _e244313245197_
                                                 _hd244312245200_
                                                 _tl244311245202_
                                                 _e244316245205_
                                                 _hd244315245208_
                                                 _tl244314245210_
                                                 _e244319245213_
                                                 _hd244318245216_
                                                 _tl244317245218_
                                                 _e244322245221_
                                                 _hd244321245224_
                                                 _tl244320245226_
                                                 _e244325245229_
                                                 _hd244324245232_
                                                 _tl244323245234_
                                                 _e244328245237_
                                                 _hd244327245240_
                                                 _tl244326245242_
                                                 _e244331245245_
                                                 _hd244330245248_
                                                 _tl244329245250_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop244335245258_ _target244332245253_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx254939254940_))
                    (let ((_e244304245173_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx254939254940_))))
                      (let ((_tl244302245178_
                             (let ()
                               (declare (not safe))
                               (##cdr _e244304245173_)))
                            (_hd244303245176_
                             (let ()
                               (declare (not safe))
                               (##car _e244304245173_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244302245178_))
                            (let ((_e244307245181_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244302245178_))))
                              (let ((_tl244305245186_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244307245181_)))
                                    (_hd244306245184_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244307245181_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd244306245184_))
                                    (let ((_e244310245189_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd244306245184_))))
                                      (let ((_tl244308245194_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e244310245189_)))
                                            (_hd244309245192_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e244310245189_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd244309245192_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd244309245192_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl244308245194_))
                                                    (let ((_e244313245197_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl244308245194_))))
                                                      (let ((_tl244311245202_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e244313245197_)))
                    (_hd244312245200_
                     (let () (declare (not safe)) (##car _e244313245197_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl244311245202_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl244305245186_))
                        (let ((_e244316245205_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl244305245186_))))
                          (let ((_tl244314245210_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e244316245205_)))
                                (_hd244315245208_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e244316245205_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd244315245208_))
                                (let ((_e244319245213_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd244315245208_))))
                                  (let ((_tl244317245218_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244319245213_)))
                                        (_hd244318245216_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244319245213_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd244318245216_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd244318245216_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl244317245218_))
                                                (let ((_e244322245221_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl244317245218_))))
                                                  (let ((_tl244320245226_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e244322245221_)))
                                                        (_hd244321245224_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e244322245221_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl244320245226_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl244314245210_))
                                                            (let ((_e244325245229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl244314245210_))))
                      (let ((_tl244323245234_
                             (let ()
                               (declare (not safe))
                               (##cdr _e244325245229_)))
                            (_hd244324245232_
                             (let ()
                               (declare (not safe))
                               (##car _e244325245229_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd244324245232_))
                            (let ((_e244328245237_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd244324245232_))))
                              (let ((_tl244326245242_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244328245237_)))
                                    (_hd244327245240_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244328245237_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd244327245240_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd244327245240_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl244326245242_))
                                            (let ((_e244331245245_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl244326245242_))))
                                              (let ((_tl244329245250_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e244331245245_)))
                                                    (_hd244330245248_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e244331245245_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl244329245250_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl244323245234_))
                                                        (let ((___splice254943254944_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl244323245234_ '0))))
                  (let ((_tl244334245255_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice254943254944_ '1)))
                        (_target244332245253_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice254943254944_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl244334245255_))
                        (___match255044255045_
                         _e244304245173_
                         _hd244303245176_
                         _tl244302245178_
                         _e244307245181_
                         _hd244306245184_
                         _tl244305245186_
                         _e244310245189_
                         _hd244309245192_
                         _tl244308245194_
                         _e244313245197_
                         _hd244312245200_
                         _tl244311245202_
                         _e244316245205_
                         _hd244315245208_
                         _tl244314245210_
                         _e244319245213_
                         _hd244318245216_
                         _tl244317245218_
                         _e244322245221_
                         _hd244321245224_
                         _tl244320245226_
                         _e244325245229_
                         _hd244324245232_
                         _tl244323245234_
                         _e244328245237_
                         _hd244327245240_
                         _tl244326245242_
                         _e244331245245_
                         _hd244330245248_
                         _tl244329245250_
                         ___splice254943254944_
                         _target244332245253_
                         _tl244334245255_)
                        (___match255232255233_
                         _e244304245173_
                         _hd244303245176_
                         _tl244302245178_
                         _e244307245181_
                         _hd244306245184_
                         _tl244305245186_
                         _e244310245189_
                         _hd244309245192_
                         _tl244308245194_
                         _e244313245197_
                         _hd244312245200_
                         _tl244311245202_
                         _e244316245205_
                         _hd244315245208_
                         _tl244314245210_
                         _e244319245213_
                         _hd244318245216_
                         _tl244317245218_
                         _e244322245221_
                         _hd244321245224_
                         _tl244320245226_
                         _e244325245229_
                         _hd244324245232_
                         _tl244323245234_
                         _e244328245237_
                         _hd244327245240_
                         _tl244326245242_
                         _e244331245245_
                         _hd244330245248_
                         _tl244329245250_))))
                (___match255232255233_
                 _e244304245173_
                 _hd244303245176_
                 _tl244302245178_
                 _e244307245181_
                 _hd244306245184_
                 _tl244305245186_
                 _e244310245189_
                 _hd244309245192_
                 _tl244308245194_
                 _e244313245197_
                 _hd244312245200_
                 _tl244311245202_
                 _e244316245205_
                 _hd244315245208_
                 _tl244314245210_
                 _e244319245213_
                 _hd244318245216_
                 _tl244317245218_
                 _e244322245221_
                 _hd244321245224_
                 _tl244320245226_
                 _e244325245229_
                 _hd244324245232_
                 _tl244323245234_
                 _e244328245237_
                 _hd244327245240_
                 _tl244326245242_
                 _e244331245245_
                 _hd244330245248_
                 _tl244329245250_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match255436255437_
                                                     _e244304245173_
                                                     _hd244303245176_
                                                     _tl244302245178_
                                                     _e244307245181_
                                                     _hd244306245184_
                                                     _tl244305245186_
                                                     _e244310245189_
                                                     _hd244309245192_
                                                     _tl244308245194_
                                                     _e244313245197_
                                                     _hd244312245200_
                                                     _tl244311245202_
                                                     _e244316245205_
                                                     _hd244315245208_
                                                     _tl244314245210_
                                                     _e244319245213_
                                                     _hd244318245216_
                                                     _tl244317245218_
                                                     _e244322245221_
                                                     _hd244321245224_
                                                     _tl244320245226_
                                                     _e244325245229_
                                                     _hd244324245232_
                                                     _tl244323245234_))))
                                            (___match255436255437_
                                             _e244304245173_
                                             _hd244303245176_
                                             _tl244302245178_
                                             _e244307245181_
                                             _hd244306245184_
                                             _tl244305245186_
                                             _e244310245189_
                                             _hd244309245192_
                                             _tl244308245194_
                                             _e244313245197_
                                             _hd244312245200_
                                             _tl244311245202_
                                             _e244316245205_
                                             _hd244315245208_
                                             _tl244314245210_
                                             _e244319245213_
                                             _hd244318245216_
                                             _tl244317245218_
                                             _e244322245221_
                                             _hd244321245224_
                                             _tl244320245226_
                                             _e244325245229_
                                             _hd244324245232_
                                             _tl244323245234_))
                                        (___match255112255113_
                                         _e244304245173_
                                         _hd244303245176_
                                         _tl244302245178_
                                         _e244307245181_
                                         _hd244306245184_
                                         _tl244305245186_
                                         _e244310245189_
                                         _hd244309245192_
                                         _tl244308245194_
                                         _e244313245197_
                                         _hd244312245200_
                                         _tl244311245202_
                                         _e244316245205_
                                         _hd244315245208_
                                         _tl244314245210_
                                         _e244319245213_
                                         _hd244318245216_
                                         _tl244317245218_
                                         _e244322245221_
                                         _hd244321245224_
                                         _tl244320245226_
                                         _e244325245229_
                                         _hd244324245232_
                                         _tl244323245234_
                                         _e244328245237_
                                         _hd244327245240_
                                         _tl244326245242_))
                                    (___match255436255437_
                                     _e244304245173_
                                     _hd244303245176_
                                     _tl244302245178_
                                     _e244307245181_
                                     _hd244306245184_
                                     _tl244305245186_
                                     _e244310245189_
                                     _hd244309245192_
                                     _tl244308245194_
                                     _e244313245197_
                                     _hd244312245200_
                                     _tl244311245202_
                                     _e244316245205_
                                     _hd244315245208_
                                     _tl244314245210_
                                     _e244319245213_
                                     _hd244318245216_
                                     _tl244317245218_
                                     _e244322245221_
                                     _hd244321245224_
                                     _tl244320245226_
                                     _e244325245229_
                                     _hd244324245232_
                                     _tl244323245234_))))
                            (___match255436255437_
                             _e244304245173_
                             _hd244303245176_
                             _tl244302245178_
                             _e244307245181_
                             _hd244306245184_
                             _tl244305245186_
                             _e244310245189_
                             _hd244309245192_
                             _tl244308245194_
                             _e244313245197_
                             _hd244312245200_
                             _tl244311245202_
                             _e244316245205_
                             _hd244315245208_
                             _tl244314245210_
                             _e244319245213_
                             _hd244318245216_
                             _tl244317245218_
                             _e244322245221_
                             _hd244321245224_
                             _tl244320245226_
                             _e244325245229_
                             _hd244324245232_
                             _tl244323245234_))))
                    (___match255374255375_
                     _e244304245173_
                     _hd244303245176_
                     _tl244302245178_
                     _e244307245181_
                     _hd244306245184_
                     _tl244305245186_
                     _e244310245189_
                     _hd244309245192_
                     _tl244308245194_
                     _e244313245197_
                     _hd244312245200_
                     _tl244311245202_
                     _e244316245205_
                     _hd244315245208_
                     _tl244314245210_
                     _e244319245213_
                     _hd244318245216_
                     _tl244317245218_
                     _e244322245221_
                     _hd244321245224_
                     _tl244320245226_))
                (___kont254957254958_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont254957254958_))
                                            (___kont254957254958_))
                                        (___kont254957254958_))))
                                (___kont254957254958_))))
                        (___kont254957254958_))
                    (___kont254957254958_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont254957254958_))
                                                (___kont254957254958_))
                                            (___kont254957254958_))))
                                    (___kont254957254958_))))
                            (___kont254957254958_))))
                    (___kont254957254958_))))))))))
