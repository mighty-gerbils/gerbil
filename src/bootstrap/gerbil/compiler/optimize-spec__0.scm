(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1707573215)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl246916_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp252512 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl246916_ __tmp252512))
           (let ()
             (declare (not safe))
             (table-set! _tbl246916_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246916_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246916_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246916_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl246916_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx246899_ . _args246901_)
        (let ((__tmp252514
               (lambda ()
                 (declare (not safe))
                 (if (null? _args246901_)
                     (gxc#compile-e__0 _stx246899_)
                     (let ((_arg1246906_ (car _args246901_))
                           (_rest246908_ (cdr _args246901_)))
                       (if (null? _rest246908_)
                           (gxc#compile-e__1 _stx246899_ _arg1246906_)
                           (let ((_arg2246911_ (car _rest246908_))
                                 (_rest246913_ (cdr _rest246908_)))
                             (if (null? _rest246913_)
                                 (gxc#compile-e__2
                                  _stx246899_
                                  _arg1246906_
                                  _arg2246911_)
                                 (apply gxc#compile-e
                                        _stx246899_
                                        _arg1246906_
                                        _arg2246911_
                                        _rest246913_))))))))
              (__tmp252513 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp252514
           gxc#current-compile-methods
           __tmp252513))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl246896_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp252515 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl246896_ __tmp252515))
           (let ()
             (declare (not safe))
             (table-set! _tbl246896_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246896_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246896_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246896_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246896_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246896_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246896_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246896_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246896_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl246896_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246896_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl246896_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246896_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246896_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246896_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246896_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl246896_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx246879_ . _args246881_)
        (let ((__tmp252517
               (lambda ()
                 (declare (not safe))
                 (if (null? _args246881_)
                     (gxc#compile-e__0 _stx246879_)
                     (let ((_arg1246886_ (car _args246881_))
                           (_rest246888_ (cdr _args246881_)))
                       (if (null? _rest246888_)
                           (gxc#compile-e__1 _stx246879_ _arg1246886_)
                           (let ((_arg2246891_ (car _rest246888_))
                                 (_rest246893_ (cdr _rest246888_)))
                             (if (null? _rest246893_)
                                 (gxc#compile-e__2
                                  _stx246879_
                                  _arg1246886_
                                  _arg2246891_)
                                 (apply gxc#compile-e
                                        _stx246879_
                                        _arg1246886_
                                        _arg2246891_
                                        _rest246893_))))))))
              (__tmp252516 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp252517
           gxc#current-compile-methods
           __tmp252516))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl246876_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp252518 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl246876_ __tmp252518))
           (let ()
             (declare (not safe))
             (table-set! _tbl246876_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246876_ '%#call gxc#subst-object-refs-call%))
           _tbl246876_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx246859_ . _args246861_)
        (let ((__tmp252520
               (lambda ()
                 (declare (not safe))
                 (if (null? _args246861_)
                     (gxc#compile-e__0 _stx246859_)
                     (let ((_arg1246866_ (car _args246861_))
                           (_rest246868_ (cdr _args246861_)))
                       (if (null? _rest246868_)
                           (gxc#compile-e__1 _stx246859_ _arg1246866_)
                           (let ((_arg2246871_ (car _rest246868_))
                                 (_rest246873_ (cdr _rest246868_)))
                             (if (null? _rest246873_)
                                 (gxc#compile-e__2
                                  _stx246859_
                                  _arg1246866_
                                  _arg2246871_)
                                 (apply gxc#compile-e
                                        _stx246859_
                                        _arg1246866_
                                        _arg2246871_
                                        _rest246873_))))))))
              (__tmp252519 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp252520
           gxc#current-compile-methods
           __tmp252519))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx243529_)
        (letrec ((_generate-method-bind243531_
                  (lambda (_$t246853_ _id246854_ _$id246855_)
                    (let ((_$tmp246857_
                           (let ((__tmp252521 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp252521))))
                      (let ((__tmp252566
                             (let ()
                               (declare (not safe))
                               (cons _$id246855_ '())))
                            (__tmp252522
                             (let ((__tmp252523
                                    (let ((__tmp252524
                                           (let ((__tmp252564
                                                  (let ((__tmp252565
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp252565)))
                                                 (__tmp252525
                                                  (let ((__tmp252526
                                                         (let ((__tmp252527
                                                                (let ((__tmp252528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252529
                                      (let ((__tmp252530
                                             (let ((__tmp252550
                                                    (let ((__tmp252551
                                                           (let ((__tmp252563
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp246857_ '())))
                         (__tmp252552
                          (let ((__tmp252553
                                 (let ((__tmp252554
                                        (let ((__tmp252561
                                               (let ((__tmp252562
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp252562)))
                                              (__tmp252555
                                               (let ((__tmp252559
                                                      (let ((__tmp252560
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t246853_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp252560)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp252556
                                                      (let ((__tmp252557
                                                             (let ((__tmp252558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id246854_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp252558))))
                (declare (not safe))
                (cons __tmp252557 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp252559
                                                       __tmp252556))))
                                          (declare (not safe))
                                          (cons __tmp252561 __tmp252555))))
                                   (declare (not safe))
                                   (cons '%#call __tmp252554))))
                            (declare (not safe))
                            (cons __tmp252553 '()))))
                     (declare (not safe))
                     (cons __tmp252563 __tmp252552))))
              (declare (not safe))
              (cons __tmp252551 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp252531
                                                    (let ((__tmp252532
                                                           (let ((__tmp252533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252548
                                 (let ((__tmp252549
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp246857_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp252549)))
                                (__tmp252534
                                 (let ((__tmp252546
                                        (let ((__tmp252547
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp246857_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp252547)))
                                       (__tmp252535
                                        (let ((__tmp252536
                                               (let ((__tmp252537
                                                      (let ((__tmp252544
                                                             (let ((__tmp252545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp252545)))
                    (__tmp252538
                     (let ((__tmp252542
                            (let ((__tmp252543
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp252543)))
                           (__tmp252539
                            (let ((__tmp252540
                                   (let ((__tmp252541
                                          (let ()
                                            (declare (not safe))
                                            (cons _id246854_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp252541))))
                              (declare (not safe))
                              (cons __tmp252540 '()))))
                       (declare (not safe))
                       (cons __tmp252542 __tmp252539))))
                (declare (not safe))
                (cons __tmp252544 __tmp252538))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp252537))))
                                          (declare (not safe))
                                          (cons __tmp252536 '()))))
                                   (declare (not safe))
                                   (cons __tmp252546 __tmp252535))))
                            (declare (not safe))
                            (cons __tmp252548 __tmp252534))))
                     (declare (not safe))
                     (cons '%#if __tmp252533))))
              (declare (not safe))
              (cons __tmp252532 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp252550
                                                     __tmp252531))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp252530))))
                                 (declare (not safe))
                                 (cons __tmp252529 '()))))
                          (declare (not safe))
                          (cons '() __tmp252528))))
                   (declare (not safe))
                   (cons '%#lambda __tmp252527))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252526 '()))))
                                             (declare (not safe))
                                             (cons __tmp252564 __tmp252525))))
                                      (declare (not safe))
                                      (cons '%#call __tmp252524))))
                               (declare (not safe))
                               (cons __tmp252523 '()))))
                        (declare (not safe))
                        (cons __tmp252566 __tmp252522)))))
                 (_generate-slot-bind243532_
                  (lambda (_$t246847_ _id246848_ _$id246849_)
                    (let ((_$tmp246851_
                           (let ((__tmp252567 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp252567))))
                      (let ((__tmp252604
                             (let ()
                               (declare (not safe))
                               (cons _$id246849_ '())))
                            (__tmp252568
                             (let ((__tmp252569
                                    (let ((__tmp252570
                                           (let ((__tmp252590
                                                  (let ((__tmp252591
                                                         (let ((__tmp252603
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp246851_ '())))
                       (__tmp252592
                        (let ((__tmp252593
                               (let ((__tmp252594
                                      (let ((__tmp252601
                                             (let ((__tmp252602
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp252602)))
                                            (__tmp252595
                                             (let ((__tmp252599
                                                    (let ((__tmp252600
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t246847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp252600)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp252596
                                                    (let ((__tmp252597
                                                           (let ((__tmp252598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id246848_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp252598))))
              (declare (not safe))
              (cons __tmp252597 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp252599
                                                     __tmp252596))))
                                        (declare (not safe))
                                        (cons __tmp252601 __tmp252595))))
                                 (declare (not safe))
                                 (cons '%#call __tmp252594))))
                          (declare (not safe))
                          (cons __tmp252593 '()))))
                   (declare (not safe))
                   (cons __tmp252603 __tmp252592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252591 '())))
                                                 (__tmp252571
                                                  (let ((__tmp252572
                                                         (let ((__tmp252573
                                                                (let ((__tmp252588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252589
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp246851_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp252589)))
                              (__tmp252574
                               (let ((__tmp252586
                                      (let ((__tmp252587
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp246851_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp252587)))
                                     (__tmp252575
                                      (let ((__tmp252576
                                             (let ((__tmp252577
                                                    (let ((__tmp252584
                                                           (let ((__tmp252585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp252585)))
                  (__tmp252578
                   (let ((__tmp252582
                          (let ((__tmp252583
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp252583)))
                         (__tmp252579
                          (let ((__tmp252580
                                 (let ((__tmp252581
                                        (let ()
                                          (declare (not safe))
                                          (cons _id246848_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp252581))))
                            (declare (not safe))
                            (cons __tmp252580 '()))))
                     (declare (not safe))
                     (cons __tmp252582 __tmp252579))))
              (declare (not safe))
              (cons __tmp252584 __tmp252578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp252577))))
                                        (declare (not safe))
                                        (cons __tmp252576 '()))))
                                 (declare (not safe))
                                 (cons __tmp252586 __tmp252575))))
                          (declare (not safe))
                          (cons __tmp252588 __tmp252574))))
                   (declare (not safe))
                   (cons '%#if __tmp252573))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252572 '()))))
                                             (declare (not safe))
                                             (cons __tmp252590 __tmp252571))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp252570))))
                               (declare (not safe))
                               (cons __tmp252569 '()))))
                        (declare (not safe))
                        (cons __tmp252604 __tmp252568)))))
                 (_generate-class-check-bind243533_
                  (lambda (_$t246843_ _class-type246844_ _$class-type246845_)
                    (let ((__tmp252616
                           (let ()
                             (declare (not safe))
                             (cons _$class-type246845_ '())))
                          (__tmp252605
                           (let ((__tmp252606
                                  (let ((__tmp252607
                                         (let ((__tmp252614
                                                (let ((__tmp252615
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp252615)))
                                               (__tmp252608
                                                (let ((__tmp252612
                                                       (let ((__tmp252613
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t246843_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp252613)))
              (__tmp252609
               (let ((__tmp252610
                      (let ((__tmp252611
                             (let ()
                               (declare (not safe))
                               (cons _class-type246844_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp252611))))
                 (declare (not safe))
                 (cons __tmp252610 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252612
                                                        __tmp252609))))
                                           (declare (not safe))
                                           (cons __tmp252614 __tmp252608))))
                                    (declare (not safe))
                                    (cons '%#call __tmp252607))))
                             (declare (not safe))
                             (cons __tmp252606 '()))))
                      (declare (not safe))
                      (cons __tmp252616 __tmp252605))))
                 (_generate-struct-check-bind243534_
                  (lambda (_$t246839_ _class-type246840_ _$class-type246841_)
                    (let ((__tmp252628
                           (let ()
                             (declare (not safe))
                             (cons _$class-type246841_ '())))
                          (__tmp252617
                           (let ((__tmp252618
                                  (let ((__tmp252619
                                         (let ((__tmp252626
                                                (let ((__tmp252627
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp252627)))
                                               (__tmp252620
                                                (let ((__tmp252624
                                                       (let ((__tmp252625
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t246839_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp252625)))
              (__tmp252621
               (let ((__tmp252622
                      (let ((__tmp252623
                             (let ()
                               (declare (not safe))
                               (cons _class-type246840_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp252623))))
                 (declare (not safe))
                 (cons __tmp252622 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252624
                                                        __tmp252621))))
                                           (declare (not safe))
                                           (cons __tmp252626 __tmp252620))))
                                    (declare (not safe))
                                    (cons '%#call __tmp252619))))
                             (declare (not safe))
                             (cons __tmp252618 '()))))
                      (declare (not safe))
                      (cons __tmp252628 __tmp252617))))
                 (_generate-specializer-impl243535_
                  (lambda (_$t246788_
                           _methods-bind246789_
                           _slots-bind246790_
                           _class-check-bind246791_
                           _struct-check-bind246792_
                           _specializer-impl246793_
                           _lifted-specializer-id246794_
                           _unchecked-specializer-impl246795_)
                    (let ((__tmp252629
                           (let ((__tmp252630
                                  (let ((__tmp252656
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t246788_ '())))
                                        (__tmp252631
                                         (let ((__tmp252632
                                                (let ((__tmp252633
                                                       (let ((__tmp252653
                                                              (let ((__tmp252654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp252655
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind246792_
                                              _class-check-bind246791_))))
                               (declare (not safe))
                               (foldr1 cons __tmp252655 _slots-bind246790_))))
                        (declare (not safe))
                        (foldr1 cons __tmp252654 _methods-bind246789_)))
                     (__tmp252634
                      (let ((__tmp252635
                             (if (or _lifted-specializer-id246794_
                                     _unchecked-specializer-impl246795_)
                                 (let* ((_$specializer246800_
                                         (let ((__tmp252636
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp252636)))
                                        (__tmp252637
                                         (let ((__tmp252649
                                                (let ((__tmp252650
                                                       (let ((__tmp252652
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer246800_ '())))
                     (__tmp252651
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl246793_ '()))))
                 (declare (not safe))
                 (cons __tmp252652 __tmp252651))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252650 '())))
                                               (__tmp252638
                                                (let ((__tmp252639
                                                       (let _recur246802_ ((_rest246804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind246792_)))
                 (let* ((_rest246805246813_ _rest246804_)
                        (_else246807246821_
                         (lambda ()
                           (if _lifted-specializer-id246794_
                               (let ((__tmp252640
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id246794_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp252640))
                               _unchecked-specializer-impl246795_)))
                        (_K246809246827_
                         (lambda (_rest246824_ _checkq246825_)
                           (let ((__tmp252641
                                  (let ((__tmp252647
                                         (let ((__tmp252648
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq246825_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp252648)))
                                        (__tmp252642
                                         (let ((__tmp252646
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur246802_
                                                   _rest246824_)))
                                               (__tmp252643
                                                (let ((__tmp252644
                                                       (let ((__tmp252645
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer246800_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp252645))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252644 '()))))
                                           (declare (not safe))
                                           (cons __tmp252646 __tmp252643))))
                                    (declare (not safe))
                                    (cons __tmp252647 __tmp252642))))
                             (declare (not safe))
                             (cons '%#if __tmp252641)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest246805246813_))
                       (let ((_hd246810246830_
                              (let ()
                                (declare (not safe))
                                (##car _rest246805246813_)))
                             (_tl246811246832_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest246805246813_))))
                         (let* ((_checkq246835_ _hd246810246830_)
                                (_rest246837_ _tl246811246832_))
                           (declare (not safe))
                           (_K246809246827_ _rest246837_ _checkq246835_)))
                       (let () (declare (not safe)) (_else246807246821_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252639 '()))))
                                           (declare (not safe))
                                           (cons __tmp252649 __tmp252638))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp252637))
                                 _specializer-impl246793_)))
                        (declare (not safe))
                        (cons __tmp252635 '()))))
                 (declare (not safe))
                 (cons __tmp252653 __tmp252634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp252633))))
                                           (declare (not safe))
                                           (cons __tmp252632 '()))))
                                    (declare (not safe))
                                    (cons __tmp252656 __tmp252631))))
                             (declare (not safe))
                             (cons '%#lambda __tmp252630))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252629 _stx243529_))))
                 (_generate-specializer-def243536_
                  (lambda (_id246782_
                           _specializer-id246783_
                           _specializer-impl246784_
                           _lifted-specializer-id246785_
                           _unchecked-specializer-impl246786_)
                    (let ((__tmp252657
                           (let ((__tmp252658
                                  (let ((__tmp252659
                                         (let ((__tmp252679
                                                (let ((__tmp252680
                                                       (let ((__tmp252681
                                                              (let ((__tmp252683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id246783_ '())))
                            (__tmp252682
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl246784_ '()))))
                        (declare (not safe))
                        (cons __tmp252683 __tmp252682))))
                 (declare (not safe))
                 (cons '%#define-values __tmp252681))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp252680
                                                   _stx243529_)))
                                               (__tmp252660
                                                (let ((__tmp252667
                                                       (let ((__tmp252668
                                                              (let ((__tmp252669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp252670
                                    (let ((__tmp252677
                                           (let ((__tmp252678
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp252678)))
                                          (__tmp252671
                                           (let ((__tmp252675
                                                  (let ((__tmp252676
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id246782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp252676)))
                                                 (__tmp252672
                                                  (let ((__tmp252673
                                                         (let ((__tmp252674
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id246783_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp252674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252673 '()))))
                                             (declare (not safe))
                                             (cons __tmp252675 __tmp252672))))
                                      (declare (not safe))
                                      (cons __tmp252677 __tmp252671))))
                               (declare (not safe))
                               (cons '%#call __tmp252670))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp252669 _stx243529_))))
                 (declare (not safe))
                 (cons __tmp252668 '())))
              (__tmp252661
               (if _lifted-specializer-id246785_
                   (let ((__tmp252662
                          (let ((__tmp252663
                                 (let ((__tmp252664
                                        (let ((__tmp252666
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id246785_
                                                       '())))
                                              (__tmp252665
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl246786_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp252666 __tmp252665))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp252664))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp252663 _stx243529_))))
                     (declare (not safe))
                     (cons __tmp252662 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp252667
                                                          __tmp252661))))
                                           (declare (not safe))
                                           (cons __tmp252679 __tmp252660))))
                                    (declare (not safe))
                                    (cons _stx243529_ __tmp252659))))
                             (declare (not safe))
                             (cons '%#begin __tmp252658))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252657 _stx243529_)))))
          (let* ((___stx251473251474_ _stx243529_)
                 (_g243539243559_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx251473251474_)))))
            (let ((___kont251475251476_
                   (lambda (_L243603_ _L243604_)
                     (let ((_method-calls243623_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs243624_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check243625_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check243626_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert243627_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty243628_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?243630_
                                 (lambda ()
                                   (if (let ((__tmp252688
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls243623_))))
                                         (declare (not safe))
                                         (fxzero? __tmp252688))
                                       (if (let ((__tmp252687
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs243624_))))
                                             (declare (not safe))
                                             (fxzero? __tmp252687))
                                           (if (let ((__tmp252686
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check243625_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp252686))
                                               (if (let ((__tmp252685
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check243626_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp252685))
                                                   (let ((__tmp252684
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert243627_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp252684))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?243631_
                                 (lambda ()
                                   (let ((_$e246775_
                                          (let ((__tmp252689
                                                 (let ((__tmp252690
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check243626_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp252690))))
                                            (declare (not safe))
                                            (not __tmp252689))))
                                     (if _$e246775_
                                         _$e246775_
                                         (let ((__tmp252691
                                                (let ((__tmp252692
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert243627_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp252692))))
                                           (declare (not safe))
                                           (not __tmp252691))))))
                                (_lift-unchecked-specializer?243632_
                                 (lambda ()
                                   (if (let ((__tmp252695
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls243623_))))
                                         (declare (not safe))
                                         (fxzero? __tmp252695))
                                       (if (let ((__tmp252694
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs243624_))))
                                             (declare (not safe))
                                             (fxzero? __tmp252694))
                                           (let ((__tmp252693
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check243625_))))
                                             (declare (not safe))
                                             (fxzero? __tmp252693))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L243603_))
                             (let* ((___stx251387251388_ _L243603_)
                                    (_g244145244163_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx251387251388_)))))
                               (let ((___kont251389251390_
                                      (lambda (_L244199_ _L244200_ _L244201_)
                                        (for-each
                                         (lambda (_g244216244218_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g244216244218_
                                              _L244201_
                                              _method-calls243623_
                                              _slot-refs243624_
                                              _class-type-check243625_
                                              _struct-type-check243626_
                                              _struct-type-assert243627_)))
                                         _L244199_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?243630_))
                                            _stx243529_
                                            (let* ((_specializer-id244227_
                                                    (let* ((_id244221_
                                                            (let ((__tmp252845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L243604_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp252845 '"::specialize")))
                   (_specializer-id244224_
                    (let ((__tmp252846
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx243529_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id244221_ __tmp252846))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id244224_))
              _specializer-id244224_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id244234_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?243632_))
                                                        (let* ((_id244229_
                                                                (let ((__tmp252847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L243604_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp252847
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id244231_
                        (let ((__tmp252848
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx243529_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id244229_ __tmp252848))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id244231_))
                  _lifted-specializer-id244231_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t244236_
                                                    (let ((__tmp252849
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp252849)))
                                                   (_methods244238_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls243623_)))
                                                   (_$methods244242_
                                                    (map (lambda (_id244240_)
                                                           (let ((__tmp252850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id244240_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp252850)))
                 _methods244238_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g252851_
                                                    (for-each
                                                     (lambda (_g244243244246_
                                                              _g244244244248_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls243623_
                                                          _g244243244246_
                                                          _g244244244248_)))
                                                     _methods244238_
                                                     _$methods244242_))
                                                   (_methods-bind244259_
                                                    (map (lambda (_g244251244254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244252244256_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind243531_
                      _$t244236_
                      _g244251244254_
                      _g244252244256_)))
                 _methods244238_
                 _$methods244242_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots244261_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs243624_)))
                                                   (_$slots244265_
                                                    (map (lambda (_id244263_)
                                                           (let ((__tmp252852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id244263_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp252852)))
                 _slots244261_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g252853_
                                                    (for-each
                                                     (lambda (_g244266244269_
                                                              _g244267244271_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs243624_
                                                          _g244266244269_
                                                          _g244267244271_)))
                                                     _slots244261_
                                                     _$slots244265_))
                                                   (_slots-bind244282_
                                                    (map (lambda (_g244274244277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244275244279_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind243532_
                      _$t244236_
                      _g244274244277_
                      _g244275244279_)))
                 _slots244261_
                 _$slots244265_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check244284_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check243625_)))
                                                   (_$class-check244287_
                                                    (map (lambda (_g252854_)
                                                           (let ((__tmp252855
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp252855)))
                 _class-check244284_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g252856_
                                                    (for-each
                                                     (lambda (_g244288244291_
                                                              _g244289244293_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check243625_
                                                          _g244288244291_
                                                          _g244289244293_)))
                                                     _class-check244284_
                                                     _$class-check244287_))
                                                   (_class-check-bind244304_
                                                    (map (lambda (_g244296244299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244297244301_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind243533_
                      _$t244236_
                      _g244296244299_
                      _g244297244301_)))
                 _class-check244284_
                 _$class-check244287_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all244306_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check243626_
                                                       _struct-type-assert243627_)))
                                                   (_struct-check244308_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all244306_)))
                                                   (_$struct-check244311_
                                                    (map (lambda (_g252857_)
                                                           (let ((__tmp252858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp252858)))
                 _struct-check244308_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g252859_
                                                    (for-each
                                                     (lambda (_g244312244315_
                                                              _g244313244317_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all244306_
                                                          _g244312244315_
                                                          _g244313244317_)))
                                                     _struct-check244308_
                                                     _$struct-check244311_))
                                                   (_struct-check-bind244328_
                                                    (map (lambda (_g244320244323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244321244325_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind243534_
                      _$t244236_
                      _g244320244323_
                      _g244321244325_)))
                 _struct-check244308_
                 _$struct-check244311_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl244339_
                                                    (lambda (_struct-type-check1244330_
                                                             _struct-type-check2244331_)
                                                      (let* ((_specializer-body244337_
                                                              (map (lambda (_g244332244334_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g244332244334_
                                _L244201_
                                _$t244236_
                                _method-calls243623_
                                _slot-refs243624_
                                _class-type-check243625_
                                _struct-type-check1244330_
                                _struct-type-check2244331_)))
                           _L244199_))
                     (__tmp252860
                      (let ((__tmp252861
                             (let ((__tmp252862
                                    (let ()
                                      (declare (not safe))
                                      (cons _L244201_ _L244200_))))
                               (declare (not safe))
                               (cons __tmp252862 _specializer-body244337_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp252861))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp252860 _stx243529_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl244341_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl244339_
                                                       _struct-check-all244306_
                                                       _empty243628_)))
                                                   (_unchecked-specializer-impl244343_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?243631_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl244339_
                                                           _empty243628_
                                                           _struct-check-all244306_))
                                                        '#f))
                                                   (_specializer-impl244345_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl243535_
                                                       _$t244236_
                                                       _methods-bind244259_
                                                       _slots-bind244282_
                                                       _class-check-bind244304_
                                                       _struct-check-bind244328_
                                                       _specializer-impl244341_
                                                       _lifted-specializer-id244234_
                                                       _unchecked-specializer-impl244343_))))
                                              (let ((__tmp252864
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L243604_)))
                                                    (__tmp252863
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id244227_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp252864
                                                 '" => "
                                                 __tmp252863))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def243536_
                                                 _L243604_
                                                 _specializer-id244227_
                                                 _specializer-impl244345_
                                                 _lifted-specializer-id244234_
                                                 _unchecked-specializer-impl244343_))))))
                                     (___kont251391251392_
                                      (lambda () _stx243529_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx251387251388_))
                                     (let ((_e244152244175_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx251387251388_))))
                                       (let ((_tl244150244180_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e244152244175_)))
                                             (_hd244151244178_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e244152244175_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl244150244180_))
                                             (let ((_e244155244183_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl244150244180_))))
                                               (let ((_tl244153244188_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e244155244183_)))
                                                     (_hd244154244186_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e244155244183_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd244154244186_))
                                                     (let ((_e244158244191_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd244154244186_))))
                                                       (let ((_tl244156244196_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e244158244191_)))
                     (_hd244157244194_
                      (let () (declare (not safe)) (##car _e244158244191_))))
                 (___kont251389251390_
                  _tl244153244188_
                  _tl244156244196_
                  _hd244157244194_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont251391251392_))))
                                             (___kont251391251392_))))
                                     (___kont251391251392_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L243603_))
                                 (let* ((_g244351244370_
                                         (lambda (_g244352244367_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g244352244367_))))
                                        (_g244350244721_
                                         (lambda (_g244352244373_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g244352244373_))
                                               (let ((_e244356244375_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g244352244373_))))
                                                 (let ((_hd244355244378_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e244356244375_)))
                                                       (_tl244354244380_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e244356244375_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl244354244380_))
                                                       (let ((_g252821_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl244354244380_ '0))))
                 (begin
                   (let ((_g252822_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g252821_)
                                (##vector-length _g252821_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g252822_ 2)))
                         (error "Context expects 2 values" _g252822_)))
                   (let ((_target244357244383_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g252821_ 0)))
                         (_tl244359244385_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g252821_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl244359244385_))
                         (letrec ((_loop244360244388_
                                   (lambda (_hd244358244391_
                                            _clause244364244393_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd244358244391_))
                                         (let ((_e244361244396_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd244358244391_))))
                                           (let ((_lp-hd244362244399_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e244361244396_)))
                                                 (_lp-tl244363244401_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e244361244396_))))
                                             (let ((__tmp252844
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd244362244399_
                                                            _clause244364244393_))))
                                               (declare (not safe))
                                               (_loop244360244388_
                                                _lp-tl244363244401_
                                                __tmp252844))))
                                         (let ((_clause244365244404_
                                                (reverse _clause244364244393_)))
                                           ((lambda (_L244407_)
                                              (for-each
                                               (lambda (_clause244420_)
                                                 (let* ((___stx251413251414_
                                                         _clause244420_)
                                                        (_g244423244438_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx251413251414_)))))
                                                   (let ((___kont251415251416_
                                                          (lambda (_L244466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L244467_
                           _L244468_)
                    (for-each
                     (lambda (_g244483244485_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g244483244485_
                          _L244468_
                          _method-calls243623_
                          _slot-refs243624_
                          _class-type-check243625_
                          _struct-type-check243626_
                          _struct-type-assert243627_)))
                     _L244466_)))
                 (___kont251417251418_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx251413251414_))
                                                         (let ((_e244430244450_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx251413251414_))))
                   (let ((_tl244428244455_
                          (let ()
                            (declare (not safe))
                            (##cdr _e244430244450_)))
                         (_hd244429244453_
                          (let ()
                            (declare (not safe))
                            (##car _e244430244450_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd244429244453_))
                         (let ((_e244433244458_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd244429244453_))))
                           (let ((_tl244431244463_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e244433244458_)))
                                 (_hd244432244461_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e244433244458_))))
                             (___kont251415251416_
                              _tl244428244455_
                              _tl244431244463_
                              _hd244432244461_)))
                         (___kont251417251418_))))
                 (___kont251417251418_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp252823
                                                      (lambda (_g244490244493_
                                                               _g244491244495_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g244490244493_
                                                                _g244491244495_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp252823
                                                         '()
                                                         _L244407_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?243630_))
                                                  _stx243529_
                                                  (let* ((_specializer-id244504_
                                                          (let* ((_id244498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252824
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L243604_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp252824 '"::specialize")))
                         (_specializer-id244501_
                          (let ((__tmp252825
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx243529_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id244498_ __tmp252825))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id244501_))
                    _specializer-id244501_))
                 (_lifted-specializer-id244511_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?243632_))
                      (let* ((_id244506_
                              (let ((__tmp252826
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L243604_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp252826
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id244508_
                              (let ((__tmp252827
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx243529_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id244506_
                                 __tmp252827))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id244508_))
                        _lifted-specializer-id244508_)
                      '#f))
                 (_$t244513_
                  (let ((__tmp252828 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp252828)))
                 (_methods244515_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls243623_)))
                 (_$methods244519_
                  (map (lambda (_id244517_)
                         (let ((__tmp252829 (gensym _id244517_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252829)))
                       _methods244515_))
                 (_g252830_
                  (for-each
                   (lambda (_g244520244523_ _g244521244525_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls243623_
                        _g244520244523_
                        _g244521244525_)))
                   _methods244515_
                   _$methods244519_))
                 (_methods-bind244536_
                  (map (lambda (_g244528244531_ _g244529244533_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind243531_
                            _$t244513_
                            _g244528244531_
                            _g244529244533_)))
                       _methods244515_
                       _$methods244519_))
                 (_slots244538_
                  (let () (declare (not safe)) (hash-keys _slot-refs243624_)))
                 (_$slots244542_
                  (map (lambda (_id244540_)
                         (let ((__tmp252831 (gensym _id244540_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252831)))
                       _slots244538_))
                 (_g252832_
                  (for-each
                   (lambda (_g244543244546_ _g244544244548_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs243624_
                        _g244543244546_
                        _g244544244548_)))
                   _slots244538_
                   _$slots244542_))
                 (_slots-bind244559_
                  (map (lambda (_g244551244554_ _g244552244556_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind243532_
                            _$t244513_
                            _g244551244554_
                            _g244552244556_)))
                       _slots244538_
                       _$slots244542_))
                 (_class-check244561_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check243625_)))
                 (_$class-check244564_
                  (map (lambda (_g252833_)
                         (let ((__tmp252834 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252834)))
                       _class-check244561_))
                 (_g252835_
                  (for-each
                   (lambda (_g244565244568_ _g244566244570_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check243625_
                        _g244565244568_
                        _g244566244570_)))
                   _class-check244561_
                   _$class-check244564_))
                 (_class-check-bind244581_
                  (map (lambda (_g244573244576_ _g244574244578_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind243533_
                            _$t244513_
                            _g244573244576_
                            _g244574244578_)))
                       _class-check244561_
                       _$class-check244564_))
                 (_struct-check-all244583_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check243626_
                     _struct-type-assert243627_)))
                 (_struct-check244585_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all244583_)))
                 (_$struct-check244588_
                  (map (lambda (_g252836_)
                         (let ((__tmp252837 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252837)))
                       _struct-check244585_))
                 (_g252838_
                  (for-each
                   (lambda (_g244589244592_ _g244590244594_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all244583_
                        _g244589244592_
                        _g244590244594_)))
                   _struct-check244585_
                   _$struct-check244588_))
                 (_struct-check-bind244605_
                  (map (lambda (_g244597244600_ _g244598244602_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind243534_
                            _$t244513_
                            _g244597244600_
                            _g244598244602_)))
                       _struct-check244585_
                       _$struct-check244588_))
                 (_make-specializer-impl244712_
                  (lambda (_struct-type-check1244607_
                           _struct-type-check2244608_)
                    (let* ((_specializer-clauses244710_
                            (map (lambda (_clause244610_)
                                   (let* ((___stx251433251434_ _clause244610_)
                                          (_g244613244628_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx251433251434_)))))
                                     (let ((___kont251435251436_
                                            (lambda (_L244656_
                                                     _L244657_
                                                     _L244658_)
                                              (let* ((_body244698_
                                                      (map (lambda (_g244693244695_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g244693244695_
                        _L244658_
                        _$t244513_
                        _method-calls243623_
                        _slot-refs243624_
                        _class-type-check243625_
                        _struct-type-check1244607_
                        _struct-type-check2244608_)))
                   _L244656_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp252839
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L244658_
                                                              _L244657_))))
                                                (declare (not safe))
                                                (cons __tmp252839
                                                      _body244698_))))
                                           (___kont251437251438_
                                            (lambda () _clause244610_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx251433251434_))
                                           (let ((_e244620244640_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx251433251434_))))
                                             (let ((_tl244618244645_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e244620244640_)))
                                                   (_hd244619244643_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e244620244640_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd244619244643_))
                                                   (let ((_e244623244648_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd244619244643_))))
                                                     (let ((_tl244621244653_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e244623244648_)))
                                                           (_hd244622244651_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e244623244648_))))
                                                       (___kont251435251436_
                                                        _tl244618244645_
                                                        _tl244621244653_
                                                        _hd244622244651_)))
                                                   (___kont251437251438_))))
                                           (___kont251437251438_)))))
                                 (let ((__tmp252840
                                        (lambda (_g244702244705_
                                                 _g244703244707_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g244702244705_
                                                  _g244703244707_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp252840 '() _L244407_))))
                           (__tmp252841
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses244710_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252841 _stx243529_))))
                 (_specializer-impl244714_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl244712_
                     _struct-check-all244583_
                     _empty243628_)))
                 (_unchecked-specializer-impl244716_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243631_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl244712_
                         _empty243628_
                         _struct-check-all244583_))
                      '#f))
                 (_specializer-impl244718_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl243535_
                     _$t244513_
                     _methods-bind244536_
                     _slots-bind244559_
                     _class-check-bind244581_
                     _struct-check-bind244605_
                     _specializer-impl244714_
                     _lifted-specializer-id244511_
                     _unchecked-specializer-impl244716_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp252843
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L243604_)))
                                                          (__tmp252842
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id244504_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp252843
                                                       '" => "
                                                       __tmp252842))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def243536_
                                                       _L243604_
                                                       _specializer-id244504_
                                                       _specializer-impl244718_
                                                       _lifted-specializer-id244511_
                                                       _unchecked-specializer-impl244716_)))))
                                            _clause244365244404_))))))
                           (let ()
                             (declare (not safe))
                             (_loop244360244388_ _target244357244383_ '())))
                         (let ()
                           (declare (not safe))
                           (_g244351244370_ _g244352244373_))))))
               (let ()
                 (declare (not safe))
                 (_g244351244370_ _g244352244373_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g244351244370_
                                                  _g244352244373_))))))
                                   (declare (not safe))
                                   (_g244350244721_ _L243603_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L243603_))
                                     (let* ((_g244724244754_
                                             (lambda (_g244725244751_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g244725244751_))))
                                            (_g244723245442_
                                             (lambda (_g244725244757_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g244725244757_))
                                                   (let ((_e244731244759_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g244725244757_))))
                                                     (let ((_hd244730244762_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e244731244759_)))
                                                           (_tl244729244764_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e244731244759_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl244729244764_))
                                                           (let ((_e244734244767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl244729244764_))))
                     (let ((_hd244733244770_
                            (let ()
                              (declare (not safe))
                              (##car _e244734244767_)))
                           (_tl244732244772_
                            (let ()
                              (declare (not safe))
                              (##cdr _e244734244767_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd244733244770_))
                           (let ((_e244737244775_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd244733244770_))))
                             (let ((_hd244736244778_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e244737244775_)))
                                   (_tl244735244780_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e244737244775_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd244736244778_))
                                   (let ((_e244740244783_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd244736244778_))))
                                     (let ((_hd244739244786_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e244740244783_)))
                                           (_tl244738244788_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e244740244783_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd244739244786_))
                                           (let ((_e244743244791_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd244739244786_))))
                                             (let ((_hd244742244794_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e244743244791_)))
                                                   (_tl244741244796_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e244743244791_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl244741244796_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl244738244788_))
                                                       (let ((_e244746244799_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl244738244788_))))
                 (let ((_hd244745244802_
                        (let () (declare (not safe)) (##car _e244746244799_)))
                       (_tl244744244804_
                        (let () (declare (not safe)) (##cdr _e244746244799_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl244744244804_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl244735244780_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl244732244772_))
                               (let ((_e244749244807_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl244732244772_))))
                                 (let ((_hd244748244810_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e244749244807_)))
                                       (_tl244747244812_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e244749244807_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl244747244812_))
                                       ((lambda (_L244815_ _L244816_ _L244817_)
                                          (let* ((_g244840244858_
                                                  (lambda (_g244841244855_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g244841244855_))))
                                                 (_g244839244909_
                                                  (lambda (_g244841244861_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g244841244861_))
                                                        (let ((_e244847244863_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g244841244861_))))
                  (let ((_hd244846244866_
                         (let () (declare (not safe)) (##car _e244847244863_)))
                        (_tl244845244868_
                         (let ()
                           (declare (not safe))
                           (##cdr _e244847244863_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl244845244868_))
                        (let ((_e244850244871_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl244845244868_))))
                          (let ((_hd244849244874_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e244850244871_)))
                                (_tl244848244876_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e244850244871_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd244849244874_))
                                (let ((_e244853244879_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd244849244874_))))
                                  (let ((_hd244852244882_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244853244879_)))
                                        (_tl244851244884_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244853244879_))))
                                    ((lambda (_L244887_ _L244888_ _L244889_)
                                       (for-each
                                        (lambda (_g244904244906_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g244904244906_
                                             _L244889_
                                             _method-calls243623_
                                             _slot-refs243624_
                                             _class-type-check243625_
                                             _struct-type-check243626_
                                             _struct-type-assert243627_)))
                                        _L244887_))
                                     _tl244848244876_
                                     _tl244851244884_
                                     _hd244852244882_)))
                                (let ()
                                  (declare (not safe))
                                  (_g244840244858_ _g244841244861_)))))
                        (let ()
                          (declare (not safe))
                          (_g244840244858_ _g244841244861_)))))
                (let ()
                  (declare (not safe))
                  (_g244840244858_ _g244841244861_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g244839244909_ _L244816_))
                                          (let* ((_g244912244931_
                                                  (lambda (_g244913244928_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g244913244928_))))
                                                 (_g244911245050_
                                                  (lambda (_g244913244934_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g244913244934_))
                                                        (let ((_e244917244936_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g244913244934_))))
                  (let ((_hd244916244939_
                         (let () (declare (not safe)) (##car _e244917244936_)))
                        (_tl244915244941_
                         (let ()
                           (declare (not safe))
                           (##cdr _e244917244936_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl244915244941_))
                        (let ((_g252784_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl244915244941_
                                  '0))))
                          (begin
                            (let ((_g252785_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g252784_)
                                         (##vector-length _g252784_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g252785_ 2)))
                                  (error "Context expects 2 values"
                                         _g252785_)))
                            (let ((_target244918244944_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g252784_ 0)))
                                  (_tl244920244946_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g252784_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl244920244946_))
                                  (letrec ((_loop244921244949_
                                            (lambda (_hd244919244952_
                                                     _clause244925244954_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd244919244952_))
                                                  (let ((_e244922244957_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd244919244952_))))
                                                    (let ((_lp-hd244923244960_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e244922244957_)))
                                                          (_lp-tl244924244962_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e244922244957_))))
                                                      (let ((__tmp252787
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd244923244960_ _clause244925244954_))))
                (declare (not safe))
                (_loop244921244949_ _lp-tl244924244962_ __tmp252787))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause244926244965_
                                                         (reverse _clause244925244954_)))
                                                    ((lambda (_L244968_)
                                                       (for-each
                                                        (lambda (_clause244981_)
                                                          (let* ((_g244983244998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g244984244995_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g244984244995_))))
                         (_g244982245040_
                          (lambda (_g244984245001_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g244984245001_))
                                (let ((_e244990245003_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g244984245001_))))
                                  (let ((_hd244989245006_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244990245003_)))
                                        (_tl244988245008_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244990245003_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd244989245006_))
                                        (let ((_e244993245011_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd244989245006_))))
                                          (let ((_hd244992245014_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e244993245011_)))
                                                (_tl244991245016_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e244993245011_))))
                                            ((lambda (_L245019_
                                                      _L245020_
                                                      _L245021_)
                                               (for-each
                                                (lambda (_g245035245037_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g245035245037_
                                                     _L245021_
                                                     _method-calls243623_
                                                     _slot-refs243624_
                                                     _class-type-check243625_
                                                     _struct-type-check243626_
                                                     _struct-type-assert243627_)))
                                                _L245019_))
                                             _tl244988245008_
                                             _tl244991245016_
                                             _hd244992245014_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g244983244998_ _g244984245001_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g244983244998_ _g244984245001_))))))
                    (declare (not safe))
                    (_g244982245040_ _clause244981_)))
                (let ((__tmp252786
                       (lambda (_g245042245045_ _g245043245047_)
                         (let ()
                           (declare (not safe))
                           (cons _g245042245045_ _g245043245047_)))))
                  (declare (not safe))
                  (foldr1 __tmp252786 '() _L244968_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause244926244965_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop244921244949_
                                       _target244918244944_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g244912244931_ _g244913244934_))))))
                        (let ()
                          (declare (not safe))
                          (_g244912244931_ _g244913244934_)))))
                (let ()
                  (declare (not safe))
                  (_g244912244931_ _g244913244934_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g244911245050_ _L244815_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?243630_))
                                              _stx243529_
                                              (let* ((_specializer-id245059_
                                                      (let* ((_id245053_
                                                              (let ((__tmp252788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L243604_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp252788 '"::specialize")))
                     (_specializer-id245056_
                      (let ((__tmp252789
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx243529_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id245053_ __tmp252789))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id245056_))
                _specializer-id245056_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id245066_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?243632_))
                                                          (let* ((_id245061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252790
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L243604_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp252790
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id245063_
                          (let ((__tmp252791
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx243529_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id245061_ __tmp252791))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id245063_))
                    _lifted-specializer-id245063_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t245068_
                                                      (let ((__tmp252792
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp252792)))
                                                     (_methods245070_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls243623_)))
                                                     (_$methods245074_
                                                      (map (lambda (_id245072_)
                                                             (let ((__tmp252793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id245072_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp252793)))
                   _methods245070_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252794_
                                                      (for-each
                                                       (lambda (_g245075245078_
                                                                _g245076245080_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls243623_
                                                            _g245075245078_
                                                            _g245076245080_)))
                                                       _methods245070_
                                                       _$methods245074_))
                                                     (_methods-bind245091_
                                                      (map (lambda (_g245083245086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g245084245088_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind243531_
                        _$t245068_
                        _g245083245086_
                        _g245084245088_)))
                   _methods245070_
                   _$methods245074_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots245093_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs243624_)))
                                                     (_$slots245097_
                                                      (map (lambda (_id245095_)
                                                             (let ((__tmp252795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id245095_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp252795)))
                   _slots245093_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252796_
                                                      (for-each
                                                       (lambda (_g245098245101_
                                                                _g245099245103_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs243624_
                                                            _g245098245101_
                                                            _g245099245103_)))
                                                       _slots245093_
                                                       _$slots245097_))
                                                     (_slots-bind245114_
                                                      (map (lambda (_g245106245109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g245107245111_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind243532_
                        _$t245068_
                        _g245106245109_
                        _g245107245111_)))
                   _slots245093_
                   _$slots245097_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check245116_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check243625_)))
                                                     (_$class-check245119_
                                                      (map (lambda (_g252797_)
                                                             (let ((__tmp252798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp252798)))
                   _class-check245116_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252799_
                                                      (for-each
                                                       (lambda (_g245120245123_
                                                                _g245121245125_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check243625_
                                                            _g245120245123_
                                                            _g245121245125_)))
                                                       _class-check245116_
                                                       _$class-check245119_))
                                                     (_class-check-bind245136_
                                                      (map (lambda (_g245128245131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g245129245133_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind243533_
                        _$t245068_
                        _g245128245131_
                        _g245129245133_)))
                   _class-check245116_
                   _$class-check245119_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all245138_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check243626_
                                                         _struct-type-assert243627_)))
                                                     (_struct-check245140_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all245138_)))
                                                     (_$struct-check245143_
                                                      (map (lambda (_g252800_)
                                                             (let ((__tmp252801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp252801)))
                   _struct-check245140_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252802_
                                                      (for-each
                                                       (lambda (_g245144245147_
                                                                _g245145245149_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all245138_
                                                            _g245144245147_
                                                            _g245145245149_)))
                                                       _struct-check245140_
                                                       _$struct-check245143_))
                                                     (_struct-check-bind245160_
                                                      (map (lambda (_g245152245155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g245153245157_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind243534_
                        _$t245068_
                        _g245152245155_
                        _g245153245157_)))
                   _struct-check245140_
                   _$struct-check245143_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr245259_
                                                      (lambda (_struct-type-check1245162_
                                                               _struct-type-check2245163_)
                                                        (let* ((_g245165245183_
                                                                (lambda (_g245166245180_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g245166245180_))))
                       (_g245164245256_
                        (lambda (_g245166245186_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g245166245186_))
                              (let ((_e245172245188_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g245166245186_))))
                                (let ((_hd245171245191_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245172245188_)))
                                      (_tl245170245193_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245172245188_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl245170245193_))
                                      (let ((_e245175245196_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl245170245193_))))
                                        (let ((_hd245174245199_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245175245196_)))
                                              (_tl245173245201_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245175245196_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd245174245199_))
                                              (let ((_e245178245204_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd245174245199_))))
                                                (let ((_hd245177245207_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e245178245204_)))
                                                      (_tl245176245209_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e245178245204_))))
                                                  ((lambda (_L245212_
                                                            _L245213_
                                                            _L245214_)
                                                     (let* ((_body245254_
                                                             (map (lambda (_g245249245251_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g245249245251_
                               _L245214_
                               _$t245068_
                               _method-calls243623_
                               _slot-refs243624_
                               _class-type-check243625_
                               _struct-type-check1245162_
                               _struct-type-check2245163_)))
                          _L245212_))
                    (__tmp252803
                     (let ((__tmp252804
                            (let ((__tmp252805
                                   (let ()
                                     (declare (not safe))
                                     (cons _L245214_ _L245213_))))
                              (declare (not safe))
                              (cons __tmp252805 _body245254_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp252804))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp252803 _L244816_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl245173245201_
                                                   _tl245176245209_
                                                   _hd245177245207_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g245165245183_
                                                 _g245166245186_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g245165245183_ _g245166245186_)))))
                              (let ()
                                (declare (not safe))
                                (_g245165245183_ _g245166245186_))))))
                  (declare (not safe))
                  (_g245164245256_ _L244816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr245420_
                                                      (lambda (_struct-type-check1245261_
                                                               _struct-type-check2245262_)
                                                        (let* ((_g245264245283_
                                                                (lambda (_g245265245280_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g245265245280_))))
                       (_g245263245417_
                        (lambda (_g245265245286_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g245265245286_))
                              (let ((_e245269245288_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g245265245286_))))
                                (let ((_hd245268245291_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245269245288_)))
                                      (_tl245267245293_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245269245288_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl245267245293_))
                                      (let ((_g252806_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl245267245293_
                                                '0))))
                                        (begin
                                          (let ((_g252807_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g252806_)
                                                       (##vector-length
                                                        _g252806_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g252807_ 2)))
                                                (error "Context expects 2 values"
                                                       _g252807_)))
                                          (let ((_target245270245296_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g252806_ 0)))
                                                (_tl245272245298_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g252806_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl245272245298_))
                                                (letrec ((_loop245273245301_
                                                          (lambda (_hd245271245304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause245277245306_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd245271245304_))
                        (let ((_e245274245309_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd245271245304_))))
                          (let ((_lp-hd245275245312_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e245274245309_)))
                                (_lp-tl245276245314_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e245274245309_))))
                            (let ((__tmp252811
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd245275245312_
                                           _clause245277245306_))))
                              (declare (not safe))
                              (_loop245273245301_
                               _lp-tl245276245314_
                               __tmp252811))))
                        (let ((_clause245278245317_
                               (reverse _clause245277245306_)))
                          ((lambda (_L245320_)
                             (let* ((_clauses245415_
                                     (map (lambda (_clause245335_)
                                            (let* ((___stx251453251454_
                                                    _clause245335_)
                                                   (_g245338245353_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx251453251454_)))))
                                              (let ((___kont251455251456_
                                                     (lambda (_L245381_
                                                              _L245382_
                                                              _L245383_)
                                                       (let* ((_body245403_
                                                               (map (lambda (_g245398245400_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g245398245400_
                                 _L245383_
                                 _$t245068_
                                 _method-calls243623_
                                 _slot-refs243624_
                                 _class-type-check243625_
                                 _struct-type-check1245261_
                                 _struct-type-check2245262_)))
                            _L245381_))
                      (__tmp252808
                       (let ()
                         (declare (not safe))
                         (cons _L245383_ _L245382_))))
                 (declare (not safe))
                 (cons __tmp252808 _body245403_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251457251458_
                                                     (lambda ()
                                                       _clause245335_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx251453251454_))
                                                    (let ((_e245345245365_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx251453251454_))))
                                                      (let ((_tl245343245370_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e245345245365_)))
                    (_hd245344245368_
                     (let () (declare (not safe)) (##car _e245345245365_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd245344245368_))
                    (let ((_e245348245373_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd245344245368_))))
                      (let ((_tl245346245378_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245348245373_)))
                            (_hd245347245376_
                             (let ()
                               (declare (not safe))
                               (##car _e245348245373_))))
                        (___kont251455251456_
                         _tl245343245370_
                         _tl245346245378_
                         _hd245347245376_)))
                    (___kont251457251458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251457251458_)))))
                                          (let ((__tmp252809
                                                 (lambda (_g245407245410_
                                                          _g245408245412_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g245407245410_
                                                           _g245408245412_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp252809
                                                    '()
                                                    _L245320_))))
                                    (__tmp252810
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses245415_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp252810 _L244815_)))
                           _clause245278245317_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop245273245301_
                                                     _target245270245296_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g245264245283_
                                                   _g245265245286_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g245264245283_ _g245265245286_)))))
                              (let ()
                                (declare (not safe))
                                (_g245264245283_ _g245265245286_))))))
                  (declare (not safe))
                  (_g245263245417_ _L244815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl245425_
                                                      (lambda (_specializer-lambda-expr245422_
                                                               _specializer-case-lambda-expr245423_)
                                                        (let ((__tmp252812
                                                               (let ((__tmp252813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp252815
                                     (let ((__tmp252816
                                            (let ((__tmp252818
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L244817_ '())))
                                                  (__tmp252817
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr245422_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp252818 __tmp252817))))
                                       (declare (not safe))
                                       (cons __tmp252816 '())))
                                    (__tmp252814
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr245423_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp252815 __tmp252814))))
                         (declare (not safe))
                         (cons '%#let-values __tmp252813))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp252812 _stx243529_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr245427_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr245259_
                                                         _struct-check-all245138_
                                                         _empty243628_)))
                                                     (_specializer-case-lambda-expr245429_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr245420_
                                                         _struct-check-all245138_
                                                         _empty243628_)))
                                                     (_specializer-impl245431_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl245425_
                                                         _specializer-lambda-expr245427_
                                                         _specializer-case-lambda-expr245429_)))
                                                     (_unchecked-specializer-lambda-expr245433_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?243631_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr245259_
                                                             _empty243628_
                                                             _struct-check-all245138_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr245435_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?243631_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr245420_
                                                             _empty243628_
                                                             _struct-check-all245138_))
                                                          '#f))
                                                     (_unchecked-specializer-impl245437_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?243631_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl245425_
                                                             _unchecked-specializer-lambda-expr245433_
                                                             _unchecked-specializer-case-lambda-expr245435_))
                                                          '#f))
                                                     (_specializer-impl245439_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl243535_
                                                         _$t245068_
                                                         _methods-bind245091_
                                                         _slots-bind245114_
                                                         _class-check-bind245136_
                                                         _struct-check-bind245160_
                                                         _specializer-impl245431_
                                                         _lifted-specializer-id245066_
                                                         _unchecked-specializer-impl245437_))))
                                                (let ((__tmp252820
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L243604_)))
                                                      (__tmp252819
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id245059_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp252820
                                                   '" => "
                                                   __tmp252819))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def243536_
                                                   _L243604_
                                                   _specializer-id245059_
                                                   _specializer-impl245439_
                                                   _lifted-specializer-id245066_
                                                   _unchecked-specializer-impl245437_)))))
                                        _hd244748244810_
                                        _hd244745244802_
                                        _hd244742244794_)
                                       (let ()
                                         (declare (not safe))
                                         (_g244724244754_ _g244725244757_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g244724244754_ _g244725244757_)))
                           (let ()
                             (declare (not safe))
                             (_g244724244754_ _g244725244757_)))
                       (let ()
                         (declare (not safe))
                         (_g244724244754_ _g244725244757_)))))
               (let () (declare (not safe)) (_g244724244754_ _g244725244757_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g244724244754_
                                                      _g244725244757_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g244724244754_
                                              _g244725244757_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g244724244754_ _g244725244757_)))))
                           (let ()
                             (declare (not safe))
                             (_g244724244754_ _g244725244757_)))))
                   (let ()
                     (declare (not safe))
                     (_g244724244754_ _g244725244757_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g244724244754_
                                                      _g244725244757_))))))
                                       (declare (not safe))
                                       (_g244723245442_ _L243603_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L243603_))
                                         (let* ((_g245445245498_
                                                 (lambda (_g245446245495_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g245446245495_))))
                                                (_g245444246770_
                                                 (lambda (_g245446245501_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g245446245501_))
                                                       (let ((_e245454245503_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g245446245501_))))
                 (let ((_hd245453245506_
                        (let () (declare (not safe)) (##car _e245454245503_)))
                       (_tl245452245508_
                        (let () (declare (not safe)) (##cdr _e245454245503_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd245453245506_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd245453245506_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl245452245508_))
                               (let ((_e245457245511_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl245452245508_))))
                                 (let ((_hd245456245514_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e245457245511_)))
                                       (_tl245455245516_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e245457245511_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd245456245514_))
                                       (let ((_e245460245519_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd245456245514_))))
                                         (let ((_hd245459245522_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e245460245519_)))
                                               (_tl245458245524_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e245460245519_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd245459245522_))
                                               (let ((_e245463245527_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd245459245522_))))
                                                 (let ((_hd245462245530_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e245463245527_)))
                                                       (_tl245461245532_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e245463245527_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd245462245530_))
                                                       (let ((_e245466245535_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd245462245530_))))
                 (let ((_hd245465245538_
                        (let () (declare (not safe)) (##car _e245466245535_)))
                       (_tl245464245540_
                        (let () (declare (not safe)) (##cdr _e245466245535_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl245464245540_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl245461245532_))
                           (let ((_e245469245543_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl245461245532_))))
                             (let ((_hd245468245546_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e245469245543_)))
                                   (_tl245467245548_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e245469245543_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd245468245546_))
                                   (let ((_e245472245551_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd245468245546_))))
                                     (let ((_hd245471245554_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e245472245551_)))
                                           (_tl245470245556_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e245472245551_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd245471245554_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd245471245554_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl245470245556_))
                                                   (let ((_e245475245559_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl245470245556_))))
                                                     (let ((_hd245474245562_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e245475245559_)))
                                                           (_tl245473245564_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e245475245559_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd245474245562_))
                                                           (let ((_e245478245567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd245474245562_))))
                     (let ((_hd245477245570_
                            (let ()
                              (declare (not safe))
                              (##car _e245478245567_)))
                           (_tl245476245572_
                            (let ()
                              (declare (not safe))
                              (##cdr _e245478245567_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd245477245570_))
                           (let ((_e245481245575_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd245477245570_))))
                             (let ((_hd245480245578_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e245481245575_)))
                                   (_tl245479245580_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e245481245575_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd245480245578_))
                                   (let ((_e245484245583_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd245480245578_))))
                                     (let ((_hd245483245586_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e245484245583_)))
                                           (_tl245482245588_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e245484245583_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl245482245588_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl245479245580_))
                                               (let ((_e245487245591_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl245479245580_))))
                                                 (let ((_hd245486245594_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e245487245591_)))
                                                       (_tl245485245596_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e245487245591_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl245485245596_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl245476245572_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl245473245564_))
                       (let ((_e245490245599_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl245473245564_))))
                         (let ((_hd245489245602_
                                (let ()
                                  (declare (not safe))
                                  (##car _e245490245599_)))
                               (_tl245488245604_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e245490245599_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl245488245604_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl245467245548_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl245458245524_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl245455245516_))
                                           (let ((_e245493245607_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl245455245516_))))
                                             (let ((_hd245492245610_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e245493245607_)))
                                                   (_tl245491245612_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e245493245607_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl245491245612_))
                                                   ((lambda (_L245615_
                                                             _L245616_
                                                             _L245617_
                                                             _L245618_
                                                             _L245619_)
                                                      (let* ((_g245658245720_
                                                              (lambda (_g245659245717_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g245659245717_))))
                     (_g245657246767_
                      (lambda (_g245659245723_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g245659245723_))
                            (let ((_e245667245725_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g245659245723_))))
                              (let ((_hd245666245728_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245667245725_)))
                                    (_tl245665245730_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245667245725_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd245666245728_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd245666245728_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl245665245730_))
                                            (let ((_e245670245733_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl245665245730_))))
                                              (let ((_hd245669245736_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e245670245733_)))
                                                    (_tl245668245738_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e245670245733_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl245668245738_))
                                                    (let ((_e245673245741_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl245668245738_))))
                                                      (let ((_hd245672245744_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e245673245741_)))
                    (_tl245671245746_
                     (let () (declare (not safe)) (##cdr _e245673245741_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd245672245744_))
                    (let ((_e245676245749_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd245672245744_))))
                      (let ((_hd245675245752_
                             (let ()
                               (declare (not safe))
                               (##car _e245676245749_)))
                            (_tl245674245754_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245676245749_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd245675245752_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd245675245752_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl245674245754_))
                                    (let ((_e245679245757_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl245674245754_))))
                                      (let ((_hd245678245760_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e245679245757_)))
                                            (_tl245677245762_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e245679245757_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd245678245760_))
                                            (let ((_e245682245765_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd245678245760_))))
                                              (let ((_hd245681245768_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e245682245765_)))
                                                    (_tl245680245770_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e245682245765_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd245681245768_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd245681245768_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl245680245770_))
                                                            (let ((_e245685245773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl245680245770_))))
                      (let ((_hd245684245776_
                             (let ()
                               (declare (not safe))
                               (##car _e245685245773_)))
                            (_tl245683245778_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245685245773_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245683245778_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl245677245762_))
                                (let ((_e245688245781_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl245677245762_))))
                                  (let ((_hd245687245784_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245688245781_)))
                                        (_tl245686245786_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245688245781_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd245687245784_))
                                        (let ((_e245691245789_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd245687245784_))))
                                          (let ((_hd245690245792_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e245691245789_)))
                                                (_tl245689245794_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e245691245789_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd245690245792_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd245690245792_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl245689245794_))
                                                        (let ((_e245694245797_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl245689245794_))))
                  (let ((_hd245693245800_
                         (let () (declare (not safe)) (##car _e245694245797_)))
                        (_tl245692245802_
                         (let ()
                           (declare (not safe))
                           (##cdr _e245694245797_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl245692245802_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245686245786_))
                            (let ((_e245697245805_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245686245786_))))
                              (let ((_hd245696245808_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245697245805_)))
                                    (_tl245695245810_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245697245805_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd245696245808_))
                                    (let ((_e245700245813_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd245696245808_))))
                                      (let ((_hd245699245816_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e245700245813_)))
                                            (_tl245698245818_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e245700245813_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd245699245816_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd245699245816_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl245698245818_))
                                                    (let ((_e245703245821_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl245698245818_))))
                                                      (let ((_hd245702245824_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e245703245821_)))
                    (_tl245701245826_
                     (let () (declare (not safe)) (##cdr _e245703245821_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl245701245826_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl245695245810_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl245695245810_))
                                  '1)
                            (let ((_g252696_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl245695245810_
                                      '1))))
                              (begin
                                (let ((_g252697_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g252696_)
                                             (##vector-length _g252696_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g252697_ 2)))
                                      (error "Context expects 2 values"
                                             _g252697_)))
                                (let ((_target245704245829_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252696_ 0)))
                                      (_tl245706245831_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252696_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl245706245831_))
                                      (let ((_e245715245834_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl245706245831_))))
                                        (let ((_hd245714245837_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245715245834_)))
                                              (_tl245713245839_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245715245834_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl245713245839_))
                                              (letrec ((_loop245707245842_
                                                        (lambda (_hd245705245845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref245711245847_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd245705245845_))
                      (let ((_e245708245850_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd245705245845_))))
                        (let ((_lp-hd245709245853_
                               (let ()
                                 (declare (not safe))
                                 (##car _e245708245850_)))
                              (_lp-tl245710245855_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e245708245850_))))
                          (let ((__tmp252783
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd245709245853_
                                         _kw-ref245711245847_))))
                            (declare (not safe))
                            (_loop245707245842_
                             _lp-tl245710245855_
                             __tmp252783))))
                      (let ((_kw-ref245712245858_
                             (reverse _kw-ref245711245847_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245671245746_))
                            ((lambda (_L245861_
                                      _L245862_
                                      _L245863_
                                      _L245864_
                                      _L245865_)
                               (let* ((_kw-count245916_
                                       (length (let ((__tmp252698
                                                      (lambda (_g245908245911_
                                                               _g245909245913_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g245908245911_
                                                                _g245909245913_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp252698
                                                         '()
                                                         _L245862_))))
                                      (_self-index245918_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count245916_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L245617_))
                                     (let* ((_g245921245935_
                                             (lambda (_g245922245932_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g245922245932_))))
                                            (_g245920246106_
                                             (lambda (_g245922245938_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g245922245938_))
                                                   (let ((_e245927245940_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g245922245938_))))
                                                     (let ((_hd245926245943_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e245927245940_)))
                                                           (_tl245925245945_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e245927245940_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl245925245945_))
                                                           (let ((_e245930245948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl245925245945_))))
                     (let ((_hd245929245951_
                            (let ()
                              (declare (not safe))
                              (##car _e245930245948_)))
                           (_tl245928245953_
                            (let ()
                              (declare (not safe))
                              (##cdr _e245930245948_))))
                       ((lambda (_L245956_ _L245957_)
                          (let ((_self245973_
                                 (list-ref _L245957_ _self-index245918_)))
                            (for-each
                             (lambda (_g245974245976_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g245974245976_
                                  _self245973_
                                  _method-calls243623_
                                  _slot-refs243624_
                                  _class-type-check243625_
                                  _struct-type-check243626_
                                  _struct-type-assert243627_)))
                             _L245956_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?243630_))
                                _stx243529_
                                (let* ((_specializer-id245985_
                                        (let* ((_id245979_
                                                (let ((__tmp252749
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L243604_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp252749
                                                   '"::specialize")))
                                               (_specializer-id245982_
                                                (let ((__tmp252750
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx243529_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id245979_
                                                   __tmp252750))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id245982_))
                                          _specializer-id245982_))
                                       (_lifted-specializer-id245992_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?243632_))
                                            (let* ((_id245987_
                                                    (let ((__tmp252751
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L243604_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp252751
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id245989_
                                                    (let ((__tmp252752
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx243529_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id245987_
                                                       __tmp252752))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id245989_))
                                              _lifted-specializer-id245989_)
                                            '#f))
                                       (_$t245994_
                                        (let ((__tmp252753 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp252753)))
                                       (_methods245996_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls243623_)))
                                       (_$methods246000_
                                        (map (lambda (_id245998_)
                                               (let ((__tmp252754
                                                      (gensym _id245998_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp252754)))
                                             _methods245996_))
                                       (_g252755_
                                        (for-each
                                         (lambda (_g246001246004_
                                                  _g246002246006_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls243623_
                                              _g246001246004_
                                              _g246002246006_)))
                                         _methods245996_
                                         _$methods246000_))
                                       (_methods-bind246017_
                                        (map (lambda (_g246009246012_
                                                      _g246010246014_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind243531_
                                                  _$t245994_
                                                  _g246009246012_
                                                  _g246010246014_)))
                                             _methods245996_
                                             _$methods246000_))
                                       (_slots246019_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs243624_)))
                                       (_$slots246023_
                                        (map (lambda (_id246021_)
                                               (let ((__tmp252756
                                                      (gensym _id246021_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp252756)))
                                             _slots246019_))
                                       (_g252757_
                                        (for-each
                                         (lambda (_g246024246027_
                                                  _g246025246029_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs243624_
                                              _g246024246027_
                                              _g246025246029_)))
                                         _slots246019_
                                         _$slots246023_))
                                       (_slots-bind246040_
                                        (map (lambda (_g246032246035_
                                                      _g246033246037_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind243532_
                                                  _$t245994_
                                                  _g246032246035_
                                                  _g246033246037_)))
                                             _slots246019_
                                             _$slots246023_))
                                       (_class-check246042_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check243625_)))
                                       (_$class-check246045_
                                        (map (lambda (_g252758_)
                                               (let ((__tmp252759
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp252759)))
                                             _class-check246042_))
                                       (_g252760_
                                        (for-each
                                         (lambda (_g246046246049_
                                                  _g246047246051_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check243625_
                                              _g246046246049_
                                              _g246047246051_)))
                                         _class-check246042_
                                         _$class-check246045_))
                                       (_class-check-bind246062_
                                        (map (lambda (_g246054246057_
                                                      _g246055246059_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind243533_
                                                  _$t245994_
                                                  _g246054246057_
                                                  _g246055246059_)))
                                             _class-check246042_
                                             _$class-check246045_))
                                       (_struct-check-all246064_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check243626_
                                           _struct-type-assert243627_)))
                                       (_struct-check246066_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all246064_)))
                                       (_$struct-check246069_
                                        (map (lambda (_g252761_)
                                               (let ((__tmp252762
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp252762)))
                                             _struct-check246066_))
                                       (_g252763_
                                        (for-each
                                         (lambda (_g246070246073_
                                                  _g246071246075_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all246064_
                                              _g246070246073_
                                              _g246071246075_)))
                                         _struct-check246066_
                                         _$struct-check246069_))
                                       (_struct-check-bind246086_
                                        (map (lambda (_g246078246081_
                                                      _g246079246083_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind243534_
                                                  _$t245994_
                                                  _g246078246081_
                                                  _g246079246083_)))
                                             _struct-check246066_
                                             _$struct-check246069_))
                                       (_make-specializer-impl246097_
                                        (lambda (_struct-type-check1246088_
                                                 _struct-type-check2246089_)
                                          (let* ((_specializer-body246095_
                                                  (map (lambda (_g246090246092_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g246090246092_
                                                            _self245973_
                                                            _$t245994_
                                                            _method-calls243623_
                                                            _slot-refs243624_
                                                            _class-type-check243625_
                                                            _struct-type-check1246088_
                                                            _struct-type-check2246089_)))
                                                       _L245956_))
                                                 (__tmp252764
                                                  (let ((__tmp252765
                                                         (let ((__tmp252767
                                                                (let ((__tmp252768
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252780
                                      (let ()
                                        (declare (not safe))
                                        (cons _L245619_ '())))
                                     (__tmp252769
                                      (let ((__tmp252770
                                             (let ((__tmp252771
                                                    (let ((__tmp252773
                                                           (let ((__tmp252774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252779
                                 (let ()
                                   (declare (not safe))
                                   (cons _L245618_ '())))
                                (__tmp252775
                                 (let ((__tmp252776
                                        (let ((__tmp252777
                                               (let ((__tmp252778
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L245957_
                                                              _specializer-body246095_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp252778))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp252777
                                           _L245617_))))
                                   (declare (not safe))
                                   (cons __tmp252776 '()))))
                            (declare (not safe))
                            (cons __tmp252779 __tmp252775))))
                     (declare (not safe))
                     (cons __tmp252774 '())))
                  (__tmp252772
                   (let () (declare (not safe)) (cons _L245616_ '()))))
              (declare (not safe))
              (cons __tmp252773 __tmp252772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp252771))))
                                        (declare (not safe))
                                        (cons __tmp252770 '()))))
                                 (declare (not safe))
                                 (cons __tmp252780 __tmp252769))))
                          (declare (not safe))
                          (cons __tmp252768 '())))
                       (__tmp252766
                        (let () (declare (not safe)) (cons _L245615_ '()))))
                   (declare (not safe))
                   (cons __tmp252767 __tmp252766))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp252765))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp252764
                                             _stx243529_))))
                                       (_specializer-impl246099_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl246097_
                                           _struct-check-all246064_
                                           _empty243628_)))
                                       (_unchecked-specializer-impl246101_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?243631_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl246097_
                                               _empty243628_
                                               _struct-check-all246064_))
                                            '#f))
                                       (_specializer-impl246103_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl243535_
                                           _$t245994_
                                           _methods-bind246017_
                                           _slots-bind246040_
                                           _class-check-bind246062_
                                           _struct-check-bind246086_
                                           _specializer-impl246099_
                                           _lifted-specializer-id245992_
                                           _unchecked-specializer-impl246101_))))
                                  (let ((__tmp252782
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L243604_)))
                                        (__tmp252781
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id245985_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp252782
                                     '" => "
                                     __tmp252781))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def243536_
                                     _L243604_
                                     _specializer-id245985_
                                     _specializer-impl246103_
                                     _lifted-specializer-id245992_
                                     _unchecked-specializer-impl246101_))))))
                        _tl245928245953_
                        _hd245929245951_)))
                   (let ()
                     (declare (not safe))
                     (_g245921245935_ _g245922245938_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g245921245935_
                                                      _g245922245938_))))))
                                       (declare (not safe))
                                       (_g245920246106_ _L245617_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L245617_))
                                         (let* ((_g246109246139_
                                                 (lambda (_g246110246136_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g246110246136_))))
                                                (_g246108246764_
                                                 (lambda (_g246110246142_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g246110246142_))
                                                       (let ((_e246116246144_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g246110246142_))))
                 (let ((_hd246115246147_
                        (let () (declare (not safe)) (##car _e246116246144_)))
                       (_tl246114246149_
                        (let () (declare (not safe)) (##cdr _e246116246144_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl246114246149_))
                       (let ((_e246119246152_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl246114246149_))))
                         (let ((_hd246118246155_
                                (let ()
                                  (declare (not safe))
                                  (##car _e246119246152_)))
                               (_tl246117246157_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e246119246152_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd246118246155_))
                               (let ((_e246122246160_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd246118246155_))))
                                 (let ((_hd246121246163_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e246122246160_)))
                                       (_tl246120246165_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e246122246160_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd246121246163_))
                                       (let ((_e246125246168_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd246121246163_))))
                                         (let ((_hd246124246171_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e246125246168_)))
                                               (_tl246123246173_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e246125246168_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd246124246171_))
                                               (let ((_e246128246176_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd246124246171_))))
                                                 (let ((_hd246127246179_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e246128246176_)))
                                                       (_tl246126246181_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e246128246176_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl246126246181_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl246123246173_))
                                                           (let ((_e246131246184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl246123246173_))))
                     (let ((_hd246130246187_
                            (let ()
                              (declare (not safe))
                              (##car _e246131246184_)))
                           (_tl246129246189_
                            (let ()
                              (declare (not safe))
                              (##cdr _e246131246184_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl246129246189_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl246120246165_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl246117246157_))
                                   (let ((_e246134246192_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl246117246157_))))
                                     (let ((_hd246133246195_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e246134246192_)))
                                           (_tl246132246197_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e246134246192_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl246132246197_))
                                           ((lambda (_L246200_
                                                     _L246201_
                                                     _L246202_)
                                              (let* ((_g246225246239_
                                                      (lambda (_g246226246236_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g246226246236_))))
                                                     (_g246224246280_
                                                      (lambda (_g246226246242_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g246226246242_))
                                                            (let ((_e246231246244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g246226246242_))))
                      (let ((_hd246230246247_
                             (let ()
                               (declare (not safe))
                               (##car _e246231246244_)))
                            (_tl246229246249_
                             (let ()
                               (declare (not safe))
                               (##cdr _e246231246244_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl246229246249_))
                            (let ((_e246234246252_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl246229246249_))))
                              (let ((_hd246233246255_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e246234246252_)))
                                    (_tl246232246257_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e246234246252_))))
                                ((lambda (_L246260_ _L246261_)
                                   (let ((_self246274_
                                          (list-ref
                                           _L246261_
                                           _self-index245918_)))
                                     (for-each
                                      (lambda (_g246275246277_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g246275246277_
                                           _self246274_
                                           _method-calls243623_
                                           _slot-refs243624_
                                           _class-type-check243625_
                                           _struct-type-check243626_
                                           _struct-type-assert243627_)))
                                      _L246260_)))
                                 _tl246232246257_
                                 _hd246233246255_)))
                            (let ()
                              (declare (not safe))
                              (_g246225246239_ _g246226246242_)))))
                    (let ()
                      (declare (not safe))
                      (_g246225246239_ _g246226246242_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g246224246280_ _L246201_))
                                              (let* ((_g246283246302_
                                                      (lambda (_g246284246299_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g246284246299_))))
                                                     (_g246282246407_
                                                      (lambda (_g246284246305_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g246284246305_))
                                                            (let ((_e246288246307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g246284246305_))))
                      (let ((_hd246287246310_
                             (let ()
                               (declare (not safe))
                               (##car _e246288246307_)))
                            (_tl246286246312_
                             (let ()
                               (declare (not safe))
                               (##cdr _e246288246307_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl246286246312_))
                            (let ((_g252699_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl246286246312_
                                      '0))))
                              (begin
                                (let ((_g252700_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g252699_)
                                             (##vector-length _g252699_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g252700_ 2)))
                                      (error "Context expects 2 values"
                                             _g252700_)))
                                (let ((_target246289246315_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252699_ 0)))
                                      (_tl246291246317_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252699_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl246291246317_))
                                      (letrec ((_loop246292246320_
                                                (lambda (_hd246290246323_
                                                         _clause246296246325_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd246290246323_))
                                                      (let ((_e246293246328_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd246290246323_))))
                (let ((_lp-hd246294246331_
                       (let () (declare (not safe)) (##car _e246293246328_)))
                      (_lp-tl246295246333_
                       (let () (declare (not safe)) (##cdr _e246293246328_))))
                  (let ((__tmp252702
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd246294246331_ _clause246296246325_))))
                    (declare (not safe))
                    (_loop246292246320_ _lp-tl246295246333_ __tmp252702))))
              (let ((_clause246297246336_ (reverse _clause246296246325_)))
                ((lambda (_L246339_)
                   (for-each
                    (lambda (_clause246352_)
                      (let* ((_g246354246365_
                              (lambda (_g246355246362_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g246355246362_))))
                             (_g246353246397_
                              (lambda (_g246355246368_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g246355246368_))
                                    (let ((_e246360246370_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g246355246368_))))
                                      (let ((_hd246359246373_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e246360246370_)))
                                            (_tl246358246375_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e246360246370_))))
                                        ((lambda (_L246378_ _L246379_)
                                           (let ((_self246391_
                                                  (list-ref
                                                   _L246379_
                                                   _self-index245918_)))
                                             (for-each
                                              (lambda (_g246392246394_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g246392246394_
                                                   _self246391_
                                                   _method-calls243623_
                                                   _slot-refs243624_
                                                   _class-type-check243625_
                                                   _struct-type-check243626_
                                                   _struct-type-assert243627_)))
                                              _L246378_)))
                                         _tl246358246375_
                                         _hd246359246373_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g246354246365_ _g246355246368_))))))
                        (declare (not safe))
                        (_g246353246397_ _clause246352_)))
                    (let ((__tmp252701
                           (lambda (_g246399246402_ _g246400246404_)
                             (let ()
                               (declare (not safe))
                               (cons _g246399246402_ _g246400246404_)))))
                      (declare (not safe))
                      (foldr1 __tmp252701 '() _L246339_))))
                 _clause246297246336_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop246292246320_
                                           _target246289246315_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g246283246302_ _g246284246305_))))))
                            (let ()
                              (declare (not safe))
                              (_g246283246302_ _g246284246305_)))))
                    (let ()
                      (declare (not safe))
                      (_g246283246302_ _g246284246305_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g246282246407_ _L246200_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?243630_))
                                                  _stx243529_
                                                  (let* ((_specializer-id246416_
                                                          (let* ((_id246410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252703
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L243604_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp252703 '"::specialize")))
                         (_specializer-id246413_
                          (let ((__tmp252704
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx243529_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id246410_ __tmp252704))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id246413_))
                    _specializer-id246413_))
                 (_lifted-specializer-id246423_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?243632_))
                      (let* ((_id246418_
                              (let ((__tmp252705
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L243604_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp252705
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id246420_
                              (let ((__tmp252706
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx243529_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id246418_
                                 __tmp252706))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id246420_))
                        _lifted-specializer-id246420_)
                      '#f))
                 (_$t246425_
                  (let ((__tmp252707 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp252707)))
                 (_methods246427_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls243623_)))
                 (_$methods246431_
                  (map (lambda (_id246429_)
                         (let ((__tmp252708 (gensym _id246429_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252708)))
                       _methods246427_))
                 (_g252709_
                  (for-each
                   (lambda (_g246432246435_ _g246433246437_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls243623_
                        _g246432246435_
                        _g246433246437_)))
                   _methods246427_
                   _$methods246431_))
                 (_methods-bind246448_
                  (map (lambda (_g246440246443_ _g246441246445_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind243531_
                            _$t246425_
                            _g246440246443_
                            _g246441246445_)))
                       _methods246427_
                       _$methods246431_))
                 (_slots246450_
                  (let () (declare (not safe)) (hash-keys _slot-refs243624_)))
                 (_$slots246454_
                  (map (lambda (_id246452_)
                         (let ((__tmp252710 (gensym _id246452_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252710)))
                       _slots246450_))
                 (_g252711_
                  (for-each
                   (lambda (_g246455246458_ _g246456246460_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs243624_
                        _g246455246458_
                        _g246456246460_)))
                   _slots246450_
                   _$slots246454_))
                 (_slots-bind246471_
                  (map (lambda (_g246463246466_ _g246464246468_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind243532_
                            _$t246425_
                            _g246463246466_
                            _g246464246468_)))
                       _slots246450_
                       _$slots246454_))
                 (_class-check246473_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check243625_)))
                 (_$class-check246476_
                  (map (lambda (_g252712_)
                         (let ((__tmp252713 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252713)))
                       _class-check246473_))
                 (_g252714_
                  (for-each
                   (lambda (_g246477246480_ _g246478246482_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check243625_
                        _g246477246480_
                        _g246478246482_)))
                   _class-check246473_
                   _$class-check246476_))
                 (_class-check-bind246493_
                  (map (lambda (_g246485246488_ _g246486246490_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind243533_
                            _$t246425_
                            _g246485246488_
                            _g246486246490_)))
                       _class-check246473_
                       _$class-check246476_))
                 (_struct-check-all246495_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check243626_
                     _struct-type-assert243627_)))
                 (_struct-check246497_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all246495_)))
                 (_$struct-check246500_
                  (map (lambda (_g252715_)
                         (let ((__tmp252716 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252716)))
                       _struct-check246497_))
                 (_g252717_
                  (for-each
                   (lambda (_g246501246504_ _g246502246506_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all246495_
                        _g246501246504_
                        _g246502246506_)))
                   _struct-check246497_
                   _$struct-check246500_))
                 (_struct-check-bind246517_
                  (map (lambda (_g246509246512_ _g246510246514_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind243534_
                            _$t246425_
                            _g246509246512_
                            _g246510246514_)))
                       _struct-check246497_
                       _$struct-check246500_))
                 (_make-specializer-lambda-expr246603_
                  (lambda (_struct-type-check1246519_
                           _struct-type-check2246520_)
                    (let* ((_g246522246536_
                            (lambda (_g246523246533_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g246523246533_))))
                           (_g246521246600_
                            (lambda (_g246523246539_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g246523246539_))
                                  (let ((_e246528246541_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g246523246539_))))
                                    (let ((_hd246527246544_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e246528246541_)))
                                          (_tl246526246546_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e246528246541_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl246526246546_))
                                          (let ((_e246531246549_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl246526246546_))))
                                            (let ((_hd246530246552_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e246531246549_)))
                                                  (_tl246529246554_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e246531246549_))))
                                              ((lambda (_L246557_ _L246558_)
                                                 (let* ((_self246591_
                                                         (list-ref
                                                          _L246558_
                                                          _self-index245918_))
                                                        (_body246597_
                                                         (map (lambda (_g246592246594_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g246592246594_
                           _self246591_
                           _$t246425_
                           _method-calls243623_
                           _slot-refs243624_
                           _class-type-check243625_
                           _struct-type-check1246519_
                           _struct-type-check2246520_)))
                      _L246557_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp252718
                                                          (let ((__tmp252719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L246558_ _body246597_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp252719))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp252718
                                                      _L246201_))))
                                               _tl246529246554_
                                               _hd246530246552_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g246522246536_
                                             _g246523246539_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g246522246536_ _g246523246539_))))))
                      (declare (not safe))
                      (_g246521246600_ _L246201_))))
                 (_make-specializer-case-lambda-expr246742_
                  (lambda (_struct-type-check1246605_
                           _struct-type-check2246606_)
                    (let* ((_g246608246627_
                            (lambda (_g246609246624_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g246609246624_))))
                           (_g246607246739_
                            (lambda (_g246609246630_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g246609246630_))
                                  (let ((_e246613246632_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g246609246630_))))
                                    (let ((_hd246612246635_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e246613246632_)))
                                          (_tl246611246637_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e246613246632_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl246611246637_))
                                          (let ((_g252720_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl246611246637_
                                                    '0))))
                                            (begin
                                              (let ((_g252721_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g252720_)
                                                           (##vector-length
                                                            _g252720_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g252721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g252721_)))
                                              (let ((_target246614246640_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g252720_
                                                        0)))
                                                    (_tl246616246642_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g252720_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl246616246642_))
                                                    (letrec ((_loop246617246645_
                                                              (lambda (_hd246615246648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause246621246650_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd246615246648_))
                            (let ((_e246618246653_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd246615246648_))))
                              (let ((_lp-hd246619246656_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e246618246653_)))
                                    (_lp-tl246620246658_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e246618246653_))))
                                (let ((__tmp252724
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd246619246656_
                                               _clause246621246650_))))
                                  (declare (not safe))
                                  (_loop246617246645_
                                   _lp-tl246620246658_
                                   __tmp252724))))
                            (let ((_clause246622246661_
                                   (reverse _clause246621246650_)))
                              ((lambda (_L246664_)
                                 (let* ((_clauses246737_
                                         (map (lambda (_clause246679_)
                                                (let* ((_g246681246692_
                                                        (lambda (_g246682246689_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g246682246689_))))
                                                       (_g246680246727_
                                                        (lambda (_g246682246695_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g246682246695_))
                      (let ((_e246687246697_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g246682246695_))))
                        (let ((_hd246686246700_
                               (let ()
                                 (declare (not safe))
                                 (##car _e246687246697_)))
                              (_tl246685246702_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e246687246697_))))
                          ((lambda (_L246705_ _L246706_)
                             (let* ((_self246718_
                                     (list-ref _L246706_ _self-index245918_))
                                    (_body246724_
                                     (map (lambda (_g246719246721_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g246719246721_
                                               _self246718_
                                               _$t246425_
                                               _method-calls243623_
                                               _slot-refs243624_
                                               _class-type-check243625_
                                               _struct-type-check1246605_
                                               _struct-type-check2246606_)))
                                          _L246705_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L246706_ _body246724_))))
                           _tl246685246702_
                           _hd246686246700_)))
                      (let ()
                        (declare (not safe))
                        (_g246681246692_ _g246682246695_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g246680246727_
                                                   _clause246679_)))
                                              (let ((__tmp252722
                                                     (lambda (_g246729246732_
                                                              _g246730246734_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g246729246732_
                                                               _g246730246734_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp252722
                                                        '()
                                                        _L246664_))))
                                        (__tmp252723
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses246737_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp252723
                                    _L246200_)))
                               _clause246622246661_))))))
              (let ()
                (declare (not safe))
                (_loop246617246645_ _target246614246640_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g246608246627_
                                                       _g246609246630_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g246608246627_
                                             _g246609246630_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g246608246627_ _g246609246630_))))))
                      (declare (not safe))
                      (_g246607246739_ _L246200_))))
                 (_make-specializer-impl246747_
                  (lambda (_specializer-lambda-expr246744_
                           _specializer-case-lambda-expr246745_)
                    (let ((__tmp252725
                           (let ((__tmp252726
                                  (let ((__tmp252728
                                         (let ((__tmp252729
                                                (let ((__tmp252746
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L245619_ '())))
                                                      (__tmp252730
                                                       (let ((__tmp252731
                                                              (let ((__tmp252732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp252734
                                    (let ((__tmp252735
                                           (let ((__tmp252745
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L245618_ '())))
                                                 (__tmp252736
                                                  (let ((__tmp252737
                                                         (let ((__tmp252738
                                                                (let ((__tmp252739
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252741
                                      (let ((__tmp252742
                                             (let ((__tmp252744
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L246202_ '())))
                                                   (__tmp252743
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr246744_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp252744
                                                     __tmp252743))))
                                        (declare (not safe))
                                        (cons __tmp252742 '())))
                                     (__tmp252740
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr246745_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp252741 __tmp252740))))
                          (declare (not safe))
                          (cons '%#let-values __tmp252739))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp252738 _stx243529_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252737 '()))))
                                             (declare (not safe))
                                             (cons __tmp252745 __tmp252736))))
                                      (declare (not safe))
                                      (cons __tmp252735 '())))
                                   (__tmp252733
                                    (let ()
                                      (declare (not safe))
                                      (cons _L245616_ '()))))
                               (declare (not safe))
                               (cons __tmp252734 __tmp252733))))
                        (declare (not safe))
                        (cons '%#let-values __tmp252732))))
                 (declare (not safe))
                 (cons __tmp252731 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252746
                                                        __tmp252730))))
                                           (declare (not safe))
                                           (cons __tmp252729 '())))
                                        (__tmp252727
                                         (let ()
                                           (declare (not safe))
                                           (cons _L245615_ '()))))
                                    (declare (not safe))
                                    (cons __tmp252728 __tmp252727))))
                             (declare (not safe))
                             (cons '%#let-values __tmp252726))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252725 _stx243529_))))
                 (_specializer-lambda-expr246749_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr246603_
                     _struct-check-all246495_
                     _empty243628_)))
                 (_specializer-case-lambda-expr246751_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr246742_
                     _struct-check-all246495_
                     _empty243628_)))
                 (_specializer-impl246753_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl246747_
                     _specializer-lambda-expr246749_
                     _specializer-case-lambda-expr246751_)))
                 (_unchecked-specializer-lambda-expr246755_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243631_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr246603_
                         _empty243628_
                         _struct-check-all246495_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr246757_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243631_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr246742_
                         _empty243628_
                         _struct-check-all246495_))
                      '#f))
                 (_unchecked-specializer-impl246759_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243631_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl246747_
                         _unchecked-specializer-lambda-expr246755_
                         _unchecked-specializer-case-lambda-expr246757_))
                      '#f))
                 (_specializer-impl246761_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl243535_
                     _$t246425_
                     _methods-bind246448_
                     _slots-bind246471_
                     _class-check-bind246493_
                     _struct-check-bind246517_
                     _specializer-impl246753_
                     _lifted-specializer-id246423_
                     _unchecked-specializer-impl246759_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp252748
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L243604_)))
                                                          (__tmp252747
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id246416_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp252748
                                                       '" => "
                                                       __tmp252747))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def243536_
                                                       _L243604_
                                                       _specializer-id246416_
                                                       _specializer-impl246761_
                                                       _lifted-specializer-id246423_
                                                       _unchecked-specializer-impl246759_)))))
                                            _hd246133246195_
                                            _hd246130246187_
                                            _hd246127246179_)
                                           (let ()
                                             (declare (not safe))
                                             (_g246109246139_
                                              _g246110246142_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g246109246139_ _g246110246142_)))
                               (let ()
                                 (declare (not safe))
                                 (_g246109246139_ _g246110246142_)))
                           (let ()
                             (declare (not safe))
                             (_g246109246139_ _g246110246142_)))))
                   (let ()
                     (declare (not safe))
                     (_g246109246139_ _g246110246142_)))
               (let ()
                 (declare (not safe))
                 (_g246109246139_ _g246110246142_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g246109246139_
                                                  _g246110246142_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g246109246139_ _g246110246142_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g246109246139_ _g246110246142_)))))
                       (let ()
                         (declare (not safe))
                         (_g246109246139_ _g246110246142_)))))
               (let ()
                 (declare (not safe))
                 (_g246109246139_ _g246110246142_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g246108246764_ _L245617_))
                                         _stx243529_))))
                             _hd245714245837_
                             _kw-ref245712245858_
                             _hd245702245824_
                             _hd245693245800_
                             _hd245684245776_)
                            (let ()
                              (declare (not safe))
                              (_g245658245720_ _g245659245723_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop245707245842_
                                                   _target245704245829_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g245658245720_
                                                 _g245659245723_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g245658245720_ _g245659245723_))))))
                            (let ()
                              (declare (not safe))
                              (_g245658245720_ _g245659245723_)))
                        (let ()
                          (declare (not safe))
                          (_g245658245720_ _g245659245723_)))
                    (let ()
                      (declare (not safe))
                      (_g245658245720_ _g245659245723_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245658245720_
                                                       _g245659245723_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g245658245720_
                                                   _g245659245723_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g245658245720_
                                               _g245659245723_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g245658245720_ _g245659245723_)))))
                            (let ()
                              (declare (not safe))
                              (_g245658245720_ _g245659245723_)))
                        (let ()
                          (declare (not safe))
                          (_g245658245720_ _g245659245723_)))))
                (let ()
                  (declare (not safe))
                  (_g245658245720_ _g245659245723_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245658245720_
                                                       _g245659245723_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g245658245720_
                                                   _g245659245723_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g245658245720_ _g245659245723_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g245658245720_ _g245659245723_)))
                            (let ()
                              (declare (not safe))
                              (_g245658245720_ _g245659245723_)))))
                    (let ()
                      (declare (not safe))
                      (_g245658245720_ _g245659245723_)))
                (let ()
                  (declare (not safe))
                  (_g245658245720_ _g245659245723_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245658245720_
                                                       _g245659245723_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g245658245720_
                                               _g245659245723_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g245658245720_ _g245659245723_)))
                                (let ()
                                  (declare (not safe))
                                  (_g245658245720_ _g245659245723_)))
                            (let ()
                              (declare (not safe))
                              (_g245658245720_ _g245659245723_)))))
                    (let ()
                      (declare (not safe))
                      (_g245658245720_ _g245659245723_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245658245720_
                                                       _g245659245723_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g245658245720_
                                               _g245659245723_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g245658245720_ _g245659245723_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g245658245720_ _g245659245723_)))))
                            (let ()
                              (declare (not safe))
                              (_g245658245720_ _g245659245723_))))))
                (declare (not safe))
                (_g245657246767_ _L245616_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd245492245610_
                                                    _hd245489245602_
                                                    _hd245486245594_
                                                    _hd245483245586_
                                                    _hd245465245538_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g245445245498_
                                                      _g245446245501_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g245445245498_
                                              _g245446245501_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g245445245498_ _g245446245501_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g245445245498_ _g245446245501_)))
                               (let ()
                                 (declare (not safe))
                                 (_g245445245498_ _g245446245501_)))))
                       (let ()
                         (declare (not safe))
                         (_g245445245498_ _g245446245501_)))
                   (let ()
                     (declare (not safe))
                     (_g245445245498_ _g245446245501_)))
               (let ()
                 (declare (not safe))
                 (_g245445245498_ _g245446245501_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245445245498_
                                                  _g245446245501_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g245445245498_
                                              _g245446245501_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g245445245498_ _g245446245501_)))))
                           (let ()
                             (declare (not safe))
                             (_g245445245498_ _g245446245501_)))))
                   (let ()
                     (declare (not safe))
                     (_g245445245498_ _g245446245501_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g245445245498_
                                                      _g245446245501_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245445245498_
                                                  _g245446245501_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g245445245498_
                                              _g245446245501_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g245445245498_ _g245446245501_)))))
                           (let ()
                             (declare (not safe))
                             (_g245445245498_ _g245446245501_)))
                       (let ()
                         (declare (not safe))
                         (_g245445245498_ _g245446245501_)))))
               (let ()
                 (declare (not safe))
                 (_g245445245498_ _g245446245501_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245445245498_
                                                  _g245446245501_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g245445245498_ _g245446245501_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g245445245498_ _g245446245501_)))
                           (let ()
                             (declare (not safe))
                             (_g245445245498_ _g245446245501_)))
                       (let ()
                         (declare (not safe))
                         (_g245445245498_ _g245446245501_)))))
               (let ()
                 (declare (not safe))
                 (_g245445245498_ _g245446245501_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g245444246770_ _L243603_))
                                         _stx243529_))))))))
                  (___kont251477251478_ (lambda () _stx243529_)))
              (let ((___match251506251507_
                     (lambda (_e243545243571_
                              _hd243544243574_
                              _tl243543243576_
                              _e243548243579_
                              _hd243547243582_
                              _tl243546243584_
                              _e243551243587_
                              _hd243550243590_
                              _tl243549243592_
                              _e243554243595_
                              _hd243553243598_
                              _tl243552243600_)
                       (let ((_L243603_ _hd243553243598_)
                             (_L243604_ _hd243550243590_))
                         (if (let ((__tmp252865
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L243604_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp252865))
                             (___kont251475251476_ _L243603_ _L243604_)
                             (___kont251477251478_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx251473251474_))
                    (let ((_e243545243571_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx251473251474_))))
                      (let ((_tl243543243576_
                             (let ()
                               (declare (not safe))
                               (##cdr _e243545243571_)))
                            (_hd243544243574_
                             (let ()
                               (declare (not safe))
                               (##car _e243545243571_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl243543243576_))
                            (let ((_e243548243579_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl243543243576_))))
                              (let ((_tl243546243584_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e243548243579_)))
                                    (_hd243547243582_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e243548243579_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd243547243582_))
                                    (let ((_e243551243587_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd243547243582_))))
                                      (let ((_tl243549243592_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e243551243587_)))
                                            (_hd243550243590_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e243551243587_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl243549243592_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl243546243584_))
                                                (let ((_e243554243595_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl243546243584_))))
                                                  (let ((_tl243552243600_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e243554243595_)))
                                                        (_hd243553243598_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e243554243595_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl243552243600_))
                                                        (___match251506251507_
                                                         _e243545243571_
                                                         _hd243544243574_
                                                         _tl243543243576_
                                                         _e243548243579_
                                                         _hd243547243582_
                                                         _tl243546243584_
                                                         _e243551243587_
                                                         _hd243550243590_
                                                         _tl243549243592_
                                                         _e243554243595_
                                                         _hd243553243598_
                                                         _tl243552243600_)
                                                        (___kont251477251478_))))
                                                (___kont251477251478_))
                                            (___kont251477251478_))))
                                    (___kont251477251478_))))
                            (___kont251477251478_))))
                    (___kont251477251478_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx242505_
               _self242506_
               _methods242507_
               _slots242508_
               _class-check242509_
               _struct-check242510_
               _struct-assert242511_)
        (let* ((___stx251509251510_ _stx242505_)
               (_g242519242741_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx251509251510_)))))
          (let ((___kont251511251512_
                 (lambda (_L243478_ _L243479_ _L243480_ _L243481_)
                   (let ((__tmp252866
                          (let () (declare (not safe)) (gx#stx-e _L243479_))))
                     (declare (not safe))
                     (table-set! _methods242507_ __tmp252866 '#t))
                   (for-each
                    (lambda (_g243514243516_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g243514243516_
                         _self242506_
                         _methods242507_
                         _slots242508_
                         _class-check242509_
                         _struct-check242510_
                         _struct-assert242511_)))
                    (let ((__tmp252867
                           (lambda (_g243518243521_ _g243519243523_)
                             (let ()
                               (declare (not safe))
                               (cons _g243518243521_ _g243519243523_)))))
                      (declare (not safe))
                      (foldr1 __tmp252867 '() _L243478_)))))
                (___kont251515251516_
                 (lambda (_L243313_ _L243314_ _L243315_ _L243316_ _L243317_)
                   (let ((__tmp252868
                          (let () (declare (not safe)) (gx#stx-e _L243314_))))
                     (declare (not safe))
                     (table-set! _methods242507_ __tmp252868 '#t))
                   (for-each
                    (lambda (_g243357243359_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g243357243359_
                         _self242506_
                         _methods242507_
                         _slots242508_
                         _class-check242509_
                         _struct-check242510_
                         _struct-assert242511_)))
                    (let ((__tmp252869
                           (lambda (_g243361243364_ _g243362243366_)
                             (let ()
                               (declare (not safe))
                               (cons _g243361243364_ _g243362243366_)))))
                      (declare (not safe))
                      (foldr1 __tmp252869 '() _L243313_)))))
                (___kont251519251520_
                 (lambda (_L243146_ _L243147_ _L243148_)
                   (let ((__tmp252870
                          (let () (declare (not safe)) (gx#stx-e _L243146_))))
                     (declare (not safe))
                     (table-set! _slots242508_ __tmp252870 '#t))))
                (___kont251521251522_
                 (lambda (_L243023_ _L243024_ _L243025_ _L243026_)
                   (let ((__tmp252871
                          (let () (declare (not safe)) (gx#stx-e _L243024_))))
                     (declare (not safe))
                     (table-set! _slots242508_ __tmp252871 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L243023_
                      _self242506_
                      _methods242507_
                      _slots242508_
                      _class-check242509_
                      _struct-check242510_
                      _struct-assert242511_))))
                (___kont251523251524_
                 (lambda (_L242907_ _L242908_)
                   (let ((__tmp252872
                          (##structure-ref
                           (let ((__tmp252873
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L242908_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp252873))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots242508_ __tmp252872 '#t))))
                (___kont251525251526_
                 (lambda (_L242817_ _L242818_ _L242819_)
                   (let ((__tmp252874
                          (##structure-ref
                           (let ((__tmp252875
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L242819_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp252875))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots242508_ __tmp252874 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L242817_
                      _self242506_
                      _methods242507_
                      _slots242508_
                      _class-check242509_
                      _struct-check242510_
                      _struct-assert242511_))))
                (___kont251527251528_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx242505_
                      _self242506_
                      _methods242507_
                      _slots242508_
                      _class-check242509_
                      _struct-check242510_
                      _struct-assert242511_)))))
            (let* ((___match252008252009_
                    (lambda (_e242715242753_
                             _hd242714242756_
                             _tl242713242758_
                             _e242718242761_
                             _hd242717242764_
                             _tl242716242766_
                             _e242721242769_
                             _hd242720242772_
                             _tl242719242774_
                             _e242724242777_
                             _hd242723242780_
                             _tl242722242782_
                             _e242727242785_
                             _hd242726242788_
                             _tl242725242790_
                             _e242730242793_
                             _hd242729242796_
                             _tl242728242798_
                             _e242733242801_
                             _hd242732242804_
                             _tl242731242806_
                             _e242736242809_
                             _hd242735242812_
                             _tl242734242814_)
                      (let ((_L242817_ _hd242735242812_)
                            (_L242818_ _hd242732242804_)
                            (_L242819_ _hd242723242780_))
                        (if (and (let ((__tmp252876
                                        (let ((__tmp252877
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L242819_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp252877))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp252876
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L242818_
                                    _self242506_)))
                            (___kont251525251526_
                             _L242817_
                             _L242818_
                             _L242819_)
                            (___kont251527251528_)))))
                   (___match252006252007_
                    (lambda (_e242715242753_
                             _hd242714242756_
                             _tl242713242758_
                             _e242718242761_
                             _hd242717242764_
                             _tl242716242766_
                             _e242721242769_
                             _hd242720242772_
                             _tl242719242774_
                             _e242724242777_
                             _hd242723242780_
                             _tl242722242782_
                             _e242727242785_
                             _hd242726242788_
                             _tl242725242790_
                             _e242730242793_
                             _hd242729242796_
                             _tl242728242798_
                             _e242733242801_
                             _hd242732242804_
                             _tl242731242806_
                             _e242736242809_
                             _hd242735242812_
                             _tl242734242814_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242734242814_))
                          (___match252008252009_
                           _e242715242753_
                           _hd242714242756_
                           _tl242713242758_
                           _e242718242761_
                           _hd242717242764_
                           _tl242716242766_
                           _e242721242769_
                           _hd242720242772_
                           _tl242719242774_
                           _e242724242777_
                           _hd242723242780_
                           _tl242722242782_
                           _e242727242785_
                           _hd242726242788_
                           _tl242725242790_
                           _e242730242793_
                           _hd242729242796_
                           _tl242728242798_
                           _e242733242801_
                           _hd242732242804_
                           _tl242731242806_
                           _e242736242809_
                           _hd242735242812_
                           _tl242734242814_)
                          (___kont251527251528_))))
                   (___match252000252001_
                    (lambda (_e242715242753_
                             _hd242714242756_
                             _tl242713242758_
                             _e242718242761_
                             _hd242717242764_
                             _tl242716242766_
                             _e242721242769_
                             _hd242720242772_
                             _tl242719242774_
                             _e242724242777_
                             _hd242723242780_
                             _tl242722242782_
                             _e242727242785_
                             _hd242726242788_
                             _tl242725242790_
                             _e242730242793_
                             _hd242729242796_
                             _tl242728242798_
                             _e242733242801_
                             _hd242732242804_
                             _tl242731242806_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242725242790_))
                          (let ((_e242736242809_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242725242790_))))
                            (let ((_tl242734242814_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242736242809_)))
                                  (_hd242735242812_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242736242809_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242734242814_))
                                  (___match252008252009_
                                   _e242715242753_
                                   _hd242714242756_
                                   _tl242713242758_
                                   _e242718242761_
                                   _hd242717242764_
                                   _tl242716242766_
                                   _e242721242769_
                                   _hd242720242772_
                                   _tl242719242774_
                                   _e242724242777_
                                   _hd242723242780_
                                   _tl242722242782_
                                   _e242727242785_
                                   _hd242726242788_
                                   _tl242725242790_
                                   _e242730242793_
                                   _hd242729242796_
                                   _tl242728242798_
                                   _e242733242801_
                                   _hd242732242804_
                                   _tl242731242806_
                                   _e242736242809_
                                   _hd242735242812_
                                   _tl242734242814_)
                                  (___kont251527251528_))))
                          (___kont251527251528_))))
                   (___match251946251947_
                    (lambda (_e242691242851_
                             _hd242690242854_
                             _tl242689242856_
                             _e242694242859_
                             _hd242693242862_
                             _tl242692242864_
                             _e242697242867_
                             _hd242696242870_
                             _tl242695242872_
                             _e242700242875_
                             _hd242699242878_
                             _tl242698242880_
                             _e242703242883_
                             _hd242702242886_
                             _tl242701242888_
                             _e242706242891_
                             _hd242705242894_
                             _tl242704242896_
                             _e242709242899_
                             _hd242708242902_
                             _tl242707242904_)
                      (let ((_L242907_ _hd242708242902_)
                            (_L242908_ _hd242699242878_))
                        (if (and (let ((__tmp252878
                                        (let ((__tmp252879
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L242908_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp252879))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp252878
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L242907_
                                    _self242506_)))
                            (___kont251523251524_ _L242907_ _L242908_)
                            (___kont251527251528_)))))
                   (___match251944251945_
                    (lambda (_e242691242851_
                             _hd242690242854_
                             _tl242689242856_
                             _e242694242859_
                             _hd242693242862_
                             _tl242692242864_
                             _e242697242867_
                             _hd242696242870_
                             _tl242695242872_
                             _e242700242875_
                             _hd242699242878_
                             _tl242698242880_
                             _e242703242883_
                             _hd242702242886_
                             _tl242701242888_
                             _e242706242891_
                             _hd242705242894_
                             _tl242704242896_
                             _e242709242899_
                             _hd242708242902_
                             _tl242707242904_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242701242888_))
                          (___match251946251947_
                           _e242691242851_
                           _hd242690242854_
                           _tl242689242856_
                           _e242694242859_
                           _hd242693242862_
                           _tl242692242864_
                           _e242697242867_
                           _hd242696242870_
                           _tl242695242872_
                           _e242700242875_
                           _hd242699242878_
                           _tl242698242880_
                           _e242703242883_
                           _hd242702242886_
                           _tl242701242888_
                           _e242706242891_
                           _hd242705242894_
                           _tl242704242896_
                           _e242709242899_
                           _hd242708242902_
                           _tl242707242904_)
                          (___match252000252001_
                           _e242691242851_
                           _hd242690242854_
                           _tl242689242856_
                           _e242694242859_
                           _hd242693242862_
                           _tl242692242864_
                           _e242697242867_
                           _hd242696242870_
                           _tl242695242872_
                           _e242700242875_
                           _hd242699242878_
                           _tl242698242880_
                           _e242703242883_
                           _hd242702242886_
                           _tl242701242888_
                           _e242706242891_
                           _hd242705242894_
                           _tl242704242896_
                           _e242709242899_
                           _hd242708242902_
                           _tl242707242904_))))
                   (___match251890251891_
                    (lambda (_e242656242935_
                             _hd242655242938_
                             _tl242654242940_
                             _e242659242943_
                             _hd242658242946_
                             _tl242657242948_
                             _e242662242951_
                             _hd242661242954_
                             _tl242660242956_
                             _e242665242959_
                             _hd242664242962_
                             _tl242663242964_
                             _e242668242967_
                             _hd242667242970_
                             _tl242666242972_
                             _e242671242975_
                             _hd242670242978_
                             _tl242669242980_
                             _e242674242983_
                             _hd242673242986_
                             _tl242672242988_
                             _e242677242991_
                             _hd242676242994_
                             _tl242675242996_
                             _e242680242999_
                             _hd242679243002_
                             _tl242678243004_
                             _e242683243007_
                             _hd242682243010_
                             _tl242681243012_
                             _e242686243015_
                             _hd242685243018_
                             _tl242684243020_)
                      (let ((_L243023_ _hd242685243018_)
                            (_L243024_ _hd242682243010_)
                            (_L243025_ _hd242673242986_)
                            (_L243026_ _hd242664242962_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L243026_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L243026_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L243025_
                                    _self242506_)))
                            (___kont251521251522_
                             _L243023_
                             _L243024_
                             _L243025_
                             _L243026_)
                            (___kont251527251528_)))))
                   (___match251882251883_
                    (lambda (_e242656242935_
                             _hd242655242938_
                             _tl242654242940_
                             _e242659242943_
                             _hd242658242946_
                             _tl242657242948_
                             _e242662242951_
                             _hd242661242954_
                             _tl242660242956_
                             _e242665242959_
                             _hd242664242962_
                             _tl242663242964_
                             _e242668242967_
                             _hd242667242970_
                             _tl242666242972_
                             _e242671242975_
                             _hd242670242978_
                             _tl242669242980_
                             _e242674242983_
                             _hd242673242986_
                             _tl242672242988_
                             _e242677242991_
                             _hd242676242994_
                             _tl242675242996_
                             _e242680242999_
                             _hd242679243002_
                             _tl242678243004_
                             _e242683243007_
                             _hd242682243010_
                             _tl242681243012_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242675242996_))
                          (let ((_e242686243015_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242675242996_))))
                            (let ((_tl242684243020_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242686243015_)))
                                  (_hd242685243018_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242686243015_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242684243020_))
                                  (___match251890251891_
                                   _e242656242935_
                                   _hd242655242938_
                                   _tl242654242940_
                                   _e242659242943_
                                   _hd242658242946_
                                   _tl242657242948_
                                   _e242662242951_
                                   _hd242661242954_
                                   _tl242660242956_
                                   _e242665242959_
                                   _hd242664242962_
                                   _tl242663242964_
                                   _e242668242967_
                                   _hd242667242970_
                                   _tl242666242972_
                                   _e242671242975_
                                   _hd242670242978_
                                   _tl242669242980_
                                   _e242674242983_
                                   _hd242673242986_
                                   _tl242672242988_
                                   _e242677242991_
                                   _hd242676242994_
                                   _tl242675242996_
                                   _e242680242999_
                                   _hd242679243002_
                                   _tl242678243004_
                                   _e242683243007_
                                   _hd242682243010_
                                   _tl242681243012_
                                   _e242686243015_
                                   _hd242685243018_
                                   _tl242684243020_)
                                  (___kont251527251528_))))
                          (___match252006252007_
                           _e242656242935_
                           _hd242655242938_
                           _tl242654242940_
                           _e242659242943_
                           _hd242658242946_
                           _tl242657242948_
                           _e242662242951_
                           _hd242661242954_
                           _tl242660242956_
                           _e242665242959_
                           _hd242664242962_
                           _tl242663242964_
                           _e242668242967_
                           _hd242667242970_
                           _tl242666242972_
                           _e242671242975_
                           _hd242670242978_
                           _tl242669242980_
                           _e242674242983_
                           _hd242673242986_
                           _tl242672242988_
                           _e242677242991_
                           _hd242676242994_
                           _tl242675242996_))))
                   (___match251804251805_
                    (lambda (_e242622243066_
                             _hd242621243069_
                             _tl242620243071_
                             _e242625243074_
                             _hd242624243077_
                             _tl242623243079_
                             _e242628243082_
                             _hd242627243085_
                             _tl242626243087_
                             _e242631243090_
                             _hd242630243093_
                             _tl242629243095_
                             _e242634243098_
                             _hd242633243101_
                             _tl242632243103_
                             _e242637243106_
                             _hd242636243109_
                             _tl242635243111_
                             _e242640243114_
                             _hd242639243117_
                             _tl242638243119_
                             _e242643243122_
                             _hd242642243125_
                             _tl242641243127_
                             _e242646243130_
                             _hd242645243133_
                             _tl242644243135_
                             _e242649243138_
                             _hd242648243141_
                             _tl242647243143_)
                      (let ((_L243146_ _hd242648243141_)
                            (_L243147_ _hd242639243117_)
                            (_L243148_ _hd242630243093_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L243148_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L243148_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L243147_
                                    _self242506_)))
                            (___kont251519251520_
                             _L243146_
                             _L243147_
                             _L243148_)
                            (___match252008252009_
                             _e242622243066_
                             _hd242621243069_
                             _tl242620243071_
                             _e242625243074_
                             _hd242624243077_
                             _tl242623243079_
                             _e242628243082_
                             _hd242627243085_
                             _tl242626243087_
                             _e242631243090_
                             _hd242630243093_
                             _tl242629243095_
                             _e242634243098_
                             _hd242633243101_
                             _tl242632243103_
                             _e242637243106_
                             _hd242636243109_
                             _tl242635243111_
                             _e242640243114_
                             _hd242639243117_
                             _tl242638243119_
                             _e242643243122_
                             _hd242642243125_
                             _tl242641243127_)))))
                   (___match251802251803_
                    (lambda (_e242622243066_
                             _hd242621243069_
                             _tl242620243071_
                             _e242625243074_
                             _hd242624243077_
                             _tl242623243079_
                             _e242628243082_
                             _hd242627243085_
                             _tl242626243087_
                             _e242631243090_
                             _hd242630243093_
                             _tl242629243095_
                             _e242634243098_
                             _hd242633243101_
                             _tl242632243103_
                             _e242637243106_
                             _hd242636243109_
                             _tl242635243111_
                             _e242640243114_
                             _hd242639243117_
                             _tl242638243119_
                             _e242643243122_
                             _hd242642243125_
                             _tl242641243127_
                             _e242646243130_
                             _hd242645243133_
                             _tl242644243135_
                             _e242649243138_
                             _hd242648243141_
                             _tl242647243143_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242641243127_))
                          (___match251804251805_
                           _e242622243066_
                           _hd242621243069_
                           _tl242620243071_
                           _e242625243074_
                           _hd242624243077_
                           _tl242623243079_
                           _e242628243082_
                           _hd242627243085_
                           _tl242626243087_
                           _e242631243090_
                           _hd242630243093_
                           _tl242629243095_
                           _e242634243098_
                           _hd242633243101_
                           _tl242632243103_
                           _e242637243106_
                           _hd242636243109_
                           _tl242635243111_
                           _e242640243114_
                           _hd242639243117_
                           _tl242638243119_
                           _e242643243122_
                           _hd242642243125_
                           _tl242641243127_
                           _e242646243130_
                           _hd242645243133_
                           _tl242644243135_
                           _e242649243138_
                           _hd242648243141_
                           _tl242647243143_)
                          (___match251882251883_
                           _e242622243066_
                           _hd242621243069_
                           _tl242620243071_
                           _e242625243074_
                           _hd242624243077_
                           _tl242623243079_
                           _e242628243082_
                           _hd242627243085_
                           _tl242626243087_
                           _e242631243090_
                           _hd242630243093_
                           _tl242629243095_
                           _e242634243098_
                           _hd242633243101_
                           _tl242632243103_
                           _e242637243106_
                           _hd242636243109_
                           _tl242635243111_
                           _e242640243114_
                           _hd242639243117_
                           _tl242638243119_
                           _e242643243122_
                           _hd242642243125_
                           _tl242641243127_
                           _e242646243130_
                           _hd242645243133_
                           _tl242644243135_
                           _e242649243138_
                           _hd242648243141_
                           _tl242647243143_))))
                   (___match251792251793_
                    (lambda (_e242622243066_
                             _hd242621243069_
                             _tl242620243071_
                             _e242625243074_
                             _hd242624243077_
                             _tl242623243079_
                             _e242628243082_
                             _hd242627243085_
                             _tl242626243087_
                             _e242631243090_
                             _hd242630243093_
                             _tl242629243095_
                             _e242634243098_
                             _hd242633243101_
                             _tl242632243103_
                             _e242637243106_
                             _hd242636243109_
                             _tl242635243111_
                             _e242640243114_
                             _hd242639243117_
                             _tl242638243119_
                             _e242643243122_
                             _hd242642243125_
                             _tl242641243127_
                             _e242646243130_
                             _hd242645243133_
                             _tl242644243135_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd242645243133_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242644243135_))
                              (let ((_e242649243138_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242644243135_))))
                                (let ((_tl242647243143_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242649243138_)))
                                      (_hd242648243141_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242649243138_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242647243143_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242641243127_))
                                          (___match251804251805_
                                           _e242622243066_
                                           _hd242621243069_
                                           _tl242620243071_
                                           _e242625243074_
                                           _hd242624243077_
                                           _tl242623243079_
                                           _e242628243082_
                                           _hd242627243085_
                                           _tl242626243087_
                                           _e242631243090_
                                           _hd242630243093_
                                           _tl242629243095_
                                           _e242634243098_
                                           _hd242633243101_
                                           _tl242632243103_
                                           _e242637243106_
                                           _hd242636243109_
                                           _tl242635243111_
                                           _e242640243114_
                                           _hd242639243117_
                                           _tl242638243119_
                                           _e242643243122_
                                           _hd242642243125_
                                           _tl242641243127_
                                           _e242646243130_
                                           _hd242645243133_
                                           _tl242644243135_
                                           _e242649243138_
                                           _hd242648243141_
                                           _tl242647243143_)
                                          (___match251882251883_
                                           _e242622243066_
                                           _hd242621243069_
                                           _tl242620243071_
                                           _e242625243074_
                                           _hd242624243077_
                                           _tl242623243079_
                                           _e242628243082_
                                           _hd242627243085_
                                           _tl242626243087_
                                           _e242631243090_
                                           _hd242630243093_
                                           _tl242629243095_
                                           _e242634243098_
                                           _hd242633243101_
                                           _tl242632243103_
                                           _e242637243106_
                                           _hd242636243109_
                                           _tl242635243111_
                                           _e242640243114_
                                           _hd242639243117_
                                           _tl242638243119_
                                           _e242643243122_
                                           _hd242642243125_
                                           _tl242641243127_
                                           _e242646243130_
                                           _hd242645243133_
                                           _tl242644243135_
                                           _e242649243138_
                                           _hd242648243141_
                                           _tl242647243143_))
                                      (___match252006252007_
                                       _e242622243066_
                                       _hd242621243069_
                                       _tl242620243071_
                                       _e242625243074_
                                       _hd242624243077_
                                       _tl242623243079_
                                       _e242628243082_
                                       _hd242627243085_
                                       _tl242626243087_
                                       _e242631243090_
                                       _hd242630243093_
                                       _tl242629243095_
                                       _e242634243098_
                                       _hd242633243101_
                                       _tl242632243103_
                                       _e242637243106_
                                       _hd242636243109_
                                       _tl242635243111_
                                       _e242640243114_
                                       _hd242639243117_
                                       _tl242638243119_
                                       _e242643243122_
                                       _hd242642243125_
                                       _tl242641243127_))))
                              (___match252006252007_
                               _e242622243066_
                               _hd242621243069_
                               _tl242620243071_
                               _e242625243074_
                               _hd242624243077_
                               _tl242623243079_
                               _e242628243082_
                               _hd242627243085_
                               _tl242626243087_
                               _e242631243090_
                               _hd242630243093_
                               _tl242629243095_
                               _e242634243098_
                               _hd242633243101_
                               _tl242632243103_
                               _e242637243106_
                               _hd242636243109_
                               _tl242635243111_
                               _e242640243114_
                               _hd242639243117_
                               _tl242638243119_
                               _e242643243122_
                               _hd242642243125_
                               _tl242641243127_))
                          (___match252006252007_
                           _e242622243066_
                           _hd242621243069_
                           _tl242620243071_
                           _e242625243074_
                           _hd242624243077_
                           _tl242623243079_
                           _e242628243082_
                           _hd242627243085_
                           _tl242626243087_
                           _e242631243090_
                           _hd242630243093_
                           _tl242629243095_
                           _e242634243098_
                           _hd242633243101_
                           _tl242632243103_
                           _e242637243106_
                           _hd242636243109_
                           _tl242635243111_
                           _e242640243114_
                           _hd242639243117_
                           _tl242638243119_
                           _e242643243122_
                           _hd242642243125_
                           _tl242641243127_))))
                   (___match251724251725_
                    (lambda (_e242571243185_
                             _hd242570243188_
                             _tl242569243190_
                             _e242574243193_
                             _hd242573243196_
                             _tl242572243198_
                             _e242577243201_
                             _hd242576243204_
                             _tl242575243206_
                             _e242580243209_
                             _hd242579243212_
                             _tl242578243214_
                             _e242583243217_
                             _hd242582243220_
                             _tl242581243222_
                             _e242586243225_
                             _hd242585243228_
                             _tl242584243230_
                             _e242589243233_
                             _hd242588243236_
                             _tl242587243238_
                             _e242592243241_
                             _hd242591243244_
                             _tl242590243246_
                             _e242595243249_
                             _hd242594243252_
                             _tl242593243254_
                             _e242598243257_
                             _hd242597243260_
                             _tl242596243262_
                             _e242601243265_
                             _hd242600243268_
                             _tl242599243270_
                             _e242604243273_
                             _hd242603243276_
                             _tl242602243278_
                             _e242607243281_
                             _hd242606243284_
                             _tl242605243286_
                             ___splice251517251518_
                             _target242608243289_
                             _tl242610243291_)
                      (letrec ((_loop242611243294_
                                (lambda (_hd242609243297_ _args242615243299_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd242609243297_))
                                      (let ((_e242612243302_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd242609243297_))))
                                        (let ((_lp-tl242614243307_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242612243302_)))
                                              (_lp-hd242613243305_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242612243302_))))
                                          (let ((__tmp252880
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd242613243305_
                                                         _args242615243299_))))
                                            (declare (not safe))
                                            (_loop242611243294_
                                             _lp-tl242614243307_
                                             __tmp252880))))
                                      (let ((_args242616243310_
                                             (reverse _args242615243299_)))
                                        (let ((_L243313_ _args242616243310_)
                                              (_L243314_ _hd242606243284_)
                                              (_L243315_ _hd242597243260_)
                                              (_L243316_ _hd242588243236_)
                                              (_L243317_ _hd242579243212_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L243317_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L243316_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L243315_
                                                      _self242506_)))
                                              (___kont251515251516_
                                               _L243313_
                                               _L243314_
                                               _L243315_
                                               _L243316_
                                               _L243317_)
                                              (___kont251527251528_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop242611243294_ _target242608243289_ '())))))
                   (___match251682251683_
                    (lambda (_e242571243185_
                             _hd242570243188_
                             _tl242569243190_
                             _e242574243193_
                             _hd242573243196_
                             _tl242572243198_
                             _e242577243201_
                             _hd242576243204_
                             _tl242575243206_
                             _e242580243209_
                             _hd242579243212_
                             _tl242578243214_
                             _e242583243217_
                             _hd242582243220_
                             _tl242581243222_
                             _e242586243225_
                             _hd242585243228_
                             _tl242584243230_
                             _e242589243233_
                             _hd242588243236_
                             _tl242587243238_
                             _e242592243241_
                             _hd242591243244_
                             _tl242590243246_
                             _e242595243249_
                             _hd242594243252_
                             _tl242593243254_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd242594243252_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242593243254_))
                              (let ((_e242598243257_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242593243254_))))
                                (let ((_tl242596243262_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242598243257_)))
                                      (_hd242597243260_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242598243257_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242596243262_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242590243246_))
                                          (let ((_e242601243265_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242590243246_))))
                                            (let ((_tl242599243270_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242601243265_)))
                                                  (_hd242600243268_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242601243265_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd242600243268_))
                                                  (let ((_e242604243273_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd242600243268_))))
                                                    (let ((_tl242602243278_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242604243273_)))
                                                          (_hd242603243276_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242604243273_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd242603243276_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd242603243276_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242602243278_))
                          (let ((_e242607243281_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242602243278_))))
                            (let ((_tl242605243286_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242607243281_)))
                                  (_hd242606243284_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242607243281_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242605243286_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl242599243270_))
                                      (let ((___splice251517251518_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl242599243270_
                                                '0))))
                                        (let ((_tl242610243291_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice251517251518_
                                                  '1)))
                                              (_target242608243289_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice251517251518_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242610243291_))
                                              (___match251724251725_
                                               _e242571243185_
                                               _hd242570243188_
                                               _tl242569243190_
                                               _e242574243193_
                                               _hd242573243196_
                                               _tl242572243198_
                                               _e242577243201_
                                               _hd242576243204_
                                               _tl242575243206_
                                               _e242580243209_
                                               _hd242579243212_
                                               _tl242578243214_
                                               _e242583243217_
                                               _hd242582243220_
                                               _tl242581243222_
                                               _e242586243225_
                                               _hd242585243228_
                                               _tl242584243230_
                                               _e242589243233_
                                               _hd242588243236_
                                               _tl242587243238_
                                               _e242592243241_
                                               _hd242591243244_
                                               _tl242590243246_
                                               _e242595243249_
                                               _hd242594243252_
                                               _tl242593243254_
                                               _e242598243257_
                                               _hd242597243260_
                                               _tl242596243262_
                                               _e242601243265_
                                               _hd242600243268_
                                               _tl242599243270_
                                               _e242604243273_
                                               _hd242603243276_
                                               _tl242602243278_
                                               _e242607243281_
                                               _hd242606243284_
                                               _tl242605243286_
                                               ___splice251517251518_
                                               _target242608243289_
                                               _tl242610243291_)
                                              (___kont251527251528_))))
                                      (___kont251527251528_))
                                  (___kont251527251528_))))
                          (___kont251527251528_))
                      (___kont251527251528_))
                  (___kont251527251528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont251527251528_))))
                                          (___match252006252007_
                                           _e242571243185_
                                           _hd242570243188_
                                           _tl242569243190_
                                           _e242574243193_
                                           _hd242573243196_
                                           _tl242572243198_
                                           _e242577243201_
                                           _hd242576243204_
                                           _tl242575243206_
                                           _e242580243209_
                                           _hd242579243212_
                                           _tl242578243214_
                                           _e242583243217_
                                           _hd242582243220_
                                           _tl242581243222_
                                           _e242586243225_
                                           _hd242585243228_
                                           _tl242584243230_
                                           _e242589243233_
                                           _hd242588243236_
                                           _tl242587243238_
                                           _e242592243241_
                                           _hd242591243244_
                                           _tl242590243246_))
                                      (___match252006252007_
                                       _e242571243185_
                                       _hd242570243188_
                                       _tl242569243190_
                                       _e242574243193_
                                       _hd242573243196_
                                       _tl242572243198_
                                       _e242577243201_
                                       _hd242576243204_
                                       _tl242575243206_
                                       _e242580243209_
                                       _hd242579243212_
                                       _tl242578243214_
                                       _e242583243217_
                                       _hd242582243220_
                                       _tl242581243222_
                                       _e242586243225_
                                       _hd242585243228_
                                       _tl242584243230_
                                       _e242589243233_
                                       _hd242588243236_
                                       _tl242587243238_
                                       _e242592243241_
                                       _hd242591243244_
                                       _tl242590243246_))))
                              (___match252006252007_
                               _e242571243185_
                               _hd242570243188_
                               _tl242569243190_
                               _e242574243193_
                               _hd242573243196_
                               _tl242572243198_
                               _e242577243201_
                               _hd242576243204_
                               _tl242575243206_
                               _e242580243209_
                               _hd242579243212_
                               _tl242578243214_
                               _e242583243217_
                               _hd242582243220_
                               _tl242581243222_
                               _e242586243225_
                               _hd242585243228_
                               _tl242584243230_
                               _e242589243233_
                               _hd242588243236_
                               _tl242587243238_
                               _e242592243241_
                               _hd242591243244_
                               _tl242590243246_))
                          (___match251792251793_
                           _e242571243185_
                           _hd242570243188_
                           _tl242569243190_
                           _e242574243193_
                           _hd242573243196_
                           _tl242572243198_
                           _e242577243201_
                           _hd242576243204_
                           _tl242575243206_
                           _e242580243209_
                           _hd242579243212_
                           _tl242578243214_
                           _e242583243217_
                           _hd242582243220_
                           _tl242581243222_
                           _e242586243225_
                           _hd242585243228_
                           _tl242584243230_
                           _e242589243233_
                           _hd242588243236_
                           _tl242587243238_
                           _e242592243241_
                           _hd242591243244_
                           _tl242590243246_
                           _e242595243249_
                           _hd242594243252_
                           _tl242593243254_))))
                   (___match251614251615_
                    (lambda (_e242527243374_
                             _hd242526243377_
                             _tl242525243379_
                             _e242530243382_
                             _hd242529243385_
                             _tl242528243387_
                             _e242533243390_
                             _hd242532243393_
                             _tl242531243395_
                             _e242536243398_
                             _hd242535243401_
                             _tl242534243403_
                             _e242539243406_
                             _hd242538243409_
                             _tl242537243411_
                             _e242542243414_
                             _hd242541243417_
                             _tl242540243419_
                             _e242545243422_
                             _hd242544243425_
                             _tl242543243427_
                             _e242548243430_
                             _hd242547243433_
                             _tl242546243435_
                             _e242551243438_
                             _hd242550243441_
                             _tl242549243443_
                             _e242554243446_
                             _hd242553243449_
                             _tl242552243451_
                             ___splice251513251514_
                             _target242555243454_
                             _tl242557243456_)
                      (letrec ((_loop242558243459_
                                (lambda (_hd242556243462_ _args242562243464_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd242556243462_))
                                      (let ((_e242559243467_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd242556243462_))))
                                        (let ((_lp-tl242561243472_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242559243467_)))
                                              (_lp-hd242560243470_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242559243467_))))
                                          (let ((__tmp252881
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd242560243470_
                                                         _args242562243464_))))
                                            (declare (not safe))
                                            (_loop242558243459_
                                             _lp-tl242561243472_
                                             __tmp252881))))
                                      (let ((_args242563243475_
                                             (reverse _args242562243464_)))
                                        (let ((_L243478_ _args242563243475_)
                                              (_L243479_ _hd242553243449_)
                                              (_L243480_ _hd242544243425_)
                                              (_L243481_ _hd242535243401_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L243481_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L243480_
                                                      _self242506_)))
                                              (___kont251511251512_
                                               _L243478_
                                               _L243479_
                                               _L243480_
                                               _L243481_)
                                              (___match251802251803_
                                               _e242527243374_
                                               _hd242526243377_
                                               _tl242525243379_
                                               _e242530243382_
                                               _hd242529243385_
                                               _tl242528243387_
                                               _e242533243390_
                                               _hd242532243393_
                                               _tl242531243395_
                                               _e242536243398_
                                               _hd242535243401_
                                               _tl242534243403_
                                               _e242539243406_
                                               _hd242538243409_
                                               _tl242537243411_
                                               _e242542243414_
                                               _hd242541243417_
                                               _tl242540243419_
                                               _e242545243422_
                                               _hd242544243425_
                                               _tl242543243427_
                                               _e242548243430_
                                               _hd242547243433_
                                               _tl242546243435_
                                               _e242551243438_
                                               _hd242550243441_
                                               _tl242549243443_
                                               _e242554243446_
                                               _hd242553243449_
                                               _tl242552243451_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop242558243459_ _target242555243454_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx251509251510_))
                  (let ((_e242527243374_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx251509251510_))))
                    (let ((_tl242525243379_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242527243374_)))
                          (_hd242526243377_
                           (let ()
                             (declare (not safe))
                             (##car _e242527243374_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242525243379_))
                          (let ((_e242530243382_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242525243379_))))
                            (let ((_tl242528243387_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242530243382_)))
                                  (_hd242529243385_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242530243382_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd242529243385_))
                                  (let ((_e242533243390_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd242529243385_))))
                                    (let ((_tl242531243395_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242533243390_)))
                                          (_hd242532243393_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242533243390_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd242532243393_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd242532243393_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242531243395_))
                                                  (let ((_e242536243398_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242531243395_))))
                                                    (let ((_tl242534243403_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242536243398_)))
                                                          (_hd242535243401_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242536243398_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl242534243403_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl242528243387_))
                      (let ((_e242539243406_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl242528243387_))))
                        (let ((_tl242537243411_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242539243406_)))
                              (_hd242538243409_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242539243406_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd242538243409_))
                              (let ((_e242542243414_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd242538243409_))))
                                (let ((_tl242540243419_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242542243414_)))
                                      (_hd242541243417_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242542243414_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd242541243417_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd242541243417_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242540243419_))
                                              (let ((_e242545243422_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242540243419_))))
                                                (let ((_tl242543243427_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242545243422_)))
                                                      (_hd242544243425_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242545243422_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242543243427_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242537243411_))
                                                          (let ((_e242548243430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242537243411_))))
                    (let ((_tl242546243435_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242548243430_)))
                          (_hd242547243433_
                           (let ()
                             (declare (not safe))
                             (##car _e242548243430_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242547243433_))
                          (let ((_e242551243438_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242547243433_))))
                            (let ((_tl242549243443_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242551243438_)))
                                  (_hd242550243441_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242551243438_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242550243441_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd242550243441_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242549243443_))
                                          (let ((_e242554243446_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242549243443_))))
                                            (let ((_tl242552243451_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242554243446_)))
                                                  (_hd242553243449_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242554243446_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242552243451_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl242546243435_))
                                                      (let ((___splice251513251514_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl242546243435_ '0))))
                (let ((_tl242557243456_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice251513251514_ '1)))
                      (_target242555243454_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice251513251514_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl242557243456_))
                      (___match251614251615_
                       _e242527243374_
                       _hd242526243377_
                       _tl242525243379_
                       _e242530243382_
                       _hd242529243385_
                       _tl242528243387_
                       _e242533243390_
                       _hd242532243393_
                       _tl242531243395_
                       _e242536243398_
                       _hd242535243401_
                       _tl242534243403_
                       _e242539243406_
                       _hd242538243409_
                       _tl242537243411_
                       _e242542243414_
                       _hd242541243417_
                       _tl242540243419_
                       _e242545243422_
                       _hd242544243425_
                       _tl242543243427_
                       _e242548243430_
                       _hd242547243433_
                       _tl242546243435_
                       _e242551243438_
                       _hd242550243441_
                       _tl242549243443_
                       _e242554243446_
                       _hd242553243449_
                       _tl242552243451_
                       ___splice251513251514_
                       _target242555243454_
                       _tl242557243456_)
                      (___match251802251803_
                       _e242527243374_
                       _hd242526243377_
                       _tl242525243379_
                       _e242530243382_
                       _hd242529243385_
                       _tl242528243387_
                       _e242533243390_
                       _hd242532243393_
                       _tl242531243395_
                       _e242536243398_
                       _hd242535243401_
                       _tl242534243403_
                       _e242539243406_
                       _hd242538243409_
                       _tl242537243411_
                       _e242542243414_
                       _hd242541243417_
                       _tl242540243419_
                       _e242545243422_
                       _hd242544243425_
                       _tl242543243427_
                       _e242548243430_
                       _hd242547243433_
                       _tl242546243435_
                       _e242551243438_
                       _hd242550243441_
                       _tl242549243443_
                       _e242554243446_
                       _hd242553243449_
                       _tl242552243451_))))
              (___match251802251803_
               _e242527243374_
               _hd242526243377_
               _tl242525243379_
               _e242530243382_
               _hd242529243385_
               _tl242528243387_
               _e242533243390_
               _hd242532243393_
               _tl242531243395_
               _e242536243398_
               _hd242535243401_
               _tl242534243403_
               _e242539243406_
               _hd242538243409_
               _tl242537243411_
               _e242542243414_
               _hd242541243417_
               _tl242540243419_
               _e242545243422_
               _hd242544243425_
               _tl242543243427_
               _e242548243430_
               _hd242547243433_
               _tl242546243435_
               _e242551243438_
               _hd242550243441_
               _tl242549243443_
               _e242554243446_
               _hd242553243449_
               _tl242552243451_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match252006252007_
                                                   _e242527243374_
                                                   _hd242526243377_
                                                   _tl242525243379_
                                                   _e242530243382_
                                                   _hd242529243385_
                                                   _tl242528243387_
                                                   _e242533243390_
                                                   _hd242532243393_
                                                   _tl242531243395_
                                                   _e242536243398_
                                                   _hd242535243401_
                                                   _tl242534243403_
                                                   _e242539243406_
                                                   _hd242538243409_
                                                   _tl242537243411_
                                                   _e242542243414_
                                                   _hd242541243417_
                                                   _tl242540243419_
                                                   _e242545243422_
                                                   _hd242544243425_
                                                   _tl242543243427_
                                                   _e242548243430_
                                                   _hd242547243433_
                                                   _tl242546243435_))))
                                          (___match252006252007_
                                           _e242527243374_
                                           _hd242526243377_
                                           _tl242525243379_
                                           _e242530243382_
                                           _hd242529243385_
                                           _tl242528243387_
                                           _e242533243390_
                                           _hd242532243393_
                                           _tl242531243395_
                                           _e242536243398_
                                           _hd242535243401_
                                           _tl242534243403_
                                           _e242539243406_
                                           _hd242538243409_
                                           _tl242537243411_
                                           _e242542243414_
                                           _hd242541243417_
                                           _tl242540243419_
                                           _e242545243422_
                                           _hd242544243425_
                                           _tl242543243427_
                                           _e242548243430_
                                           _hd242547243433_
                                           _tl242546243435_))
                                      (___match251682251683_
                                       _e242527243374_
                                       _hd242526243377_
                                       _tl242525243379_
                                       _e242530243382_
                                       _hd242529243385_
                                       _tl242528243387_
                                       _e242533243390_
                                       _hd242532243393_
                                       _tl242531243395_
                                       _e242536243398_
                                       _hd242535243401_
                                       _tl242534243403_
                                       _e242539243406_
                                       _hd242538243409_
                                       _tl242537243411_
                                       _e242542243414_
                                       _hd242541243417_
                                       _tl242540243419_
                                       _e242545243422_
                                       _hd242544243425_
                                       _tl242543243427_
                                       _e242548243430_
                                       _hd242547243433_
                                       _tl242546243435_
                                       _e242551243438_
                                       _hd242550243441_
                                       _tl242549243443_))
                                  (___match252006252007_
                                   _e242527243374_
                                   _hd242526243377_
                                   _tl242525243379_
                                   _e242530243382_
                                   _hd242529243385_
                                   _tl242528243387_
                                   _e242533243390_
                                   _hd242532243393_
                                   _tl242531243395_
                                   _e242536243398_
                                   _hd242535243401_
                                   _tl242534243403_
                                   _e242539243406_
                                   _hd242538243409_
                                   _tl242537243411_
                                   _e242542243414_
                                   _hd242541243417_
                                   _tl242540243419_
                                   _e242545243422_
                                   _hd242544243425_
                                   _tl242543243427_
                                   _e242548243430_
                                   _hd242547243433_
                                   _tl242546243435_))))
                          (___match252006252007_
                           _e242527243374_
                           _hd242526243377_
                           _tl242525243379_
                           _e242530243382_
                           _hd242529243385_
                           _tl242528243387_
                           _e242533243390_
                           _hd242532243393_
                           _tl242531243395_
                           _e242536243398_
                           _hd242535243401_
                           _tl242534243403_
                           _e242539243406_
                           _hd242538243409_
                           _tl242537243411_
                           _e242542243414_
                           _hd242541243417_
                           _tl242540243419_
                           _e242545243422_
                           _hd242544243425_
                           _tl242543243427_
                           _e242548243430_
                           _hd242547243433_
                           _tl242546243435_))))
                  (___match251944251945_
                   _e242527243374_
                   _hd242526243377_
                   _tl242525243379_
                   _e242530243382_
                   _hd242529243385_
                   _tl242528243387_
                   _e242533243390_
                   _hd242532243393_
                   _tl242531243395_
                   _e242536243398_
                   _hd242535243401_
                   _tl242534243403_
                   _e242539243406_
                   _hd242538243409_
                   _tl242537243411_
                   _e242542243414_
                   _hd242541243417_
                   _tl242540243419_
                   _e242545243422_
                   _hd242544243425_
                   _tl242543243427_))
              (___kont251527251528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont251527251528_))
                                          (___kont251527251528_))
                                      (___kont251527251528_))))
                              (___kont251527251528_))))
                      (___kont251527251528_))
                  (___kont251527251528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont251527251528_))
                                              (___kont251527251528_))
                                          (___kont251527251528_))))
                                  (___kont251527251528_))))
                          (___kont251527251528_))))
                  (___kont251527251528_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx241451_
               _self241452_
               _$t241453_
               _methods241454_
               _slots241455_
               _class-check241456_
               _struct-check241457_
               _struct-assert241458_)
        (letrec ((_force-e241460_
                  (lambda (_what242503_)
                    (let ((__tmp252882
                           (let ((__tmp252886
                                  (let ((__tmp252887
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp252887)))
                                 (__tmp252883
                                  (let ((__tmp252884
                                         (let ((__tmp252885
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what242503_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp252885))))
                                    (declare (not safe))
                                    (cons __tmp252884 '()))))
                             (declare (not safe))
                             (cons __tmp252886 __tmp252883))))
                      (declare (not safe))
                      (cons '%#call __tmp252882)))))
          (let* ((___stx252011252012_ _stx241451_)
                 (_g241468241690_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx252011252012_)))))
            (let ((___kont252013252014_
                   (lambda (_L242449_ _L242450_ _L242451_ _L242452_)
                     (let ((_$method242497_
                            (let ((__tmp252888
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L242450_))))
                              (declare (not safe))
                              (table-ref _methods241454_ __tmp252888)))
                           (_args242498_
                            (map (lambda (_g242485242487_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g242485242487_
                                      _self241452_
                                      _$t241453_
                                      _methods241454_
                                      _slots241455_
                                      _class-check241456_
                                      _struct-check241457_
                                      _struct-assert241458_)))
                                 (let ((__tmp252889
                                        (lambda (_g242489242492_
                                                 _g242490242494_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g242489242492_
                                                  _g242490242494_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp252889 '() _L242449_)))))
                       (let ((__tmp252890
                              (let ((__tmp252891
                                     (let ((__tmp252895
                                            (let ()
                                              (declare (not safe))
                                              (_force-e241460_
                                               _$method242497_)))
                                           (__tmp252892
                                            (let ((__tmp252893
                                                   (let ((__tmp252894
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self241452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252894))))
                                              (declare (not safe))
                                              (cons __tmp252893
                                                    _args242498_))))
                                       (declare (not safe))
                                       (cons __tmp252895 __tmp252892))))
                                (declare (not safe))
                                (cons '%#call __tmp252891))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252890 _stx241451_)))))
                  (___kont252017252018_
                   (lambda (_L242281_ _L242282_ _L242283_ _L242284_ _L242285_)
                     (let ((_$method242337_
                            (let ((__tmp252896
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L242282_))))
                              (declare (not safe))
                              (table-ref _methods241454_ __tmp252896)))
                           (_args242338_
                            (map (lambda (_g242325242327_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g242325242327_
                                      _self241452_
                                      _$t241453_
                                      _methods241454_
                                      _slots241455_
                                      _class-check241456_
                                      _struct-check241457_
                                      _struct-assert241458_)))
                                 (let ((__tmp252897
                                        (lambda (_g242329242332_
                                                 _g242330242334_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g242329242332_
                                                  _g242330242334_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp252897 '() _L242281_)))))
                       (let ((__tmp252898
                              (let ((__tmp252899
                                     (let ((__tmp252905
                                            (let ((__tmp252906
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252906)))
                                           (__tmp252900
                                            (let ((__tmp252904
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e241460_
                                                      _$method242337_)))
                                                  (__tmp252901
                                                   (let ((__tmp252902
                                                          (let ((__tmp252903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241452_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252903))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252902
                                                           _args242338_))))
                                              (declare (not safe))
                                              (cons __tmp252904 __tmp252901))))
                                       (declare (not safe))
                                       (cons __tmp252905 __tmp252900))))
                                (declare (not safe))
                                (cons '%#call __tmp252899))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252898 _stx241451_)))))
                  (___kont252021252022_
                   (lambda (_L242112_ _L242113_ _L242114_)
                     (let* ((_$field242146_
                             (let ((__tmp252907
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L242112_))))
                               (declare (not safe))
                               (table-ref _slots241455_ __tmp252907)))
                            (__tmp252908
                             (let ((__tmp252909
                                    (let ((__tmp252916
                                           (let ((__tmp252917
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t241453_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp252917)))
                                          (__tmp252910
                                           (let ((__tmp252914
                                                  (let ((__tmp252915
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field242146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp252915)))
                                                 (__tmp252911
                                                  (let ((__tmp252912
                                                         (let ((__tmp252913
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self241452_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp252913))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252912 '()))))
                                             (declare (not safe))
                                             (cons __tmp252914 __tmp252911))))
                                      (declare (not safe))
                                      (cons __tmp252916 __tmp252910))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp252909))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp252908 _stx241451_))))
                  (___kont252023252024_
                   (lambda (_L241986_ _L241987_ _L241988_ _L241989_)
                     (let ((_$field242024_
                            (let ((__tmp252918
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L241987_))))
                              (declare (not safe))
                              (table-ref _slots241455_ __tmp252918)))
                           (_expr242025_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L241986_
                               _self241452_
                               _$t241453_
                               _methods241454_
                               _slots241455_
                               _class-check241456_
                               _struct-check241457_
                               _struct-assert241458_))))
                       (let ((__tmp252919
                              (let ((__tmp252920
                                     (let ((__tmp252928
                                            (let ((__tmp252929
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t241453_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252929)))
                                           (__tmp252921
                                            (let ((__tmp252926
                                                   (let ((__tmp252927
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field242024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252927)))
                                                  (__tmp252922
                                                   (let ((__tmp252924
                                                          (let ((__tmp252925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241452_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252925)))
                 (__tmp252923
                  (let () (declare (not safe)) (cons _expr242025_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252924
                                                           __tmp252923))))
                                              (declare (not safe))
                                              (cons __tmp252926 __tmp252922))))
                                       (declare (not safe))
                                       (cons __tmp252928 __tmp252921))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp252920))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252919 _stx241451_)))))
                  (___kont252025252026_
                   (lambda (_L241865_ _L241866_)
                     (let* ((_slot241888_
                             (##structure-ref
                              (let ((__tmp252930
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L241866_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp252930))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field241890_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots241455_ _slot241888_))))
                       (let ((__tmp252931
                              (let ((__tmp252932
                                     (let ((__tmp252939
                                            (let ((__tmp252940
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t241453_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252940)))
                                           (__tmp252933
                                            (let ((__tmp252937
                                                   (let ((__tmp252938
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field241890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252938)))
                                                  (__tmp252934
                                                   (let ((__tmp252935
                                                          (let ((__tmp252936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241452_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252935 '()))))
                                              (declare (not safe))
                                              (cons __tmp252937 __tmp252934))))
                                       (declare (not safe))
                                       (cons __tmp252939 __tmp252933))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp252932))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252931 _stx241451_)))))
                  (___kont252027252028_
                   (lambda (_L241766_ _L241767_ _L241768_)
                     (let* ((_slot241797_
                             (##structure-ref
                              (let ((__tmp252941
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L241768_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp252941))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field241799_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots241455_ _slot241797_)))
                            (_expr241801_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L241766_
                                _self241452_
                                _$t241453_
                                _methods241454_
                                _slots241455_
                                _class-check241456_
                                _struct-check241457_
                                _struct-assert241458_))))
                       (let ((__tmp252942
                              (let ((__tmp252943
                                     (let ((__tmp252951
                                            (let ((__tmp252952
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t241453_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252952)))
                                           (__tmp252944
                                            (let ((__tmp252949
                                                   (let ((__tmp252950
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field241799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252950)))
                                                  (__tmp252945
                                                   (let ((__tmp252947
                                                          (let ((__tmp252948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241452_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252948)))
                 (__tmp252946
                  (let () (declare (not safe)) (cons _expr241801_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252947
                                                           __tmp252946))))
                                              (declare (not safe))
                                              (cons __tmp252949 __tmp252945))))
                                       (declare (not safe))
                                       (cons __tmp252951 __tmp252944))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp252943))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252942 _stx241451_)))))
                  (___kont252029252030_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx241451_
                        _self241452_
                        _$t241453_
                        _methods241454_
                        _slots241455_
                        _class-check241456_
                        _struct-check241457_
                        _struct-assert241458_)))))
              (let* ((___match252510252511_
                      (lambda (_e241664241702_
                               _hd241663241705_
                               _tl241662241707_
                               _e241667241710_
                               _hd241666241713_
                               _tl241665241715_
                               _e241670241718_
                               _hd241669241721_
                               _tl241668241723_
                               _e241673241726_
                               _hd241672241729_
                               _tl241671241731_
                               _e241676241734_
                               _hd241675241737_
                               _tl241674241739_
                               _e241679241742_
                               _hd241678241745_
                               _tl241677241747_
                               _e241682241750_
                               _hd241681241753_
                               _tl241680241755_
                               _e241685241758_
                               _hd241684241761_
                               _tl241683241763_)
                        (let ((_L241766_ _hd241684241761_)
                              (_L241767_ _hd241681241753_)
                              (_L241768_ _hd241672241729_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L241767_
                                      _self241452_))
                                   (let ((__tmp252953
                                          (let ((__tmp252954
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L241768_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp252954))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp252953
                                      'gxc#!mutator::t)))
                              (___kont252027252028_
                               _L241766_
                               _L241767_
                               _L241768_)
                              (___kont252029252030_)))))
                     (___match252508252509_
                      (lambda (_e241664241702_
                               _hd241663241705_
                               _tl241662241707_
                               _e241667241710_
                               _hd241666241713_
                               _tl241665241715_
                               _e241670241718_
                               _hd241669241721_
                               _tl241668241723_
                               _e241673241726_
                               _hd241672241729_
                               _tl241671241731_
                               _e241676241734_
                               _hd241675241737_
                               _tl241674241739_
                               _e241679241742_
                               _hd241678241745_
                               _tl241677241747_
                               _e241682241750_
                               _hd241681241753_
                               _tl241680241755_
                               _e241685241758_
                               _hd241684241761_
                               _tl241683241763_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241683241763_))
                            (___match252510252511_
                             _e241664241702_
                             _hd241663241705_
                             _tl241662241707_
                             _e241667241710_
                             _hd241666241713_
                             _tl241665241715_
                             _e241670241718_
                             _hd241669241721_
                             _tl241668241723_
                             _e241673241726_
                             _hd241672241729_
                             _tl241671241731_
                             _e241676241734_
                             _hd241675241737_
                             _tl241674241739_
                             _e241679241742_
                             _hd241678241745_
                             _tl241677241747_
                             _e241682241750_
                             _hd241681241753_
                             _tl241680241755_
                             _e241685241758_
                             _hd241684241761_
                             _tl241683241763_)
                            (___kont252029252030_))))
                     (___match252502252503_
                      (lambda (_e241664241702_
                               _hd241663241705_
                               _tl241662241707_
                               _e241667241710_
                               _hd241666241713_
                               _tl241665241715_
                               _e241670241718_
                               _hd241669241721_
                               _tl241668241723_
                               _e241673241726_
                               _hd241672241729_
                               _tl241671241731_
                               _e241676241734_
                               _hd241675241737_
                               _tl241674241739_
                               _e241679241742_
                               _hd241678241745_
                               _tl241677241747_
                               _e241682241750_
                               _hd241681241753_
                               _tl241680241755_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241674241739_))
                            (let ((_e241685241758_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241674241739_))))
                              (let ((_tl241683241763_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241685241758_)))
                                    (_hd241684241761_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241685241758_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241683241763_))
                                    (___match252510252511_
                                     _e241664241702_
                                     _hd241663241705_
                                     _tl241662241707_
                                     _e241667241710_
                                     _hd241666241713_
                                     _tl241665241715_
                                     _e241670241718_
                                     _hd241669241721_
                                     _tl241668241723_
                                     _e241673241726_
                                     _hd241672241729_
                                     _tl241671241731_
                                     _e241676241734_
                                     _hd241675241737_
                                     _tl241674241739_
                                     _e241679241742_
                                     _hd241678241745_
                                     _tl241677241747_
                                     _e241682241750_
                                     _hd241681241753_
                                     _tl241680241755_
                                     _e241685241758_
                                     _hd241684241761_
                                     _tl241683241763_)
                                    (___kont252029252030_))))
                            (___kont252029252030_))))
                     (___match252448252449_
                      (lambda (_e241640241809_
                               _hd241639241812_
                               _tl241638241814_
                               _e241643241817_
                               _hd241642241820_
                               _tl241641241822_
                               _e241646241825_
                               _hd241645241828_
                               _tl241644241830_
                               _e241649241833_
                               _hd241648241836_
                               _tl241647241838_
                               _e241652241841_
                               _hd241651241844_
                               _tl241650241846_
                               _e241655241849_
                               _hd241654241852_
                               _tl241653241854_
                               _e241658241857_
                               _hd241657241860_
                               _tl241656241862_)
                        (let ((_L241865_ _hd241657241860_)
                              (_L241866_ _hd241648241836_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L241865_
                                      _self241452_))
                                   (let ((__tmp252955
                                          (let ((__tmp252956
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L241866_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp252956))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp252955
                                      'gxc#!accessor::t)))
                              (___kont252025252026_ _L241865_ _L241866_)
                              (___kont252029252030_)))))
                     (___match252446252447_
                      (lambda (_e241640241809_
                               _hd241639241812_
                               _tl241638241814_
                               _e241643241817_
                               _hd241642241820_
                               _tl241641241822_
                               _e241646241825_
                               _hd241645241828_
                               _tl241644241830_
                               _e241649241833_
                               _hd241648241836_
                               _tl241647241838_
                               _e241652241841_
                               _hd241651241844_
                               _tl241650241846_
                               _e241655241849_
                               _hd241654241852_
                               _tl241653241854_
                               _e241658241857_
                               _hd241657241860_
                               _tl241656241862_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241650241846_))
                            (___match252448252449_
                             _e241640241809_
                             _hd241639241812_
                             _tl241638241814_
                             _e241643241817_
                             _hd241642241820_
                             _tl241641241822_
                             _e241646241825_
                             _hd241645241828_
                             _tl241644241830_
                             _e241649241833_
                             _hd241648241836_
                             _tl241647241838_
                             _e241652241841_
                             _hd241651241844_
                             _tl241650241846_
                             _e241655241849_
                             _hd241654241852_
                             _tl241653241854_
                             _e241658241857_
                             _hd241657241860_
                             _tl241656241862_)
                            (___match252502252503_
                             _e241640241809_
                             _hd241639241812_
                             _tl241638241814_
                             _e241643241817_
                             _hd241642241820_
                             _tl241641241822_
                             _e241646241825_
                             _hd241645241828_
                             _tl241644241830_
                             _e241649241833_
                             _hd241648241836_
                             _tl241647241838_
                             _e241652241841_
                             _hd241651241844_
                             _tl241650241846_
                             _e241655241849_
                             _hd241654241852_
                             _tl241653241854_
                             _e241658241857_
                             _hd241657241860_
                             _tl241656241862_))))
                     (___match252392252393_
                      (lambda (_e241605241898_
                               _hd241604241901_
                               _tl241603241903_
                               _e241608241906_
                               _hd241607241909_
                               _tl241606241911_
                               _e241611241914_
                               _hd241610241917_
                               _tl241609241919_
                               _e241614241922_
                               _hd241613241925_
                               _tl241612241927_
                               _e241617241930_
                               _hd241616241933_
                               _tl241615241935_
                               _e241620241938_
                               _hd241619241941_
                               _tl241618241943_
                               _e241623241946_
                               _hd241622241949_
                               _tl241621241951_
                               _e241626241954_
                               _hd241625241957_
                               _tl241624241959_
                               _e241629241962_
                               _hd241628241965_
                               _tl241627241967_
                               _e241632241970_
                               _hd241631241973_
                               _tl241630241975_
                               _e241635241978_
                               _hd241634241981_
                               _tl241633241983_)
                        (let ((_L241986_ _hd241634241981_)
                              (_L241987_ _hd241631241973_)
                              (_L241988_ _hd241622241949_)
                              (_L241989_ _hd241613241925_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L241989_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L241989_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L241988_
                                      _self241452_)))
                              (___kont252023252024_
                               _L241986_
                               _L241987_
                               _L241988_
                               _L241989_)
                              (___kont252029252030_)))))
                     (___match252384252385_
                      (lambda (_e241605241898_
                               _hd241604241901_
                               _tl241603241903_
                               _e241608241906_
                               _hd241607241909_
                               _tl241606241911_
                               _e241611241914_
                               _hd241610241917_
                               _tl241609241919_
                               _e241614241922_
                               _hd241613241925_
                               _tl241612241927_
                               _e241617241930_
                               _hd241616241933_
                               _tl241615241935_
                               _e241620241938_
                               _hd241619241941_
                               _tl241618241943_
                               _e241623241946_
                               _hd241622241949_
                               _tl241621241951_
                               _e241626241954_
                               _hd241625241957_
                               _tl241624241959_
                               _e241629241962_
                               _hd241628241965_
                               _tl241627241967_
                               _e241632241970_
                               _hd241631241973_
                               _tl241630241975_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241624241959_))
                            (let ((_e241635241978_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241624241959_))))
                              (let ((_tl241633241983_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241635241978_)))
                                    (_hd241634241981_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241635241978_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241633241983_))
                                    (___match252392252393_
                                     _e241605241898_
                                     _hd241604241901_
                                     _tl241603241903_
                                     _e241608241906_
                                     _hd241607241909_
                                     _tl241606241911_
                                     _e241611241914_
                                     _hd241610241917_
                                     _tl241609241919_
                                     _e241614241922_
                                     _hd241613241925_
                                     _tl241612241927_
                                     _e241617241930_
                                     _hd241616241933_
                                     _tl241615241935_
                                     _e241620241938_
                                     _hd241619241941_
                                     _tl241618241943_
                                     _e241623241946_
                                     _hd241622241949_
                                     _tl241621241951_
                                     _e241626241954_
                                     _hd241625241957_
                                     _tl241624241959_
                                     _e241629241962_
                                     _hd241628241965_
                                     _tl241627241967_
                                     _e241632241970_
                                     _hd241631241973_
                                     _tl241630241975_
                                     _e241635241978_
                                     _hd241634241981_
                                     _tl241633241983_)
                                    (___kont252029252030_))))
                            (___match252508252509_
                             _e241605241898_
                             _hd241604241901_
                             _tl241603241903_
                             _e241608241906_
                             _hd241607241909_
                             _tl241606241911_
                             _e241611241914_
                             _hd241610241917_
                             _tl241609241919_
                             _e241614241922_
                             _hd241613241925_
                             _tl241612241927_
                             _e241617241930_
                             _hd241616241933_
                             _tl241615241935_
                             _e241620241938_
                             _hd241619241941_
                             _tl241618241943_
                             _e241623241946_
                             _hd241622241949_
                             _tl241621241951_
                             _e241626241954_
                             _hd241625241957_
                             _tl241624241959_))))
                     (___match252306252307_
                      (lambda (_e241571242032_
                               _hd241570242035_
                               _tl241569242037_
                               _e241574242040_
                               _hd241573242043_
                               _tl241572242045_
                               _e241577242048_
                               _hd241576242051_
                               _tl241575242053_
                               _e241580242056_
                               _hd241579242059_
                               _tl241578242061_
                               _e241583242064_
                               _hd241582242067_
                               _tl241581242069_
                               _e241586242072_
                               _hd241585242075_
                               _tl241584242077_
                               _e241589242080_
                               _hd241588242083_
                               _tl241587242085_
                               _e241592242088_
                               _hd241591242091_
                               _tl241590242093_
                               _e241595242096_
                               _hd241594242099_
                               _tl241593242101_
                               _e241598242104_
                               _hd241597242107_
                               _tl241596242109_)
                        (let ((_L242112_ _hd241597242107_)
                              (_L242113_ _hd241588242083_)
                              (_L242114_ _hd241579242059_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L242114_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L242114_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L242113_
                                      _self241452_)))
                              (___kont252021252022_
                               _L242112_
                               _L242113_
                               _L242114_)
                              (___match252510252511_
                               _e241571242032_
                               _hd241570242035_
                               _tl241569242037_
                               _e241574242040_
                               _hd241573242043_
                               _tl241572242045_
                               _e241577242048_
                               _hd241576242051_
                               _tl241575242053_
                               _e241580242056_
                               _hd241579242059_
                               _tl241578242061_
                               _e241583242064_
                               _hd241582242067_
                               _tl241581242069_
                               _e241586242072_
                               _hd241585242075_
                               _tl241584242077_
                               _e241589242080_
                               _hd241588242083_
                               _tl241587242085_
                               _e241592242088_
                               _hd241591242091_
                               _tl241590242093_)))))
                     (___match252304252305_
                      (lambda (_e241571242032_
                               _hd241570242035_
                               _tl241569242037_
                               _e241574242040_
                               _hd241573242043_
                               _tl241572242045_
                               _e241577242048_
                               _hd241576242051_
                               _tl241575242053_
                               _e241580242056_
                               _hd241579242059_
                               _tl241578242061_
                               _e241583242064_
                               _hd241582242067_
                               _tl241581242069_
                               _e241586242072_
                               _hd241585242075_
                               _tl241584242077_
                               _e241589242080_
                               _hd241588242083_
                               _tl241587242085_
                               _e241592242088_
                               _hd241591242091_
                               _tl241590242093_
                               _e241595242096_
                               _hd241594242099_
                               _tl241593242101_
                               _e241598242104_
                               _hd241597242107_
                               _tl241596242109_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241590242093_))
                            (___match252306252307_
                             _e241571242032_
                             _hd241570242035_
                             _tl241569242037_
                             _e241574242040_
                             _hd241573242043_
                             _tl241572242045_
                             _e241577242048_
                             _hd241576242051_
                             _tl241575242053_
                             _e241580242056_
                             _hd241579242059_
                             _tl241578242061_
                             _e241583242064_
                             _hd241582242067_
                             _tl241581242069_
                             _e241586242072_
                             _hd241585242075_
                             _tl241584242077_
                             _e241589242080_
                             _hd241588242083_
                             _tl241587242085_
                             _e241592242088_
                             _hd241591242091_
                             _tl241590242093_
                             _e241595242096_
                             _hd241594242099_
                             _tl241593242101_
                             _e241598242104_
                             _hd241597242107_
                             _tl241596242109_)
                            (___match252384252385_
                             _e241571242032_
                             _hd241570242035_
                             _tl241569242037_
                             _e241574242040_
                             _hd241573242043_
                             _tl241572242045_
                             _e241577242048_
                             _hd241576242051_
                             _tl241575242053_
                             _e241580242056_
                             _hd241579242059_
                             _tl241578242061_
                             _e241583242064_
                             _hd241582242067_
                             _tl241581242069_
                             _e241586242072_
                             _hd241585242075_
                             _tl241584242077_
                             _e241589242080_
                             _hd241588242083_
                             _tl241587242085_
                             _e241592242088_
                             _hd241591242091_
                             _tl241590242093_
                             _e241595242096_
                             _hd241594242099_
                             _tl241593242101_
                             _e241598242104_
                             _hd241597242107_
                             _tl241596242109_))))
                     (___match252294252295_
                      (lambda (_e241571242032_
                               _hd241570242035_
                               _tl241569242037_
                               _e241574242040_
                               _hd241573242043_
                               _tl241572242045_
                               _e241577242048_
                               _hd241576242051_
                               _tl241575242053_
                               _e241580242056_
                               _hd241579242059_
                               _tl241578242061_
                               _e241583242064_
                               _hd241582242067_
                               _tl241581242069_
                               _e241586242072_
                               _hd241585242075_
                               _tl241584242077_
                               _e241589242080_
                               _hd241588242083_
                               _tl241587242085_
                               _e241592242088_
                               _hd241591242091_
                               _tl241590242093_
                               _e241595242096_
                               _hd241594242099_
                               _tl241593242101_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd241594242099_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241593242101_))
                                (let ((_e241598242104_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241593242101_))))
                                  (let ((_tl241596242109_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241598242104_)))
                                        (_hd241597242107_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241598242104_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl241596242109_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl241590242093_))
                                            (___match252306252307_
                                             _e241571242032_
                                             _hd241570242035_
                                             _tl241569242037_
                                             _e241574242040_
                                             _hd241573242043_
                                             _tl241572242045_
                                             _e241577242048_
                                             _hd241576242051_
                                             _tl241575242053_
                                             _e241580242056_
                                             _hd241579242059_
                                             _tl241578242061_
                                             _e241583242064_
                                             _hd241582242067_
                                             _tl241581242069_
                                             _e241586242072_
                                             _hd241585242075_
                                             _tl241584242077_
                                             _e241589242080_
                                             _hd241588242083_
                                             _tl241587242085_
                                             _e241592242088_
                                             _hd241591242091_
                                             _tl241590242093_
                                             _e241595242096_
                                             _hd241594242099_
                                             _tl241593242101_
                                             _e241598242104_
                                             _hd241597242107_
                                             _tl241596242109_)
                                            (___match252384252385_
                                             _e241571242032_
                                             _hd241570242035_
                                             _tl241569242037_
                                             _e241574242040_
                                             _hd241573242043_
                                             _tl241572242045_
                                             _e241577242048_
                                             _hd241576242051_
                                             _tl241575242053_
                                             _e241580242056_
                                             _hd241579242059_
                                             _tl241578242061_
                                             _e241583242064_
                                             _hd241582242067_
                                             _tl241581242069_
                                             _e241586242072_
                                             _hd241585242075_
                                             _tl241584242077_
                                             _e241589242080_
                                             _hd241588242083_
                                             _tl241587242085_
                                             _e241592242088_
                                             _hd241591242091_
                                             _tl241590242093_
                                             _e241595242096_
                                             _hd241594242099_
                                             _tl241593242101_
                                             _e241598242104_
                                             _hd241597242107_
                                             _tl241596242109_))
                                        (___match252508252509_
                                         _e241571242032_
                                         _hd241570242035_
                                         _tl241569242037_
                                         _e241574242040_
                                         _hd241573242043_
                                         _tl241572242045_
                                         _e241577242048_
                                         _hd241576242051_
                                         _tl241575242053_
                                         _e241580242056_
                                         _hd241579242059_
                                         _tl241578242061_
                                         _e241583242064_
                                         _hd241582242067_
                                         _tl241581242069_
                                         _e241586242072_
                                         _hd241585242075_
                                         _tl241584242077_
                                         _e241589242080_
                                         _hd241588242083_
                                         _tl241587242085_
                                         _e241592242088_
                                         _hd241591242091_
                                         _tl241590242093_))))
                                (___match252508252509_
                                 _e241571242032_
                                 _hd241570242035_
                                 _tl241569242037_
                                 _e241574242040_
                                 _hd241573242043_
                                 _tl241572242045_
                                 _e241577242048_
                                 _hd241576242051_
                                 _tl241575242053_
                                 _e241580242056_
                                 _hd241579242059_
                                 _tl241578242061_
                                 _e241583242064_
                                 _hd241582242067_
                                 _tl241581242069_
                                 _e241586242072_
                                 _hd241585242075_
                                 _tl241584242077_
                                 _e241589242080_
                                 _hd241588242083_
                                 _tl241587242085_
                                 _e241592242088_
                                 _hd241591242091_
                                 _tl241590242093_))
                            (___match252508252509_
                             _e241571242032_
                             _hd241570242035_
                             _tl241569242037_
                             _e241574242040_
                             _hd241573242043_
                             _tl241572242045_
                             _e241577242048_
                             _hd241576242051_
                             _tl241575242053_
                             _e241580242056_
                             _hd241579242059_
                             _tl241578242061_
                             _e241583242064_
                             _hd241582242067_
                             _tl241581242069_
                             _e241586242072_
                             _hd241585242075_
                             _tl241584242077_
                             _e241589242080_
                             _hd241588242083_
                             _tl241587242085_
                             _e241592242088_
                             _hd241591242091_
                             _tl241590242093_))))
                     (___match252226252227_
                      (lambda (_e241520242153_
                               _hd241519242156_
                               _tl241518242158_
                               _e241523242161_
                               _hd241522242164_
                               _tl241521242166_
                               _e241526242169_
                               _hd241525242172_
                               _tl241524242174_
                               _e241529242177_
                               _hd241528242180_
                               _tl241527242182_
                               _e241532242185_
                               _hd241531242188_
                               _tl241530242190_
                               _e241535242193_
                               _hd241534242196_
                               _tl241533242198_
                               _e241538242201_
                               _hd241537242204_
                               _tl241536242206_
                               _e241541242209_
                               _hd241540242212_
                               _tl241539242214_
                               _e241544242217_
                               _hd241543242220_
                               _tl241542242222_
                               _e241547242225_
                               _hd241546242228_
                               _tl241545242230_
                               _e241550242233_
                               _hd241549242236_
                               _tl241548242238_
                               _e241553242241_
                               _hd241552242244_
                               _tl241551242246_
                               _e241556242249_
                               _hd241555242252_
                               _tl241554242254_
                               ___splice252019252020_
                               _target241557242257_
                               _tl241559242259_)
                        (letrec ((_loop241560242262_
                                  (lambda (_hd241558242265_ _args241564242267_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd241558242265_))
                                        (let ((_e241561242270_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd241558242265_))))
                                          (let ((_lp-tl241563242275_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e241561242270_)))
                                                (_lp-hd241562242273_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e241561242270_))))
                                            (let ((__tmp252957
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd241562242273_
                                                           _args241564242267_))))
                                              (declare (not safe))
                                              (_loop241560242262_
                                               _lp-tl241563242275_
                                               __tmp252957))))
                                        (let ((_args241565242278_
                                               (reverse _args241564242267_)))
                                          (let ((_L242281_ _args241565242278_)
                                                (_L242282_ _hd241555242252_)
                                                (_L242283_ _hd241546242228_)
                                                (_L242284_ _hd241537242204_)
                                                (_L242285_ _hd241528242180_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L242285_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L242284_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L242283_
                                                        _self241452_)))
                                                (___kont252017252018_
                                                 _L242281_
                                                 _L242282_
                                                 _L242283_
                                                 _L242284_
                                                 _L242285_)
                                                (___kont252029252030_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop241560242262_ _target241557242257_ '())))))
                     (___match252184252185_
                      (lambda (_e241520242153_
                               _hd241519242156_
                               _tl241518242158_
                               _e241523242161_
                               _hd241522242164_
                               _tl241521242166_
                               _e241526242169_
                               _hd241525242172_
                               _tl241524242174_
                               _e241529242177_
                               _hd241528242180_
                               _tl241527242182_
                               _e241532242185_
                               _hd241531242188_
                               _tl241530242190_
                               _e241535242193_
                               _hd241534242196_
                               _tl241533242198_
                               _e241538242201_
                               _hd241537242204_
                               _tl241536242206_
                               _e241541242209_
                               _hd241540242212_
                               _tl241539242214_
                               _e241544242217_
                               _hd241543242220_
                               _tl241542242222_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd241543242220_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241542242222_))
                                (let ((_e241547242225_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241542242222_))))
                                  (let ((_tl241545242230_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241547242225_)))
                                        (_hd241546242228_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241547242225_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl241545242230_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241539242214_))
                                            (let ((_e241550242233_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241539242214_))))
                                              (let ((_tl241548242238_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241550242233_)))
                                                    (_hd241549242236_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241550242233_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd241549242236_))
                                                    (let ((_e241553242241_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd241549242236_))))
                                                      (let ((_tl241551242246_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241553242241_)))
                    (_hd241552242244_
                     (let () (declare (not safe)) (##car _e241553242241_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241552242244_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd241552242244_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241551242246_))
                            (let ((_e241556242249_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241551242246_))))
                              (let ((_tl241554242254_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241556242249_)))
                                    (_hd241555242252_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241556242249_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241554242254_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl241548242238_))
                                        (let ((___splice252019252020_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl241548242238_
                                                  '0))))
                                          (let ((_tl241559242259_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice252019252020_
                                                    '1)))
                                                (_target241557242257_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice252019252020_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl241559242259_))
                                                (___match252226252227_
                                                 _e241520242153_
                                                 _hd241519242156_
                                                 _tl241518242158_
                                                 _e241523242161_
                                                 _hd241522242164_
                                                 _tl241521242166_
                                                 _e241526242169_
                                                 _hd241525242172_
                                                 _tl241524242174_
                                                 _e241529242177_
                                                 _hd241528242180_
                                                 _tl241527242182_
                                                 _e241532242185_
                                                 _hd241531242188_
                                                 _tl241530242190_
                                                 _e241535242193_
                                                 _hd241534242196_
                                                 _tl241533242198_
                                                 _e241538242201_
                                                 _hd241537242204_
                                                 _tl241536242206_
                                                 _e241541242209_
                                                 _hd241540242212_
                                                 _tl241539242214_
                                                 _e241544242217_
                                                 _hd241543242220_
                                                 _tl241542242222_
                                                 _e241547242225_
                                                 _hd241546242228_
                                                 _tl241545242230_
                                                 _e241550242233_
                                                 _hd241549242236_
                                                 _tl241548242238_
                                                 _e241553242241_
                                                 _hd241552242244_
                                                 _tl241551242246_
                                                 _e241556242249_
                                                 _hd241555242252_
                                                 _tl241554242254_
                                                 ___splice252019252020_
                                                 _target241557242257_
                                                 _tl241559242259_)
                                                (___kont252029252030_))))
                                        (___kont252029252030_))
                                    (___kont252029252030_))))
                            (___kont252029252030_))
                        (___kont252029252030_))
                    (___kont252029252030_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont252029252030_))))
                                            (___match252508252509_
                                             _e241520242153_
                                             _hd241519242156_
                                             _tl241518242158_
                                             _e241523242161_
                                             _hd241522242164_
                                             _tl241521242166_
                                             _e241526242169_
                                             _hd241525242172_
                                             _tl241524242174_
                                             _e241529242177_
                                             _hd241528242180_
                                             _tl241527242182_
                                             _e241532242185_
                                             _hd241531242188_
                                             _tl241530242190_
                                             _e241535242193_
                                             _hd241534242196_
                                             _tl241533242198_
                                             _e241538242201_
                                             _hd241537242204_
                                             _tl241536242206_
                                             _e241541242209_
                                             _hd241540242212_
                                             _tl241539242214_))
                                        (___match252508252509_
                                         _e241520242153_
                                         _hd241519242156_
                                         _tl241518242158_
                                         _e241523242161_
                                         _hd241522242164_
                                         _tl241521242166_
                                         _e241526242169_
                                         _hd241525242172_
                                         _tl241524242174_
                                         _e241529242177_
                                         _hd241528242180_
                                         _tl241527242182_
                                         _e241532242185_
                                         _hd241531242188_
                                         _tl241530242190_
                                         _e241535242193_
                                         _hd241534242196_
                                         _tl241533242198_
                                         _e241538242201_
                                         _hd241537242204_
                                         _tl241536242206_
                                         _e241541242209_
                                         _hd241540242212_
                                         _tl241539242214_))))
                                (___match252508252509_
                                 _e241520242153_
                                 _hd241519242156_
                                 _tl241518242158_
                                 _e241523242161_
                                 _hd241522242164_
                                 _tl241521242166_
                                 _e241526242169_
                                 _hd241525242172_
                                 _tl241524242174_
                                 _e241529242177_
                                 _hd241528242180_
                                 _tl241527242182_
                                 _e241532242185_
                                 _hd241531242188_
                                 _tl241530242190_
                                 _e241535242193_
                                 _hd241534242196_
                                 _tl241533242198_
                                 _e241538242201_
                                 _hd241537242204_
                                 _tl241536242206_
                                 _e241541242209_
                                 _hd241540242212_
                                 _tl241539242214_))
                            (___match252294252295_
                             _e241520242153_
                             _hd241519242156_
                             _tl241518242158_
                             _e241523242161_
                             _hd241522242164_
                             _tl241521242166_
                             _e241526242169_
                             _hd241525242172_
                             _tl241524242174_
                             _e241529242177_
                             _hd241528242180_
                             _tl241527242182_
                             _e241532242185_
                             _hd241531242188_
                             _tl241530242190_
                             _e241535242193_
                             _hd241534242196_
                             _tl241533242198_
                             _e241538242201_
                             _hd241537242204_
                             _tl241536242206_
                             _e241541242209_
                             _hd241540242212_
                             _tl241539242214_
                             _e241544242217_
                             _hd241543242220_
                             _tl241542242222_))))
                     (___match252116252117_
                      (lambda (_e241476242345_
                               _hd241475242348_
                               _tl241474242350_
                               _e241479242353_
                               _hd241478242356_
                               _tl241477242358_
                               _e241482242361_
                               _hd241481242364_
                               _tl241480242366_
                               _e241485242369_
                               _hd241484242372_
                               _tl241483242374_
                               _e241488242377_
                               _hd241487242380_
                               _tl241486242382_
                               _e241491242385_
                               _hd241490242388_
                               _tl241489242390_
                               _e241494242393_
                               _hd241493242396_
                               _tl241492242398_
                               _e241497242401_
                               _hd241496242404_
                               _tl241495242406_
                               _e241500242409_
                               _hd241499242412_
                               _tl241498242414_
                               _e241503242417_
                               _hd241502242420_
                               _tl241501242422_
                               ___splice252015252016_
                               _target241504242425_
                               _tl241506242427_)
                        (letrec ((_loop241507242430_
                                  (lambda (_hd241505242433_ _args241511242435_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd241505242433_))
                                        (let ((_e241508242438_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd241505242433_))))
                                          (let ((_lp-tl241510242443_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e241508242438_)))
                                                (_lp-hd241509242441_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e241508242438_))))
                                            (let ((__tmp252958
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd241509242441_
                                                           _args241511242435_))))
                                              (declare (not safe))
                                              (_loop241507242430_
                                               _lp-tl241510242443_
                                               __tmp252958))))
                                        (let ((_args241512242446_
                                               (reverse _args241511242435_)))
                                          (let ((_L242449_ _args241512242446_)
                                                (_L242450_ _hd241502242420_)
                                                (_L242451_ _hd241493242396_)
                                                (_L242452_ _hd241484242372_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L242452_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L242451_
                                                        _self241452_)))
                                                (___kont252013252014_
                                                 _L242449_
                                                 _L242450_
                                                 _L242451_
                                                 _L242452_)
                                                (___match252304252305_
                                                 _e241476242345_
                                                 _hd241475242348_
                                                 _tl241474242350_
                                                 _e241479242353_
                                                 _hd241478242356_
                                                 _tl241477242358_
                                                 _e241482242361_
                                                 _hd241481242364_
                                                 _tl241480242366_
                                                 _e241485242369_
                                                 _hd241484242372_
                                                 _tl241483242374_
                                                 _e241488242377_
                                                 _hd241487242380_
                                                 _tl241486242382_
                                                 _e241491242385_
                                                 _hd241490242388_
                                                 _tl241489242390_
                                                 _e241494242393_
                                                 _hd241493242396_
                                                 _tl241492242398_
                                                 _e241497242401_
                                                 _hd241496242404_
                                                 _tl241495242406_
                                                 _e241500242409_
                                                 _hd241499242412_
                                                 _tl241498242414_
                                                 _e241503242417_
                                                 _hd241502242420_
                                                 _tl241501242422_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop241507242430_ _target241504242425_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx252011252012_))
                    (let ((_e241476242345_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx252011252012_))))
                      (let ((_tl241474242350_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241476242345_)))
                            (_hd241475242348_
                             (let ()
                               (declare (not safe))
                               (##car _e241476242345_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241474242350_))
                            (let ((_e241479242353_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241474242350_))))
                              (let ((_tl241477242358_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241479242353_)))
                                    (_hd241478242356_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241479242353_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd241478242356_))
                                    (let ((_e241482242361_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd241478242356_))))
                                      (let ((_tl241480242366_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241482242361_)))
                                            (_hd241481242364_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241482242361_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd241481242364_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd241481242364_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241480242366_))
                                                    (let ((_e241485242369_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241480242366_))))
                                                      (let ((_tl241483242374_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241485242369_)))
                    (_hd241484242372_
                     (let () (declare (not safe)) (##car _e241485242369_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl241483242374_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl241477242358_))
                        (let ((_e241488242377_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl241477242358_))))
                          (let ((_tl241486242382_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e241488242377_)))
                                (_hd241487242380_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e241488242377_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd241487242380_))
                                (let ((_e241491242385_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd241487242380_))))
                                  (let ((_tl241489242390_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241491242385_)))
                                        (_hd241490242388_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241491242385_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd241490242388_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd241490242388_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl241489242390_))
                                                (let ((_e241494242393_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl241489242390_))))
                                                  (let ((_tl241492242398_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e241494242393_)))
                                                        (_hd241493242396_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e241494242393_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl241492242398_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl241486242382_))
                                                            (let ((_e241497242401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl241486242382_))))
                      (let ((_tl241495242406_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241497242401_)))
                            (_hd241496242404_
                             (let ()
                               (declare (not safe))
                               (##car _e241497242401_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd241496242404_))
                            (let ((_e241500242409_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd241496242404_))))
                              (let ((_tl241498242414_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241500242409_)))
                                    (_hd241499242412_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241500242409_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd241499242412_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd241499242412_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241498242414_))
                                            (let ((_e241503242417_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241498242414_))))
                                              (let ((_tl241501242422_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241503242417_)))
                                                    (_hd241502242420_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241503242417_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl241501242422_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl241495242406_))
                                                        (let ((___splice252015252016_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl241495242406_ '0))))
                  (let ((_tl241506242427_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice252015252016_ '1)))
                        (_target241504242425_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice252015252016_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl241506242427_))
                        (___match252116252117_
                         _e241476242345_
                         _hd241475242348_
                         _tl241474242350_
                         _e241479242353_
                         _hd241478242356_
                         _tl241477242358_
                         _e241482242361_
                         _hd241481242364_
                         _tl241480242366_
                         _e241485242369_
                         _hd241484242372_
                         _tl241483242374_
                         _e241488242377_
                         _hd241487242380_
                         _tl241486242382_
                         _e241491242385_
                         _hd241490242388_
                         _tl241489242390_
                         _e241494242393_
                         _hd241493242396_
                         _tl241492242398_
                         _e241497242401_
                         _hd241496242404_
                         _tl241495242406_
                         _e241500242409_
                         _hd241499242412_
                         _tl241498242414_
                         _e241503242417_
                         _hd241502242420_
                         _tl241501242422_
                         ___splice252015252016_
                         _target241504242425_
                         _tl241506242427_)
                        (___match252304252305_
                         _e241476242345_
                         _hd241475242348_
                         _tl241474242350_
                         _e241479242353_
                         _hd241478242356_
                         _tl241477242358_
                         _e241482242361_
                         _hd241481242364_
                         _tl241480242366_
                         _e241485242369_
                         _hd241484242372_
                         _tl241483242374_
                         _e241488242377_
                         _hd241487242380_
                         _tl241486242382_
                         _e241491242385_
                         _hd241490242388_
                         _tl241489242390_
                         _e241494242393_
                         _hd241493242396_
                         _tl241492242398_
                         _e241497242401_
                         _hd241496242404_
                         _tl241495242406_
                         _e241500242409_
                         _hd241499242412_
                         _tl241498242414_
                         _e241503242417_
                         _hd241502242420_
                         _tl241501242422_))))
                (___match252304252305_
                 _e241476242345_
                 _hd241475242348_
                 _tl241474242350_
                 _e241479242353_
                 _hd241478242356_
                 _tl241477242358_
                 _e241482242361_
                 _hd241481242364_
                 _tl241480242366_
                 _e241485242369_
                 _hd241484242372_
                 _tl241483242374_
                 _e241488242377_
                 _hd241487242380_
                 _tl241486242382_
                 _e241491242385_
                 _hd241490242388_
                 _tl241489242390_
                 _e241494242393_
                 _hd241493242396_
                 _tl241492242398_
                 _e241497242401_
                 _hd241496242404_
                 _tl241495242406_
                 _e241500242409_
                 _hd241499242412_
                 _tl241498242414_
                 _e241503242417_
                 _hd241502242420_
                 _tl241501242422_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match252508252509_
                                                     _e241476242345_
                                                     _hd241475242348_
                                                     _tl241474242350_
                                                     _e241479242353_
                                                     _hd241478242356_
                                                     _tl241477242358_
                                                     _e241482242361_
                                                     _hd241481242364_
                                                     _tl241480242366_
                                                     _e241485242369_
                                                     _hd241484242372_
                                                     _tl241483242374_
                                                     _e241488242377_
                                                     _hd241487242380_
                                                     _tl241486242382_
                                                     _e241491242385_
                                                     _hd241490242388_
                                                     _tl241489242390_
                                                     _e241494242393_
                                                     _hd241493242396_
                                                     _tl241492242398_
                                                     _e241497242401_
                                                     _hd241496242404_
                                                     _tl241495242406_))))
                                            (___match252508252509_
                                             _e241476242345_
                                             _hd241475242348_
                                             _tl241474242350_
                                             _e241479242353_
                                             _hd241478242356_
                                             _tl241477242358_
                                             _e241482242361_
                                             _hd241481242364_
                                             _tl241480242366_
                                             _e241485242369_
                                             _hd241484242372_
                                             _tl241483242374_
                                             _e241488242377_
                                             _hd241487242380_
                                             _tl241486242382_
                                             _e241491242385_
                                             _hd241490242388_
                                             _tl241489242390_
                                             _e241494242393_
                                             _hd241493242396_
                                             _tl241492242398_
                                             _e241497242401_
                                             _hd241496242404_
                                             _tl241495242406_))
                                        (___match252184252185_
                                         _e241476242345_
                                         _hd241475242348_
                                         _tl241474242350_
                                         _e241479242353_
                                         _hd241478242356_
                                         _tl241477242358_
                                         _e241482242361_
                                         _hd241481242364_
                                         _tl241480242366_
                                         _e241485242369_
                                         _hd241484242372_
                                         _tl241483242374_
                                         _e241488242377_
                                         _hd241487242380_
                                         _tl241486242382_
                                         _e241491242385_
                                         _hd241490242388_
                                         _tl241489242390_
                                         _e241494242393_
                                         _hd241493242396_
                                         _tl241492242398_
                                         _e241497242401_
                                         _hd241496242404_
                                         _tl241495242406_
                                         _e241500242409_
                                         _hd241499242412_
                                         _tl241498242414_))
                                    (___match252508252509_
                                     _e241476242345_
                                     _hd241475242348_
                                     _tl241474242350_
                                     _e241479242353_
                                     _hd241478242356_
                                     _tl241477242358_
                                     _e241482242361_
                                     _hd241481242364_
                                     _tl241480242366_
                                     _e241485242369_
                                     _hd241484242372_
                                     _tl241483242374_
                                     _e241488242377_
                                     _hd241487242380_
                                     _tl241486242382_
                                     _e241491242385_
                                     _hd241490242388_
                                     _tl241489242390_
                                     _e241494242393_
                                     _hd241493242396_
                                     _tl241492242398_
                                     _e241497242401_
                                     _hd241496242404_
                                     _tl241495242406_))))
                            (___match252508252509_
                             _e241476242345_
                             _hd241475242348_
                             _tl241474242350_
                             _e241479242353_
                             _hd241478242356_
                             _tl241477242358_
                             _e241482242361_
                             _hd241481242364_
                             _tl241480242366_
                             _e241485242369_
                             _hd241484242372_
                             _tl241483242374_
                             _e241488242377_
                             _hd241487242380_
                             _tl241486242382_
                             _e241491242385_
                             _hd241490242388_
                             _tl241489242390_
                             _e241494242393_
                             _hd241493242396_
                             _tl241492242398_
                             _e241497242401_
                             _hd241496242404_
                             _tl241495242406_))))
                    (___match252446252447_
                     _e241476242345_
                     _hd241475242348_
                     _tl241474242350_
                     _e241479242353_
                     _hd241478242356_
                     _tl241477242358_
                     _e241482242361_
                     _hd241481242364_
                     _tl241480242366_
                     _e241485242369_
                     _hd241484242372_
                     _tl241483242374_
                     _e241488242377_
                     _hd241487242380_
                     _tl241486242382_
                     _e241491242385_
                     _hd241490242388_
                     _tl241489242390_
                     _e241494242393_
                     _hd241493242396_
                     _tl241492242398_))
                (___kont252029252030_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont252029252030_))
                                            (___kont252029252030_))
                                        (___kont252029252030_))))
                                (___kont252029252030_))))
                        (___kont252029252030_))
                    (___kont252029252030_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont252029252030_))
                                                (___kont252029252030_))
                                            (___kont252029252030_))))
                                    (___kont252029252030_))))
                            (___kont252029252030_))))
                    (___kont252029252030_))))))))))
