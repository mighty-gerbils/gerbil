(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1707657573)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl246743_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp252339 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl246743_ __tmp252339))
           (let ()
             (declare (not safe))
             (table-set! _tbl246743_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246743_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246743_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246743_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl246743_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx246726_ . _args246728_)
        (let ((__tmp252341
               (lambda ()
                 (declare (not safe))
                 (if (null? _args246728_)
                     (gxc#compile-e__0 _stx246726_)
                     (let ((_arg1246733_ (car _args246728_))
                           (_rest246735_ (cdr _args246728_)))
                       (if (null? _rest246735_)
                           (gxc#compile-e__1 _stx246726_ _arg1246733_)
                           (let ((_arg2246738_ (car _rest246735_))
                                 (_rest246740_ (cdr _rest246735_)))
                             (if (null? _rest246740_)
                                 (gxc#compile-e__2
                                  _stx246726_
                                  _arg1246733_
                                  _arg2246738_)
                                 (apply gxc#compile-e
                                        _stx246726_
                                        _arg1246733_
                                        _arg2246738_
                                        _rest246740_))))))))
              (__tmp252340 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp252341
           gxc#current-compile-methods
           __tmp252340))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl246723_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp252342 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl246723_ __tmp252342))
           (let ()
             (declare (not safe))
             (table-set! _tbl246723_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246723_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246723_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246723_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246723_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246723_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246723_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246723_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246723_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl246723_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246723_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl246723_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246723_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246723_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246723_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246723_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl246723_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx246706_ . _args246708_)
        (let ((__tmp252344
               (lambda ()
                 (declare (not safe))
                 (if (null? _args246708_)
                     (gxc#compile-e__0 _stx246706_)
                     (let ((_arg1246713_ (car _args246708_))
                           (_rest246715_ (cdr _args246708_)))
                       (if (null? _rest246715_)
                           (gxc#compile-e__1 _stx246706_ _arg1246713_)
                           (let ((_arg2246718_ (car _rest246715_))
                                 (_rest246720_ (cdr _rest246715_)))
                             (if (null? _rest246720_)
                                 (gxc#compile-e__2
                                  _stx246706_
                                  _arg1246713_
                                  _arg2246718_)
                                 (apply gxc#compile-e
                                        _stx246706_
                                        _arg1246713_
                                        _arg2246718_
                                        _rest246720_))))))))
              (__tmp252343 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp252344
           gxc#current-compile-methods
           __tmp252343))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl246703_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp252345 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl246703_ __tmp252345))
           (let ()
             (declare (not safe))
             (table-set! _tbl246703_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246703_ '%#call gxc#subst-object-refs-call%))
           _tbl246703_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx246686_ . _args246688_)
        (let ((__tmp252347
               (lambda ()
                 (declare (not safe))
                 (if (null? _args246688_)
                     (gxc#compile-e__0 _stx246686_)
                     (let ((_arg1246693_ (car _args246688_))
                           (_rest246695_ (cdr _args246688_)))
                       (if (null? _rest246695_)
                           (gxc#compile-e__1 _stx246686_ _arg1246693_)
                           (let ((_arg2246698_ (car _rest246695_))
                                 (_rest246700_ (cdr _rest246695_)))
                             (if (null? _rest246700_)
                                 (gxc#compile-e__2
                                  _stx246686_
                                  _arg1246693_
                                  _arg2246698_)
                                 (apply gxc#compile-e
                                        _stx246686_
                                        _arg1246693_
                                        _arg2246698_
                                        _rest246700_))))))))
              (__tmp252346 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp252347
           gxc#current-compile-methods
           __tmp252346))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx243356_)
        (letrec ((_generate-method-bind243358_
                  (lambda (_$t246680_ _id246681_ _$id246682_)
                    (let ((_$tmp246684_
                           (let ((__tmp252348 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp252348))))
                      (let ((__tmp252393
                             (let ()
                               (declare (not safe))
                               (cons _$id246682_ '())))
                            (__tmp252349
                             (let ((__tmp252350
                                    (let ((__tmp252351
                                           (let ((__tmp252391
                                                  (let ((__tmp252392
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp252392)))
                                                 (__tmp252352
                                                  (let ((__tmp252353
                                                         (let ((__tmp252354
                                                                (let ((__tmp252355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252356
                                      (let ((__tmp252357
                                             (let ((__tmp252377
                                                    (let ((__tmp252378
                                                           (let ((__tmp252390
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp246684_ '())))
                         (__tmp252379
                          (let ((__tmp252380
                                 (let ((__tmp252381
                                        (let ((__tmp252388
                                               (let ((__tmp252389
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp252389)))
                                              (__tmp252382
                                               (let ((__tmp252386
                                                      (let ((__tmp252387
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t246680_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp252387)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp252383
                                                      (let ((__tmp252384
                                                             (let ((__tmp252385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id246681_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp252385))))
                (declare (not safe))
                (cons __tmp252384 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp252386
                                                       __tmp252383))))
                                          (declare (not safe))
                                          (cons __tmp252388 __tmp252382))))
                                   (declare (not safe))
                                   (cons '%#call __tmp252381))))
                            (declare (not safe))
                            (cons __tmp252380 '()))))
                     (declare (not safe))
                     (cons __tmp252390 __tmp252379))))
              (declare (not safe))
              (cons __tmp252378 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp252358
                                                    (let ((__tmp252359
                                                           (let ((__tmp252360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252375
                                 (let ((__tmp252376
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp246684_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp252376)))
                                (__tmp252361
                                 (let ((__tmp252373
                                        (let ((__tmp252374
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp246684_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp252374)))
                                       (__tmp252362
                                        (let ((__tmp252363
                                               (let ((__tmp252364
                                                      (let ((__tmp252371
                                                             (let ((__tmp252372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp252372)))
                    (__tmp252365
                     (let ((__tmp252369
                            (let ((__tmp252370
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp252370)))
                           (__tmp252366
                            (let ((__tmp252367
                                   (let ((__tmp252368
                                          (let ()
                                            (declare (not safe))
                                            (cons _id246681_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp252368))))
                              (declare (not safe))
                              (cons __tmp252367 '()))))
                       (declare (not safe))
                       (cons __tmp252369 __tmp252366))))
                (declare (not safe))
                (cons __tmp252371 __tmp252365))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp252364))))
                                          (declare (not safe))
                                          (cons __tmp252363 '()))))
                                   (declare (not safe))
                                   (cons __tmp252373 __tmp252362))))
                            (declare (not safe))
                            (cons __tmp252375 __tmp252361))))
                     (declare (not safe))
                     (cons '%#if __tmp252360))))
              (declare (not safe))
              (cons __tmp252359 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp252377
                                                     __tmp252358))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp252357))))
                                 (declare (not safe))
                                 (cons __tmp252356 '()))))
                          (declare (not safe))
                          (cons '() __tmp252355))))
                   (declare (not safe))
                   (cons '%#lambda __tmp252354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252353 '()))))
                                             (declare (not safe))
                                             (cons __tmp252391 __tmp252352))))
                                      (declare (not safe))
                                      (cons '%#call __tmp252351))))
                               (declare (not safe))
                               (cons __tmp252350 '()))))
                        (declare (not safe))
                        (cons __tmp252393 __tmp252349)))))
                 (_generate-slot-bind243359_
                  (lambda (_$t246674_ _id246675_ _$id246676_)
                    (let ((_$tmp246678_
                           (let ((__tmp252394 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp252394))))
                      (let ((__tmp252431
                             (let ()
                               (declare (not safe))
                               (cons _$id246676_ '())))
                            (__tmp252395
                             (let ((__tmp252396
                                    (let ((__tmp252397
                                           (let ((__tmp252417
                                                  (let ((__tmp252418
                                                         (let ((__tmp252430
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp246678_ '())))
                       (__tmp252419
                        (let ((__tmp252420
                               (let ((__tmp252421
                                      (let ((__tmp252428
                                             (let ((__tmp252429
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp252429)))
                                            (__tmp252422
                                             (let ((__tmp252426
                                                    (let ((__tmp252427
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t246674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp252427)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp252423
                                                    (let ((__tmp252424
                                                           (let ((__tmp252425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id246675_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp252425))))
              (declare (not safe))
              (cons __tmp252424 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp252426
                                                     __tmp252423))))
                                        (declare (not safe))
                                        (cons __tmp252428 __tmp252422))))
                                 (declare (not safe))
                                 (cons '%#call __tmp252421))))
                          (declare (not safe))
                          (cons __tmp252420 '()))))
                   (declare (not safe))
                   (cons __tmp252430 __tmp252419))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252418 '())))
                                                 (__tmp252398
                                                  (let ((__tmp252399
                                                         (let ((__tmp252400
                                                                (let ((__tmp252415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252416
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp246678_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp252416)))
                              (__tmp252401
                               (let ((__tmp252413
                                      (let ((__tmp252414
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp246678_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp252414)))
                                     (__tmp252402
                                      (let ((__tmp252403
                                             (let ((__tmp252404
                                                    (let ((__tmp252411
                                                           (let ((__tmp252412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp252412)))
                  (__tmp252405
                   (let ((__tmp252409
                          (let ((__tmp252410
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp252410)))
                         (__tmp252406
                          (let ((__tmp252407
                                 (let ((__tmp252408
                                        (let ()
                                          (declare (not safe))
                                          (cons _id246675_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp252408))))
                            (declare (not safe))
                            (cons __tmp252407 '()))))
                     (declare (not safe))
                     (cons __tmp252409 __tmp252406))))
              (declare (not safe))
              (cons __tmp252411 __tmp252405))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp252404))))
                                        (declare (not safe))
                                        (cons __tmp252403 '()))))
                                 (declare (not safe))
                                 (cons __tmp252413 __tmp252402))))
                          (declare (not safe))
                          (cons __tmp252415 __tmp252401))))
                   (declare (not safe))
                   (cons '%#if __tmp252400))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252399 '()))))
                                             (declare (not safe))
                                             (cons __tmp252417 __tmp252398))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp252397))))
                               (declare (not safe))
                               (cons __tmp252396 '()))))
                        (declare (not safe))
                        (cons __tmp252431 __tmp252395)))))
                 (_generate-class-check-bind243360_
                  (lambda (_$t246670_ _class-type246671_ _$class-type246672_)
                    (let ((__tmp252443
                           (let ()
                             (declare (not safe))
                             (cons _$class-type246672_ '())))
                          (__tmp252432
                           (let ((__tmp252433
                                  (let ((__tmp252434
                                         (let ((__tmp252441
                                                (let ((__tmp252442
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp252442)))
                                               (__tmp252435
                                                (let ((__tmp252439
                                                       (let ((__tmp252440
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t246670_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp252440)))
              (__tmp252436
               (let ((__tmp252437
                      (let ((__tmp252438
                             (let ()
                               (declare (not safe))
                               (cons _class-type246671_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp252438))))
                 (declare (not safe))
                 (cons __tmp252437 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252439
                                                        __tmp252436))))
                                           (declare (not safe))
                                           (cons __tmp252441 __tmp252435))))
                                    (declare (not safe))
                                    (cons '%#call __tmp252434))))
                             (declare (not safe))
                             (cons __tmp252433 '()))))
                      (declare (not safe))
                      (cons __tmp252443 __tmp252432))))
                 (_generate-struct-check-bind243361_
                  (lambda (_$t246666_ _class-type246667_ _$class-type246668_)
                    (let ((__tmp252455
                           (let ()
                             (declare (not safe))
                             (cons _$class-type246668_ '())))
                          (__tmp252444
                           (let ((__tmp252445
                                  (let ((__tmp252446
                                         (let ((__tmp252453
                                                (let ((__tmp252454
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp252454)))
                                               (__tmp252447
                                                (let ((__tmp252451
                                                       (let ((__tmp252452
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t246666_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp252452)))
              (__tmp252448
               (let ((__tmp252449
                      (let ((__tmp252450
                             (let ()
                               (declare (not safe))
                               (cons _class-type246667_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp252450))))
                 (declare (not safe))
                 (cons __tmp252449 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252451
                                                        __tmp252448))))
                                           (declare (not safe))
                                           (cons __tmp252453 __tmp252447))))
                                    (declare (not safe))
                                    (cons '%#call __tmp252446))))
                             (declare (not safe))
                             (cons __tmp252445 '()))))
                      (declare (not safe))
                      (cons __tmp252455 __tmp252444))))
                 (_generate-specializer-impl243362_
                  (lambda (_$t246615_
                           _methods-bind246616_
                           _slots-bind246617_
                           _class-check-bind246618_
                           _struct-check-bind246619_
                           _specializer-impl246620_
                           _lifted-specializer-id246621_
                           _unchecked-specializer-impl246622_)
                    (let ((__tmp252456
                           (let ((__tmp252457
                                  (let ((__tmp252483
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t246615_ '())))
                                        (__tmp252458
                                         (let ((__tmp252459
                                                (let ((__tmp252460
                                                       (let ((__tmp252480
                                                              (let ((__tmp252481
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp252482
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind246619_
                                              _class-check-bind246618_))))
                               (declare (not safe))
                               (foldr1 cons __tmp252482 _slots-bind246617_))))
                        (declare (not safe))
                        (foldr1 cons __tmp252481 _methods-bind246616_)))
                     (__tmp252461
                      (let ((__tmp252462
                             (if (or _lifted-specializer-id246621_
                                     _unchecked-specializer-impl246622_)
                                 (let* ((_$specializer246627_
                                         (let ((__tmp252463
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp252463)))
                                        (__tmp252464
                                         (let ((__tmp252476
                                                (let ((__tmp252477
                                                       (let ((__tmp252479
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer246627_ '())))
                     (__tmp252478
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl246620_ '()))))
                 (declare (not safe))
                 (cons __tmp252479 __tmp252478))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252477 '())))
                                               (__tmp252465
                                                (let ((__tmp252466
                                                       (let _recur246629_ ((_rest246631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind246619_)))
                 (let* ((_rest246632246640_ _rest246631_)
                        (_else246634246648_
                         (lambda ()
                           (if _lifted-specializer-id246621_
                               (let ((__tmp252467
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id246621_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp252467))
                               _unchecked-specializer-impl246622_)))
                        (_K246636246654_
                         (lambda (_rest246651_ _checkq246652_)
                           (let ((__tmp252468
                                  (let ((__tmp252474
                                         (let ((__tmp252475
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq246652_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp252475)))
                                        (__tmp252469
                                         (let ((__tmp252473
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur246629_
                                                   _rest246651_)))
                                               (__tmp252470
                                                (let ((__tmp252471
                                                       (let ((__tmp252472
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer246627_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp252472))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252471 '()))))
                                           (declare (not safe))
                                           (cons __tmp252473 __tmp252470))))
                                    (declare (not safe))
                                    (cons __tmp252474 __tmp252469))))
                             (declare (not safe))
                             (cons '%#if __tmp252468)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest246632246640_))
                       (let ((_hd246637246657_
                              (let ()
                                (declare (not safe))
                                (##car _rest246632246640_)))
                             (_tl246638246659_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest246632246640_))))
                         (let* ((_checkq246662_ _hd246637246657_)
                                (_rest246664_ _tl246638246659_))
                           (declare (not safe))
                           (_K246636246654_ _rest246664_ _checkq246662_)))
                       (let () (declare (not safe)) (_else246634246648_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252466 '()))))
                                           (declare (not safe))
                                           (cons __tmp252476 __tmp252465))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp252464))
                                 _specializer-impl246620_)))
                        (declare (not safe))
                        (cons __tmp252462 '()))))
                 (declare (not safe))
                 (cons __tmp252480 __tmp252461))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp252460))))
                                           (declare (not safe))
                                           (cons __tmp252459 '()))))
                                    (declare (not safe))
                                    (cons __tmp252483 __tmp252458))))
                             (declare (not safe))
                             (cons '%#lambda __tmp252457))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252456 _stx243356_))))
                 (_generate-specializer-def243363_
                  (lambda (_id246609_
                           _specializer-id246610_
                           _specializer-impl246611_
                           _lifted-specializer-id246612_
                           _unchecked-specializer-impl246613_)
                    (let ((__tmp252484
                           (let ((__tmp252485
                                  (let ((__tmp252486
                                         (let ((__tmp252506
                                                (let ((__tmp252507
                                                       (let ((__tmp252508
                                                              (let ((__tmp252510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id246610_ '())))
                            (__tmp252509
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl246611_ '()))))
                        (declare (not safe))
                        (cons __tmp252510 __tmp252509))))
                 (declare (not safe))
                 (cons '%#define-values __tmp252508))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp252507
                                                   _stx243356_)))
                                               (__tmp252487
                                                (let ((__tmp252494
                                                       (let ((__tmp252495
                                                              (let ((__tmp252496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp252497
                                    (let ((__tmp252504
                                           (let ((__tmp252505
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp252505)))
                                          (__tmp252498
                                           (let ((__tmp252502
                                                  (let ((__tmp252503
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id246609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp252503)))
                                                 (__tmp252499
                                                  (let ((__tmp252500
                                                         (let ((__tmp252501
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id246610_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp252501))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252500 '()))))
                                             (declare (not safe))
                                             (cons __tmp252502 __tmp252499))))
                                      (declare (not safe))
                                      (cons __tmp252504 __tmp252498))))
                               (declare (not safe))
                               (cons '%#call __tmp252497))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp252496 _stx243356_))))
                 (declare (not safe))
                 (cons __tmp252495 '())))
              (__tmp252488
               (if _lifted-specializer-id246612_
                   (let ((__tmp252489
                          (let ((__tmp252490
                                 (let ((__tmp252491
                                        (let ((__tmp252493
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id246612_
                                                       '())))
                                              (__tmp252492
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl246613_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp252493 __tmp252492))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp252491))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp252490 _stx243356_))))
                     (declare (not safe))
                     (cons __tmp252489 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp252494
                                                          __tmp252488))))
                                           (declare (not safe))
                                           (cons __tmp252506 __tmp252487))))
                                    (declare (not safe))
                                    (cons _stx243356_ __tmp252486))))
                             (declare (not safe))
                             (cons '%#begin __tmp252485))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252484 _stx243356_)))))
          (let* ((___stx251300251301_ _stx243356_)
                 (_g243366243386_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx251300251301_)))))
            (let ((___kont251302251303_
                   (lambda (_L243430_ _L243431_)
                     (let ((_method-calls243450_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs243451_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check243452_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check243453_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert243454_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty243455_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?243457_
                                 (lambda ()
                                   (if (let ((__tmp252515
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls243450_))))
                                         (declare (not safe))
                                         (fxzero? __tmp252515))
                                       (if (let ((__tmp252514
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs243451_))))
                                             (declare (not safe))
                                             (fxzero? __tmp252514))
                                           (if (let ((__tmp252513
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check243452_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp252513))
                                               (if (let ((__tmp252512
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check243453_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp252512))
                                                   (let ((__tmp252511
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert243454_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp252511))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?243458_
                                 (lambda ()
                                   (let ((_$e246602_
                                          (let ((__tmp252516
                                                 (let ((__tmp252517
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check243453_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp252517))))
                                            (declare (not safe))
                                            (not __tmp252516))))
                                     (if _$e246602_
                                         _$e246602_
                                         (let ((__tmp252518
                                                (let ((__tmp252519
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert243454_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp252519))))
                                           (declare (not safe))
                                           (not __tmp252518))))))
                                (_lift-unchecked-specializer?243459_
                                 (lambda ()
                                   (if (let ((__tmp252522
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls243450_))))
                                         (declare (not safe))
                                         (fxzero? __tmp252522))
                                       (if (let ((__tmp252521
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs243451_))))
                                             (declare (not safe))
                                             (fxzero? __tmp252521))
                                           (let ((__tmp252520
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check243452_))))
                                             (declare (not safe))
                                             (fxzero? __tmp252520))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L243430_))
                             (let* ((___stx251214251215_ _L243430_)
                                    (_g243972243990_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx251214251215_)))))
                               (let ((___kont251216251217_
                                      (lambda (_L244026_ _L244027_ _L244028_)
                                        (for-each
                                         (lambda (_g244043244045_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g244043244045_
                                              _L244028_
                                              _method-calls243450_
                                              _slot-refs243451_
                                              _class-type-check243452_
                                              _struct-type-check243453_
                                              _struct-type-assert243454_)))
                                         _L244026_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?243457_))
                                            _stx243356_
                                            (let* ((_specializer-id244054_
                                                    (let* ((_id244048_
                                                            (let ((__tmp252672
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L243431_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp252672 '"::specialize")))
                   (_specializer-id244051_
                    (let ((__tmp252673
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx243356_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id244048_ __tmp252673))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id244051_))
              _specializer-id244051_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id244061_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?243459_))
                                                        (let* ((_id244056_
                                                                (let ((__tmp252674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L243431_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp252674
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id244058_
                        (let ((__tmp252675
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx243356_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id244056_ __tmp252675))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id244058_))
                  _lifted-specializer-id244058_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t244063_
                                                    (let ((__tmp252676
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp252676)))
                                                   (_methods244065_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls243450_)))
                                                   (_$methods244069_
                                                    (map (lambda (_id244067_)
                                                           (let ((__tmp252677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id244067_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp252677)))
                 _methods244065_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g252678_
                                                    (for-each
                                                     (lambda (_g244070244073_
                                                              _g244071244075_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls243450_
                                                          _g244070244073_
                                                          _g244071244075_)))
                                                     _methods244065_
                                                     _$methods244069_))
                                                   (_methods-bind244086_
                                                    (map (lambda (_g244078244081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244079244083_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind243358_
                      _$t244063_
                      _g244078244081_
                      _g244079244083_)))
                 _methods244065_
                 _$methods244069_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots244088_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs243451_)))
                                                   (_$slots244092_
                                                    (map (lambda (_id244090_)
                                                           (let ((__tmp252679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id244090_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp252679)))
                 _slots244088_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g252680_
                                                    (for-each
                                                     (lambda (_g244093244096_
                                                              _g244094244098_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs243451_
                                                          _g244093244096_
                                                          _g244094244098_)))
                                                     _slots244088_
                                                     _$slots244092_))
                                                   (_slots-bind244109_
                                                    (map (lambda (_g244101244104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244102244106_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind243359_
                      _$t244063_
                      _g244101244104_
                      _g244102244106_)))
                 _slots244088_
                 _$slots244092_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check244111_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check243452_)))
                                                   (_$class-check244114_
                                                    (map (lambda (_g252681_)
                                                           (let ((__tmp252682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp252682)))
                 _class-check244111_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g252683_
                                                    (for-each
                                                     (lambda (_g244115244118_
                                                              _g244116244120_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check243452_
                                                          _g244115244118_
                                                          _g244116244120_)))
                                                     _class-check244111_
                                                     _$class-check244114_))
                                                   (_class-check-bind244131_
                                                    (map (lambda (_g244123244126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244124244128_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind243360_
                      _$t244063_
                      _g244123244126_
                      _g244124244128_)))
                 _class-check244111_
                 _$class-check244114_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all244133_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check243453_
                                                       _struct-type-assert243454_)))
                                                   (_struct-check244135_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all244133_)))
                                                   (_$struct-check244138_
                                                    (map (lambda (_g252684_)
                                                           (let ((__tmp252685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp252685)))
                 _struct-check244135_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g252686_
                                                    (for-each
                                                     (lambda (_g244139244142_
                                                              _g244140244144_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all244133_
                                                          _g244139244142_
                                                          _g244140244144_)))
                                                     _struct-check244135_
                                                     _$struct-check244138_))
                                                   (_struct-check-bind244155_
                                                    (map (lambda (_g244147244150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244148244152_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind243361_
                      _$t244063_
                      _g244147244150_
                      _g244148244152_)))
                 _struct-check244135_
                 _$struct-check244138_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl244166_
                                                    (lambda (_struct-type-check1244157_
                                                             _struct-type-check2244158_)
                                                      (let* ((_specializer-body244164_
                                                              (map (lambda (_g244159244161_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g244159244161_
                                _L244028_
                                _$t244063_
                                _method-calls243450_
                                _slot-refs243451_
                                _class-type-check243452_
                                _struct-type-check1244157_
                                _struct-type-check2244158_)))
                           _L244026_))
                     (__tmp252687
                      (let ((__tmp252688
                             (let ((__tmp252689
                                    (let ()
                                      (declare (not safe))
                                      (cons _L244028_ _L244027_))))
                               (declare (not safe))
                               (cons __tmp252689 _specializer-body244164_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp252688))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp252687 _stx243356_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl244168_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl244166_
                                                       _struct-check-all244133_
                                                       _empty243455_)))
                                                   (_unchecked-specializer-impl244170_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?243458_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl244166_
                                                           _empty243455_
                                                           _struct-check-all244133_))
                                                        '#f))
                                                   (_specializer-impl244172_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl243362_
                                                       _$t244063_
                                                       _methods-bind244086_
                                                       _slots-bind244109_
                                                       _class-check-bind244131_
                                                       _struct-check-bind244155_
                                                       _specializer-impl244168_
                                                       _lifted-specializer-id244061_
                                                       _unchecked-specializer-impl244170_))))
                                              (let ((__tmp252691
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L243431_)))
                                                    (__tmp252690
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id244054_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp252691
                                                 '" => "
                                                 __tmp252690))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def243363_
                                                 _L243431_
                                                 _specializer-id244054_
                                                 _specializer-impl244172_
                                                 _lifted-specializer-id244061_
                                                 _unchecked-specializer-impl244170_))))))
                                     (___kont251218251219_
                                      (lambda () _stx243356_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx251214251215_))
                                     (let ((_e243979244002_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx251214251215_))))
                                       (let ((_tl243977244007_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e243979244002_)))
                                             (_hd243978244005_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e243979244002_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl243977244007_))
                                             (let ((_e243982244010_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl243977244007_))))
                                               (let ((_tl243980244015_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e243982244010_)))
                                                     (_hd243981244013_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e243982244010_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd243981244013_))
                                                     (let ((_e243985244018_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd243981244013_))))
                                                       (let ((_tl243983244023_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e243985244018_)))
                     (_hd243984244021_
                      (let () (declare (not safe)) (##car _e243985244018_))))
                 (___kont251216251217_
                  _tl243980244015_
                  _tl243983244023_
                  _hd243984244021_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont251218251219_))))
                                             (___kont251218251219_))))
                                     (___kont251218251219_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L243430_))
                                 (let* ((_g244178244197_
                                         (lambda (_g244179244194_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g244179244194_))))
                                        (_g244177244548_
                                         (lambda (_g244179244200_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g244179244200_))
                                               (let ((_e244183244202_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g244179244200_))))
                                                 (let ((_hd244182244205_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e244183244202_)))
                                                       (_tl244181244207_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e244183244202_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl244181244207_))
                                                       (let ((_g252648_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl244181244207_ '0))))
                 (begin
                   (let ((_g252649_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g252648_)
                                (##vector-length _g252648_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g252649_ 2)))
                         (error "Context expects 2 values" _g252649_)))
                   (let ((_target244184244210_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g252648_ 0)))
                         (_tl244186244212_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g252648_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl244186244212_))
                         (letrec ((_loop244187244215_
                                   (lambda (_hd244185244218_
                                            _clause244191244220_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd244185244218_))
                                         (let ((_e244188244223_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd244185244218_))))
                                           (let ((_lp-hd244189244226_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e244188244223_)))
                                                 (_lp-tl244190244228_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e244188244223_))))
                                             (let ((__tmp252671
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd244189244226_
                                                            _clause244191244220_))))
                                               (declare (not safe))
                                               (_loop244187244215_
                                                _lp-tl244190244228_
                                                __tmp252671))))
                                         (let ((_clause244192244231_
                                                (reverse _clause244191244220_)))
                                           ((lambda (_L244234_)
                                              (for-each
                                               (lambda (_clause244247_)
                                                 (let* ((___stx251240251241_
                                                         _clause244247_)
                                                        (_g244250244265_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx251240251241_)))))
                                                   (let ((___kont251242251243_
                                                          (lambda (_L244293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L244294_
                           _L244295_)
                    (for-each
                     (lambda (_g244310244312_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g244310244312_
                          _L244295_
                          _method-calls243450_
                          _slot-refs243451_
                          _class-type-check243452_
                          _struct-type-check243453_
                          _struct-type-assert243454_)))
                     _L244293_)))
                 (___kont251244251245_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx251240251241_))
                                                         (let ((_e244257244277_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx251240251241_))))
                   (let ((_tl244255244282_
                          (let ()
                            (declare (not safe))
                            (##cdr _e244257244277_)))
                         (_hd244256244280_
                          (let ()
                            (declare (not safe))
                            (##car _e244257244277_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd244256244280_))
                         (let ((_e244260244285_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd244256244280_))))
                           (let ((_tl244258244290_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e244260244285_)))
                                 (_hd244259244288_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e244260244285_))))
                             (___kont251242251243_
                              _tl244255244282_
                              _tl244258244290_
                              _hd244259244288_)))
                         (___kont251244251245_))))
                 (___kont251244251245_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp252650
                                                      (lambda (_g244317244320_
                                                               _g244318244322_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g244317244320_
                                                                _g244318244322_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp252650
                                                         '()
                                                         _L244234_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?243457_))
                                                  _stx243356_
                                                  (let* ((_specializer-id244331_
                                                          (let* ((_id244325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252651
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L243431_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp252651 '"::specialize")))
                         (_specializer-id244328_
                          (let ((__tmp252652
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx243356_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id244325_ __tmp252652))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id244328_))
                    _specializer-id244328_))
                 (_lifted-specializer-id244338_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?243459_))
                      (let* ((_id244333_
                              (let ((__tmp252653
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L243431_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp252653
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id244335_
                              (let ((__tmp252654
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx243356_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id244333_
                                 __tmp252654))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id244335_))
                        _lifted-specializer-id244335_)
                      '#f))
                 (_$t244340_
                  (let ((__tmp252655 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp252655)))
                 (_methods244342_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls243450_)))
                 (_$methods244346_
                  (map (lambda (_id244344_)
                         (let ((__tmp252656 (gensym _id244344_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252656)))
                       _methods244342_))
                 (_g252657_
                  (for-each
                   (lambda (_g244347244350_ _g244348244352_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls243450_
                        _g244347244350_
                        _g244348244352_)))
                   _methods244342_
                   _$methods244346_))
                 (_methods-bind244363_
                  (map (lambda (_g244355244358_ _g244356244360_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind243358_
                            _$t244340_
                            _g244355244358_
                            _g244356244360_)))
                       _methods244342_
                       _$methods244346_))
                 (_slots244365_
                  (let () (declare (not safe)) (hash-keys _slot-refs243451_)))
                 (_$slots244369_
                  (map (lambda (_id244367_)
                         (let ((__tmp252658 (gensym _id244367_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252658)))
                       _slots244365_))
                 (_g252659_
                  (for-each
                   (lambda (_g244370244373_ _g244371244375_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs243451_
                        _g244370244373_
                        _g244371244375_)))
                   _slots244365_
                   _$slots244369_))
                 (_slots-bind244386_
                  (map (lambda (_g244378244381_ _g244379244383_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind243359_
                            _$t244340_
                            _g244378244381_
                            _g244379244383_)))
                       _slots244365_
                       _$slots244369_))
                 (_class-check244388_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check243452_)))
                 (_$class-check244391_
                  (map (lambda (_g252660_)
                         (let ((__tmp252661 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252661)))
                       _class-check244388_))
                 (_g252662_
                  (for-each
                   (lambda (_g244392244395_ _g244393244397_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check243452_
                        _g244392244395_
                        _g244393244397_)))
                   _class-check244388_
                   _$class-check244391_))
                 (_class-check-bind244408_
                  (map (lambda (_g244400244403_ _g244401244405_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind243360_
                            _$t244340_
                            _g244400244403_
                            _g244401244405_)))
                       _class-check244388_
                       _$class-check244391_))
                 (_struct-check-all244410_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check243453_
                     _struct-type-assert243454_)))
                 (_struct-check244412_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all244410_)))
                 (_$struct-check244415_
                  (map (lambda (_g252663_)
                         (let ((__tmp252664 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252664)))
                       _struct-check244412_))
                 (_g252665_
                  (for-each
                   (lambda (_g244416244419_ _g244417244421_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all244410_
                        _g244416244419_
                        _g244417244421_)))
                   _struct-check244412_
                   _$struct-check244415_))
                 (_struct-check-bind244432_
                  (map (lambda (_g244424244427_ _g244425244429_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind243361_
                            _$t244340_
                            _g244424244427_
                            _g244425244429_)))
                       _struct-check244412_
                       _$struct-check244415_))
                 (_make-specializer-impl244539_
                  (lambda (_struct-type-check1244434_
                           _struct-type-check2244435_)
                    (let* ((_specializer-clauses244537_
                            (map (lambda (_clause244437_)
                                   (let* ((___stx251260251261_ _clause244437_)
                                          (_g244440244455_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx251260251261_)))))
                                     (let ((___kont251262251263_
                                            (lambda (_L244483_
                                                     _L244484_
                                                     _L244485_)
                                              (let* ((_body244525_
                                                      (map (lambda (_g244520244522_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g244520244522_
                        _L244485_
                        _$t244340_
                        _method-calls243450_
                        _slot-refs243451_
                        _class-type-check243452_
                        _struct-type-check1244434_
                        _struct-type-check2244435_)))
                   _L244483_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp252666
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L244485_
                                                              _L244484_))))
                                                (declare (not safe))
                                                (cons __tmp252666
                                                      _body244525_))))
                                           (___kont251264251265_
                                            (lambda () _clause244437_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx251260251261_))
                                           (let ((_e244447244467_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx251260251261_))))
                                             (let ((_tl244445244472_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e244447244467_)))
                                                   (_hd244446244470_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e244447244467_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd244446244470_))
                                                   (let ((_e244450244475_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd244446244470_))))
                                                     (let ((_tl244448244480_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e244450244475_)))
                                                           (_hd244449244478_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e244450244475_))))
                                                       (___kont251262251263_
                                                        _tl244445244472_
                                                        _tl244448244480_
                                                        _hd244449244478_)))
                                                   (___kont251264251265_))))
                                           (___kont251264251265_)))))
                                 (let ((__tmp252667
                                        (lambda (_g244529244532_
                                                 _g244530244534_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g244529244532_
                                                  _g244530244534_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp252667 '() _L244234_))))
                           (__tmp252668
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses244537_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252668 _stx243356_))))
                 (_specializer-impl244541_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl244539_
                     _struct-check-all244410_
                     _empty243455_)))
                 (_unchecked-specializer-impl244543_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243458_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl244539_
                         _empty243455_
                         _struct-check-all244410_))
                      '#f))
                 (_specializer-impl244545_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl243362_
                     _$t244340_
                     _methods-bind244363_
                     _slots-bind244386_
                     _class-check-bind244408_
                     _struct-check-bind244432_
                     _specializer-impl244541_
                     _lifted-specializer-id244338_
                     _unchecked-specializer-impl244543_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp252670
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L243431_)))
                                                          (__tmp252669
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id244331_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp252670
                                                       '" => "
                                                       __tmp252669))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def243363_
                                                       _L243431_
                                                       _specializer-id244331_
                                                       _specializer-impl244545_
                                                       _lifted-specializer-id244338_
                                                       _unchecked-specializer-impl244543_)))))
                                            _clause244192244231_))))))
                           (let ()
                             (declare (not safe))
                             (_loop244187244215_ _target244184244210_ '())))
                         (let ()
                           (declare (not safe))
                           (_g244178244197_ _g244179244200_))))))
               (let ()
                 (declare (not safe))
                 (_g244178244197_ _g244179244200_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g244178244197_
                                                  _g244179244200_))))))
                                   (declare (not safe))
                                   (_g244177244548_ _L243430_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L243430_))
                                     (let* ((_g244551244581_
                                             (lambda (_g244552244578_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g244552244578_))))
                                            (_g244550245269_
                                             (lambda (_g244552244584_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g244552244584_))
                                                   (let ((_e244558244586_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g244552244584_))))
                                                     (let ((_hd244557244589_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e244558244586_)))
                                                           (_tl244556244591_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e244558244586_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl244556244591_))
                                                           (let ((_e244561244594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl244556244591_))))
                     (let ((_hd244560244597_
                            (let ()
                              (declare (not safe))
                              (##car _e244561244594_)))
                           (_tl244559244599_
                            (let ()
                              (declare (not safe))
                              (##cdr _e244561244594_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd244560244597_))
                           (let ((_e244564244602_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd244560244597_))))
                             (let ((_hd244563244605_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e244564244602_)))
                                   (_tl244562244607_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e244564244602_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd244563244605_))
                                   (let ((_e244567244610_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd244563244605_))))
                                     (let ((_hd244566244613_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e244567244610_)))
                                           (_tl244565244615_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e244567244610_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd244566244613_))
                                           (let ((_e244570244618_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd244566244613_))))
                                             (let ((_hd244569244621_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e244570244618_)))
                                                   (_tl244568244623_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e244570244618_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl244568244623_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl244565244615_))
                                                       (let ((_e244573244626_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl244565244615_))))
                 (let ((_hd244572244629_
                        (let () (declare (not safe)) (##car _e244573244626_)))
                       (_tl244571244631_
                        (let () (declare (not safe)) (##cdr _e244573244626_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl244571244631_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl244562244607_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl244559244599_))
                               (let ((_e244576244634_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl244559244599_))))
                                 (let ((_hd244575244637_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e244576244634_)))
                                       (_tl244574244639_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e244576244634_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl244574244639_))
                                       ((lambda (_L244642_ _L244643_ _L244644_)
                                          (let* ((_g244667244685_
                                                  (lambda (_g244668244682_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g244668244682_))))
                                                 (_g244666244736_
                                                  (lambda (_g244668244688_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g244668244688_))
                                                        (let ((_e244674244690_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g244668244688_))))
                  (let ((_hd244673244693_
                         (let () (declare (not safe)) (##car _e244674244690_)))
                        (_tl244672244695_
                         (let ()
                           (declare (not safe))
                           (##cdr _e244674244690_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl244672244695_))
                        (let ((_e244677244698_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl244672244695_))))
                          (let ((_hd244676244701_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e244677244698_)))
                                (_tl244675244703_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e244677244698_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd244676244701_))
                                (let ((_e244680244706_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd244676244701_))))
                                  (let ((_hd244679244709_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244680244706_)))
                                        (_tl244678244711_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244680244706_))))
                                    ((lambda (_L244714_ _L244715_ _L244716_)
                                       (for-each
                                        (lambda (_g244731244733_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g244731244733_
                                             _L244716_
                                             _method-calls243450_
                                             _slot-refs243451_
                                             _class-type-check243452_
                                             _struct-type-check243453_
                                             _struct-type-assert243454_)))
                                        _L244714_))
                                     _tl244675244703_
                                     _tl244678244711_
                                     _hd244679244709_)))
                                (let ()
                                  (declare (not safe))
                                  (_g244667244685_ _g244668244688_)))))
                        (let ()
                          (declare (not safe))
                          (_g244667244685_ _g244668244688_)))))
                (let ()
                  (declare (not safe))
                  (_g244667244685_ _g244668244688_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g244666244736_ _L244643_))
                                          (let* ((_g244739244758_
                                                  (lambda (_g244740244755_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g244740244755_))))
                                                 (_g244738244877_
                                                  (lambda (_g244740244761_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g244740244761_))
                                                        (let ((_e244744244763_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g244740244761_))))
                  (let ((_hd244743244766_
                         (let () (declare (not safe)) (##car _e244744244763_)))
                        (_tl244742244768_
                         (let ()
                           (declare (not safe))
                           (##cdr _e244744244763_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl244742244768_))
                        (let ((_g252611_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl244742244768_
                                  '0))))
                          (begin
                            (let ((_g252612_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g252611_)
                                         (##vector-length _g252611_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g252612_ 2)))
                                  (error "Context expects 2 values"
                                         _g252612_)))
                            (let ((_target244745244771_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g252611_ 0)))
                                  (_tl244747244773_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g252611_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl244747244773_))
                                  (letrec ((_loop244748244776_
                                            (lambda (_hd244746244779_
                                                     _clause244752244781_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd244746244779_))
                                                  (let ((_e244749244784_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd244746244779_))))
                                                    (let ((_lp-hd244750244787_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e244749244784_)))
                                                          (_lp-tl244751244789_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e244749244784_))))
                                                      (let ((__tmp252614
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd244750244787_ _clause244752244781_))))
                (declare (not safe))
                (_loop244748244776_ _lp-tl244751244789_ __tmp252614))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause244753244792_
                                                         (reverse _clause244752244781_)))
                                                    ((lambda (_L244795_)
                                                       (for-each
                                                        (lambda (_clause244808_)
                                                          (let* ((_g244810244825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g244811244822_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g244811244822_))))
                         (_g244809244867_
                          (lambda (_g244811244828_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g244811244828_))
                                (let ((_e244817244830_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g244811244828_))))
                                  (let ((_hd244816244833_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244817244830_)))
                                        (_tl244815244835_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244817244830_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd244816244833_))
                                        (let ((_e244820244838_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd244816244833_))))
                                          (let ((_hd244819244841_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e244820244838_)))
                                                (_tl244818244843_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e244820244838_))))
                                            ((lambda (_L244846_
                                                      _L244847_
                                                      _L244848_)
                                               (for-each
                                                (lambda (_g244862244864_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g244862244864_
                                                     _L244848_
                                                     _method-calls243450_
                                                     _slot-refs243451_
                                                     _class-type-check243452_
                                                     _struct-type-check243453_
                                                     _struct-type-assert243454_)))
                                                _L244846_))
                                             _tl244815244835_
                                             _tl244818244843_
                                             _hd244819244841_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g244810244825_ _g244811244828_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g244810244825_ _g244811244828_))))))
                    (declare (not safe))
                    (_g244809244867_ _clause244808_)))
                (let ((__tmp252613
                       (lambda (_g244869244872_ _g244870244874_)
                         (let ()
                           (declare (not safe))
                           (cons _g244869244872_ _g244870244874_)))))
                  (declare (not safe))
                  (foldr1 __tmp252613 '() _L244795_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause244753244792_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop244748244776_
                                       _target244745244771_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g244739244758_ _g244740244761_))))))
                        (let ()
                          (declare (not safe))
                          (_g244739244758_ _g244740244761_)))))
                (let ()
                  (declare (not safe))
                  (_g244739244758_ _g244740244761_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g244738244877_ _L244642_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?243457_))
                                              _stx243356_
                                              (let* ((_specializer-id244886_
                                                      (let* ((_id244880_
                                                              (let ((__tmp252615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L243431_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp252615 '"::specialize")))
                     (_specializer-id244883_
                      (let ((__tmp252616
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx243356_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id244880_ __tmp252616))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id244883_))
                _specializer-id244883_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id244893_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?243459_))
                                                          (let* ((_id244888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252617
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L243431_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp252617
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id244890_
                          (let ((__tmp252618
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx243356_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id244888_ __tmp252618))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id244890_))
                    _lifted-specializer-id244890_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t244895_
                                                      (let ((__tmp252619
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp252619)))
                                                     (_methods244897_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls243450_)))
                                                     (_$methods244901_
                                                      (map (lambda (_id244899_)
                                                             (let ((__tmp252620
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id244899_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp252620)))
                   _methods244897_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252621_
                                                      (for-each
                                                       (lambda (_g244902244905_
                                                                _g244903244907_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls243450_
                                                            _g244902244905_
                                                            _g244903244907_)))
                                                       _methods244897_
                                                       _$methods244901_))
                                                     (_methods-bind244918_
                                                      (map (lambda (_g244910244913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g244911244915_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind243358_
                        _$t244895_
                        _g244910244913_
                        _g244911244915_)))
                   _methods244897_
                   _$methods244901_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots244920_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs243451_)))
                                                     (_$slots244924_
                                                      (map (lambda (_id244922_)
                                                             (let ((__tmp252622
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id244922_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp252622)))
                   _slots244920_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252623_
                                                      (for-each
                                                       (lambda (_g244925244928_
                                                                _g244926244930_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs243451_
                                                            _g244925244928_
                                                            _g244926244930_)))
                                                       _slots244920_
                                                       _$slots244924_))
                                                     (_slots-bind244941_
                                                      (map (lambda (_g244933244936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g244934244938_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind243359_
                        _$t244895_
                        _g244933244936_
                        _g244934244938_)))
                   _slots244920_
                   _$slots244924_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check244943_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check243452_)))
                                                     (_$class-check244946_
                                                      (map (lambda (_g252624_)
                                                             (let ((__tmp252625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp252625)))
                   _class-check244943_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252626_
                                                      (for-each
                                                       (lambda (_g244947244950_
                                                                _g244948244952_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check243452_
                                                            _g244947244950_
                                                            _g244948244952_)))
                                                       _class-check244943_
                                                       _$class-check244946_))
                                                     (_class-check-bind244963_
                                                      (map (lambda (_g244955244958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g244956244960_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind243360_
                        _$t244895_
                        _g244955244958_
                        _g244956244960_)))
                   _class-check244943_
                   _$class-check244946_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all244965_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check243453_
                                                         _struct-type-assert243454_)))
                                                     (_struct-check244967_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all244965_)))
                                                     (_$struct-check244970_
                                                      (map (lambda (_g252627_)
                                                             (let ((__tmp252628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp252628)))
                   _struct-check244967_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252629_
                                                      (for-each
                                                       (lambda (_g244971244974_
                                                                _g244972244976_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all244965_
                                                            _g244971244974_
                                                            _g244972244976_)))
                                                       _struct-check244967_
                                                       _$struct-check244970_))
                                                     (_struct-check-bind244987_
                                                      (map (lambda (_g244979244982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g244980244984_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind243361_
                        _$t244895_
                        _g244979244982_
                        _g244980244984_)))
                   _struct-check244967_
                   _$struct-check244970_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr245086_
                                                      (lambda (_struct-type-check1244989_
                                                               _struct-type-check2244990_)
                                                        (let* ((_g244992245010_
                                                                (lambda (_g244993245007_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g244993245007_))))
                       (_g244991245083_
                        (lambda (_g244993245013_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g244993245013_))
                              (let ((_e244999245015_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g244993245013_))))
                                (let ((_hd244998245018_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e244999245015_)))
                                      (_tl244997245020_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e244999245015_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl244997245020_))
                                      (let ((_e245002245023_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl244997245020_))))
                                        (let ((_hd245001245026_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245002245023_)))
                                              (_tl245000245028_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245002245023_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd245001245026_))
                                              (let ((_e245005245031_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd245001245026_))))
                                                (let ((_hd245004245034_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e245005245031_)))
                                                      (_tl245003245036_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e245005245031_))))
                                                  ((lambda (_L245039_
                                                            _L245040_
                                                            _L245041_)
                                                     (let* ((_body245081_
                                                             (map (lambda (_g245076245078_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g245076245078_
                               _L245041_
                               _$t244895_
                               _method-calls243450_
                               _slot-refs243451_
                               _class-type-check243452_
                               _struct-type-check1244989_
                               _struct-type-check2244990_)))
                          _L245039_))
                    (__tmp252630
                     (let ((__tmp252631
                            (let ((__tmp252632
                                   (let ()
                                     (declare (not safe))
                                     (cons _L245041_ _L245040_))))
                              (declare (not safe))
                              (cons __tmp252632 _body245081_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp252631))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp252630 _L244643_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl245000245028_
                                                   _tl245003245036_
                                                   _hd245004245034_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g244992245010_
                                                 _g244993245013_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g244992245010_ _g244993245013_)))))
                              (let ()
                                (declare (not safe))
                                (_g244992245010_ _g244993245013_))))))
                  (declare (not safe))
                  (_g244991245083_ _L244643_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr245247_
                                                      (lambda (_struct-type-check1245088_
                                                               _struct-type-check2245089_)
                                                        (let* ((_g245091245110_
                                                                (lambda (_g245092245107_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g245092245107_))))
                       (_g245090245244_
                        (lambda (_g245092245113_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g245092245113_))
                              (let ((_e245096245115_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g245092245113_))))
                                (let ((_hd245095245118_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245096245115_)))
                                      (_tl245094245120_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245096245115_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl245094245120_))
                                      (let ((_g252633_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl245094245120_
                                                '0))))
                                        (begin
                                          (let ((_g252634_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g252633_)
                                                       (##vector-length
                                                        _g252633_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g252634_ 2)))
                                                (error "Context expects 2 values"
                                                       _g252634_)))
                                          (let ((_target245097245123_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g252633_ 0)))
                                                (_tl245099245125_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g252633_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl245099245125_))
                                                (letrec ((_loop245100245128_
                                                          (lambda (_hd245098245131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause245104245133_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd245098245131_))
                        (let ((_e245101245136_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd245098245131_))))
                          (let ((_lp-hd245102245139_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e245101245136_)))
                                (_lp-tl245103245141_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e245101245136_))))
                            (let ((__tmp252638
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd245102245139_
                                           _clause245104245133_))))
                              (declare (not safe))
                              (_loop245100245128_
                               _lp-tl245103245141_
                               __tmp252638))))
                        (let ((_clause245105245144_
                               (reverse _clause245104245133_)))
                          ((lambda (_L245147_)
                             (let* ((_clauses245242_
                                     (map (lambda (_clause245162_)
                                            (let* ((___stx251280251281_
                                                    _clause245162_)
                                                   (_g245165245180_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx251280251281_)))))
                                              (let ((___kont251282251283_
                                                     (lambda (_L245208_
                                                              _L245209_
                                                              _L245210_)
                                                       (let* ((_body245230_
                                                               (map (lambda (_g245225245227_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g245225245227_
                                 _L245210_
                                 _$t244895_
                                 _method-calls243450_
                                 _slot-refs243451_
                                 _class-type-check243452_
                                 _struct-type-check1245088_
                                 _struct-type-check2245089_)))
                            _L245208_))
                      (__tmp252635
                       (let ()
                         (declare (not safe))
                         (cons _L245210_ _L245209_))))
                 (declare (not safe))
                 (cons __tmp252635 _body245230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251284251285_
                                                     (lambda ()
                                                       _clause245162_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx251280251281_))
                                                    (let ((_e245172245192_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx251280251281_))))
                                                      (let ((_tl245170245197_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e245172245192_)))
                    (_hd245171245195_
                     (let () (declare (not safe)) (##car _e245172245192_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd245171245195_))
                    (let ((_e245175245200_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd245171245195_))))
                      (let ((_tl245173245205_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245175245200_)))
                            (_hd245174245203_
                             (let ()
                               (declare (not safe))
                               (##car _e245175245200_))))
                        (___kont251282251283_
                         _tl245170245197_
                         _tl245173245205_
                         _hd245174245203_)))
                    (___kont251284251285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251284251285_)))))
                                          (let ((__tmp252636
                                                 (lambda (_g245234245237_
                                                          _g245235245239_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g245234245237_
                                                           _g245235245239_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp252636
                                                    '()
                                                    _L245147_))))
                                    (__tmp252637
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses245242_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp252637 _L244642_)))
                           _clause245105245144_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop245100245128_
                                                     _target245097245123_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g245091245110_
                                                   _g245092245113_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g245091245110_ _g245092245113_)))))
                              (let ()
                                (declare (not safe))
                                (_g245091245110_ _g245092245113_))))))
                  (declare (not safe))
                  (_g245090245244_ _L244642_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl245252_
                                                      (lambda (_specializer-lambda-expr245249_
                                                               _specializer-case-lambda-expr245250_)
                                                        (let ((__tmp252639
                                                               (let ((__tmp252640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp252642
                                     (let ((__tmp252643
                                            (let ((__tmp252645
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L244644_ '())))
                                                  (__tmp252644
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr245249_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp252645 __tmp252644))))
                                       (declare (not safe))
                                       (cons __tmp252643 '())))
                                    (__tmp252641
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr245250_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp252642 __tmp252641))))
                         (declare (not safe))
                         (cons '%#let-values __tmp252640))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp252639 _stx243356_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr245254_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr245086_
                                                         _struct-check-all244965_
                                                         _empty243455_)))
                                                     (_specializer-case-lambda-expr245256_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr245247_
                                                         _struct-check-all244965_
                                                         _empty243455_)))
                                                     (_specializer-impl245258_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl245252_
                                                         _specializer-lambda-expr245254_
                                                         _specializer-case-lambda-expr245256_)))
                                                     (_unchecked-specializer-lambda-expr245260_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?243458_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr245086_
                                                             _empty243455_
                                                             _struct-check-all244965_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr245262_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?243458_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr245247_
                                                             _empty243455_
                                                             _struct-check-all244965_))
                                                          '#f))
                                                     (_unchecked-specializer-impl245264_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?243458_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl245252_
                                                             _unchecked-specializer-lambda-expr245260_
                                                             _unchecked-specializer-case-lambda-expr245262_))
                                                          '#f))
                                                     (_specializer-impl245266_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl243362_
                                                         _$t244895_
                                                         _methods-bind244918_
                                                         _slots-bind244941_
                                                         _class-check-bind244963_
                                                         _struct-check-bind244987_
                                                         _specializer-impl245258_
                                                         _lifted-specializer-id244893_
                                                         _unchecked-specializer-impl245264_))))
                                                (let ((__tmp252647
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L243431_)))
                                                      (__tmp252646
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id244886_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp252647
                                                   '" => "
                                                   __tmp252646))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def243363_
                                                   _L243431_
                                                   _specializer-id244886_
                                                   _specializer-impl245266_
                                                   _lifted-specializer-id244893_
                                                   _unchecked-specializer-impl245264_)))))
                                        _hd244575244637_
                                        _hd244572244629_
                                        _hd244569244621_)
                                       (let ()
                                         (declare (not safe))
                                         (_g244551244581_ _g244552244584_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g244551244581_ _g244552244584_)))
                           (let ()
                             (declare (not safe))
                             (_g244551244581_ _g244552244584_)))
                       (let ()
                         (declare (not safe))
                         (_g244551244581_ _g244552244584_)))))
               (let () (declare (not safe)) (_g244551244581_ _g244552244584_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g244551244581_
                                                      _g244552244584_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g244551244581_
                                              _g244552244584_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g244551244581_ _g244552244584_)))))
                           (let ()
                             (declare (not safe))
                             (_g244551244581_ _g244552244584_)))))
                   (let ()
                     (declare (not safe))
                     (_g244551244581_ _g244552244584_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g244551244581_
                                                      _g244552244584_))))))
                                       (declare (not safe))
                                       (_g244550245269_ _L243430_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L243430_))
                                         (let* ((_g245272245325_
                                                 (lambda (_g245273245322_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g245273245322_))))
                                                (_g245271246597_
                                                 (lambda (_g245273245328_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g245273245328_))
                                                       (let ((_e245281245330_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g245273245328_))))
                 (let ((_hd245280245333_
                        (let () (declare (not safe)) (##car _e245281245330_)))
                       (_tl245279245335_
                        (let () (declare (not safe)) (##cdr _e245281245330_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd245280245333_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd245280245333_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl245279245335_))
                               (let ((_e245284245338_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl245279245335_))))
                                 (let ((_hd245283245341_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e245284245338_)))
                                       (_tl245282245343_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e245284245338_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd245283245341_))
                                       (let ((_e245287245346_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd245283245341_))))
                                         (let ((_hd245286245349_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e245287245346_)))
                                               (_tl245285245351_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e245287245346_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd245286245349_))
                                               (let ((_e245290245354_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd245286245349_))))
                                                 (let ((_hd245289245357_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e245290245354_)))
                                                       (_tl245288245359_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e245290245354_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd245289245357_))
                                                       (let ((_e245293245362_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd245289245357_))))
                 (let ((_hd245292245365_
                        (let () (declare (not safe)) (##car _e245293245362_)))
                       (_tl245291245367_
                        (let () (declare (not safe)) (##cdr _e245293245362_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl245291245367_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl245288245359_))
                           (let ((_e245296245370_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl245288245359_))))
                             (let ((_hd245295245373_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e245296245370_)))
                                   (_tl245294245375_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e245296245370_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd245295245373_))
                                   (let ((_e245299245378_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd245295245373_))))
                                     (let ((_hd245298245381_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e245299245378_)))
                                           (_tl245297245383_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e245299245378_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd245298245381_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd245298245381_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl245297245383_))
                                                   (let ((_e245302245386_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl245297245383_))))
                                                     (let ((_hd245301245389_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e245302245386_)))
                                                           (_tl245300245391_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e245302245386_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd245301245389_))
                                                           (let ((_e245305245394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd245301245389_))))
                     (let ((_hd245304245397_
                            (let ()
                              (declare (not safe))
                              (##car _e245305245394_)))
                           (_tl245303245399_
                            (let ()
                              (declare (not safe))
                              (##cdr _e245305245394_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd245304245397_))
                           (let ((_e245308245402_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd245304245397_))))
                             (let ((_hd245307245405_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e245308245402_)))
                                   (_tl245306245407_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e245308245402_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd245307245405_))
                                   (let ((_e245311245410_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd245307245405_))))
                                     (let ((_hd245310245413_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e245311245410_)))
                                           (_tl245309245415_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e245311245410_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl245309245415_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl245306245407_))
                                               (let ((_e245314245418_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl245306245407_))))
                                                 (let ((_hd245313245421_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e245314245418_)))
                                                       (_tl245312245423_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e245314245418_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl245312245423_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl245303245399_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl245300245391_))
                       (let ((_e245317245426_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl245300245391_))))
                         (let ((_hd245316245429_
                                (let ()
                                  (declare (not safe))
                                  (##car _e245317245426_)))
                               (_tl245315245431_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e245317245426_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl245315245431_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl245294245375_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl245285245351_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl245282245343_))
                                           (let ((_e245320245434_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl245282245343_))))
                                             (let ((_hd245319245437_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e245320245434_)))
                                                   (_tl245318245439_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e245320245434_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl245318245439_))
                                                   ((lambda (_L245442_
                                                             _L245443_
                                                             _L245444_
                                                             _L245445_
                                                             _L245446_)
                                                      (let* ((_g245485245547_
                                                              (lambda (_g245486245544_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g245486245544_))))
                     (_g245484246594_
                      (lambda (_g245486245550_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g245486245550_))
                            (let ((_e245494245552_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g245486245550_))))
                              (let ((_hd245493245555_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245494245552_)))
                                    (_tl245492245557_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245494245552_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd245493245555_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd245493245555_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl245492245557_))
                                            (let ((_e245497245560_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl245492245557_))))
                                              (let ((_hd245496245563_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e245497245560_)))
                                                    (_tl245495245565_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e245497245560_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl245495245565_))
                                                    (let ((_e245500245568_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl245495245565_))))
                                                      (let ((_hd245499245571_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e245500245568_)))
                    (_tl245498245573_
                     (let () (declare (not safe)) (##cdr _e245500245568_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd245499245571_))
                    (let ((_e245503245576_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd245499245571_))))
                      (let ((_hd245502245579_
                             (let ()
                               (declare (not safe))
                               (##car _e245503245576_)))
                            (_tl245501245581_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245503245576_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd245502245579_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd245502245579_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl245501245581_))
                                    (let ((_e245506245584_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl245501245581_))))
                                      (let ((_hd245505245587_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e245506245584_)))
                                            (_tl245504245589_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e245506245584_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd245505245587_))
                                            (let ((_e245509245592_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd245505245587_))))
                                              (let ((_hd245508245595_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e245509245592_)))
                                                    (_tl245507245597_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e245509245592_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd245508245595_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd245508245595_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl245507245597_))
                                                            (let ((_e245512245600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl245507245597_))))
                      (let ((_hd245511245603_
                             (let ()
                               (declare (not safe))
                               (##car _e245512245600_)))
                            (_tl245510245605_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245512245600_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245510245605_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl245504245589_))
                                (let ((_e245515245608_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl245504245589_))))
                                  (let ((_hd245514245611_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245515245608_)))
                                        (_tl245513245613_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245515245608_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd245514245611_))
                                        (let ((_e245518245616_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd245514245611_))))
                                          (let ((_hd245517245619_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e245518245616_)))
                                                (_tl245516245621_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e245518245616_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd245517245619_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd245517245619_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl245516245621_))
                                                        (let ((_e245521245624_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl245516245621_))))
                  (let ((_hd245520245627_
                         (let () (declare (not safe)) (##car _e245521245624_)))
                        (_tl245519245629_
                         (let ()
                           (declare (not safe))
                           (##cdr _e245521245624_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl245519245629_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245513245613_))
                            (let ((_e245524245632_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245513245613_))))
                              (let ((_hd245523245635_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245524245632_)))
                                    (_tl245522245637_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245524245632_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd245523245635_))
                                    (let ((_e245527245640_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd245523245635_))))
                                      (let ((_hd245526245643_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e245527245640_)))
                                            (_tl245525245645_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e245527245640_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd245526245643_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd245526245643_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl245525245645_))
                                                    (let ((_e245530245648_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl245525245645_))))
                                                      (let ((_hd245529245651_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e245530245648_)))
                    (_tl245528245653_
                     (let () (declare (not safe)) (##cdr _e245530245648_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl245528245653_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl245522245637_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl245522245637_))
                                  '1)
                            (let ((_g252523_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl245522245637_
                                      '1))))
                              (begin
                                (let ((_g252524_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g252523_)
                                             (##vector-length _g252523_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g252524_ 2)))
                                      (error "Context expects 2 values"
                                             _g252524_)))
                                (let ((_target245531245656_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252523_ 0)))
                                      (_tl245533245658_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252523_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl245533245658_))
                                      (let ((_e245542245661_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl245533245658_))))
                                        (let ((_hd245541245664_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245542245661_)))
                                              (_tl245540245666_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245542245661_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl245540245666_))
                                              (letrec ((_loop245534245669_
                                                        (lambda (_hd245532245672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref245538245674_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd245532245672_))
                      (let ((_e245535245677_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd245532245672_))))
                        (let ((_lp-hd245536245680_
                               (let ()
                                 (declare (not safe))
                                 (##car _e245535245677_)))
                              (_lp-tl245537245682_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e245535245677_))))
                          (let ((__tmp252610
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd245536245680_
                                         _kw-ref245538245674_))))
                            (declare (not safe))
                            (_loop245534245669_
                             _lp-tl245537245682_
                             __tmp252610))))
                      (let ((_kw-ref245539245685_
                             (reverse _kw-ref245538245674_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245498245573_))
                            ((lambda (_L245688_
                                      _L245689_
                                      _L245690_
                                      _L245691_
                                      _L245692_)
                               (let* ((_kw-count245743_
                                       (length (let ((__tmp252525
                                                      (lambda (_g245735245738_
                                                               _g245736245740_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g245735245738_
                                                                _g245736245740_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp252525
                                                         '()
                                                         _L245689_))))
                                      (_self-index245745_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count245743_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L245444_))
                                     (let* ((_g245748245762_
                                             (lambda (_g245749245759_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g245749245759_))))
                                            (_g245747245933_
                                             (lambda (_g245749245765_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g245749245765_))
                                                   (let ((_e245754245767_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g245749245765_))))
                                                     (let ((_hd245753245770_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e245754245767_)))
                                                           (_tl245752245772_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e245754245767_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl245752245772_))
                                                           (let ((_e245757245775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl245752245772_))))
                     (let ((_hd245756245778_
                            (let ()
                              (declare (not safe))
                              (##car _e245757245775_)))
                           (_tl245755245780_
                            (let ()
                              (declare (not safe))
                              (##cdr _e245757245775_))))
                       ((lambda (_L245783_ _L245784_)
                          (let ((_self245800_
                                 (list-ref _L245784_ _self-index245745_)))
                            (for-each
                             (lambda (_g245801245803_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g245801245803_
                                  _self245800_
                                  _method-calls243450_
                                  _slot-refs243451_
                                  _class-type-check243452_
                                  _struct-type-check243453_
                                  _struct-type-assert243454_)))
                             _L245783_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?243457_))
                                _stx243356_
                                (let* ((_specializer-id245812_
                                        (let* ((_id245806_
                                                (let ((__tmp252576
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L243431_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp252576
                                                   '"::specialize")))
                                               (_specializer-id245809_
                                                (let ((__tmp252577
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx243356_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id245806_
                                                   __tmp252577))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id245809_))
                                          _specializer-id245809_))
                                       (_lifted-specializer-id245819_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?243459_))
                                            (let* ((_id245814_
                                                    (let ((__tmp252578
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L243431_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp252578
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id245816_
                                                    (let ((__tmp252579
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx243356_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id245814_
                                                       __tmp252579))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id245816_))
                                              _lifted-specializer-id245816_)
                                            '#f))
                                       (_$t245821_
                                        (let ((__tmp252580 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp252580)))
                                       (_methods245823_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls243450_)))
                                       (_$methods245827_
                                        (map (lambda (_id245825_)
                                               (let ((__tmp252581
                                                      (gensym _id245825_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp252581)))
                                             _methods245823_))
                                       (_g252582_
                                        (for-each
                                         (lambda (_g245828245831_
                                                  _g245829245833_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls243450_
                                              _g245828245831_
                                              _g245829245833_)))
                                         _methods245823_
                                         _$methods245827_))
                                       (_methods-bind245844_
                                        (map (lambda (_g245836245839_
                                                      _g245837245841_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind243358_
                                                  _$t245821_
                                                  _g245836245839_
                                                  _g245837245841_)))
                                             _methods245823_
                                             _$methods245827_))
                                       (_slots245846_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs243451_)))
                                       (_$slots245850_
                                        (map (lambda (_id245848_)
                                               (let ((__tmp252583
                                                      (gensym _id245848_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp252583)))
                                             _slots245846_))
                                       (_g252584_
                                        (for-each
                                         (lambda (_g245851245854_
                                                  _g245852245856_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs243451_
                                              _g245851245854_
                                              _g245852245856_)))
                                         _slots245846_
                                         _$slots245850_))
                                       (_slots-bind245867_
                                        (map (lambda (_g245859245862_
                                                      _g245860245864_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind243359_
                                                  _$t245821_
                                                  _g245859245862_
                                                  _g245860245864_)))
                                             _slots245846_
                                             _$slots245850_))
                                       (_class-check245869_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check243452_)))
                                       (_$class-check245872_
                                        (map (lambda (_g252585_)
                                               (let ((__tmp252586
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp252586)))
                                             _class-check245869_))
                                       (_g252587_
                                        (for-each
                                         (lambda (_g245873245876_
                                                  _g245874245878_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check243452_
                                              _g245873245876_
                                              _g245874245878_)))
                                         _class-check245869_
                                         _$class-check245872_))
                                       (_class-check-bind245889_
                                        (map (lambda (_g245881245884_
                                                      _g245882245886_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind243360_
                                                  _$t245821_
                                                  _g245881245884_
                                                  _g245882245886_)))
                                             _class-check245869_
                                             _$class-check245872_))
                                       (_struct-check-all245891_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check243453_
                                           _struct-type-assert243454_)))
                                       (_struct-check245893_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all245891_)))
                                       (_$struct-check245896_
                                        (map (lambda (_g252588_)
                                               (let ((__tmp252589
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp252589)))
                                             _struct-check245893_))
                                       (_g252590_
                                        (for-each
                                         (lambda (_g245897245900_
                                                  _g245898245902_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all245891_
                                              _g245897245900_
                                              _g245898245902_)))
                                         _struct-check245893_
                                         _$struct-check245896_))
                                       (_struct-check-bind245913_
                                        (map (lambda (_g245905245908_
                                                      _g245906245910_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind243361_
                                                  _$t245821_
                                                  _g245905245908_
                                                  _g245906245910_)))
                                             _struct-check245893_
                                             _$struct-check245896_))
                                       (_make-specializer-impl245924_
                                        (lambda (_struct-type-check1245915_
                                                 _struct-type-check2245916_)
                                          (let* ((_specializer-body245922_
                                                  (map (lambda (_g245917245919_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g245917245919_
                                                            _self245800_
                                                            _$t245821_
                                                            _method-calls243450_
                                                            _slot-refs243451_
                                                            _class-type-check243452_
                                                            _struct-type-check1245915_
                                                            _struct-type-check2245916_)))
                                                       _L245783_))
                                                 (__tmp252591
                                                  (let ((__tmp252592
                                                         (let ((__tmp252594
                                                                (let ((__tmp252595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252607
                                      (let ()
                                        (declare (not safe))
                                        (cons _L245446_ '())))
                                     (__tmp252596
                                      (let ((__tmp252597
                                             (let ((__tmp252598
                                                    (let ((__tmp252600
                                                           (let ((__tmp252601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252606
                                 (let ()
                                   (declare (not safe))
                                   (cons _L245445_ '())))
                                (__tmp252602
                                 (let ((__tmp252603
                                        (let ((__tmp252604
                                               (let ((__tmp252605
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L245784_
                                                              _specializer-body245922_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp252605))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp252604
                                           _L245444_))))
                                   (declare (not safe))
                                   (cons __tmp252603 '()))))
                            (declare (not safe))
                            (cons __tmp252606 __tmp252602))))
                     (declare (not safe))
                     (cons __tmp252601 '())))
                  (__tmp252599
                   (let () (declare (not safe)) (cons _L245443_ '()))))
              (declare (not safe))
              (cons __tmp252600 __tmp252599))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp252598))))
                                        (declare (not safe))
                                        (cons __tmp252597 '()))))
                                 (declare (not safe))
                                 (cons __tmp252607 __tmp252596))))
                          (declare (not safe))
                          (cons __tmp252595 '())))
                       (__tmp252593
                        (let () (declare (not safe)) (cons _L245442_ '()))))
                   (declare (not safe))
                   (cons __tmp252594 __tmp252593))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp252592))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp252591
                                             _stx243356_))))
                                       (_specializer-impl245926_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl245924_
                                           _struct-check-all245891_
                                           _empty243455_)))
                                       (_unchecked-specializer-impl245928_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?243458_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl245924_
                                               _empty243455_
                                               _struct-check-all245891_))
                                            '#f))
                                       (_specializer-impl245930_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl243362_
                                           _$t245821_
                                           _methods-bind245844_
                                           _slots-bind245867_
                                           _class-check-bind245889_
                                           _struct-check-bind245913_
                                           _specializer-impl245926_
                                           _lifted-specializer-id245819_
                                           _unchecked-specializer-impl245928_))))
                                  (let ((__tmp252609
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L243431_)))
                                        (__tmp252608
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id245812_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp252609
                                     '" => "
                                     __tmp252608))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def243363_
                                     _L243431_
                                     _specializer-id245812_
                                     _specializer-impl245930_
                                     _lifted-specializer-id245819_
                                     _unchecked-specializer-impl245928_))))))
                        _tl245755245780_
                        _hd245756245778_)))
                   (let ()
                     (declare (not safe))
                     (_g245748245762_ _g245749245765_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g245748245762_
                                                      _g245749245765_))))))
                                       (declare (not safe))
                                       (_g245747245933_ _L245444_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L245444_))
                                         (let* ((_g245936245966_
                                                 (lambda (_g245937245963_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g245937245963_))))
                                                (_g245935246591_
                                                 (lambda (_g245937245969_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g245937245969_))
                                                       (let ((_e245943245971_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g245937245969_))))
                 (let ((_hd245942245974_
                        (let () (declare (not safe)) (##car _e245943245971_)))
                       (_tl245941245976_
                        (let () (declare (not safe)) (##cdr _e245943245971_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl245941245976_))
                       (let ((_e245946245979_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl245941245976_))))
                         (let ((_hd245945245982_
                                (let ()
                                  (declare (not safe))
                                  (##car _e245946245979_)))
                               (_tl245944245984_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e245946245979_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd245945245982_))
                               (let ((_e245949245987_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd245945245982_))))
                                 (let ((_hd245948245990_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e245949245987_)))
                                       (_tl245947245992_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e245949245987_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd245948245990_))
                                       (let ((_e245952245995_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd245948245990_))))
                                         (let ((_hd245951245998_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e245952245995_)))
                                               (_tl245950246000_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e245952245995_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd245951245998_))
                                               (let ((_e245955246003_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd245951245998_))))
                                                 (let ((_hd245954246006_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e245955246003_)))
                                                       (_tl245953246008_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e245955246003_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl245953246008_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl245950246000_))
                                                           (let ((_e245958246011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl245950246000_))))
                     (let ((_hd245957246014_
                            (let ()
                              (declare (not safe))
                              (##car _e245958246011_)))
                           (_tl245956246016_
                            (let ()
                              (declare (not safe))
                              (##cdr _e245958246011_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl245956246016_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl245947245992_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl245944245984_))
                                   (let ((_e245961246019_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl245944245984_))))
                                     (let ((_hd245960246022_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e245961246019_)))
                                           (_tl245959246024_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e245961246019_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl245959246024_))
                                           ((lambda (_L246027_
                                                     _L246028_
                                                     _L246029_)
                                              (let* ((_g246052246066_
                                                      (lambda (_g246053246063_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g246053246063_))))
                                                     (_g246051246107_
                                                      (lambda (_g246053246069_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g246053246069_))
                                                            (let ((_e246058246071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g246053246069_))))
                      (let ((_hd246057246074_
                             (let ()
                               (declare (not safe))
                               (##car _e246058246071_)))
                            (_tl246056246076_
                             (let ()
                               (declare (not safe))
                               (##cdr _e246058246071_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl246056246076_))
                            (let ((_e246061246079_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl246056246076_))))
                              (let ((_hd246060246082_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e246061246079_)))
                                    (_tl246059246084_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e246061246079_))))
                                ((lambda (_L246087_ _L246088_)
                                   (let ((_self246101_
                                          (list-ref
                                           _L246088_
                                           _self-index245745_)))
                                     (for-each
                                      (lambda (_g246102246104_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g246102246104_
                                           _self246101_
                                           _method-calls243450_
                                           _slot-refs243451_
                                           _class-type-check243452_
                                           _struct-type-check243453_
                                           _struct-type-assert243454_)))
                                      _L246087_)))
                                 _tl246059246084_
                                 _hd246060246082_)))
                            (let ()
                              (declare (not safe))
                              (_g246052246066_ _g246053246069_)))))
                    (let ()
                      (declare (not safe))
                      (_g246052246066_ _g246053246069_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g246051246107_ _L246028_))
                                              (let* ((_g246110246129_
                                                      (lambda (_g246111246126_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g246111246126_))))
                                                     (_g246109246234_
                                                      (lambda (_g246111246132_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g246111246132_))
                                                            (let ((_e246115246134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g246111246132_))))
                      (let ((_hd246114246137_
                             (let ()
                               (declare (not safe))
                               (##car _e246115246134_)))
                            (_tl246113246139_
                             (let ()
                               (declare (not safe))
                               (##cdr _e246115246134_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl246113246139_))
                            (let ((_g252526_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl246113246139_
                                      '0))))
                              (begin
                                (let ((_g252527_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g252526_)
                                             (##vector-length _g252526_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g252527_ 2)))
                                      (error "Context expects 2 values"
                                             _g252527_)))
                                (let ((_target246116246142_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252526_ 0)))
                                      (_tl246118246144_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252526_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl246118246144_))
                                      (letrec ((_loop246119246147_
                                                (lambda (_hd246117246150_
                                                         _clause246123246152_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd246117246150_))
                                                      (let ((_e246120246155_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd246117246150_))))
                (let ((_lp-hd246121246158_
                       (let () (declare (not safe)) (##car _e246120246155_)))
                      (_lp-tl246122246160_
                       (let () (declare (not safe)) (##cdr _e246120246155_))))
                  (let ((__tmp252529
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd246121246158_ _clause246123246152_))))
                    (declare (not safe))
                    (_loop246119246147_ _lp-tl246122246160_ __tmp252529))))
              (let ((_clause246124246163_ (reverse _clause246123246152_)))
                ((lambda (_L246166_)
                   (for-each
                    (lambda (_clause246179_)
                      (let* ((_g246181246192_
                              (lambda (_g246182246189_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g246182246189_))))
                             (_g246180246224_
                              (lambda (_g246182246195_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g246182246195_))
                                    (let ((_e246187246197_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g246182246195_))))
                                      (let ((_hd246186246200_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e246187246197_)))
                                            (_tl246185246202_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e246187246197_))))
                                        ((lambda (_L246205_ _L246206_)
                                           (let ((_self246218_
                                                  (list-ref
                                                   _L246206_
                                                   _self-index245745_)))
                                             (for-each
                                              (lambda (_g246219246221_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g246219246221_
                                                   _self246218_
                                                   _method-calls243450_
                                                   _slot-refs243451_
                                                   _class-type-check243452_
                                                   _struct-type-check243453_
                                                   _struct-type-assert243454_)))
                                              _L246205_)))
                                         _tl246185246202_
                                         _hd246186246200_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g246181246192_ _g246182246195_))))))
                        (declare (not safe))
                        (_g246180246224_ _clause246179_)))
                    (let ((__tmp252528
                           (lambda (_g246226246229_ _g246227246231_)
                             (let ()
                               (declare (not safe))
                               (cons _g246226246229_ _g246227246231_)))))
                      (declare (not safe))
                      (foldr1 __tmp252528 '() _L246166_))))
                 _clause246124246163_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop246119246147_
                                           _target246116246142_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g246110246129_ _g246111246132_))))))
                            (let ()
                              (declare (not safe))
                              (_g246110246129_ _g246111246132_)))))
                    (let ()
                      (declare (not safe))
                      (_g246110246129_ _g246111246132_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g246109246234_ _L246027_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?243457_))
                                                  _stx243356_
                                                  (let* ((_specializer-id246243_
                                                          (let* ((_id246237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252530
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L243431_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp252530 '"::specialize")))
                         (_specializer-id246240_
                          (let ((__tmp252531
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx243356_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id246237_ __tmp252531))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id246240_))
                    _specializer-id246240_))
                 (_lifted-specializer-id246250_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?243459_))
                      (let* ((_id246245_
                              (let ((__tmp252532
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L243431_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp252532
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id246247_
                              (let ((__tmp252533
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx243356_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id246245_
                                 __tmp252533))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id246247_))
                        _lifted-specializer-id246247_)
                      '#f))
                 (_$t246252_
                  (let ((__tmp252534 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp252534)))
                 (_methods246254_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls243450_)))
                 (_$methods246258_
                  (map (lambda (_id246256_)
                         (let ((__tmp252535 (gensym _id246256_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252535)))
                       _methods246254_))
                 (_g252536_
                  (for-each
                   (lambda (_g246259246262_ _g246260246264_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls243450_
                        _g246259246262_
                        _g246260246264_)))
                   _methods246254_
                   _$methods246258_))
                 (_methods-bind246275_
                  (map (lambda (_g246267246270_ _g246268246272_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind243358_
                            _$t246252_
                            _g246267246270_
                            _g246268246272_)))
                       _methods246254_
                       _$methods246258_))
                 (_slots246277_
                  (let () (declare (not safe)) (hash-keys _slot-refs243451_)))
                 (_$slots246281_
                  (map (lambda (_id246279_)
                         (let ((__tmp252537 (gensym _id246279_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252537)))
                       _slots246277_))
                 (_g252538_
                  (for-each
                   (lambda (_g246282246285_ _g246283246287_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs243451_
                        _g246282246285_
                        _g246283246287_)))
                   _slots246277_
                   _$slots246281_))
                 (_slots-bind246298_
                  (map (lambda (_g246290246293_ _g246291246295_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind243359_
                            _$t246252_
                            _g246290246293_
                            _g246291246295_)))
                       _slots246277_
                       _$slots246281_))
                 (_class-check246300_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check243452_)))
                 (_$class-check246303_
                  (map (lambda (_g252539_)
                         (let ((__tmp252540 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252540)))
                       _class-check246300_))
                 (_g252541_
                  (for-each
                   (lambda (_g246304246307_ _g246305246309_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check243452_
                        _g246304246307_
                        _g246305246309_)))
                   _class-check246300_
                   _$class-check246303_))
                 (_class-check-bind246320_
                  (map (lambda (_g246312246315_ _g246313246317_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind243360_
                            _$t246252_
                            _g246312246315_
                            _g246313246317_)))
                       _class-check246300_
                       _$class-check246303_))
                 (_struct-check-all246322_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check243453_
                     _struct-type-assert243454_)))
                 (_struct-check246324_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all246322_)))
                 (_$struct-check246327_
                  (map (lambda (_g252542_)
                         (let ((__tmp252543 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252543)))
                       _struct-check246324_))
                 (_g252544_
                  (for-each
                   (lambda (_g246328246331_ _g246329246333_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all246322_
                        _g246328246331_
                        _g246329246333_)))
                   _struct-check246324_
                   _$struct-check246327_))
                 (_struct-check-bind246344_
                  (map (lambda (_g246336246339_ _g246337246341_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind243361_
                            _$t246252_
                            _g246336246339_
                            _g246337246341_)))
                       _struct-check246324_
                       _$struct-check246327_))
                 (_make-specializer-lambda-expr246430_
                  (lambda (_struct-type-check1246346_
                           _struct-type-check2246347_)
                    (let* ((_g246349246363_
                            (lambda (_g246350246360_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g246350246360_))))
                           (_g246348246427_
                            (lambda (_g246350246366_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g246350246366_))
                                  (let ((_e246355246368_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g246350246366_))))
                                    (let ((_hd246354246371_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e246355246368_)))
                                          (_tl246353246373_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e246355246368_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl246353246373_))
                                          (let ((_e246358246376_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl246353246373_))))
                                            (let ((_hd246357246379_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e246358246376_)))
                                                  (_tl246356246381_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e246358246376_))))
                                              ((lambda (_L246384_ _L246385_)
                                                 (let* ((_self246418_
                                                         (list-ref
                                                          _L246385_
                                                          _self-index245745_))
                                                        (_body246424_
                                                         (map (lambda (_g246419246421_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g246419246421_
                           _self246418_
                           _$t246252_
                           _method-calls243450_
                           _slot-refs243451_
                           _class-type-check243452_
                           _struct-type-check1246346_
                           _struct-type-check2246347_)))
                      _L246384_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp252545
                                                          (let ((__tmp252546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L246385_ _body246424_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp252546))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp252545
                                                      _L246028_))))
                                               _tl246356246381_
                                               _hd246357246379_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g246349246363_
                                             _g246350246366_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g246349246363_ _g246350246366_))))))
                      (declare (not safe))
                      (_g246348246427_ _L246028_))))
                 (_make-specializer-case-lambda-expr246569_
                  (lambda (_struct-type-check1246432_
                           _struct-type-check2246433_)
                    (let* ((_g246435246454_
                            (lambda (_g246436246451_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g246436246451_))))
                           (_g246434246566_
                            (lambda (_g246436246457_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g246436246457_))
                                  (let ((_e246440246459_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g246436246457_))))
                                    (let ((_hd246439246462_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e246440246459_)))
                                          (_tl246438246464_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e246440246459_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl246438246464_))
                                          (let ((_g252547_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl246438246464_
                                                    '0))))
                                            (begin
                                              (let ((_g252548_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g252547_)
                                                           (##vector-length
                                                            _g252547_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g252548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g252548_)))
                                              (let ((_target246441246467_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g252547_
                                                        0)))
                                                    (_tl246443246469_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g252547_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl246443246469_))
                                                    (letrec ((_loop246444246472_
                                                              (lambda (_hd246442246475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause246448246477_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd246442246475_))
                            (let ((_e246445246480_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd246442246475_))))
                              (let ((_lp-hd246446246483_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e246445246480_)))
                                    (_lp-tl246447246485_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e246445246480_))))
                                (let ((__tmp252551
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd246446246483_
                                               _clause246448246477_))))
                                  (declare (not safe))
                                  (_loop246444246472_
                                   _lp-tl246447246485_
                                   __tmp252551))))
                            (let ((_clause246449246488_
                                   (reverse _clause246448246477_)))
                              ((lambda (_L246491_)
                                 (let* ((_clauses246564_
                                         (map (lambda (_clause246506_)
                                                (let* ((_g246508246519_
                                                        (lambda (_g246509246516_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g246509246516_))))
                                                       (_g246507246554_
                                                        (lambda (_g246509246522_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g246509246522_))
                      (let ((_e246514246524_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g246509246522_))))
                        (let ((_hd246513246527_
                               (let ()
                                 (declare (not safe))
                                 (##car _e246514246524_)))
                              (_tl246512246529_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e246514246524_))))
                          ((lambda (_L246532_ _L246533_)
                             (let* ((_self246545_
                                     (list-ref _L246533_ _self-index245745_))
                                    (_body246551_
                                     (map (lambda (_g246546246548_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g246546246548_
                                               _self246545_
                                               _$t246252_
                                               _method-calls243450_
                                               _slot-refs243451_
                                               _class-type-check243452_
                                               _struct-type-check1246432_
                                               _struct-type-check2246433_)))
                                          _L246532_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L246533_ _body246551_))))
                           _tl246512246529_
                           _hd246513246527_)))
                      (let ()
                        (declare (not safe))
                        (_g246508246519_ _g246509246522_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g246507246554_
                                                   _clause246506_)))
                                              (let ((__tmp252549
                                                     (lambda (_g246556246559_
                                                              _g246557246561_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g246556246559_
                                                               _g246557246561_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp252549
                                                        '()
                                                        _L246491_))))
                                        (__tmp252550
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses246564_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp252550
                                    _L246027_)))
                               _clause246449246488_))))))
              (let ()
                (declare (not safe))
                (_loop246444246472_ _target246441246467_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g246435246454_
                                                       _g246436246457_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g246435246454_
                                             _g246436246457_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g246435246454_ _g246436246457_))))))
                      (declare (not safe))
                      (_g246434246566_ _L246027_))))
                 (_make-specializer-impl246574_
                  (lambda (_specializer-lambda-expr246571_
                           _specializer-case-lambda-expr246572_)
                    (let ((__tmp252552
                           (let ((__tmp252553
                                  (let ((__tmp252555
                                         (let ((__tmp252556
                                                (let ((__tmp252573
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L245446_ '())))
                                                      (__tmp252557
                                                       (let ((__tmp252558
                                                              (let ((__tmp252559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp252561
                                    (let ((__tmp252562
                                           (let ((__tmp252572
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L245445_ '())))
                                                 (__tmp252563
                                                  (let ((__tmp252564
                                                         (let ((__tmp252565
                                                                (let ((__tmp252566
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252568
                                      (let ((__tmp252569
                                             (let ((__tmp252571
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L246029_ '())))
                                                   (__tmp252570
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr246571_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp252571
                                                     __tmp252570))))
                                        (declare (not safe))
                                        (cons __tmp252569 '())))
                                     (__tmp252567
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr246572_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp252568 __tmp252567))))
                          (declare (not safe))
                          (cons '%#let-values __tmp252566))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp252565 _stx243356_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252564 '()))))
                                             (declare (not safe))
                                             (cons __tmp252572 __tmp252563))))
                                      (declare (not safe))
                                      (cons __tmp252562 '())))
                                   (__tmp252560
                                    (let ()
                                      (declare (not safe))
                                      (cons _L245443_ '()))))
                               (declare (not safe))
                               (cons __tmp252561 __tmp252560))))
                        (declare (not safe))
                        (cons '%#let-values __tmp252559))))
                 (declare (not safe))
                 (cons __tmp252558 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252573
                                                        __tmp252557))))
                                           (declare (not safe))
                                           (cons __tmp252556 '())))
                                        (__tmp252554
                                         (let ()
                                           (declare (not safe))
                                           (cons _L245442_ '()))))
                                    (declare (not safe))
                                    (cons __tmp252555 __tmp252554))))
                             (declare (not safe))
                             (cons '%#let-values __tmp252553))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252552 _stx243356_))))
                 (_specializer-lambda-expr246576_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr246430_
                     _struct-check-all246322_
                     _empty243455_)))
                 (_specializer-case-lambda-expr246578_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr246569_
                     _struct-check-all246322_
                     _empty243455_)))
                 (_specializer-impl246580_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl246574_
                     _specializer-lambda-expr246576_
                     _specializer-case-lambda-expr246578_)))
                 (_unchecked-specializer-lambda-expr246582_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243458_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr246430_
                         _empty243455_
                         _struct-check-all246322_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr246584_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243458_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr246569_
                         _empty243455_
                         _struct-check-all246322_))
                      '#f))
                 (_unchecked-specializer-impl246586_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243458_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl246574_
                         _unchecked-specializer-lambda-expr246582_
                         _unchecked-specializer-case-lambda-expr246584_))
                      '#f))
                 (_specializer-impl246588_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl243362_
                     _$t246252_
                     _methods-bind246275_
                     _slots-bind246298_
                     _class-check-bind246320_
                     _struct-check-bind246344_
                     _specializer-impl246580_
                     _lifted-specializer-id246250_
                     _unchecked-specializer-impl246586_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp252575
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L243431_)))
                                                          (__tmp252574
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id246243_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp252575
                                                       '" => "
                                                       __tmp252574))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def243363_
                                                       _L243431_
                                                       _specializer-id246243_
                                                       _specializer-impl246588_
                                                       _lifted-specializer-id246250_
                                                       _unchecked-specializer-impl246586_)))))
                                            _hd245960246022_
                                            _hd245957246014_
                                            _hd245954246006_)
                                           (let ()
                                             (declare (not safe))
                                             (_g245936245966_
                                              _g245937245969_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g245936245966_ _g245937245969_)))
                               (let ()
                                 (declare (not safe))
                                 (_g245936245966_ _g245937245969_)))
                           (let ()
                             (declare (not safe))
                             (_g245936245966_ _g245937245969_)))))
                   (let ()
                     (declare (not safe))
                     (_g245936245966_ _g245937245969_)))
               (let ()
                 (declare (not safe))
                 (_g245936245966_ _g245937245969_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245936245966_
                                                  _g245937245969_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g245936245966_ _g245937245969_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g245936245966_ _g245937245969_)))))
                       (let ()
                         (declare (not safe))
                         (_g245936245966_ _g245937245969_)))))
               (let ()
                 (declare (not safe))
                 (_g245936245966_ _g245937245969_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g245935246591_ _L245444_))
                                         _stx243356_))))
                             _hd245541245664_
                             _kw-ref245539245685_
                             _hd245529245651_
                             _hd245520245627_
                             _hd245511245603_)
                            (let ()
                              (declare (not safe))
                              (_g245485245547_ _g245486245550_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop245534245669_
                                                   _target245531245656_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g245485245547_
                                                 _g245486245550_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g245485245547_ _g245486245550_))))))
                            (let ()
                              (declare (not safe))
                              (_g245485245547_ _g245486245550_)))
                        (let ()
                          (declare (not safe))
                          (_g245485245547_ _g245486245550_)))
                    (let ()
                      (declare (not safe))
                      (_g245485245547_ _g245486245550_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245485245547_
                                                       _g245486245550_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g245485245547_
                                                   _g245486245550_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g245485245547_
                                               _g245486245550_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g245485245547_ _g245486245550_)))))
                            (let ()
                              (declare (not safe))
                              (_g245485245547_ _g245486245550_)))
                        (let ()
                          (declare (not safe))
                          (_g245485245547_ _g245486245550_)))))
                (let ()
                  (declare (not safe))
                  (_g245485245547_ _g245486245550_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245485245547_
                                                       _g245486245550_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g245485245547_
                                                   _g245486245550_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g245485245547_ _g245486245550_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g245485245547_ _g245486245550_)))
                            (let ()
                              (declare (not safe))
                              (_g245485245547_ _g245486245550_)))))
                    (let ()
                      (declare (not safe))
                      (_g245485245547_ _g245486245550_)))
                (let ()
                  (declare (not safe))
                  (_g245485245547_ _g245486245550_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245485245547_
                                                       _g245486245550_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g245485245547_
                                               _g245486245550_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g245485245547_ _g245486245550_)))
                                (let ()
                                  (declare (not safe))
                                  (_g245485245547_ _g245486245550_)))
                            (let ()
                              (declare (not safe))
                              (_g245485245547_ _g245486245550_)))))
                    (let ()
                      (declare (not safe))
                      (_g245485245547_ _g245486245550_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245485245547_
                                                       _g245486245550_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g245485245547_
                                               _g245486245550_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g245485245547_ _g245486245550_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g245485245547_ _g245486245550_)))))
                            (let ()
                              (declare (not safe))
                              (_g245485245547_ _g245486245550_))))))
                (declare (not safe))
                (_g245484246594_ _L245443_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd245319245437_
                                                    _hd245316245429_
                                                    _hd245313245421_
                                                    _hd245310245413_
                                                    _hd245292245365_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g245272245325_
                                                      _g245273245328_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g245272245325_
                                              _g245273245328_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g245272245325_ _g245273245328_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g245272245325_ _g245273245328_)))
                               (let ()
                                 (declare (not safe))
                                 (_g245272245325_ _g245273245328_)))))
                       (let ()
                         (declare (not safe))
                         (_g245272245325_ _g245273245328_)))
                   (let ()
                     (declare (not safe))
                     (_g245272245325_ _g245273245328_)))
               (let ()
                 (declare (not safe))
                 (_g245272245325_ _g245273245328_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245272245325_
                                                  _g245273245328_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g245272245325_
                                              _g245273245328_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g245272245325_ _g245273245328_)))))
                           (let ()
                             (declare (not safe))
                             (_g245272245325_ _g245273245328_)))))
                   (let ()
                     (declare (not safe))
                     (_g245272245325_ _g245273245328_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g245272245325_
                                                      _g245273245328_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245272245325_
                                                  _g245273245328_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g245272245325_
                                              _g245273245328_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g245272245325_ _g245273245328_)))))
                           (let ()
                             (declare (not safe))
                             (_g245272245325_ _g245273245328_)))
                       (let ()
                         (declare (not safe))
                         (_g245272245325_ _g245273245328_)))))
               (let ()
                 (declare (not safe))
                 (_g245272245325_ _g245273245328_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245272245325_
                                                  _g245273245328_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g245272245325_ _g245273245328_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g245272245325_ _g245273245328_)))
                           (let ()
                             (declare (not safe))
                             (_g245272245325_ _g245273245328_)))
                       (let ()
                         (declare (not safe))
                         (_g245272245325_ _g245273245328_)))))
               (let ()
                 (declare (not safe))
                 (_g245272245325_ _g245273245328_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g245271246597_ _L243430_))
                                         _stx243356_))))))))
                  (___kont251304251305_ (lambda () _stx243356_)))
              (let ((___match251333251334_
                     (lambda (_e243372243398_
                              _hd243371243401_
                              _tl243370243403_
                              _e243375243406_
                              _hd243374243409_
                              _tl243373243411_
                              _e243378243414_
                              _hd243377243417_
                              _tl243376243419_
                              _e243381243422_
                              _hd243380243425_
                              _tl243379243427_)
                       (let ((_L243430_ _hd243380243425_)
                             (_L243431_ _hd243377243417_))
                         (if (let ((__tmp252692
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L243431_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp252692))
                             (___kont251302251303_ _L243430_ _L243431_)
                             (___kont251304251305_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx251300251301_))
                    (let ((_e243372243398_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx251300251301_))))
                      (let ((_tl243370243403_
                             (let ()
                               (declare (not safe))
                               (##cdr _e243372243398_)))
                            (_hd243371243401_
                             (let ()
                               (declare (not safe))
                               (##car _e243372243398_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl243370243403_))
                            (let ((_e243375243406_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl243370243403_))))
                              (let ((_tl243373243411_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e243375243406_)))
                                    (_hd243374243409_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e243375243406_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd243374243409_))
                                    (let ((_e243378243414_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd243374243409_))))
                                      (let ((_tl243376243419_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e243378243414_)))
                                            (_hd243377243417_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e243378243414_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl243376243419_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl243373243411_))
                                                (let ((_e243381243422_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl243373243411_))))
                                                  (let ((_tl243379243427_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e243381243422_)))
                                                        (_hd243380243425_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e243381243422_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl243379243427_))
                                                        (___match251333251334_
                                                         _e243372243398_
                                                         _hd243371243401_
                                                         _tl243370243403_
                                                         _e243375243406_
                                                         _hd243374243409_
                                                         _tl243373243411_
                                                         _e243378243414_
                                                         _hd243377243417_
                                                         _tl243376243419_
                                                         _e243381243422_
                                                         _hd243380243425_
                                                         _tl243379243427_)
                                                        (___kont251304251305_))))
                                                (___kont251304251305_))
                                            (___kont251304251305_))))
                                    (___kont251304251305_))))
                            (___kont251304251305_))))
                    (___kont251304251305_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx242332_
               _self242333_
               _methods242334_
               _slots242335_
               _class-check242336_
               _struct-check242337_
               _struct-assert242338_)
        (let* ((___stx251336251337_ _stx242332_)
               (_g242346242568_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx251336251337_)))))
          (let ((___kont251338251339_
                 (lambda (_L243305_ _L243306_ _L243307_ _L243308_)
                   (let ((__tmp252693
                          (let () (declare (not safe)) (gx#stx-e _L243306_))))
                     (declare (not safe))
                     (table-set! _methods242334_ __tmp252693 '#t))
                   (for-each
                    (lambda (_g243341243343_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g243341243343_
                         _self242333_
                         _methods242334_
                         _slots242335_
                         _class-check242336_
                         _struct-check242337_
                         _struct-assert242338_)))
                    (let ((__tmp252694
                           (lambda (_g243345243348_ _g243346243350_)
                             (let ()
                               (declare (not safe))
                               (cons _g243345243348_ _g243346243350_)))))
                      (declare (not safe))
                      (foldr1 __tmp252694 '() _L243305_)))))
                (___kont251342251343_
                 (lambda (_L243140_ _L243141_ _L243142_ _L243143_ _L243144_)
                   (let ((__tmp252695
                          (let () (declare (not safe)) (gx#stx-e _L243141_))))
                     (declare (not safe))
                     (table-set! _methods242334_ __tmp252695 '#t))
                   (for-each
                    (lambda (_g243184243186_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g243184243186_
                         _self242333_
                         _methods242334_
                         _slots242335_
                         _class-check242336_
                         _struct-check242337_
                         _struct-assert242338_)))
                    (let ((__tmp252696
                           (lambda (_g243188243191_ _g243189243193_)
                             (let ()
                               (declare (not safe))
                               (cons _g243188243191_ _g243189243193_)))))
                      (declare (not safe))
                      (foldr1 __tmp252696 '() _L243140_)))))
                (___kont251346251347_
                 (lambda (_L242973_ _L242974_ _L242975_)
                   (let ((__tmp252697
                          (let () (declare (not safe)) (gx#stx-e _L242973_))))
                     (declare (not safe))
                     (table-set! _slots242335_ __tmp252697 '#t))))
                (___kont251348251349_
                 (lambda (_L242850_ _L242851_ _L242852_ _L242853_)
                   (let ((__tmp252698
                          (let () (declare (not safe)) (gx#stx-e _L242851_))))
                     (declare (not safe))
                     (table-set! _slots242335_ __tmp252698 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L242850_
                      _self242333_
                      _methods242334_
                      _slots242335_
                      _class-check242336_
                      _struct-check242337_
                      _struct-assert242338_))))
                (___kont251350251351_
                 (lambda (_L242734_ _L242735_)
                   (let ((__tmp252699
                          (##structure-ref
                           (let ((__tmp252700
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L242735_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp252700))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots242335_ __tmp252699 '#t))))
                (___kont251352251353_
                 (lambda (_L242644_ _L242645_ _L242646_)
                   (let ((__tmp252701
                          (##structure-ref
                           (let ((__tmp252702
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L242646_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp252702))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots242335_ __tmp252701 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L242644_
                      _self242333_
                      _methods242334_
                      _slots242335_
                      _class-check242336_
                      _struct-check242337_
                      _struct-assert242338_))))
                (___kont251354251355_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx242332_
                      _self242333_
                      _methods242334_
                      _slots242335_
                      _class-check242336_
                      _struct-check242337_
                      _struct-assert242338_)))))
            (let* ((___match251835251836_
                    (lambda (_e242542242580_
                             _hd242541242583_
                             _tl242540242585_
                             _e242545242588_
                             _hd242544242591_
                             _tl242543242593_
                             _e242548242596_
                             _hd242547242599_
                             _tl242546242601_
                             _e242551242604_
                             _hd242550242607_
                             _tl242549242609_
                             _e242554242612_
                             _hd242553242615_
                             _tl242552242617_
                             _e242557242620_
                             _hd242556242623_
                             _tl242555242625_
                             _e242560242628_
                             _hd242559242631_
                             _tl242558242633_
                             _e242563242636_
                             _hd242562242639_
                             _tl242561242641_)
                      (let ((_L242644_ _hd242562242639_)
                            (_L242645_ _hd242559242631_)
                            (_L242646_ _hd242550242607_))
                        (if (and (let ((__tmp252703
                                        (let ((__tmp252704
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L242646_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp252704))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp252703
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L242645_
                                    _self242333_)))
                            (___kont251352251353_
                             _L242644_
                             _L242645_
                             _L242646_)
                            (___kont251354251355_)))))
                   (___match251833251834_
                    (lambda (_e242542242580_
                             _hd242541242583_
                             _tl242540242585_
                             _e242545242588_
                             _hd242544242591_
                             _tl242543242593_
                             _e242548242596_
                             _hd242547242599_
                             _tl242546242601_
                             _e242551242604_
                             _hd242550242607_
                             _tl242549242609_
                             _e242554242612_
                             _hd242553242615_
                             _tl242552242617_
                             _e242557242620_
                             _hd242556242623_
                             _tl242555242625_
                             _e242560242628_
                             _hd242559242631_
                             _tl242558242633_
                             _e242563242636_
                             _hd242562242639_
                             _tl242561242641_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242561242641_))
                          (___match251835251836_
                           _e242542242580_
                           _hd242541242583_
                           _tl242540242585_
                           _e242545242588_
                           _hd242544242591_
                           _tl242543242593_
                           _e242548242596_
                           _hd242547242599_
                           _tl242546242601_
                           _e242551242604_
                           _hd242550242607_
                           _tl242549242609_
                           _e242554242612_
                           _hd242553242615_
                           _tl242552242617_
                           _e242557242620_
                           _hd242556242623_
                           _tl242555242625_
                           _e242560242628_
                           _hd242559242631_
                           _tl242558242633_
                           _e242563242636_
                           _hd242562242639_
                           _tl242561242641_)
                          (___kont251354251355_))))
                   (___match251827251828_
                    (lambda (_e242542242580_
                             _hd242541242583_
                             _tl242540242585_
                             _e242545242588_
                             _hd242544242591_
                             _tl242543242593_
                             _e242548242596_
                             _hd242547242599_
                             _tl242546242601_
                             _e242551242604_
                             _hd242550242607_
                             _tl242549242609_
                             _e242554242612_
                             _hd242553242615_
                             _tl242552242617_
                             _e242557242620_
                             _hd242556242623_
                             _tl242555242625_
                             _e242560242628_
                             _hd242559242631_
                             _tl242558242633_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242552242617_))
                          (let ((_e242563242636_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242552242617_))))
                            (let ((_tl242561242641_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242563242636_)))
                                  (_hd242562242639_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242563242636_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242561242641_))
                                  (___match251835251836_
                                   _e242542242580_
                                   _hd242541242583_
                                   _tl242540242585_
                                   _e242545242588_
                                   _hd242544242591_
                                   _tl242543242593_
                                   _e242548242596_
                                   _hd242547242599_
                                   _tl242546242601_
                                   _e242551242604_
                                   _hd242550242607_
                                   _tl242549242609_
                                   _e242554242612_
                                   _hd242553242615_
                                   _tl242552242617_
                                   _e242557242620_
                                   _hd242556242623_
                                   _tl242555242625_
                                   _e242560242628_
                                   _hd242559242631_
                                   _tl242558242633_
                                   _e242563242636_
                                   _hd242562242639_
                                   _tl242561242641_)
                                  (___kont251354251355_))))
                          (___kont251354251355_))))
                   (___match251773251774_
                    (lambda (_e242518242678_
                             _hd242517242681_
                             _tl242516242683_
                             _e242521242686_
                             _hd242520242689_
                             _tl242519242691_
                             _e242524242694_
                             _hd242523242697_
                             _tl242522242699_
                             _e242527242702_
                             _hd242526242705_
                             _tl242525242707_
                             _e242530242710_
                             _hd242529242713_
                             _tl242528242715_
                             _e242533242718_
                             _hd242532242721_
                             _tl242531242723_
                             _e242536242726_
                             _hd242535242729_
                             _tl242534242731_)
                      (let ((_L242734_ _hd242535242729_)
                            (_L242735_ _hd242526242705_))
                        (if (and (let ((__tmp252705
                                        (let ((__tmp252706
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L242735_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp252706))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp252705
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L242734_
                                    _self242333_)))
                            (___kont251350251351_ _L242734_ _L242735_)
                            (___kont251354251355_)))))
                   (___match251771251772_
                    (lambda (_e242518242678_
                             _hd242517242681_
                             _tl242516242683_
                             _e242521242686_
                             _hd242520242689_
                             _tl242519242691_
                             _e242524242694_
                             _hd242523242697_
                             _tl242522242699_
                             _e242527242702_
                             _hd242526242705_
                             _tl242525242707_
                             _e242530242710_
                             _hd242529242713_
                             _tl242528242715_
                             _e242533242718_
                             _hd242532242721_
                             _tl242531242723_
                             _e242536242726_
                             _hd242535242729_
                             _tl242534242731_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242528242715_))
                          (___match251773251774_
                           _e242518242678_
                           _hd242517242681_
                           _tl242516242683_
                           _e242521242686_
                           _hd242520242689_
                           _tl242519242691_
                           _e242524242694_
                           _hd242523242697_
                           _tl242522242699_
                           _e242527242702_
                           _hd242526242705_
                           _tl242525242707_
                           _e242530242710_
                           _hd242529242713_
                           _tl242528242715_
                           _e242533242718_
                           _hd242532242721_
                           _tl242531242723_
                           _e242536242726_
                           _hd242535242729_
                           _tl242534242731_)
                          (___match251827251828_
                           _e242518242678_
                           _hd242517242681_
                           _tl242516242683_
                           _e242521242686_
                           _hd242520242689_
                           _tl242519242691_
                           _e242524242694_
                           _hd242523242697_
                           _tl242522242699_
                           _e242527242702_
                           _hd242526242705_
                           _tl242525242707_
                           _e242530242710_
                           _hd242529242713_
                           _tl242528242715_
                           _e242533242718_
                           _hd242532242721_
                           _tl242531242723_
                           _e242536242726_
                           _hd242535242729_
                           _tl242534242731_))))
                   (___match251717251718_
                    (lambda (_e242483242762_
                             _hd242482242765_
                             _tl242481242767_
                             _e242486242770_
                             _hd242485242773_
                             _tl242484242775_
                             _e242489242778_
                             _hd242488242781_
                             _tl242487242783_
                             _e242492242786_
                             _hd242491242789_
                             _tl242490242791_
                             _e242495242794_
                             _hd242494242797_
                             _tl242493242799_
                             _e242498242802_
                             _hd242497242805_
                             _tl242496242807_
                             _e242501242810_
                             _hd242500242813_
                             _tl242499242815_
                             _e242504242818_
                             _hd242503242821_
                             _tl242502242823_
                             _e242507242826_
                             _hd242506242829_
                             _tl242505242831_
                             _e242510242834_
                             _hd242509242837_
                             _tl242508242839_
                             _e242513242842_
                             _hd242512242845_
                             _tl242511242847_)
                      (let ((_L242850_ _hd242512242845_)
                            (_L242851_ _hd242509242837_)
                            (_L242852_ _hd242500242813_)
                            (_L242853_ _hd242491242789_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L242853_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L242853_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L242852_
                                    _self242333_)))
                            (___kont251348251349_
                             _L242850_
                             _L242851_
                             _L242852_
                             _L242853_)
                            (___kont251354251355_)))))
                   (___match251709251710_
                    (lambda (_e242483242762_
                             _hd242482242765_
                             _tl242481242767_
                             _e242486242770_
                             _hd242485242773_
                             _tl242484242775_
                             _e242489242778_
                             _hd242488242781_
                             _tl242487242783_
                             _e242492242786_
                             _hd242491242789_
                             _tl242490242791_
                             _e242495242794_
                             _hd242494242797_
                             _tl242493242799_
                             _e242498242802_
                             _hd242497242805_
                             _tl242496242807_
                             _e242501242810_
                             _hd242500242813_
                             _tl242499242815_
                             _e242504242818_
                             _hd242503242821_
                             _tl242502242823_
                             _e242507242826_
                             _hd242506242829_
                             _tl242505242831_
                             _e242510242834_
                             _hd242509242837_
                             _tl242508242839_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242502242823_))
                          (let ((_e242513242842_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242502242823_))))
                            (let ((_tl242511242847_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242513242842_)))
                                  (_hd242512242845_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242513242842_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242511242847_))
                                  (___match251717251718_
                                   _e242483242762_
                                   _hd242482242765_
                                   _tl242481242767_
                                   _e242486242770_
                                   _hd242485242773_
                                   _tl242484242775_
                                   _e242489242778_
                                   _hd242488242781_
                                   _tl242487242783_
                                   _e242492242786_
                                   _hd242491242789_
                                   _tl242490242791_
                                   _e242495242794_
                                   _hd242494242797_
                                   _tl242493242799_
                                   _e242498242802_
                                   _hd242497242805_
                                   _tl242496242807_
                                   _e242501242810_
                                   _hd242500242813_
                                   _tl242499242815_
                                   _e242504242818_
                                   _hd242503242821_
                                   _tl242502242823_
                                   _e242507242826_
                                   _hd242506242829_
                                   _tl242505242831_
                                   _e242510242834_
                                   _hd242509242837_
                                   _tl242508242839_
                                   _e242513242842_
                                   _hd242512242845_
                                   _tl242511242847_)
                                  (___kont251354251355_))))
                          (___match251833251834_
                           _e242483242762_
                           _hd242482242765_
                           _tl242481242767_
                           _e242486242770_
                           _hd242485242773_
                           _tl242484242775_
                           _e242489242778_
                           _hd242488242781_
                           _tl242487242783_
                           _e242492242786_
                           _hd242491242789_
                           _tl242490242791_
                           _e242495242794_
                           _hd242494242797_
                           _tl242493242799_
                           _e242498242802_
                           _hd242497242805_
                           _tl242496242807_
                           _e242501242810_
                           _hd242500242813_
                           _tl242499242815_
                           _e242504242818_
                           _hd242503242821_
                           _tl242502242823_))))
                   (___match251631251632_
                    (lambda (_e242449242893_
                             _hd242448242896_
                             _tl242447242898_
                             _e242452242901_
                             _hd242451242904_
                             _tl242450242906_
                             _e242455242909_
                             _hd242454242912_
                             _tl242453242914_
                             _e242458242917_
                             _hd242457242920_
                             _tl242456242922_
                             _e242461242925_
                             _hd242460242928_
                             _tl242459242930_
                             _e242464242933_
                             _hd242463242936_
                             _tl242462242938_
                             _e242467242941_
                             _hd242466242944_
                             _tl242465242946_
                             _e242470242949_
                             _hd242469242952_
                             _tl242468242954_
                             _e242473242957_
                             _hd242472242960_
                             _tl242471242962_
                             _e242476242965_
                             _hd242475242968_
                             _tl242474242970_)
                      (let ((_L242973_ _hd242475242968_)
                            (_L242974_ _hd242466242944_)
                            (_L242975_ _hd242457242920_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L242975_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L242975_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L242974_
                                    _self242333_)))
                            (___kont251346251347_
                             _L242973_
                             _L242974_
                             _L242975_)
                            (___match251835251836_
                             _e242449242893_
                             _hd242448242896_
                             _tl242447242898_
                             _e242452242901_
                             _hd242451242904_
                             _tl242450242906_
                             _e242455242909_
                             _hd242454242912_
                             _tl242453242914_
                             _e242458242917_
                             _hd242457242920_
                             _tl242456242922_
                             _e242461242925_
                             _hd242460242928_
                             _tl242459242930_
                             _e242464242933_
                             _hd242463242936_
                             _tl242462242938_
                             _e242467242941_
                             _hd242466242944_
                             _tl242465242946_
                             _e242470242949_
                             _hd242469242952_
                             _tl242468242954_)))))
                   (___match251629251630_
                    (lambda (_e242449242893_
                             _hd242448242896_
                             _tl242447242898_
                             _e242452242901_
                             _hd242451242904_
                             _tl242450242906_
                             _e242455242909_
                             _hd242454242912_
                             _tl242453242914_
                             _e242458242917_
                             _hd242457242920_
                             _tl242456242922_
                             _e242461242925_
                             _hd242460242928_
                             _tl242459242930_
                             _e242464242933_
                             _hd242463242936_
                             _tl242462242938_
                             _e242467242941_
                             _hd242466242944_
                             _tl242465242946_
                             _e242470242949_
                             _hd242469242952_
                             _tl242468242954_
                             _e242473242957_
                             _hd242472242960_
                             _tl242471242962_
                             _e242476242965_
                             _hd242475242968_
                             _tl242474242970_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242468242954_))
                          (___match251631251632_
                           _e242449242893_
                           _hd242448242896_
                           _tl242447242898_
                           _e242452242901_
                           _hd242451242904_
                           _tl242450242906_
                           _e242455242909_
                           _hd242454242912_
                           _tl242453242914_
                           _e242458242917_
                           _hd242457242920_
                           _tl242456242922_
                           _e242461242925_
                           _hd242460242928_
                           _tl242459242930_
                           _e242464242933_
                           _hd242463242936_
                           _tl242462242938_
                           _e242467242941_
                           _hd242466242944_
                           _tl242465242946_
                           _e242470242949_
                           _hd242469242952_
                           _tl242468242954_
                           _e242473242957_
                           _hd242472242960_
                           _tl242471242962_
                           _e242476242965_
                           _hd242475242968_
                           _tl242474242970_)
                          (___match251709251710_
                           _e242449242893_
                           _hd242448242896_
                           _tl242447242898_
                           _e242452242901_
                           _hd242451242904_
                           _tl242450242906_
                           _e242455242909_
                           _hd242454242912_
                           _tl242453242914_
                           _e242458242917_
                           _hd242457242920_
                           _tl242456242922_
                           _e242461242925_
                           _hd242460242928_
                           _tl242459242930_
                           _e242464242933_
                           _hd242463242936_
                           _tl242462242938_
                           _e242467242941_
                           _hd242466242944_
                           _tl242465242946_
                           _e242470242949_
                           _hd242469242952_
                           _tl242468242954_
                           _e242473242957_
                           _hd242472242960_
                           _tl242471242962_
                           _e242476242965_
                           _hd242475242968_
                           _tl242474242970_))))
                   (___match251619251620_
                    (lambda (_e242449242893_
                             _hd242448242896_
                             _tl242447242898_
                             _e242452242901_
                             _hd242451242904_
                             _tl242450242906_
                             _e242455242909_
                             _hd242454242912_
                             _tl242453242914_
                             _e242458242917_
                             _hd242457242920_
                             _tl242456242922_
                             _e242461242925_
                             _hd242460242928_
                             _tl242459242930_
                             _e242464242933_
                             _hd242463242936_
                             _tl242462242938_
                             _e242467242941_
                             _hd242466242944_
                             _tl242465242946_
                             _e242470242949_
                             _hd242469242952_
                             _tl242468242954_
                             _e242473242957_
                             _hd242472242960_
                             _tl242471242962_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd242472242960_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242471242962_))
                              (let ((_e242476242965_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242471242962_))))
                                (let ((_tl242474242970_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242476242965_)))
                                      (_hd242475242968_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242476242965_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242474242970_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242468242954_))
                                          (___match251631251632_
                                           _e242449242893_
                                           _hd242448242896_
                                           _tl242447242898_
                                           _e242452242901_
                                           _hd242451242904_
                                           _tl242450242906_
                                           _e242455242909_
                                           _hd242454242912_
                                           _tl242453242914_
                                           _e242458242917_
                                           _hd242457242920_
                                           _tl242456242922_
                                           _e242461242925_
                                           _hd242460242928_
                                           _tl242459242930_
                                           _e242464242933_
                                           _hd242463242936_
                                           _tl242462242938_
                                           _e242467242941_
                                           _hd242466242944_
                                           _tl242465242946_
                                           _e242470242949_
                                           _hd242469242952_
                                           _tl242468242954_
                                           _e242473242957_
                                           _hd242472242960_
                                           _tl242471242962_
                                           _e242476242965_
                                           _hd242475242968_
                                           _tl242474242970_)
                                          (___match251709251710_
                                           _e242449242893_
                                           _hd242448242896_
                                           _tl242447242898_
                                           _e242452242901_
                                           _hd242451242904_
                                           _tl242450242906_
                                           _e242455242909_
                                           _hd242454242912_
                                           _tl242453242914_
                                           _e242458242917_
                                           _hd242457242920_
                                           _tl242456242922_
                                           _e242461242925_
                                           _hd242460242928_
                                           _tl242459242930_
                                           _e242464242933_
                                           _hd242463242936_
                                           _tl242462242938_
                                           _e242467242941_
                                           _hd242466242944_
                                           _tl242465242946_
                                           _e242470242949_
                                           _hd242469242952_
                                           _tl242468242954_
                                           _e242473242957_
                                           _hd242472242960_
                                           _tl242471242962_
                                           _e242476242965_
                                           _hd242475242968_
                                           _tl242474242970_))
                                      (___match251833251834_
                                       _e242449242893_
                                       _hd242448242896_
                                       _tl242447242898_
                                       _e242452242901_
                                       _hd242451242904_
                                       _tl242450242906_
                                       _e242455242909_
                                       _hd242454242912_
                                       _tl242453242914_
                                       _e242458242917_
                                       _hd242457242920_
                                       _tl242456242922_
                                       _e242461242925_
                                       _hd242460242928_
                                       _tl242459242930_
                                       _e242464242933_
                                       _hd242463242936_
                                       _tl242462242938_
                                       _e242467242941_
                                       _hd242466242944_
                                       _tl242465242946_
                                       _e242470242949_
                                       _hd242469242952_
                                       _tl242468242954_))))
                              (___match251833251834_
                               _e242449242893_
                               _hd242448242896_
                               _tl242447242898_
                               _e242452242901_
                               _hd242451242904_
                               _tl242450242906_
                               _e242455242909_
                               _hd242454242912_
                               _tl242453242914_
                               _e242458242917_
                               _hd242457242920_
                               _tl242456242922_
                               _e242461242925_
                               _hd242460242928_
                               _tl242459242930_
                               _e242464242933_
                               _hd242463242936_
                               _tl242462242938_
                               _e242467242941_
                               _hd242466242944_
                               _tl242465242946_
                               _e242470242949_
                               _hd242469242952_
                               _tl242468242954_))
                          (___match251833251834_
                           _e242449242893_
                           _hd242448242896_
                           _tl242447242898_
                           _e242452242901_
                           _hd242451242904_
                           _tl242450242906_
                           _e242455242909_
                           _hd242454242912_
                           _tl242453242914_
                           _e242458242917_
                           _hd242457242920_
                           _tl242456242922_
                           _e242461242925_
                           _hd242460242928_
                           _tl242459242930_
                           _e242464242933_
                           _hd242463242936_
                           _tl242462242938_
                           _e242467242941_
                           _hd242466242944_
                           _tl242465242946_
                           _e242470242949_
                           _hd242469242952_
                           _tl242468242954_))))
                   (___match251551251552_
                    (lambda (_e242398243012_
                             _hd242397243015_
                             _tl242396243017_
                             _e242401243020_
                             _hd242400243023_
                             _tl242399243025_
                             _e242404243028_
                             _hd242403243031_
                             _tl242402243033_
                             _e242407243036_
                             _hd242406243039_
                             _tl242405243041_
                             _e242410243044_
                             _hd242409243047_
                             _tl242408243049_
                             _e242413243052_
                             _hd242412243055_
                             _tl242411243057_
                             _e242416243060_
                             _hd242415243063_
                             _tl242414243065_
                             _e242419243068_
                             _hd242418243071_
                             _tl242417243073_
                             _e242422243076_
                             _hd242421243079_
                             _tl242420243081_
                             _e242425243084_
                             _hd242424243087_
                             _tl242423243089_
                             _e242428243092_
                             _hd242427243095_
                             _tl242426243097_
                             _e242431243100_
                             _hd242430243103_
                             _tl242429243105_
                             _e242434243108_
                             _hd242433243111_
                             _tl242432243113_
                             ___splice251344251345_
                             _target242435243116_
                             _tl242437243118_)
                      (letrec ((_loop242438243121_
                                (lambda (_hd242436243124_ _args242442243126_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd242436243124_))
                                      (let ((_e242439243129_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd242436243124_))))
                                        (let ((_lp-tl242441243134_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242439243129_)))
                                              (_lp-hd242440243132_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242439243129_))))
                                          (let ((__tmp252707
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd242440243132_
                                                         _args242442243126_))))
                                            (declare (not safe))
                                            (_loop242438243121_
                                             _lp-tl242441243134_
                                             __tmp252707))))
                                      (let ((_args242443243137_
                                             (reverse _args242442243126_)))
                                        (let ((_L243140_ _args242443243137_)
                                              (_L243141_ _hd242433243111_)
                                              (_L243142_ _hd242424243087_)
                                              (_L243143_ _hd242415243063_)
                                              (_L243144_ _hd242406243039_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L243144_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L243143_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L243142_
                                                      _self242333_)))
                                              (___kont251342251343_
                                               _L243140_
                                               _L243141_
                                               _L243142_
                                               _L243143_
                                               _L243144_)
                                              (___kont251354251355_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop242438243121_ _target242435243116_ '())))))
                   (___match251509251510_
                    (lambda (_e242398243012_
                             _hd242397243015_
                             _tl242396243017_
                             _e242401243020_
                             _hd242400243023_
                             _tl242399243025_
                             _e242404243028_
                             _hd242403243031_
                             _tl242402243033_
                             _e242407243036_
                             _hd242406243039_
                             _tl242405243041_
                             _e242410243044_
                             _hd242409243047_
                             _tl242408243049_
                             _e242413243052_
                             _hd242412243055_
                             _tl242411243057_
                             _e242416243060_
                             _hd242415243063_
                             _tl242414243065_
                             _e242419243068_
                             _hd242418243071_
                             _tl242417243073_
                             _e242422243076_
                             _hd242421243079_
                             _tl242420243081_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd242421243079_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242420243081_))
                              (let ((_e242425243084_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242420243081_))))
                                (let ((_tl242423243089_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242425243084_)))
                                      (_hd242424243087_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242425243084_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242423243089_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242417243073_))
                                          (let ((_e242428243092_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242417243073_))))
                                            (let ((_tl242426243097_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242428243092_)))
                                                  (_hd242427243095_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242428243092_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd242427243095_))
                                                  (let ((_e242431243100_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd242427243095_))))
                                                    (let ((_tl242429243105_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242431243100_)))
                                                          (_hd242430243103_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242431243100_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd242430243103_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd242430243103_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242429243105_))
                          (let ((_e242434243108_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242429243105_))))
                            (let ((_tl242432243113_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242434243108_)))
                                  (_hd242433243111_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242434243108_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242432243113_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl242426243097_))
                                      (let ((___splice251344251345_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl242426243097_
                                                '0))))
                                        (let ((_tl242437243118_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice251344251345_
                                                  '1)))
                                              (_target242435243116_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice251344251345_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242437243118_))
                                              (___match251551251552_
                                               _e242398243012_
                                               _hd242397243015_
                                               _tl242396243017_
                                               _e242401243020_
                                               _hd242400243023_
                                               _tl242399243025_
                                               _e242404243028_
                                               _hd242403243031_
                                               _tl242402243033_
                                               _e242407243036_
                                               _hd242406243039_
                                               _tl242405243041_
                                               _e242410243044_
                                               _hd242409243047_
                                               _tl242408243049_
                                               _e242413243052_
                                               _hd242412243055_
                                               _tl242411243057_
                                               _e242416243060_
                                               _hd242415243063_
                                               _tl242414243065_
                                               _e242419243068_
                                               _hd242418243071_
                                               _tl242417243073_
                                               _e242422243076_
                                               _hd242421243079_
                                               _tl242420243081_
                                               _e242425243084_
                                               _hd242424243087_
                                               _tl242423243089_
                                               _e242428243092_
                                               _hd242427243095_
                                               _tl242426243097_
                                               _e242431243100_
                                               _hd242430243103_
                                               _tl242429243105_
                                               _e242434243108_
                                               _hd242433243111_
                                               _tl242432243113_
                                               ___splice251344251345_
                                               _target242435243116_
                                               _tl242437243118_)
                                              (___kont251354251355_))))
                                      (___kont251354251355_))
                                  (___kont251354251355_))))
                          (___kont251354251355_))
                      (___kont251354251355_))
                  (___kont251354251355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont251354251355_))))
                                          (___match251833251834_
                                           _e242398243012_
                                           _hd242397243015_
                                           _tl242396243017_
                                           _e242401243020_
                                           _hd242400243023_
                                           _tl242399243025_
                                           _e242404243028_
                                           _hd242403243031_
                                           _tl242402243033_
                                           _e242407243036_
                                           _hd242406243039_
                                           _tl242405243041_
                                           _e242410243044_
                                           _hd242409243047_
                                           _tl242408243049_
                                           _e242413243052_
                                           _hd242412243055_
                                           _tl242411243057_
                                           _e242416243060_
                                           _hd242415243063_
                                           _tl242414243065_
                                           _e242419243068_
                                           _hd242418243071_
                                           _tl242417243073_))
                                      (___match251833251834_
                                       _e242398243012_
                                       _hd242397243015_
                                       _tl242396243017_
                                       _e242401243020_
                                       _hd242400243023_
                                       _tl242399243025_
                                       _e242404243028_
                                       _hd242403243031_
                                       _tl242402243033_
                                       _e242407243036_
                                       _hd242406243039_
                                       _tl242405243041_
                                       _e242410243044_
                                       _hd242409243047_
                                       _tl242408243049_
                                       _e242413243052_
                                       _hd242412243055_
                                       _tl242411243057_
                                       _e242416243060_
                                       _hd242415243063_
                                       _tl242414243065_
                                       _e242419243068_
                                       _hd242418243071_
                                       _tl242417243073_))))
                              (___match251833251834_
                               _e242398243012_
                               _hd242397243015_
                               _tl242396243017_
                               _e242401243020_
                               _hd242400243023_
                               _tl242399243025_
                               _e242404243028_
                               _hd242403243031_
                               _tl242402243033_
                               _e242407243036_
                               _hd242406243039_
                               _tl242405243041_
                               _e242410243044_
                               _hd242409243047_
                               _tl242408243049_
                               _e242413243052_
                               _hd242412243055_
                               _tl242411243057_
                               _e242416243060_
                               _hd242415243063_
                               _tl242414243065_
                               _e242419243068_
                               _hd242418243071_
                               _tl242417243073_))
                          (___match251619251620_
                           _e242398243012_
                           _hd242397243015_
                           _tl242396243017_
                           _e242401243020_
                           _hd242400243023_
                           _tl242399243025_
                           _e242404243028_
                           _hd242403243031_
                           _tl242402243033_
                           _e242407243036_
                           _hd242406243039_
                           _tl242405243041_
                           _e242410243044_
                           _hd242409243047_
                           _tl242408243049_
                           _e242413243052_
                           _hd242412243055_
                           _tl242411243057_
                           _e242416243060_
                           _hd242415243063_
                           _tl242414243065_
                           _e242419243068_
                           _hd242418243071_
                           _tl242417243073_
                           _e242422243076_
                           _hd242421243079_
                           _tl242420243081_))))
                   (___match251441251442_
                    (lambda (_e242354243201_
                             _hd242353243204_
                             _tl242352243206_
                             _e242357243209_
                             _hd242356243212_
                             _tl242355243214_
                             _e242360243217_
                             _hd242359243220_
                             _tl242358243222_
                             _e242363243225_
                             _hd242362243228_
                             _tl242361243230_
                             _e242366243233_
                             _hd242365243236_
                             _tl242364243238_
                             _e242369243241_
                             _hd242368243244_
                             _tl242367243246_
                             _e242372243249_
                             _hd242371243252_
                             _tl242370243254_
                             _e242375243257_
                             _hd242374243260_
                             _tl242373243262_
                             _e242378243265_
                             _hd242377243268_
                             _tl242376243270_
                             _e242381243273_
                             _hd242380243276_
                             _tl242379243278_
                             ___splice251340251341_
                             _target242382243281_
                             _tl242384243283_)
                      (letrec ((_loop242385243286_
                                (lambda (_hd242383243289_ _args242389243291_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd242383243289_))
                                      (let ((_e242386243294_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd242383243289_))))
                                        (let ((_lp-tl242388243299_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242386243294_)))
                                              (_lp-hd242387243297_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242386243294_))))
                                          (let ((__tmp252708
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd242387243297_
                                                         _args242389243291_))))
                                            (declare (not safe))
                                            (_loop242385243286_
                                             _lp-tl242388243299_
                                             __tmp252708))))
                                      (let ((_args242390243302_
                                             (reverse _args242389243291_)))
                                        (let ((_L243305_ _args242390243302_)
                                              (_L243306_ _hd242380243276_)
                                              (_L243307_ _hd242371243252_)
                                              (_L243308_ _hd242362243228_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L243308_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L243307_
                                                      _self242333_)))
                                              (___kont251338251339_
                                               _L243305_
                                               _L243306_
                                               _L243307_
                                               _L243308_)
                                              (___match251629251630_
                                               _e242354243201_
                                               _hd242353243204_
                                               _tl242352243206_
                                               _e242357243209_
                                               _hd242356243212_
                                               _tl242355243214_
                                               _e242360243217_
                                               _hd242359243220_
                                               _tl242358243222_
                                               _e242363243225_
                                               _hd242362243228_
                                               _tl242361243230_
                                               _e242366243233_
                                               _hd242365243236_
                                               _tl242364243238_
                                               _e242369243241_
                                               _hd242368243244_
                                               _tl242367243246_
                                               _e242372243249_
                                               _hd242371243252_
                                               _tl242370243254_
                                               _e242375243257_
                                               _hd242374243260_
                                               _tl242373243262_
                                               _e242378243265_
                                               _hd242377243268_
                                               _tl242376243270_
                                               _e242381243273_
                                               _hd242380243276_
                                               _tl242379243278_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop242385243286_ _target242382243281_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx251336251337_))
                  (let ((_e242354243201_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx251336251337_))))
                    (let ((_tl242352243206_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242354243201_)))
                          (_hd242353243204_
                           (let ()
                             (declare (not safe))
                             (##car _e242354243201_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242352243206_))
                          (let ((_e242357243209_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242352243206_))))
                            (let ((_tl242355243214_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242357243209_)))
                                  (_hd242356243212_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242357243209_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd242356243212_))
                                  (let ((_e242360243217_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd242356243212_))))
                                    (let ((_tl242358243222_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242360243217_)))
                                          (_hd242359243220_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242360243217_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd242359243220_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd242359243220_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242358243222_))
                                                  (let ((_e242363243225_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242358243222_))))
                                                    (let ((_tl242361243230_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242363243225_)))
                                                          (_hd242362243228_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242363243225_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl242361243230_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl242355243214_))
                      (let ((_e242366243233_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl242355243214_))))
                        (let ((_tl242364243238_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242366243233_)))
                              (_hd242365243236_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242366243233_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd242365243236_))
                              (let ((_e242369243241_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd242365243236_))))
                                (let ((_tl242367243246_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242369243241_)))
                                      (_hd242368243244_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242369243241_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd242368243244_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd242368243244_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242367243246_))
                                              (let ((_e242372243249_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242367243246_))))
                                                (let ((_tl242370243254_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242372243249_)))
                                                      (_hd242371243252_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242372243249_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242370243254_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242364243238_))
                                                          (let ((_e242375243257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242364243238_))))
                    (let ((_tl242373243262_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242375243257_)))
                          (_hd242374243260_
                           (let ()
                             (declare (not safe))
                             (##car _e242375243257_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242374243260_))
                          (let ((_e242378243265_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242374243260_))))
                            (let ((_tl242376243270_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242378243265_)))
                                  (_hd242377243268_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242378243265_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242377243268_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd242377243268_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242376243270_))
                                          (let ((_e242381243273_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242376243270_))))
                                            (let ((_tl242379243278_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242381243273_)))
                                                  (_hd242380243276_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242381243273_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242379243278_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl242373243262_))
                                                      (let ((___splice251340251341_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl242373243262_ '0))))
                (let ((_tl242384243283_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice251340251341_ '1)))
                      (_target242382243281_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice251340251341_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl242384243283_))
                      (___match251441251442_
                       _e242354243201_
                       _hd242353243204_
                       _tl242352243206_
                       _e242357243209_
                       _hd242356243212_
                       _tl242355243214_
                       _e242360243217_
                       _hd242359243220_
                       _tl242358243222_
                       _e242363243225_
                       _hd242362243228_
                       _tl242361243230_
                       _e242366243233_
                       _hd242365243236_
                       _tl242364243238_
                       _e242369243241_
                       _hd242368243244_
                       _tl242367243246_
                       _e242372243249_
                       _hd242371243252_
                       _tl242370243254_
                       _e242375243257_
                       _hd242374243260_
                       _tl242373243262_
                       _e242378243265_
                       _hd242377243268_
                       _tl242376243270_
                       _e242381243273_
                       _hd242380243276_
                       _tl242379243278_
                       ___splice251340251341_
                       _target242382243281_
                       _tl242384243283_)
                      (___match251629251630_
                       _e242354243201_
                       _hd242353243204_
                       _tl242352243206_
                       _e242357243209_
                       _hd242356243212_
                       _tl242355243214_
                       _e242360243217_
                       _hd242359243220_
                       _tl242358243222_
                       _e242363243225_
                       _hd242362243228_
                       _tl242361243230_
                       _e242366243233_
                       _hd242365243236_
                       _tl242364243238_
                       _e242369243241_
                       _hd242368243244_
                       _tl242367243246_
                       _e242372243249_
                       _hd242371243252_
                       _tl242370243254_
                       _e242375243257_
                       _hd242374243260_
                       _tl242373243262_
                       _e242378243265_
                       _hd242377243268_
                       _tl242376243270_
                       _e242381243273_
                       _hd242380243276_
                       _tl242379243278_))))
              (___match251629251630_
               _e242354243201_
               _hd242353243204_
               _tl242352243206_
               _e242357243209_
               _hd242356243212_
               _tl242355243214_
               _e242360243217_
               _hd242359243220_
               _tl242358243222_
               _e242363243225_
               _hd242362243228_
               _tl242361243230_
               _e242366243233_
               _hd242365243236_
               _tl242364243238_
               _e242369243241_
               _hd242368243244_
               _tl242367243246_
               _e242372243249_
               _hd242371243252_
               _tl242370243254_
               _e242375243257_
               _hd242374243260_
               _tl242373243262_
               _e242378243265_
               _hd242377243268_
               _tl242376243270_
               _e242381243273_
               _hd242380243276_
               _tl242379243278_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match251833251834_
                                                   _e242354243201_
                                                   _hd242353243204_
                                                   _tl242352243206_
                                                   _e242357243209_
                                                   _hd242356243212_
                                                   _tl242355243214_
                                                   _e242360243217_
                                                   _hd242359243220_
                                                   _tl242358243222_
                                                   _e242363243225_
                                                   _hd242362243228_
                                                   _tl242361243230_
                                                   _e242366243233_
                                                   _hd242365243236_
                                                   _tl242364243238_
                                                   _e242369243241_
                                                   _hd242368243244_
                                                   _tl242367243246_
                                                   _e242372243249_
                                                   _hd242371243252_
                                                   _tl242370243254_
                                                   _e242375243257_
                                                   _hd242374243260_
                                                   _tl242373243262_))))
                                          (___match251833251834_
                                           _e242354243201_
                                           _hd242353243204_
                                           _tl242352243206_
                                           _e242357243209_
                                           _hd242356243212_
                                           _tl242355243214_
                                           _e242360243217_
                                           _hd242359243220_
                                           _tl242358243222_
                                           _e242363243225_
                                           _hd242362243228_
                                           _tl242361243230_
                                           _e242366243233_
                                           _hd242365243236_
                                           _tl242364243238_
                                           _e242369243241_
                                           _hd242368243244_
                                           _tl242367243246_
                                           _e242372243249_
                                           _hd242371243252_
                                           _tl242370243254_
                                           _e242375243257_
                                           _hd242374243260_
                                           _tl242373243262_))
                                      (___match251509251510_
                                       _e242354243201_
                                       _hd242353243204_
                                       _tl242352243206_
                                       _e242357243209_
                                       _hd242356243212_
                                       _tl242355243214_
                                       _e242360243217_
                                       _hd242359243220_
                                       _tl242358243222_
                                       _e242363243225_
                                       _hd242362243228_
                                       _tl242361243230_
                                       _e242366243233_
                                       _hd242365243236_
                                       _tl242364243238_
                                       _e242369243241_
                                       _hd242368243244_
                                       _tl242367243246_
                                       _e242372243249_
                                       _hd242371243252_
                                       _tl242370243254_
                                       _e242375243257_
                                       _hd242374243260_
                                       _tl242373243262_
                                       _e242378243265_
                                       _hd242377243268_
                                       _tl242376243270_))
                                  (___match251833251834_
                                   _e242354243201_
                                   _hd242353243204_
                                   _tl242352243206_
                                   _e242357243209_
                                   _hd242356243212_
                                   _tl242355243214_
                                   _e242360243217_
                                   _hd242359243220_
                                   _tl242358243222_
                                   _e242363243225_
                                   _hd242362243228_
                                   _tl242361243230_
                                   _e242366243233_
                                   _hd242365243236_
                                   _tl242364243238_
                                   _e242369243241_
                                   _hd242368243244_
                                   _tl242367243246_
                                   _e242372243249_
                                   _hd242371243252_
                                   _tl242370243254_
                                   _e242375243257_
                                   _hd242374243260_
                                   _tl242373243262_))))
                          (___match251833251834_
                           _e242354243201_
                           _hd242353243204_
                           _tl242352243206_
                           _e242357243209_
                           _hd242356243212_
                           _tl242355243214_
                           _e242360243217_
                           _hd242359243220_
                           _tl242358243222_
                           _e242363243225_
                           _hd242362243228_
                           _tl242361243230_
                           _e242366243233_
                           _hd242365243236_
                           _tl242364243238_
                           _e242369243241_
                           _hd242368243244_
                           _tl242367243246_
                           _e242372243249_
                           _hd242371243252_
                           _tl242370243254_
                           _e242375243257_
                           _hd242374243260_
                           _tl242373243262_))))
                  (___match251771251772_
                   _e242354243201_
                   _hd242353243204_
                   _tl242352243206_
                   _e242357243209_
                   _hd242356243212_
                   _tl242355243214_
                   _e242360243217_
                   _hd242359243220_
                   _tl242358243222_
                   _e242363243225_
                   _hd242362243228_
                   _tl242361243230_
                   _e242366243233_
                   _hd242365243236_
                   _tl242364243238_
                   _e242369243241_
                   _hd242368243244_
                   _tl242367243246_
                   _e242372243249_
                   _hd242371243252_
                   _tl242370243254_))
              (___kont251354251355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont251354251355_))
                                          (___kont251354251355_))
                                      (___kont251354251355_))))
                              (___kont251354251355_))))
                      (___kont251354251355_))
                  (___kont251354251355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont251354251355_))
                                              (___kont251354251355_))
                                          (___kont251354251355_))))
                                  (___kont251354251355_))))
                          (___kont251354251355_))))
                  (___kont251354251355_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx241278_
               _self241279_
               _$t241280_
               _methods241281_
               _slots241282_
               _class-check241283_
               _struct-check241284_
               _struct-assert241285_)
        (letrec ((_force-e241287_
                  (lambda (_what242330_)
                    (let ((__tmp252709
                           (let ((__tmp252713
                                  (let ((__tmp252714
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp252714)))
                                 (__tmp252710
                                  (let ((__tmp252711
                                         (let ((__tmp252712
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what242330_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp252712))))
                                    (declare (not safe))
                                    (cons __tmp252711 '()))))
                             (declare (not safe))
                             (cons __tmp252713 __tmp252710))))
                      (declare (not safe))
                      (cons '%#call __tmp252709)))))
          (let* ((___stx251838251839_ _stx241278_)
                 (_g241295241517_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx251838251839_)))))
            (let ((___kont251840251841_
                   (lambda (_L242276_ _L242277_ _L242278_ _L242279_)
                     (let ((_$method242324_
                            (let ((__tmp252715
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L242277_))))
                              (declare (not safe))
                              (table-ref _methods241281_ __tmp252715)))
                           (_args242325_
                            (map (lambda (_g242312242314_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g242312242314_
                                      _self241279_
                                      _$t241280_
                                      _methods241281_
                                      _slots241282_
                                      _class-check241283_
                                      _struct-check241284_
                                      _struct-assert241285_)))
                                 (let ((__tmp252716
                                        (lambda (_g242316242319_
                                                 _g242317242321_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g242316242319_
                                                  _g242317242321_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp252716 '() _L242276_)))))
                       (let ((__tmp252717
                              (let ((__tmp252718
                                     (let ((__tmp252722
                                            (let ()
                                              (declare (not safe))
                                              (_force-e241287_
                                               _$method242324_)))
                                           (__tmp252719
                                            (let ((__tmp252720
                                                   (let ((__tmp252721
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self241279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252721))))
                                              (declare (not safe))
                                              (cons __tmp252720
                                                    _args242325_))))
                                       (declare (not safe))
                                       (cons __tmp252722 __tmp252719))))
                                (declare (not safe))
                                (cons '%#call __tmp252718))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252717 _stx241278_)))))
                  (___kont251844251845_
                   (lambda (_L242108_ _L242109_ _L242110_ _L242111_ _L242112_)
                     (let ((_$method242164_
                            (let ((__tmp252723
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L242109_))))
                              (declare (not safe))
                              (table-ref _methods241281_ __tmp252723)))
                           (_args242165_
                            (map (lambda (_g242152242154_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g242152242154_
                                      _self241279_
                                      _$t241280_
                                      _methods241281_
                                      _slots241282_
                                      _class-check241283_
                                      _struct-check241284_
                                      _struct-assert241285_)))
                                 (let ((__tmp252724
                                        (lambda (_g242156242159_
                                                 _g242157242161_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g242156242159_
                                                  _g242157242161_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp252724 '() _L242108_)))))
                       (let ((__tmp252725
                              (let ((__tmp252726
                                     (let ((__tmp252732
                                            (let ((__tmp252733
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252733)))
                                           (__tmp252727
                                            (let ((__tmp252731
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e241287_
                                                      _$method242164_)))
                                                  (__tmp252728
                                                   (let ((__tmp252729
                                                          (let ((__tmp252730
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241279_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252730))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252729
                                                           _args242165_))))
                                              (declare (not safe))
                                              (cons __tmp252731 __tmp252728))))
                                       (declare (not safe))
                                       (cons __tmp252732 __tmp252727))))
                                (declare (not safe))
                                (cons '%#call __tmp252726))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252725 _stx241278_)))))
                  (___kont251848251849_
                   (lambda (_L241939_ _L241940_ _L241941_)
                     (let* ((_$field241973_
                             (let ((__tmp252734
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L241939_))))
                               (declare (not safe))
                               (table-ref _slots241282_ __tmp252734)))
                            (__tmp252735
                             (let ((__tmp252736
                                    (let ((__tmp252743
                                           (let ((__tmp252744
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t241280_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp252744)))
                                          (__tmp252737
                                           (let ((__tmp252741
                                                  (let ((__tmp252742
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field241973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp252742)))
                                                 (__tmp252738
                                                  (let ((__tmp252739
                                                         (let ((__tmp252740
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self241279_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp252740))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252739 '()))))
                                             (declare (not safe))
                                             (cons __tmp252741 __tmp252738))))
                                      (declare (not safe))
                                      (cons __tmp252743 __tmp252737))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp252736))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp252735 _stx241278_))))
                  (___kont251850251851_
                   (lambda (_L241813_ _L241814_ _L241815_ _L241816_)
                     (let ((_$field241851_
                            (let ((__tmp252745
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L241814_))))
                              (declare (not safe))
                              (table-ref _slots241282_ __tmp252745)))
                           (_expr241852_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L241813_
                               _self241279_
                               _$t241280_
                               _methods241281_
                               _slots241282_
                               _class-check241283_
                               _struct-check241284_
                               _struct-assert241285_))))
                       (let ((__tmp252746
                              (let ((__tmp252747
                                     (let ((__tmp252755
                                            (let ((__tmp252756
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t241280_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252756)))
                                           (__tmp252748
                                            (let ((__tmp252753
                                                   (let ((__tmp252754
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field241851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252754)))
                                                  (__tmp252749
                                                   (let ((__tmp252751
                                                          (let ((__tmp252752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241279_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252752)))
                 (__tmp252750
                  (let () (declare (not safe)) (cons _expr241852_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252751
                                                           __tmp252750))))
                                              (declare (not safe))
                                              (cons __tmp252753 __tmp252749))))
                                       (declare (not safe))
                                       (cons __tmp252755 __tmp252748))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp252747))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252746 _stx241278_)))))
                  (___kont251852251853_
                   (lambda (_L241692_ _L241693_)
                     (let* ((_slot241715_
                             (##structure-ref
                              (let ((__tmp252757
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L241693_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp252757))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field241717_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots241282_ _slot241715_))))
                       (let ((__tmp252758
                              (let ((__tmp252759
                                     (let ((__tmp252766
                                            (let ((__tmp252767
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t241280_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252767)))
                                           (__tmp252760
                                            (let ((__tmp252764
                                                   (let ((__tmp252765
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field241717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252765)))
                                                  (__tmp252761
                                                   (let ((__tmp252762
                                                          (let ((__tmp252763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241279_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252762 '()))))
                                              (declare (not safe))
                                              (cons __tmp252764 __tmp252761))))
                                       (declare (not safe))
                                       (cons __tmp252766 __tmp252760))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp252759))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252758 _stx241278_)))))
                  (___kont251854251855_
                   (lambda (_L241593_ _L241594_ _L241595_)
                     (let* ((_slot241624_
                             (##structure-ref
                              (let ((__tmp252768
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L241595_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp252768))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field241626_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots241282_ _slot241624_)))
                            (_expr241628_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L241593_
                                _self241279_
                                _$t241280_
                                _methods241281_
                                _slots241282_
                                _class-check241283_
                                _struct-check241284_
                                _struct-assert241285_))))
                       (let ((__tmp252769
                              (let ((__tmp252770
                                     (let ((__tmp252778
                                            (let ((__tmp252779
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t241280_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252779)))
                                           (__tmp252771
                                            (let ((__tmp252776
                                                   (let ((__tmp252777
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field241626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252777)))
                                                  (__tmp252772
                                                   (let ((__tmp252774
                                                          (let ((__tmp252775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241279_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252775)))
                 (__tmp252773
                  (let () (declare (not safe)) (cons _expr241628_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252774
                                                           __tmp252773))))
                                              (declare (not safe))
                                              (cons __tmp252776 __tmp252772))))
                                       (declare (not safe))
                                       (cons __tmp252778 __tmp252771))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp252770))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252769 _stx241278_)))))
                  (___kont251856251857_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx241278_
                        _self241279_
                        _$t241280_
                        _methods241281_
                        _slots241282_
                        _class-check241283_
                        _struct-check241284_
                        _struct-assert241285_)))))
              (let* ((___match252337252338_
                      (lambda (_e241491241529_
                               _hd241490241532_
                               _tl241489241534_
                               _e241494241537_
                               _hd241493241540_
                               _tl241492241542_
                               _e241497241545_
                               _hd241496241548_
                               _tl241495241550_
                               _e241500241553_
                               _hd241499241556_
                               _tl241498241558_
                               _e241503241561_
                               _hd241502241564_
                               _tl241501241566_
                               _e241506241569_
                               _hd241505241572_
                               _tl241504241574_
                               _e241509241577_
                               _hd241508241580_
                               _tl241507241582_
                               _e241512241585_
                               _hd241511241588_
                               _tl241510241590_)
                        (let ((_L241593_ _hd241511241588_)
                              (_L241594_ _hd241508241580_)
                              (_L241595_ _hd241499241556_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L241594_
                                      _self241279_))
                                   (let ((__tmp252780
                                          (let ((__tmp252781
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L241595_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp252781))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp252780
                                      'gxc#!mutator::t)))
                              (___kont251854251855_
                               _L241593_
                               _L241594_
                               _L241595_)
                              (___kont251856251857_)))))
                     (___match252335252336_
                      (lambda (_e241491241529_
                               _hd241490241532_
                               _tl241489241534_
                               _e241494241537_
                               _hd241493241540_
                               _tl241492241542_
                               _e241497241545_
                               _hd241496241548_
                               _tl241495241550_
                               _e241500241553_
                               _hd241499241556_
                               _tl241498241558_
                               _e241503241561_
                               _hd241502241564_
                               _tl241501241566_
                               _e241506241569_
                               _hd241505241572_
                               _tl241504241574_
                               _e241509241577_
                               _hd241508241580_
                               _tl241507241582_
                               _e241512241585_
                               _hd241511241588_
                               _tl241510241590_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241510241590_))
                            (___match252337252338_
                             _e241491241529_
                             _hd241490241532_
                             _tl241489241534_
                             _e241494241537_
                             _hd241493241540_
                             _tl241492241542_
                             _e241497241545_
                             _hd241496241548_
                             _tl241495241550_
                             _e241500241553_
                             _hd241499241556_
                             _tl241498241558_
                             _e241503241561_
                             _hd241502241564_
                             _tl241501241566_
                             _e241506241569_
                             _hd241505241572_
                             _tl241504241574_
                             _e241509241577_
                             _hd241508241580_
                             _tl241507241582_
                             _e241512241585_
                             _hd241511241588_
                             _tl241510241590_)
                            (___kont251856251857_))))
                     (___match252329252330_
                      (lambda (_e241491241529_
                               _hd241490241532_
                               _tl241489241534_
                               _e241494241537_
                               _hd241493241540_
                               _tl241492241542_
                               _e241497241545_
                               _hd241496241548_
                               _tl241495241550_
                               _e241500241553_
                               _hd241499241556_
                               _tl241498241558_
                               _e241503241561_
                               _hd241502241564_
                               _tl241501241566_
                               _e241506241569_
                               _hd241505241572_
                               _tl241504241574_
                               _e241509241577_
                               _hd241508241580_
                               _tl241507241582_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241501241566_))
                            (let ((_e241512241585_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241501241566_))))
                              (let ((_tl241510241590_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241512241585_)))
                                    (_hd241511241588_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241512241585_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241510241590_))
                                    (___match252337252338_
                                     _e241491241529_
                                     _hd241490241532_
                                     _tl241489241534_
                                     _e241494241537_
                                     _hd241493241540_
                                     _tl241492241542_
                                     _e241497241545_
                                     _hd241496241548_
                                     _tl241495241550_
                                     _e241500241553_
                                     _hd241499241556_
                                     _tl241498241558_
                                     _e241503241561_
                                     _hd241502241564_
                                     _tl241501241566_
                                     _e241506241569_
                                     _hd241505241572_
                                     _tl241504241574_
                                     _e241509241577_
                                     _hd241508241580_
                                     _tl241507241582_
                                     _e241512241585_
                                     _hd241511241588_
                                     _tl241510241590_)
                                    (___kont251856251857_))))
                            (___kont251856251857_))))
                     (___match252275252276_
                      (lambda (_e241467241636_
                               _hd241466241639_
                               _tl241465241641_
                               _e241470241644_
                               _hd241469241647_
                               _tl241468241649_
                               _e241473241652_
                               _hd241472241655_
                               _tl241471241657_
                               _e241476241660_
                               _hd241475241663_
                               _tl241474241665_
                               _e241479241668_
                               _hd241478241671_
                               _tl241477241673_
                               _e241482241676_
                               _hd241481241679_
                               _tl241480241681_
                               _e241485241684_
                               _hd241484241687_
                               _tl241483241689_)
                        (let ((_L241692_ _hd241484241687_)
                              (_L241693_ _hd241475241663_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L241692_
                                      _self241279_))
                                   (let ((__tmp252782
                                          (let ((__tmp252783
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L241693_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp252783))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp252782
                                      'gxc#!accessor::t)))
                              (___kont251852251853_ _L241692_ _L241693_)
                              (___kont251856251857_)))))
                     (___match252273252274_
                      (lambda (_e241467241636_
                               _hd241466241639_
                               _tl241465241641_
                               _e241470241644_
                               _hd241469241647_
                               _tl241468241649_
                               _e241473241652_
                               _hd241472241655_
                               _tl241471241657_
                               _e241476241660_
                               _hd241475241663_
                               _tl241474241665_
                               _e241479241668_
                               _hd241478241671_
                               _tl241477241673_
                               _e241482241676_
                               _hd241481241679_
                               _tl241480241681_
                               _e241485241684_
                               _hd241484241687_
                               _tl241483241689_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241477241673_))
                            (___match252275252276_
                             _e241467241636_
                             _hd241466241639_
                             _tl241465241641_
                             _e241470241644_
                             _hd241469241647_
                             _tl241468241649_
                             _e241473241652_
                             _hd241472241655_
                             _tl241471241657_
                             _e241476241660_
                             _hd241475241663_
                             _tl241474241665_
                             _e241479241668_
                             _hd241478241671_
                             _tl241477241673_
                             _e241482241676_
                             _hd241481241679_
                             _tl241480241681_
                             _e241485241684_
                             _hd241484241687_
                             _tl241483241689_)
                            (___match252329252330_
                             _e241467241636_
                             _hd241466241639_
                             _tl241465241641_
                             _e241470241644_
                             _hd241469241647_
                             _tl241468241649_
                             _e241473241652_
                             _hd241472241655_
                             _tl241471241657_
                             _e241476241660_
                             _hd241475241663_
                             _tl241474241665_
                             _e241479241668_
                             _hd241478241671_
                             _tl241477241673_
                             _e241482241676_
                             _hd241481241679_
                             _tl241480241681_
                             _e241485241684_
                             _hd241484241687_
                             _tl241483241689_))))
                     (___match252219252220_
                      (lambda (_e241432241725_
                               _hd241431241728_
                               _tl241430241730_
                               _e241435241733_
                               _hd241434241736_
                               _tl241433241738_
                               _e241438241741_
                               _hd241437241744_
                               _tl241436241746_
                               _e241441241749_
                               _hd241440241752_
                               _tl241439241754_
                               _e241444241757_
                               _hd241443241760_
                               _tl241442241762_
                               _e241447241765_
                               _hd241446241768_
                               _tl241445241770_
                               _e241450241773_
                               _hd241449241776_
                               _tl241448241778_
                               _e241453241781_
                               _hd241452241784_
                               _tl241451241786_
                               _e241456241789_
                               _hd241455241792_
                               _tl241454241794_
                               _e241459241797_
                               _hd241458241800_
                               _tl241457241802_
                               _e241462241805_
                               _hd241461241808_
                               _tl241460241810_)
                        (let ((_L241813_ _hd241461241808_)
                              (_L241814_ _hd241458241800_)
                              (_L241815_ _hd241449241776_)
                              (_L241816_ _hd241440241752_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L241816_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L241816_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L241815_
                                      _self241279_)))
                              (___kont251850251851_
                               _L241813_
                               _L241814_
                               _L241815_
                               _L241816_)
                              (___kont251856251857_)))))
                     (___match252211252212_
                      (lambda (_e241432241725_
                               _hd241431241728_
                               _tl241430241730_
                               _e241435241733_
                               _hd241434241736_
                               _tl241433241738_
                               _e241438241741_
                               _hd241437241744_
                               _tl241436241746_
                               _e241441241749_
                               _hd241440241752_
                               _tl241439241754_
                               _e241444241757_
                               _hd241443241760_
                               _tl241442241762_
                               _e241447241765_
                               _hd241446241768_
                               _tl241445241770_
                               _e241450241773_
                               _hd241449241776_
                               _tl241448241778_
                               _e241453241781_
                               _hd241452241784_
                               _tl241451241786_
                               _e241456241789_
                               _hd241455241792_
                               _tl241454241794_
                               _e241459241797_
                               _hd241458241800_
                               _tl241457241802_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241451241786_))
                            (let ((_e241462241805_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241451241786_))))
                              (let ((_tl241460241810_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241462241805_)))
                                    (_hd241461241808_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241462241805_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241460241810_))
                                    (___match252219252220_
                                     _e241432241725_
                                     _hd241431241728_
                                     _tl241430241730_
                                     _e241435241733_
                                     _hd241434241736_
                                     _tl241433241738_
                                     _e241438241741_
                                     _hd241437241744_
                                     _tl241436241746_
                                     _e241441241749_
                                     _hd241440241752_
                                     _tl241439241754_
                                     _e241444241757_
                                     _hd241443241760_
                                     _tl241442241762_
                                     _e241447241765_
                                     _hd241446241768_
                                     _tl241445241770_
                                     _e241450241773_
                                     _hd241449241776_
                                     _tl241448241778_
                                     _e241453241781_
                                     _hd241452241784_
                                     _tl241451241786_
                                     _e241456241789_
                                     _hd241455241792_
                                     _tl241454241794_
                                     _e241459241797_
                                     _hd241458241800_
                                     _tl241457241802_
                                     _e241462241805_
                                     _hd241461241808_
                                     _tl241460241810_)
                                    (___kont251856251857_))))
                            (___match252335252336_
                             _e241432241725_
                             _hd241431241728_
                             _tl241430241730_
                             _e241435241733_
                             _hd241434241736_
                             _tl241433241738_
                             _e241438241741_
                             _hd241437241744_
                             _tl241436241746_
                             _e241441241749_
                             _hd241440241752_
                             _tl241439241754_
                             _e241444241757_
                             _hd241443241760_
                             _tl241442241762_
                             _e241447241765_
                             _hd241446241768_
                             _tl241445241770_
                             _e241450241773_
                             _hd241449241776_
                             _tl241448241778_
                             _e241453241781_
                             _hd241452241784_
                             _tl241451241786_))))
                     (___match252133252134_
                      (lambda (_e241398241859_
                               _hd241397241862_
                               _tl241396241864_
                               _e241401241867_
                               _hd241400241870_
                               _tl241399241872_
                               _e241404241875_
                               _hd241403241878_
                               _tl241402241880_
                               _e241407241883_
                               _hd241406241886_
                               _tl241405241888_
                               _e241410241891_
                               _hd241409241894_
                               _tl241408241896_
                               _e241413241899_
                               _hd241412241902_
                               _tl241411241904_
                               _e241416241907_
                               _hd241415241910_
                               _tl241414241912_
                               _e241419241915_
                               _hd241418241918_
                               _tl241417241920_
                               _e241422241923_
                               _hd241421241926_
                               _tl241420241928_
                               _e241425241931_
                               _hd241424241934_
                               _tl241423241936_)
                        (let ((_L241939_ _hd241424241934_)
                              (_L241940_ _hd241415241910_)
                              (_L241941_ _hd241406241886_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L241941_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L241941_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L241940_
                                      _self241279_)))
                              (___kont251848251849_
                               _L241939_
                               _L241940_
                               _L241941_)
                              (___match252337252338_
                               _e241398241859_
                               _hd241397241862_
                               _tl241396241864_
                               _e241401241867_
                               _hd241400241870_
                               _tl241399241872_
                               _e241404241875_
                               _hd241403241878_
                               _tl241402241880_
                               _e241407241883_
                               _hd241406241886_
                               _tl241405241888_
                               _e241410241891_
                               _hd241409241894_
                               _tl241408241896_
                               _e241413241899_
                               _hd241412241902_
                               _tl241411241904_
                               _e241416241907_
                               _hd241415241910_
                               _tl241414241912_
                               _e241419241915_
                               _hd241418241918_
                               _tl241417241920_)))))
                     (___match252131252132_
                      (lambda (_e241398241859_
                               _hd241397241862_
                               _tl241396241864_
                               _e241401241867_
                               _hd241400241870_
                               _tl241399241872_
                               _e241404241875_
                               _hd241403241878_
                               _tl241402241880_
                               _e241407241883_
                               _hd241406241886_
                               _tl241405241888_
                               _e241410241891_
                               _hd241409241894_
                               _tl241408241896_
                               _e241413241899_
                               _hd241412241902_
                               _tl241411241904_
                               _e241416241907_
                               _hd241415241910_
                               _tl241414241912_
                               _e241419241915_
                               _hd241418241918_
                               _tl241417241920_
                               _e241422241923_
                               _hd241421241926_
                               _tl241420241928_
                               _e241425241931_
                               _hd241424241934_
                               _tl241423241936_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241417241920_))
                            (___match252133252134_
                             _e241398241859_
                             _hd241397241862_
                             _tl241396241864_
                             _e241401241867_
                             _hd241400241870_
                             _tl241399241872_
                             _e241404241875_
                             _hd241403241878_
                             _tl241402241880_
                             _e241407241883_
                             _hd241406241886_
                             _tl241405241888_
                             _e241410241891_
                             _hd241409241894_
                             _tl241408241896_
                             _e241413241899_
                             _hd241412241902_
                             _tl241411241904_
                             _e241416241907_
                             _hd241415241910_
                             _tl241414241912_
                             _e241419241915_
                             _hd241418241918_
                             _tl241417241920_
                             _e241422241923_
                             _hd241421241926_
                             _tl241420241928_
                             _e241425241931_
                             _hd241424241934_
                             _tl241423241936_)
                            (___match252211252212_
                             _e241398241859_
                             _hd241397241862_
                             _tl241396241864_
                             _e241401241867_
                             _hd241400241870_
                             _tl241399241872_
                             _e241404241875_
                             _hd241403241878_
                             _tl241402241880_
                             _e241407241883_
                             _hd241406241886_
                             _tl241405241888_
                             _e241410241891_
                             _hd241409241894_
                             _tl241408241896_
                             _e241413241899_
                             _hd241412241902_
                             _tl241411241904_
                             _e241416241907_
                             _hd241415241910_
                             _tl241414241912_
                             _e241419241915_
                             _hd241418241918_
                             _tl241417241920_
                             _e241422241923_
                             _hd241421241926_
                             _tl241420241928_
                             _e241425241931_
                             _hd241424241934_
                             _tl241423241936_))))
                     (___match252121252122_
                      (lambda (_e241398241859_
                               _hd241397241862_
                               _tl241396241864_
                               _e241401241867_
                               _hd241400241870_
                               _tl241399241872_
                               _e241404241875_
                               _hd241403241878_
                               _tl241402241880_
                               _e241407241883_
                               _hd241406241886_
                               _tl241405241888_
                               _e241410241891_
                               _hd241409241894_
                               _tl241408241896_
                               _e241413241899_
                               _hd241412241902_
                               _tl241411241904_
                               _e241416241907_
                               _hd241415241910_
                               _tl241414241912_
                               _e241419241915_
                               _hd241418241918_
                               _tl241417241920_
                               _e241422241923_
                               _hd241421241926_
                               _tl241420241928_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd241421241926_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241420241928_))
                                (let ((_e241425241931_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241420241928_))))
                                  (let ((_tl241423241936_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241425241931_)))
                                        (_hd241424241934_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241425241931_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl241423241936_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl241417241920_))
                                            (___match252133252134_
                                             _e241398241859_
                                             _hd241397241862_
                                             _tl241396241864_
                                             _e241401241867_
                                             _hd241400241870_
                                             _tl241399241872_
                                             _e241404241875_
                                             _hd241403241878_
                                             _tl241402241880_
                                             _e241407241883_
                                             _hd241406241886_
                                             _tl241405241888_
                                             _e241410241891_
                                             _hd241409241894_
                                             _tl241408241896_
                                             _e241413241899_
                                             _hd241412241902_
                                             _tl241411241904_
                                             _e241416241907_
                                             _hd241415241910_
                                             _tl241414241912_
                                             _e241419241915_
                                             _hd241418241918_
                                             _tl241417241920_
                                             _e241422241923_
                                             _hd241421241926_
                                             _tl241420241928_
                                             _e241425241931_
                                             _hd241424241934_
                                             _tl241423241936_)
                                            (___match252211252212_
                                             _e241398241859_
                                             _hd241397241862_
                                             _tl241396241864_
                                             _e241401241867_
                                             _hd241400241870_
                                             _tl241399241872_
                                             _e241404241875_
                                             _hd241403241878_
                                             _tl241402241880_
                                             _e241407241883_
                                             _hd241406241886_
                                             _tl241405241888_
                                             _e241410241891_
                                             _hd241409241894_
                                             _tl241408241896_
                                             _e241413241899_
                                             _hd241412241902_
                                             _tl241411241904_
                                             _e241416241907_
                                             _hd241415241910_
                                             _tl241414241912_
                                             _e241419241915_
                                             _hd241418241918_
                                             _tl241417241920_
                                             _e241422241923_
                                             _hd241421241926_
                                             _tl241420241928_
                                             _e241425241931_
                                             _hd241424241934_
                                             _tl241423241936_))
                                        (___match252335252336_
                                         _e241398241859_
                                         _hd241397241862_
                                         _tl241396241864_
                                         _e241401241867_
                                         _hd241400241870_
                                         _tl241399241872_
                                         _e241404241875_
                                         _hd241403241878_
                                         _tl241402241880_
                                         _e241407241883_
                                         _hd241406241886_
                                         _tl241405241888_
                                         _e241410241891_
                                         _hd241409241894_
                                         _tl241408241896_
                                         _e241413241899_
                                         _hd241412241902_
                                         _tl241411241904_
                                         _e241416241907_
                                         _hd241415241910_
                                         _tl241414241912_
                                         _e241419241915_
                                         _hd241418241918_
                                         _tl241417241920_))))
                                (___match252335252336_
                                 _e241398241859_
                                 _hd241397241862_
                                 _tl241396241864_
                                 _e241401241867_
                                 _hd241400241870_
                                 _tl241399241872_
                                 _e241404241875_
                                 _hd241403241878_
                                 _tl241402241880_
                                 _e241407241883_
                                 _hd241406241886_
                                 _tl241405241888_
                                 _e241410241891_
                                 _hd241409241894_
                                 _tl241408241896_
                                 _e241413241899_
                                 _hd241412241902_
                                 _tl241411241904_
                                 _e241416241907_
                                 _hd241415241910_
                                 _tl241414241912_
                                 _e241419241915_
                                 _hd241418241918_
                                 _tl241417241920_))
                            (___match252335252336_
                             _e241398241859_
                             _hd241397241862_
                             _tl241396241864_
                             _e241401241867_
                             _hd241400241870_
                             _tl241399241872_
                             _e241404241875_
                             _hd241403241878_
                             _tl241402241880_
                             _e241407241883_
                             _hd241406241886_
                             _tl241405241888_
                             _e241410241891_
                             _hd241409241894_
                             _tl241408241896_
                             _e241413241899_
                             _hd241412241902_
                             _tl241411241904_
                             _e241416241907_
                             _hd241415241910_
                             _tl241414241912_
                             _e241419241915_
                             _hd241418241918_
                             _tl241417241920_))))
                     (___match252053252054_
                      (lambda (_e241347241980_
                               _hd241346241983_
                               _tl241345241985_
                               _e241350241988_
                               _hd241349241991_
                               _tl241348241993_
                               _e241353241996_
                               _hd241352241999_
                               _tl241351242001_
                               _e241356242004_
                               _hd241355242007_
                               _tl241354242009_
                               _e241359242012_
                               _hd241358242015_
                               _tl241357242017_
                               _e241362242020_
                               _hd241361242023_
                               _tl241360242025_
                               _e241365242028_
                               _hd241364242031_
                               _tl241363242033_
                               _e241368242036_
                               _hd241367242039_
                               _tl241366242041_
                               _e241371242044_
                               _hd241370242047_
                               _tl241369242049_
                               _e241374242052_
                               _hd241373242055_
                               _tl241372242057_
                               _e241377242060_
                               _hd241376242063_
                               _tl241375242065_
                               _e241380242068_
                               _hd241379242071_
                               _tl241378242073_
                               _e241383242076_
                               _hd241382242079_
                               _tl241381242081_
                               ___splice251846251847_
                               _target241384242084_
                               _tl241386242086_)
                        (letrec ((_loop241387242089_
                                  (lambda (_hd241385242092_ _args241391242094_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd241385242092_))
                                        (let ((_e241388242097_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd241385242092_))))
                                          (let ((_lp-tl241390242102_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e241388242097_)))
                                                (_lp-hd241389242100_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e241388242097_))))
                                            (let ((__tmp252784
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd241389242100_
                                                           _args241391242094_))))
                                              (declare (not safe))
                                              (_loop241387242089_
                                               _lp-tl241390242102_
                                               __tmp252784))))
                                        (let ((_args241392242105_
                                               (reverse _args241391242094_)))
                                          (let ((_L242108_ _args241392242105_)
                                                (_L242109_ _hd241382242079_)
                                                (_L242110_ _hd241373242055_)
                                                (_L242111_ _hd241364242031_)
                                                (_L242112_ _hd241355242007_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L242112_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L242111_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L242110_
                                                        _self241279_)))
                                                (___kont251844251845_
                                                 _L242108_
                                                 _L242109_
                                                 _L242110_
                                                 _L242111_
                                                 _L242112_)
                                                (___kont251856251857_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop241387242089_ _target241384242084_ '())))))
                     (___match252011252012_
                      (lambda (_e241347241980_
                               _hd241346241983_
                               _tl241345241985_
                               _e241350241988_
                               _hd241349241991_
                               _tl241348241993_
                               _e241353241996_
                               _hd241352241999_
                               _tl241351242001_
                               _e241356242004_
                               _hd241355242007_
                               _tl241354242009_
                               _e241359242012_
                               _hd241358242015_
                               _tl241357242017_
                               _e241362242020_
                               _hd241361242023_
                               _tl241360242025_
                               _e241365242028_
                               _hd241364242031_
                               _tl241363242033_
                               _e241368242036_
                               _hd241367242039_
                               _tl241366242041_
                               _e241371242044_
                               _hd241370242047_
                               _tl241369242049_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd241370242047_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241369242049_))
                                (let ((_e241374242052_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241369242049_))))
                                  (let ((_tl241372242057_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241374242052_)))
                                        (_hd241373242055_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241374242052_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl241372242057_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241366242041_))
                                            (let ((_e241377242060_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241366242041_))))
                                              (let ((_tl241375242065_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241377242060_)))
                                                    (_hd241376242063_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241377242060_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd241376242063_))
                                                    (let ((_e241380242068_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd241376242063_))))
                                                      (let ((_tl241378242073_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241380242068_)))
                    (_hd241379242071_
                     (let () (declare (not safe)) (##car _e241380242068_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241379242071_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd241379242071_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241378242073_))
                            (let ((_e241383242076_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241378242073_))))
                              (let ((_tl241381242081_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241383242076_)))
                                    (_hd241382242079_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241383242076_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241381242081_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl241375242065_))
                                        (let ((___splice251846251847_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl241375242065_
                                                  '0))))
                                          (let ((_tl241386242086_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice251846251847_
                                                    '1)))
                                                (_target241384242084_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice251846251847_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl241386242086_))
                                                (___match252053252054_
                                                 _e241347241980_
                                                 _hd241346241983_
                                                 _tl241345241985_
                                                 _e241350241988_
                                                 _hd241349241991_
                                                 _tl241348241993_
                                                 _e241353241996_
                                                 _hd241352241999_
                                                 _tl241351242001_
                                                 _e241356242004_
                                                 _hd241355242007_
                                                 _tl241354242009_
                                                 _e241359242012_
                                                 _hd241358242015_
                                                 _tl241357242017_
                                                 _e241362242020_
                                                 _hd241361242023_
                                                 _tl241360242025_
                                                 _e241365242028_
                                                 _hd241364242031_
                                                 _tl241363242033_
                                                 _e241368242036_
                                                 _hd241367242039_
                                                 _tl241366242041_
                                                 _e241371242044_
                                                 _hd241370242047_
                                                 _tl241369242049_
                                                 _e241374242052_
                                                 _hd241373242055_
                                                 _tl241372242057_
                                                 _e241377242060_
                                                 _hd241376242063_
                                                 _tl241375242065_
                                                 _e241380242068_
                                                 _hd241379242071_
                                                 _tl241378242073_
                                                 _e241383242076_
                                                 _hd241382242079_
                                                 _tl241381242081_
                                                 ___splice251846251847_
                                                 _target241384242084_
                                                 _tl241386242086_)
                                                (___kont251856251857_))))
                                        (___kont251856251857_))
                                    (___kont251856251857_))))
                            (___kont251856251857_))
                        (___kont251856251857_))
                    (___kont251856251857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251856251857_))))
                                            (___match252335252336_
                                             _e241347241980_
                                             _hd241346241983_
                                             _tl241345241985_
                                             _e241350241988_
                                             _hd241349241991_
                                             _tl241348241993_
                                             _e241353241996_
                                             _hd241352241999_
                                             _tl241351242001_
                                             _e241356242004_
                                             _hd241355242007_
                                             _tl241354242009_
                                             _e241359242012_
                                             _hd241358242015_
                                             _tl241357242017_
                                             _e241362242020_
                                             _hd241361242023_
                                             _tl241360242025_
                                             _e241365242028_
                                             _hd241364242031_
                                             _tl241363242033_
                                             _e241368242036_
                                             _hd241367242039_
                                             _tl241366242041_))
                                        (___match252335252336_
                                         _e241347241980_
                                         _hd241346241983_
                                         _tl241345241985_
                                         _e241350241988_
                                         _hd241349241991_
                                         _tl241348241993_
                                         _e241353241996_
                                         _hd241352241999_
                                         _tl241351242001_
                                         _e241356242004_
                                         _hd241355242007_
                                         _tl241354242009_
                                         _e241359242012_
                                         _hd241358242015_
                                         _tl241357242017_
                                         _e241362242020_
                                         _hd241361242023_
                                         _tl241360242025_
                                         _e241365242028_
                                         _hd241364242031_
                                         _tl241363242033_
                                         _e241368242036_
                                         _hd241367242039_
                                         _tl241366242041_))))
                                (___match252335252336_
                                 _e241347241980_
                                 _hd241346241983_
                                 _tl241345241985_
                                 _e241350241988_
                                 _hd241349241991_
                                 _tl241348241993_
                                 _e241353241996_
                                 _hd241352241999_
                                 _tl241351242001_
                                 _e241356242004_
                                 _hd241355242007_
                                 _tl241354242009_
                                 _e241359242012_
                                 _hd241358242015_
                                 _tl241357242017_
                                 _e241362242020_
                                 _hd241361242023_
                                 _tl241360242025_
                                 _e241365242028_
                                 _hd241364242031_
                                 _tl241363242033_
                                 _e241368242036_
                                 _hd241367242039_
                                 _tl241366242041_))
                            (___match252121252122_
                             _e241347241980_
                             _hd241346241983_
                             _tl241345241985_
                             _e241350241988_
                             _hd241349241991_
                             _tl241348241993_
                             _e241353241996_
                             _hd241352241999_
                             _tl241351242001_
                             _e241356242004_
                             _hd241355242007_
                             _tl241354242009_
                             _e241359242012_
                             _hd241358242015_
                             _tl241357242017_
                             _e241362242020_
                             _hd241361242023_
                             _tl241360242025_
                             _e241365242028_
                             _hd241364242031_
                             _tl241363242033_
                             _e241368242036_
                             _hd241367242039_
                             _tl241366242041_
                             _e241371242044_
                             _hd241370242047_
                             _tl241369242049_))))
                     (___match251943251944_
                      (lambda (_e241303242172_
                               _hd241302242175_
                               _tl241301242177_
                               _e241306242180_
                               _hd241305242183_
                               _tl241304242185_
                               _e241309242188_
                               _hd241308242191_
                               _tl241307242193_
                               _e241312242196_
                               _hd241311242199_
                               _tl241310242201_
                               _e241315242204_
                               _hd241314242207_
                               _tl241313242209_
                               _e241318242212_
                               _hd241317242215_
                               _tl241316242217_
                               _e241321242220_
                               _hd241320242223_
                               _tl241319242225_
                               _e241324242228_
                               _hd241323242231_
                               _tl241322242233_
                               _e241327242236_
                               _hd241326242239_
                               _tl241325242241_
                               _e241330242244_
                               _hd241329242247_
                               _tl241328242249_
                               ___splice251842251843_
                               _target241331242252_
                               _tl241333242254_)
                        (letrec ((_loop241334242257_
                                  (lambda (_hd241332242260_ _args241338242262_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd241332242260_))
                                        (let ((_e241335242265_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd241332242260_))))
                                          (let ((_lp-tl241337242270_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e241335242265_)))
                                                (_lp-hd241336242268_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e241335242265_))))
                                            (let ((__tmp252785
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd241336242268_
                                                           _args241338242262_))))
                                              (declare (not safe))
                                              (_loop241334242257_
                                               _lp-tl241337242270_
                                               __tmp252785))))
                                        (let ((_args241339242273_
                                               (reverse _args241338242262_)))
                                          (let ((_L242276_ _args241339242273_)
                                                (_L242277_ _hd241329242247_)
                                                (_L242278_ _hd241320242223_)
                                                (_L242279_ _hd241311242199_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L242279_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L242278_
                                                        _self241279_)))
                                                (___kont251840251841_
                                                 _L242276_
                                                 _L242277_
                                                 _L242278_
                                                 _L242279_)
                                                (___match252131252132_
                                                 _e241303242172_
                                                 _hd241302242175_
                                                 _tl241301242177_
                                                 _e241306242180_
                                                 _hd241305242183_
                                                 _tl241304242185_
                                                 _e241309242188_
                                                 _hd241308242191_
                                                 _tl241307242193_
                                                 _e241312242196_
                                                 _hd241311242199_
                                                 _tl241310242201_
                                                 _e241315242204_
                                                 _hd241314242207_
                                                 _tl241313242209_
                                                 _e241318242212_
                                                 _hd241317242215_
                                                 _tl241316242217_
                                                 _e241321242220_
                                                 _hd241320242223_
                                                 _tl241319242225_
                                                 _e241324242228_
                                                 _hd241323242231_
                                                 _tl241322242233_
                                                 _e241327242236_
                                                 _hd241326242239_
                                                 _tl241325242241_
                                                 _e241330242244_
                                                 _hd241329242247_
                                                 _tl241328242249_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop241334242257_ _target241331242252_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx251838251839_))
                    (let ((_e241303242172_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx251838251839_))))
                      (let ((_tl241301242177_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241303242172_)))
                            (_hd241302242175_
                             (let ()
                               (declare (not safe))
                               (##car _e241303242172_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241301242177_))
                            (let ((_e241306242180_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241301242177_))))
                              (let ((_tl241304242185_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241306242180_)))
                                    (_hd241305242183_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241306242180_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd241305242183_))
                                    (let ((_e241309242188_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd241305242183_))))
                                      (let ((_tl241307242193_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241309242188_)))
                                            (_hd241308242191_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241309242188_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd241308242191_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd241308242191_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241307242193_))
                                                    (let ((_e241312242196_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241307242193_))))
                                                      (let ((_tl241310242201_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241312242196_)))
                    (_hd241311242199_
                     (let () (declare (not safe)) (##car _e241312242196_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl241310242201_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl241304242185_))
                        (let ((_e241315242204_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl241304242185_))))
                          (let ((_tl241313242209_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e241315242204_)))
                                (_hd241314242207_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e241315242204_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd241314242207_))
                                (let ((_e241318242212_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd241314242207_))))
                                  (let ((_tl241316242217_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241318242212_)))
                                        (_hd241317242215_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241318242212_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd241317242215_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd241317242215_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl241316242217_))
                                                (let ((_e241321242220_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl241316242217_))))
                                                  (let ((_tl241319242225_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e241321242220_)))
                                                        (_hd241320242223_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e241321242220_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl241319242225_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl241313242209_))
                                                            (let ((_e241324242228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl241313242209_))))
                      (let ((_tl241322242233_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241324242228_)))
                            (_hd241323242231_
                             (let ()
                               (declare (not safe))
                               (##car _e241324242228_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd241323242231_))
                            (let ((_e241327242236_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd241323242231_))))
                              (let ((_tl241325242241_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241327242236_)))
                                    (_hd241326242239_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241327242236_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd241326242239_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd241326242239_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241325242241_))
                                            (let ((_e241330242244_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241325242241_))))
                                              (let ((_tl241328242249_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241330242244_)))
                                                    (_hd241329242247_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241330242244_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl241328242249_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl241322242233_))
                                                        (let ((___splice251842251843_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl241322242233_ '0))))
                  (let ((_tl241333242254_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice251842251843_ '1)))
                        (_target241331242252_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice251842251843_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl241333242254_))
                        (___match251943251944_
                         _e241303242172_
                         _hd241302242175_
                         _tl241301242177_
                         _e241306242180_
                         _hd241305242183_
                         _tl241304242185_
                         _e241309242188_
                         _hd241308242191_
                         _tl241307242193_
                         _e241312242196_
                         _hd241311242199_
                         _tl241310242201_
                         _e241315242204_
                         _hd241314242207_
                         _tl241313242209_
                         _e241318242212_
                         _hd241317242215_
                         _tl241316242217_
                         _e241321242220_
                         _hd241320242223_
                         _tl241319242225_
                         _e241324242228_
                         _hd241323242231_
                         _tl241322242233_
                         _e241327242236_
                         _hd241326242239_
                         _tl241325242241_
                         _e241330242244_
                         _hd241329242247_
                         _tl241328242249_
                         ___splice251842251843_
                         _target241331242252_
                         _tl241333242254_)
                        (___match252131252132_
                         _e241303242172_
                         _hd241302242175_
                         _tl241301242177_
                         _e241306242180_
                         _hd241305242183_
                         _tl241304242185_
                         _e241309242188_
                         _hd241308242191_
                         _tl241307242193_
                         _e241312242196_
                         _hd241311242199_
                         _tl241310242201_
                         _e241315242204_
                         _hd241314242207_
                         _tl241313242209_
                         _e241318242212_
                         _hd241317242215_
                         _tl241316242217_
                         _e241321242220_
                         _hd241320242223_
                         _tl241319242225_
                         _e241324242228_
                         _hd241323242231_
                         _tl241322242233_
                         _e241327242236_
                         _hd241326242239_
                         _tl241325242241_
                         _e241330242244_
                         _hd241329242247_
                         _tl241328242249_))))
                (___match252131252132_
                 _e241303242172_
                 _hd241302242175_
                 _tl241301242177_
                 _e241306242180_
                 _hd241305242183_
                 _tl241304242185_
                 _e241309242188_
                 _hd241308242191_
                 _tl241307242193_
                 _e241312242196_
                 _hd241311242199_
                 _tl241310242201_
                 _e241315242204_
                 _hd241314242207_
                 _tl241313242209_
                 _e241318242212_
                 _hd241317242215_
                 _tl241316242217_
                 _e241321242220_
                 _hd241320242223_
                 _tl241319242225_
                 _e241324242228_
                 _hd241323242231_
                 _tl241322242233_
                 _e241327242236_
                 _hd241326242239_
                 _tl241325242241_
                 _e241330242244_
                 _hd241329242247_
                 _tl241328242249_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match252335252336_
                                                     _e241303242172_
                                                     _hd241302242175_
                                                     _tl241301242177_
                                                     _e241306242180_
                                                     _hd241305242183_
                                                     _tl241304242185_
                                                     _e241309242188_
                                                     _hd241308242191_
                                                     _tl241307242193_
                                                     _e241312242196_
                                                     _hd241311242199_
                                                     _tl241310242201_
                                                     _e241315242204_
                                                     _hd241314242207_
                                                     _tl241313242209_
                                                     _e241318242212_
                                                     _hd241317242215_
                                                     _tl241316242217_
                                                     _e241321242220_
                                                     _hd241320242223_
                                                     _tl241319242225_
                                                     _e241324242228_
                                                     _hd241323242231_
                                                     _tl241322242233_))))
                                            (___match252335252336_
                                             _e241303242172_
                                             _hd241302242175_
                                             _tl241301242177_
                                             _e241306242180_
                                             _hd241305242183_
                                             _tl241304242185_
                                             _e241309242188_
                                             _hd241308242191_
                                             _tl241307242193_
                                             _e241312242196_
                                             _hd241311242199_
                                             _tl241310242201_
                                             _e241315242204_
                                             _hd241314242207_
                                             _tl241313242209_
                                             _e241318242212_
                                             _hd241317242215_
                                             _tl241316242217_
                                             _e241321242220_
                                             _hd241320242223_
                                             _tl241319242225_
                                             _e241324242228_
                                             _hd241323242231_
                                             _tl241322242233_))
                                        (___match252011252012_
                                         _e241303242172_
                                         _hd241302242175_
                                         _tl241301242177_
                                         _e241306242180_
                                         _hd241305242183_
                                         _tl241304242185_
                                         _e241309242188_
                                         _hd241308242191_
                                         _tl241307242193_
                                         _e241312242196_
                                         _hd241311242199_
                                         _tl241310242201_
                                         _e241315242204_
                                         _hd241314242207_
                                         _tl241313242209_
                                         _e241318242212_
                                         _hd241317242215_
                                         _tl241316242217_
                                         _e241321242220_
                                         _hd241320242223_
                                         _tl241319242225_
                                         _e241324242228_
                                         _hd241323242231_
                                         _tl241322242233_
                                         _e241327242236_
                                         _hd241326242239_
                                         _tl241325242241_))
                                    (___match252335252336_
                                     _e241303242172_
                                     _hd241302242175_
                                     _tl241301242177_
                                     _e241306242180_
                                     _hd241305242183_
                                     _tl241304242185_
                                     _e241309242188_
                                     _hd241308242191_
                                     _tl241307242193_
                                     _e241312242196_
                                     _hd241311242199_
                                     _tl241310242201_
                                     _e241315242204_
                                     _hd241314242207_
                                     _tl241313242209_
                                     _e241318242212_
                                     _hd241317242215_
                                     _tl241316242217_
                                     _e241321242220_
                                     _hd241320242223_
                                     _tl241319242225_
                                     _e241324242228_
                                     _hd241323242231_
                                     _tl241322242233_))))
                            (___match252335252336_
                             _e241303242172_
                             _hd241302242175_
                             _tl241301242177_
                             _e241306242180_
                             _hd241305242183_
                             _tl241304242185_
                             _e241309242188_
                             _hd241308242191_
                             _tl241307242193_
                             _e241312242196_
                             _hd241311242199_
                             _tl241310242201_
                             _e241315242204_
                             _hd241314242207_
                             _tl241313242209_
                             _e241318242212_
                             _hd241317242215_
                             _tl241316242217_
                             _e241321242220_
                             _hd241320242223_
                             _tl241319242225_
                             _e241324242228_
                             _hd241323242231_
                             _tl241322242233_))))
                    (___match252273252274_
                     _e241303242172_
                     _hd241302242175_
                     _tl241301242177_
                     _e241306242180_
                     _hd241305242183_
                     _tl241304242185_
                     _e241309242188_
                     _hd241308242191_
                     _tl241307242193_
                     _e241312242196_
                     _hd241311242199_
                     _tl241310242201_
                     _e241315242204_
                     _hd241314242207_
                     _tl241313242209_
                     _e241318242212_
                     _hd241317242215_
                     _tl241316242217_
                     _e241321242220_
                     _hd241320242223_
                     _tl241319242225_))
                (___kont251856251857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont251856251857_))
                                            (___kont251856251857_))
                                        (___kont251856251857_))))
                                (___kont251856251857_))))
                        (___kont251856251857_))
                    (___kont251856251857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251856251857_))
                                                (___kont251856251857_))
                                            (___kont251856251857_))))
                                    (___kont251856251857_))))
                            (___kont251856251857_))))
                    (___kont251856251857_))))))))))
