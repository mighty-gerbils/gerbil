(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1707423043)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl239030_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp244352 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl239030_ __tmp244352))
           (let ()
             (declare (not safe))
             (table-set! _tbl239030_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl239030_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl239030_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl239030_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl239030_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx239013_ . _args239015_)
        (let ((__tmp244354
               (lambda ()
                 (declare (not safe))
                 (if (null? _args239015_)
                     (gxc#compile-e__0 _stx239013_)
                     (let ((_arg1239020_ (car _args239015_))
                           (_rest239022_ (cdr _args239015_)))
                       (if (null? _rest239022_)
                           (gxc#compile-e__1 _stx239013_ _arg1239020_)
                           (let ((_arg2239025_ (car _rest239022_))
                                 (_rest239027_ (cdr _rest239022_)))
                             (if (null? _rest239027_)
                                 (gxc#compile-e__2
                                  _stx239013_
                                  _arg1239020_
                                  _arg2239025_)
                                 (apply gxc#compile-e
                                        _stx239013_
                                        _arg1239020_
                                        _arg2239025_
                                        _rest239027_))))))))
              (__tmp244353 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp244354
           gxc#current-compile-methods
           __tmp244353))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl239010_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp244355 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl239010_ __tmp244355))
           (let ()
             (declare (not safe))
             (table-set! _tbl239010_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl239010_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl239010_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl239010_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl239010_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl239010_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl239010_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl239010_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl239010_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl239010_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl239010_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl239010_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl239010_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl239010_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl239010_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl239010_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl239010_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx238993_ . _args238995_)
        (let ((__tmp244357
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238995_)
                     (gxc#compile-e__0 _stx238993_)
                     (let ((_arg1239000_ (car _args238995_))
                           (_rest239002_ (cdr _args238995_)))
                       (if (null? _rest239002_)
                           (gxc#compile-e__1 _stx238993_ _arg1239000_)
                           (let ((_arg2239005_ (car _rest239002_))
                                 (_rest239007_ (cdr _rest239002_)))
                             (if (null? _rest239007_)
                                 (gxc#compile-e__2
                                  _stx238993_
                                  _arg1239000_
                                  _arg2239005_)
                                 (apply gxc#compile-e
                                        _stx238993_
                                        _arg1239000_
                                        _arg2239005_
                                        _rest239007_))))))))
              (__tmp244356 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp244357
           gxc#current-compile-methods
           __tmp244356))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl238990_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp244358 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl238990_ __tmp244358))
           (let ()
             (declare (not safe))
             (table-set! _tbl238990_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238990_ '%#call gxc#subst-object-refs-call%))
           _tbl238990_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx238973_ . _args238975_)
        (let ((__tmp244360
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238975_)
                     (gxc#compile-e__0 _stx238973_)
                     (let ((_arg1238980_ (car _args238975_))
                           (_rest238982_ (cdr _args238975_)))
                       (if (null? _rest238982_)
                           (gxc#compile-e__1 _stx238973_ _arg1238980_)
                           (let ((_arg2238985_ (car _rest238982_))
                                 (_rest238987_ (cdr _rest238982_)))
                             (if (null? _rest238987_)
                                 (gxc#compile-e__2
                                  _stx238973_
                                  _arg1238980_
                                  _arg2238985_)
                                 (apply gxc#compile-e
                                        _stx238973_
                                        _arg1238980_
                                        _arg2238985_
                                        _rest238987_))))))))
              (__tmp244359 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp244360
           gxc#current-compile-methods
           __tmp244359))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx235643_)
        (letrec ((_generate-method-bind235645_
                  (lambda (_$t238967_ _id238968_ _$id238969_)
                    (let ((_$tmp238971_
                           (let ((__tmp244361 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp244361))))
                      (let ((__tmp244406
                             (let ()
                               (declare (not safe))
                               (cons _$id238969_ '())))
                            (__tmp244362
                             (let ((__tmp244363
                                    (let ((__tmp244364
                                           (let ((__tmp244404
                                                  (let ((__tmp244405
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp244405)))
                                                 (__tmp244365
                                                  (let ((__tmp244366
                                                         (let ((__tmp244367
                                                                (let ((__tmp244368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp244369
                                      (let ((__tmp244370
                                             (let ((__tmp244390
                                                    (let ((__tmp244391
                                                           (let ((__tmp244403
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp238971_ '())))
                         (__tmp244392
                          (let ((__tmp244393
                                 (let ((__tmp244394
                                        (let ((__tmp244401
                                               (let ((__tmp244402
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp244402)))
                                              (__tmp244395
                                               (let ((__tmp244399
                                                      (let ((__tmp244400
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t238967_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp244400)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp244396
                                                      (let ((__tmp244397
                                                             (let ((__tmp244398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id238968_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp244398))))
                (declare (not safe))
                (cons __tmp244397 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp244399
                                                       __tmp244396))))
                                          (declare (not safe))
                                          (cons __tmp244401 __tmp244395))))
                                   (declare (not safe))
                                   (cons '%#call __tmp244394))))
                            (declare (not safe))
                            (cons __tmp244393 '()))))
                     (declare (not safe))
                     (cons __tmp244403 __tmp244392))))
              (declare (not safe))
              (cons __tmp244391 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp244371
                                                    (let ((__tmp244372
                                                           (let ((__tmp244373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244388
                                 (let ((__tmp244389
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp238971_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp244389)))
                                (__tmp244374
                                 (let ((__tmp244386
                                        (let ((__tmp244387
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp238971_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp244387)))
                                       (__tmp244375
                                        (let ((__tmp244376
                                               (let ((__tmp244377
                                                      (let ((__tmp244384
                                                             (let ((__tmp244385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp244385)))
                    (__tmp244378
                     (let ((__tmp244382
                            (let ((__tmp244383
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp244383)))
                           (__tmp244379
                            (let ((__tmp244380
                                   (let ((__tmp244381
                                          (let ()
                                            (declare (not safe))
                                            (cons _id238968_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp244381))))
                              (declare (not safe))
                              (cons __tmp244380 '()))))
                       (declare (not safe))
                       (cons __tmp244382 __tmp244379))))
                (declare (not safe))
                (cons __tmp244384 __tmp244378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp244377))))
                                          (declare (not safe))
                                          (cons __tmp244376 '()))))
                                   (declare (not safe))
                                   (cons __tmp244386 __tmp244375))))
                            (declare (not safe))
                            (cons __tmp244388 __tmp244374))))
                     (declare (not safe))
                     (cons '%#if __tmp244373))))
              (declare (not safe))
              (cons __tmp244372 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp244390
                                                     __tmp244371))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp244370))))
                                 (declare (not safe))
                                 (cons __tmp244369 '()))))
                          (declare (not safe))
                          (cons '() __tmp244368))))
                   (declare (not safe))
                   (cons '%#lambda __tmp244367))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244366 '()))))
                                             (declare (not safe))
                                             (cons __tmp244404 __tmp244365))))
                                      (declare (not safe))
                                      (cons '%#call __tmp244364))))
                               (declare (not safe))
                               (cons __tmp244363 '()))))
                        (declare (not safe))
                        (cons __tmp244406 __tmp244362)))))
                 (_generate-slot-bind235646_
                  (lambda (_$t238961_ _id238962_ _$id238963_)
                    (let ((_$tmp238965_
                           (let ((__tmp244407 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp244407))))
                      (let ((__tmp244444
                             (let ()
                               (declare (not safe))
                               (cons _$id238963_ '())))
                            (__tmp244408
                             (let ((__tmp244409
                                    (let ((__tmp244410
                                           (let ((__tmp244430
                                                  (let ((__tmp244431
                                                         (let ((__tmp244443
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp238965_ '())))
                       (__tmp244432
                        (let ((__tmp244433
                               (let ((__tmp244434
                                      (let ((__tmp244441
                                             (let ((__tmp244442
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset*
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp244442)))
                                            (__tmp244435
                                             (let ((__tmp244439
                                                    (let ((__tmp244440
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t238961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp244440)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp244436
                                                    (let ((__tmp244437
                                                           (let ((__tmp244438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id238962_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp244438))))
              (declare (not safe))
              (cons __tmp244437 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp244439
                                                     __tmp244436))))
                                        (declare (not safe))
                                        (cons __tmp244441 __tmp244435))))
                                 (declare (not safe))
                                 (cons '%#call __tmp244434))))
                          (declare (not safe))
                          (cons __tmp244433 '()))))
                   (declare (not safe))
                   (cons __tmp244443 __tmp244432))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244431 '())))
                                                 (__tmp244411
                                                  (let ((__tmp244412
                                                         (let ((__tmp244413
                                                                (let ((__tmp244428
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp244429
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp238965_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp244429)))
                              (__tmp244414
                               (let ((__tmp244426
                                      (let ((__tmp244427
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp238965_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp244427)))
                                     (__tmp244415
                                      (let ((__tmp244416
                                             (let ((__tmp244417
                                                    (let ((__tmp244424
                                                           (let ((__tmp244425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp244425)))
                  (__tmp244418
                   (let ((__tmp244422
                          (let ((__tmp244423
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp244423)))
                         (__tmp244419
                          (let ((__tmp244420
                                 (let ((__tmp244421
                                        (let ()
                                          (declare (not safe))
                                          (cons _id238962_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp244421))))
                            (declare (not safe))
                            (cons __tmp244420 '()))))
                     (declare (not safe))
                     (cons __tmp244422 __tmp244419))))
              (declare (not safe))
              (cons __tmp244424 __tmp244418))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp244417))))
                                        (declare (not safe))
                                        (cons __tmp244416 '()))))
                                 (declare (not safe))
                                 (cons __tmp244426 __tmp244415))))
                          (declare (not safe))
                          (cons __tmp244428 __tmp244414))))
                   (declare (not safe))
                   (cons '%#if __tmp244413))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244412 '()))))
                                             (declare (not safe))
                                             (cons __tmp244430 __tmp244411))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp244410))))
                               (declare (not safe))
                               (cons __tmp244409 '()))))
                        (declare (not safe))
                        (cons __tmp244444 __tmp244408)))))
                 (_generate-class-check-bind235647_
                  (lambda (_$t238957_ _class-type238958_ _$class-type238959_)
                    (let ((__tmp244456
                           (let ()
                             (declare (not safe))
                             (cons _$class-type238959_ '())))
                          (__tmp244445
                           (let ((__tmp244446
                                  (let ((__tmp244447
                                         (let ((__tmp244454
                                                (let ((__tmp244455
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-subtype?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp244455)))
                                               (__tmp244448
                                                (let ((__tmp244452
                                                       (let ((__tmp244453
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _class-type238958_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp244453)))
              (__tmp244449
               (let ((__tmp244450
                      (let ((__tmp244451
                             (let ()
                               (declare (not safe))
                               (cons _$t238957_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp244451))))
                 (declare (not safe))
                 (cons __tmp244450 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp244452
                                                        __tmp244449))))
                                           (declare (not safe))
                                           (cons __tmp244454 __tmp244448))))
                                    (declare (not safe))
                                    (cons '%#call __tmp244447))))
                             (declare (not safe))
                             (cons __tmp244446 '()))))
                      (declare (not safe))
                      (cons __tmp244456 __tmp244445))))
                 (_generate-struct-check-bind235648_
                  (lambda (_$t238953_ _class-type238954_ _$class-type238955_)
                    (let ((__tmp244468
                           (let ()
                             (declare (not safe))
                             (cons _$class-type238955_ '())))
                          (__tmp244457
                           (let ((__tmp244458
                                  (let ((__tmp244459
                                         (let ((__tmp244466
                                                (let ((__tmp244467
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct-subtype?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp244467)))
                                               (__tmp244460
                                                (let ((__tmp244464
                                                       (let ((__tmp244465
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _class-type238954_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp244465)))
              (__tmp244461
               (let ((__tmp244462
                      (let ((__tmp244463
                             (let ()
                               (declare (not safe))
                               (cons _$t238953_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp244463))))
                 (declare (not safe))
                 (cons __tmp244462 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp244464
                                                        __tmp244461))))
                                           (declare (not safe))
                                           (cons __tmp244466 __tmp244460))))
                                    (declare (not safe))
                                    (cons '%#call __tmp244459))))
                             (declare (not safe))
                             (cons __tmp244458 '()))))
                      (declare (not safe))
                      (cons __tmp244468 __tmp244457))))
                 (_generate-specializer-impl235649_
                  (lambda (_$t238902_
                           _methods-bind238903_
                           _slots-bind238904_
                           _class-check-bind238905_
                           _struct-check-bind238906_
                           _specializer-impl238907_
                           _lifted-specializer-id238908_
                           _unchecked-specializer-impl238909_)
                    (let ((__tmp244469
                           (let ((__tmp244470
                                  (let ((__tmp244496
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t238902_ '())))
                                        (__tmp244471
                                         (let ((__tmp244472
                                                (let ((__tmp244473
                                                       (let ((__tmp244493
                                                              (let ((__tmp244494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp244495
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind238906_
                                              _class-check-bind238905_))))
                               (declare (not safe))
                               (foldr1 cons __tmp244495 _slots-bind238904_))))
                        (declare (not safe))
                        (foldr1 cons __tmp244494 _methods-bind238903_)))
                     (__tmp244474
                      (let ((__tmp244475
                             (if (or _lifted-specializer-id238908_
                                     _unchecked-specializer-impl238909_)
                                 (let* ((_$specializer238914_
                                         (let ((__tmp244476
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp244476)))
                                        (__tmp244477
                                         (let ((__tmp244489
                                                (let ((__tmp244490
                                                       (let ((__tmp244492
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer238914_ '())))
                     (__tmp244491
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl238907_ '()))))
                 (declare (not safe))
                 (cons __tmp244492 __tmp244491))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp244490 '())))
                                               (__tmp244478
                                                (let ((__tmp244479
                                                       (let _recur238916_ ((_rest238918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind238906_)))
                 (let* ((_rest238919238927_ _rest238918_)
                        (_else238921238935_
                         (lambda ()
                           (if _lifted-specializer-id238908_
                               (let ((__tmp244480
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id238908_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp244480))
                               _unchecked-specializer-impl238909_)))
                        (_K238923238941_
                         (lambda (_rest238938_ _checkq238939_)
                           (let ((__tmp244481
                                  (let ((__tmp244487
                                         (let ((__tmp244488
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq238939_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp244488)))
                                        (__tmp244482
                                         (let ((__tmp244486
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur238916_
                                                   _rest238938_)))
                                               (__tmp244483
                                                (let ((__tmp244484
                                                       (let ((__tmp244485
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer238914_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp244485))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp244484 '()))))
                                           (declare (not safe))
                                           (cons __tmp244486 __tmp244483))))
                                    (declare (not safe))
                                    (cons __tmp244487 __tmp244482))))
                             (declare (not safe))
                             (cons '%#if __tmp244481)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest238919238927_))
                       (let ((_hd238924238944_
                              (let ()
                                (declare (not safe))
                                (##car _rest238919238927_)))
                             (_tl238925238946_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest238919238927_))))
                         (let* ((_checkq238949_ _hd238924238944_)
                                (_rest238951_ _tl238925238946_))
                           (declare (not safe))
                           (_K238923238941_ _rest238951_ _checkq238949_)))
                       (let () (declare (not safe)) (_else238921238935_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp244479 '()))))
                                           (declare (not safe))
                                           (cons __tmp244489 __tmp244478))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp244477))
                                 _specializer-impl238907_)))
                        (declare (not safe))
                        (cons __tmp244475 '()))))
                 (declare (not safe))
                 (cons __tmp244493 __tmp244474))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp244473))))
                                           (declare (not safe))
                                           (cons __tmp244472 '()))))
                                    (declare (not safe))
                                    (cons __tmp244496 __tmp244471))))
                             (declare (not safe))
                             (cons '%#lambda __tmp244470))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244469 _stx235643_))))
                 (_generate-specializer-def235650_
                  (lambda (_id238896_
                           _specializer-id238897_
                           _specializer-impl238898_
                           _lifted-specializer-id238899_
                           _unchecked-specializer-impl238900_)
                    (let ((__tmp244497
                           (let ((__tmp244498
                                  (let ((__tmp244499
                                         (let ((__tmp244519
                                                (let ((__tmp244520
                                                       (let ((__tmp244521
                                                              (let ((__tmp244523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id238897_ '())))
                            (__tmp244522
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl238898_ '()))))
                        (declare (not safe))
                        (cons __tmp244523 __tmp244522))))
                 (declare (not safe))
                 (cons '%#define-values __tmp244521))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp244520
                                                   _stx235643_)))
                                               (__tmp244500
                                                (let ((__tmp244507
                                                       (let ((__tmp244508
                                                              (let ((__tmp244509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp244510
                                    (let ((__tmp244517
                                           (let ((__tmp244518
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp244518)))
                                          (__tmp244511
                                           (let ((__tmp244515
                                                  (let ((__tmp244516
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id238896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp244516)))
                                                 (__tmp244512
                                                  (let ((__tmp244513
                                                         (let ((__tmp244514
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id238897_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp244514))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244513 '()))))
                                             (declare (not safe))
                                             (cons __tmp244515 __tmp244512))))
                                      (declare (not safe))
                                      (cons __tmp244517 __tmp244511))))
                               (declare (not safe))
                               (cons '%#call __tmp244510))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp244509 _stx235643_))))
                 (declare (not safe))
                 (cons __tmp244508 '())))
              (__tmp244501
               (if _lifted-specializer-id238899_
                   (let ((__tmp244502
                          (let ((__tmp244503
                                 (let ((__tmp244504
                                        (let ((__tmp244506
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id238899_
                                                       '())))
                                              (__tmp244505
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl238900_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp244506 __tmp244505))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp244504))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp244503 _stx235643_))))
                     (declare (not safe))
                     (cons __tmp244502 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp244507
                                                          __tmp244501))))
                                           (declare (not safe))
                                           (cons __tmp244519 __tmp244500))))
                                    (declare (not safe))
                                    (cons _stx235643_ __tmp244499))))
                             (declare (not safe))
                             (cons '%#begin __tmp244498))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244497 _stx235643_)))))
          (let* ((___stx243313243314_ _stx235643_)
                 (_g235653235673_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx243313243314_)))))
            (let ((___kont243315243316_
                   (lambda (_L235717_ _L235718_)
                     (let ((_method-calls235737_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs235738_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check235739_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check235740_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert235741_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty235742_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?235744_
                                 (lambda ()
                                   (if (let ((__tmp244528
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls235737_))))
                                         (declare (not safe))
                                         (fxzero? __tmp244528))
                                       (if (let ((__tmp244527
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs235738_))))
                                             (declare (not safe))
                                             (fxzero? __tmp244527))
                                           (if (let ((__tmp244526
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check235739_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp244526))
                                               (if (let ((__tmp244525
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check235740_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp244525))
                                                   (let ((__tmp244524
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert235741_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp244524))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?235745_
                                 (lambda ()
                                   (let ((_$e238889_
                                          (let ((__tmp244529
                                                 (let ((__tmp244530
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check235740_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp244530))))
                                            (declare (not safe))
                                            (not __tmp244529))))
                                     (if _$e238889_
                                         _$e238889_
                                         (let ((__tmp244531
                                                (let ((__tmp244532
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert235741_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp244532))))
                                           (declare (not safe))
                                           (not __tmp244531))))))
                                (_lift-unchecked-specializer?235746_
                                 (lambda ()
                                   (if (let ((__tmp244535
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls235737_))))
                                         (declare (not safe))
                                         (fxzero? __tmp244535))
                                       (if (let ((__tmp244534
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs235738_))))
                                             (declare (not safe))
                                             (fxzero? __tmp244534))
                                           (let ((__tmp244533
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check235739_))))
                                             (declare (not safe))
                                             (fxzero? __tmp244533))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L235717_))
                             (let* ((___stx243227243228_ _L235717_)
                                    (_g236259236277_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx243227243228_)))))
                               (let ((___kont243229243230_
                                      (lambda (_L236313_ _L236314_ _L236315_)
                                        (for-each
                                         (lambda (_g236330236332_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g236330236332_
                                              _L236315_
                                              _method-calls235737_
                                              _slot-refs235738_
                                              _class-type-check235739_
                                              _struct-type-check235740_
                                              _struct-type-assert235741_)))
                                         _L236313_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?235744_))
                                            _stx235643_
                                            (let* ((_specializer-id236341_
                                                    (let* ((_id236335_
                                                            (let ((__tmp244685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L235718_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp244685 '"::specialize")))
                   (_specializer-id236338_
                    (let ((__tmp244686
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx235643_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id236335_ __tmp244686))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id236338_))
              _specializer-id236338_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id236348_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?235746_))
                                                        (let* ((_id236343_
                                                                (let ((__tmp244687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L235718_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp244687
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id236345_
                        (let ((__tmp244688
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx235643_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id236343_ __tmp244688))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id236345_))
                  _lifted-specializer-id236345_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t236350_
                                                    (let ((__tmp244689
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp244689)))
                                                   (_methods236352_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls235737_)))
                                                   (_$methods236356_
                                                    (map (lambda (_id236354_)
                                                           (let ((__tmp244690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id236354_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp244690)))
                 _methods236352_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g244691_
                                                    (for-each
                                                     (lambda (_g236357236360_
                                                              _g236358236362_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls235737_
                                                          _g236357236360_
                                                          _g236358236362_)))
                                                     _methods236352_
                                                     _$methods236356_))
                                                   (_methods-bind236373_
                                                    (map (lambda (_g236365236368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g236366236370_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind235645_
                      _$t236350_
                      _g236365236368_
                      _g236366236370_)))
                 _methods236352_
                 _$methods236356_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots236375_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs235738_)))
                                                   (_$slots236379_
                                                    (map (lambda (_id236377_)
                                                           (let ((__tmp244692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id236377_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp244692)))
                 _slots236375_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g244693_
                                                    (for-each
                                                     (lambda (_g236380236383_
                                                              _g236381236385_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs235738_
                                                          _g236380236383_
                                                          _g236381236385_)))
                                                     _slots236375_
                                                     _$slots236379_))
                                                   (_slots-bind236396_
                                                    (map (lambda (_g236388236391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g236389236393_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind235646_
                      _$t236350_
                      _g236388236391_
                      _g236389236393_)))
                 _slots236375_
                 _$slots236379_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check236398_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check235739_)))
                                                   (_$class-check236401_
                                                    (map (lambda (_g244694_)
                                                           (let ((__tmp244695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp244695)))
                 _class-check236398_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g244696_
                                                    (for-each
                                                     (lambda (_g236402236405_
                                                              _g236403236407_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check235739_
                                                          _g236402236405_
                                                          _g236403236407_)))
                                                     _class-check236398_
                                                     _$class-check236401_))
                                                   (_class-check-bind236418_
                                                    (map (lambda (_g236410236413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g236411236415_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind235647_
                      _$t236350_
                      _g236410236413_
                      _g236411236415_)))
                 _class-check236398_
                 _$class-check236401_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all236420_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check235740_
                                                       _struct-type-assert235741_)))
                                                   (_struct-check236422_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all236420_)))
                                                   (_$struct-check236425_
                                                    (map (lambda (_g244697_)
                                                           (let ((__tmp244698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp244698)))
                 _struct-check236422_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g244699_
                                                    (for-each
                                                     (lambda (_g236426236429_
                                                              _g236427236431_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all236420_
                                                          _g236426236429_
                                                          _g236427236431_)))
                                                     _struct-check236422_
                                                     _$struct-check236425_))
                                                   (_struct-check-bind236442_
                                                    (map (lambda (_g236434236437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g236435236439_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind235648_
                      _$t236350_
                      _g236434236437_
                      _g236435236439_)))
                 _struct-check236422_
                 _$struct-check236425_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl236453_
                                                    (lambda (_struct-type-check1236444_
                                                             _struct-type-check2236445_)
                                                      (let* ((_specializer-body236451_
                                                              (map (lambda (_g236446236448_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g236446236448_
                                _L236315_
                                _$t236350_
                                _method-calls235737_
                                _slot-refs235738_
                                _class-type-check235739_
                                _struct-type-check1236444_
                                _struct-type-check2236445_)))
                           _L236313_))
                     (__tmp244700
                      (let ((__tmp244701
                             (let ((__tmp244702
                                    (let ()
                                      (declare (not safe))
                                      (cons _L236315_ _L236314_))))
                               (declare (not safe))
                               (cons __tmp244702 _specializer-body236451_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp244701))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp244700 _stx235643_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl236455_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl236453_
                                                       _struct-check-all236420_
                                                       _empty235742_)))
                                                   (_unchecked-specializer-impl236457_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?235745_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl236453_
                                                           _empty235742_
                                                           _struct-check-all236420_))
                                                        '#f))
                                                   (_specializer-impl236459_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl235649_
                                                       _$t236350_
                                                       _methods-bind236373_
                                                       _slots-bind236396_
                                                       _class-check-bind236418_
                                                       _struct-check-bind236442_
                                                       _specializer-impl236455_
                                                       _lifted-specializer-id236348_
                                                       _unchecked-specializer-impl236457_))))
                                              (let ((__tmp244704
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L235718_)))
                                                    (__tmp244703
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id236341_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp244704
                                                 '" => "
                                                 __tmp244703))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def235650_
                                                 _L235718_
                                                 _specializer-id236341_
                                                 _specializer-impl236459_
                                                 _lifted-specializer-id236348_
                                                 _unchecked-specializer-impl236457_))))))
                                     (___kont243231243232_
                                      (lambda () _stx235643_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx243227243228_))
                                     (let ((_e236266236289_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx243227243228_))))
                                       (let ((_tl236264236294_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e236266236289_)))
                                             (_hd236265236292_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e236266236289_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl236264236294_))
                                             (let ((_e236269236297_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl236264236294_))))
                                               (let ((_tl236267236302_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e236269236297_)))
                                                     (_hd236268236300_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e236269236297_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd236268236300_))
                                                     (let ((_e236272236305_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd236268236300_))))
                                                       (let ((_tl236270236310_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e236272236305_)))
                     (_hd236271236308_
                      (let () (declare (not safe)) (##car _e236272236305_))))
                 (___kont243229243230_
                  _tl236267236302_
                  _tl236270236310_
                  _hd236271236308_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont243231243232_))))
                                             (___kont243231243232_))))
                                     (___kont243231243232_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L235717_))
                                 (let* ((_g236465236484_
                                         (lambda (_g236466236481_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g236466236481_))))
                                        (_g236464236835_
                                         (lambda (_g236466236487_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g236466236487_))
                                               (let ((_e236470236489_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g236466236487_))))
                                                 (let ((_hd236469236492_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e236470236489_)))
                                                       (_tl236468236494_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e236470236489_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl236468236494_))
                                                       (let ((_g244661_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl236468236494_ '0))))
                 (begin
                   (let ((_g244662_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g244661_)
                                (##vector-length _g244661_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g244662_ 2)))
                         (error "Context expects 2 values" _g244662_)))
                   (let ((_target236471236497_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g244661_ 0)))
                         (_tl236473236499_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g244661_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl236473236499_))
                         (letrec ((_loop236474236502_
                                   (lambda (_hd236472236505_
                                            _clause236478236507_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd236472236505_))
                                         (let ((_e236475236510_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd236472236505_))))
                                           (let ((_lp-hd236476236513_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e236475236510_)))
                                                 (_lp-tl236477236515_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e236475236510_))))
                                             (let ((__tmp244684
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd236476236513_
                                                            _clause236478236507_))))
                                               (declare (not safe))
                                               (_loop236474236502_
                                                _lp-tl236477236515_
                                                __tmp244684))))
                                         (let ((_clause236479236518_
                                                (reverse _clause236478236507_)))
                                           ((lambda (_L236521_)
                                              (for-each
                                               (lambda (_clause236534_)
                                                 (let* ((___stx243253243254_
                                                         _clause236534_)
                                                        (_g236537236552_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx243253243254_)))))
                                                   (let ((___kont243255243256_
                                                          (lambda (_L236580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L236581_
                           _L236582_)
                    (for-each
                     (lambda (_g236597236599_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g236597236599_
                          _L236582_
                          _method-calls235737_
                          _slot-refs235738_
                          _class-type-check235739_
                          _struct-type-check235740_
                          _struct-type-assert235741_)))
                     _L236580_)))
                 (___kont243257243258_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx243253243254_))
                                                         (let ((_e236544236564_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx243253243254_))))
                   (let ((_tl236542236569_
                          (let ()
                            (declare (not safe))
                            (##cdr _e236544236564_)))
                         (_hd236543236567_
                          (let ()
                            (declare (not safe))
                            (##car _e236544236564_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd236543236567_))
                         (let ((_e236547236572_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd236543236567_))))
                           (let ((_tl236545236577_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e236547236572_)))
                                 (_hd236546236575_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e236547236572_))))
                             (___kont243255243256_
                              _tl236542236569_
                              _tl236545236577_
                              _hd236546236575_)))
                         (___kont243257243258_))))
                 (___kont243257243258_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp244663
                                                      (lambda (_g236604236607_
                                                               _g236605236609_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g236604236607_
                                                                _g236605236609_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp244663
                                                         '()
                                                         _L236521_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?235744_))
                                                  _stx235643_
                                                  (let* ((_specializer-id236618_
                                                          (let* ((_id236612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244664
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L235718_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp244664 '"::specialize")))
                         (_specializer-id236615_
                          (let ((__tmp244665
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx235643_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id236612_ __tmp244665))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id236615_))
                    _specializer-id236615_))
                 (_lifted-specializer-id236625_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?235746_))
                      (let* ((_id236620_
                              (let ((__tmp244666
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L235718_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp244666
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id236622_
                              (let ((__tmp244667
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx235643_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id236620_
                                 __tmp244667))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id236622_))
                        _lifted-specializer-id236622_)
                      '#f))
                 (_$t236627_
                  (let ((__tmp244668 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp244668)))
                 (_methods236629_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls235737_)))
                 (_$methods236633_
                  (map (lambda (_id236631_)
                         (let ((__tmp244669 (gensym _id236631_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp244669)))
                       _methods236629_))
                 (_g244670_
                  (for-each
                   (lambda (_g236634236637_ _g236635236639_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls235737_
                        _g236634236637_
                        _g236635236639_)))
                   _methods236629_
                   _$methods236633_))
                 (_methods-bind236650_
                  (map (lambda (_g236642236645_ _g236643236647_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind235645_
                            _$t236627_
                            _g236642236645_
                            _g236643236647_)))
                       _methods236629_
                       _$methods236633_))
                 (_slots236652_
                  (let () (declare (not safe)) (hash-keys _slot-refs235738_)))
                 (_$slots236656_
                  (map (lambda (_id236654_)
                         (let ((__tmp244671 (gensym _id236654_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp244671)))
                       _slots236652_))
                 (_g244672_
                  (for-each
                   (lambda (_g236657236660_ _g236658236662_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs235738_
                        _g236657236660_
                        _g236658236662_)))
                   _slots236652_
                   _$slots236656_))
                 (_slots-bind236673_
                  (map (lambda (_g236665236668_ _g236666236670_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind235646_
                            _$t236627_
                            _g236665236668_
                            _g236666236670_)))
                       _slots236652_
                       _$slots236656_))
                 (_class-check236675_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check235739_)))
                 (_$class-check236678_
                  (map (lambda (_g244673_)
                         (let ((__tmp244674 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp244674)))
                       _class-check236675_))
                 (_g244675_
                  (for-each
                   (lambda (_g236679236682_ _g236680236684_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check235739_
                        _g236679236682_
                        _g236680236684_)))
                   _class-check236675_
                   _$class-check236678_))
                 (_class-check-bind236695_
                  (map (lambda (_g236687236690_ _g236688236692_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind235647_
                            _$t236627_
                            _g236687236690_
                            _g236688236692_)))
                       _class-check236675_
                       _$class-check236678_))
                 (_struct-check-all236697_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check235740_
                     _struct-type-assert235741_)))
                 (_struct-check236699_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all236697_)))
                 (_$struct-check236702_
                  (map (lambda (_g244676_)
                         (let ((__tmp244677 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp244677)))
                       _struct-check236699_))
                 (_g244678_
                  (for-each
                   (lambda (_g236703236706_ _g236704236708_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all236697_
                        _g236703236706_
                        _g236704236708_)))
                   _struct-check236699_
                   _$struct-check236702_))
                 (_struct-check-bind236719_
                  (map (lambda (_g236711236714_ _g236712236716_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind235648_
                            _$t236627_
                            _g236711236714_
                            _g236712236716_)))
                       _struct-check236699_
                       _$struct-check236702_))
                 (_make-specializer-impl236826_
                  (lambda (_struct-type-check1236721_
                           _struct-type-check2236722_)
                    (let* ((_specializer-clauses236824_
                            (map (lambda (_clause236724_)
                                   (let* ((___stx243273243274_ _clause236724_)
                                          (_g236727236742_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx243273243274_)))))
                                     (let ((___kont243275243276_
                                            (lambda (_L236770_
                                                     _L236771_
                                                     _L236772_)
                                              (let* ((_body236812_
                                                      (map (lambda (_g236807236809_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g236807236809_
                        _L236772_
                        _$t236627_
                        _method-calls235737_
                        _slot-refs235738_
                        _class-type-check235739_
                        _struct-type-check1236721_
                        _struct-type-check2236722_)))
                   _L236770_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp244679
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L236772_
                                                              _L236771_))))
                                                (declare (not safe))
                                                (cons __tmp244679
                                                      _body236812_))))
                                           (___kont243277243278_
                                            (lambda () _clause236724_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx243273243274_))
                                           (let ((_e236734236754_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx243273243274_))))
                                             (let ((_tl236732236759_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e236734236754_)))
                                                   (_hd236733236757_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e236734236754_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd236733236757_))
                                                   (let ((_e236737236762_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd236733236757_))))
                                                     (let ((_tl236735236767_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e236737236762_)))
                                                           (_hd236736236765_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e236737236762_))))
                                                       (___kont243275243276_
                                                        _tl236732236759_
                                                        _tl236735236767_
                                                        _hd236736236765_)))
                                                   (___kont243277243278_))))
                                           (___kont243277243278_)))))
                                 (let ((__tmp244680
                                        (lambda (_g236816236819_
                                                 _g236817236821_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g236816236819_
                                                  _g236817236821_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp244680 '() _L236521_))))
                           (__tmp244681
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses236824_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244681 _stx235643_))))
                 (_specializer-impl236828_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl236826_
                     _struct-check-all236697_
                     _empty235742_)))
                 (_unchecked-specializer-impl236830_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?235745_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl236826_
                         _empty235742_
                         _struct-check-all236697_))
                      '#f))
                 (_specializer-impl236832_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl235649_
                     _$t236627_
                     _methods-bind236650_
                     _slots-bind236673_
                     _class-check-bind236695_
                     _struct-check-bind236719_
                     _specializer-impl236828_
                     _lifted-specializer-id236625_
                     _unchecked-specializer-impl236830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp244683
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L235718_)))
                                                          (__tmp244682
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id236618_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp244683
                                                       '" => "
                                                       __tmp244682))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def235650_
                                                       _L235718_
                                                       _specializer-id236618_
                                                       _specializer-impl236832_
                                                       _lifted-specializer-id236625_
                                                       _unchecked-specializer-impl236830_)))))
                                            _clause236479236518_))))))
                           (let ()
                             (declare (not safe))
                             (_loop236474236502_ _target236471236497_ '())))
                         (let ()
                           (declare (not safe))
                           (_g236465236484_ _g236466236487_))))))
               (let ()
                 (declare (not safe))
                 (_g236465236484_ _g236466236487_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g236465236484_
                                                  _g236466236487_))))))
                                   (declare (not safe))
                                   (_g236464236835_ _L235717_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L235717_))
                                     (let* ((_g236838236868_
                                             (lambda (_g236839236865_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g236839236865_))))
                                            (_g236837237556_
                                             (lambda (_g236839236871_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g236839236871_))
                                                   (let ((_e236845236873_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g236839236871_))))
                                                     (let ((_hd236844236876_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e236845236873_)))
                                                           (_tl236843236878_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e236845236873_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl236843236878_))
                                                           (let ((_e236848236881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl236843236878_))))
                     (let ((_hd236847236884_
                            (let ()
                              (declare (not safe))
                              (##car _e236848236881_)))
                           (_tl236846236886_
                            (let ()
                              (declare (not safe))
                              (##cdr _e236848236881_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd236847236884_))
                           (let ((_e236851236889_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd236847236884_))))
                             (let ((_hd236850236892_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e236851236889_)))
                                   (_tl236849236894_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e236851236889_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd236850236892_))
                                   (let ((_e236854236897_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd236850236892_))))
                                     (let ((_hd236853236900_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e236854236897_)))
                                           (_tl236852236902_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e236854236897_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd236853236900_))
                                           (let ((_e236857236905_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd236853236900_))))
                                             (let ((_hd236856236908_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e236857236905_)))
                                                   (_tl236855236910_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e236857236905_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl236855236910_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl236852236902_))
                                                       (let ((_e236860236913_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl236852236902_))))
                 (let ((_hd236859236916_
                        (let () (declare (not safe)) (##car _e236860236913_)))
                       (_tl236858236918_
                        (let () (declare (not safe)) (##cdr _e236860236913_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl236858236918_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl236849236894_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl236846236886_))
                               (let ((_e236863236921_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl236846236886_))))
                                 (let ((_hd236862236924_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e236863236921_)))
                                       (_tl236861236926_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e236863236921_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl236861236926_))
                                       ((lambda (_L236929_ _L236930_ _L236931_)
                                          (let* ((_g236954236972_
                                                  (lambda (_g236955236969_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g236955236969_))))
                                                 (_g236953237023_
                                                  (lambda (_g236955236975_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g236955236975_))
                                                        (let ((_e236961236977_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g236955236975_))))
                  (let ((_hd236960236980_
                         (let () (declare (not safe)) (##car _e236961236977_)))
                        (_tl236959236982_
                         (let ()
                           (declare (not safe))
                           (##cdr _e236961236977_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl236959236982_))
                        (let ((_e236964236985_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl236959236982_))))
                          (let ((_hd236963236988_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e236964236985_)))
                                (_tl236962236990_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e236964236985_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd236963236988_))
                                (let ((_e236967236993_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd236963236988_))))
                                  (let ((_hd236966236996_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e236967236993_)))
                                        (_tl236965236998_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e236967236993_))))
                                    ((lambda (_L237001_ _L237002_ _L237003_)
                                       (for-each
                                        (lambda (_g237018237020_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g237018237020_
                                             _L237003_
                                             _method-calls235737_
                                             _slot-refs235738_
                                             _class-type-check235739_
                                             _struct-type-check235740_
                                             _struct-type-assert235741_)))
                                        _L237001_))
                                     _tl236962236990_
                                     _tl236965236998_
                                     _hd236966236996_)))
                                (let ()
                                  (declare (not safe))
                                  (_g236954236972_ _g236955236975_)))))
                        (let ()
                          (declare (not safe))
                          (_g236954236972_ _g236955236975_)))))
                (let ()
                  (declare (not safe))
                  (_g236954236972_ _g236955236975_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g236953237023_ _L236930_))
                                          (let* ((_g237026237045_
                                                  (lambda (_g237027237042_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g237027237042_))))
                                                 (_g237025237164_
                                                  (lambda (_g237027237048_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g237027237048_))
                                                        (let ((_e237031237050_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g237027237048_))))
                  (let ((_hd237030237053_
                         (let () (declare (not safe)) (##car _e237031237050_)))
                        (_tl237029237055_
                         (let ()
                           (declare (not safe))
                           (##cdr _e237031237050_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl237029237055_))
                        (let ((_g244624_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl237029237055_
                                  '0))))
                          (begin
                            (let ((_g244625_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g244624_)
                                         (##vector-length _g244624_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g244625_ 2)))
                                  (error "Context expects 2 values"
                                         _g244625_)))
                            (let ((_target237032237058_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g244624_ 0)))
                                  (_tl237034237060_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g244624_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl237034237060_))
                                  (letrec ((_loop237035237063_
                                            (lambda (_hd237033237066_
                                                     _clause237039237068_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd237033237066_))
                                                  (let ((_e237036237071_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd237033237066_))))
                                                    (let ((_lp-hd237037237074_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237036237071_)))
                                                          (_lp-tl237038237076_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237036237071_))))
                                                      (let ((__tmp244627
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd237037237074_ _clause237039237068_))))
                (declare (not safe))
                (_loop237035237063_ _lp-tl237038237076_ __tmp244627))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause237040237079_
                                                         (reverse _clause237039237068_)))
                                                    ((lambda (_L237082_)
                                                       (for-each
                                                        (lambda (_clause237095_)
                                                          (let* ((_g237097237112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g237098237109_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g237098237109_))))
                         (_g237096237154_
                          (lambda (_g237098237115_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g237098237115_))
                                (let ((_e237104237117_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g237098237115_))))
                                  (let ((_hd237103237120_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237104237117_)))
                                        (_tl237102237122_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237104237117_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd237103237120_))
                                        (let ((_e237107237125_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd237103237120_))))
                                          (let ((_hd237106237128_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e237107237125_)))
                                                (_tl237105237130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e237107237125_))))
                                            ((lambda (_L237133_
                                                      _L237134_
                                                      _L237135_)
                                               (for-each
                                                (lambda (_g237149237151_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g237149237151_
                                                     _L237135_
                                                     _method-calls235737_
                                                     _slot-refs235738_
                                                     _class-type-check235739_
                                                     _struct-type-check235740_
                                                     _struct-type-assert235741_)))
                                                _L237133_))
                                             _tl237102237122_
                                             _tl237105237130_
                                             _hd237106237128_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g237097237112_ _g237098237115_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g237097237112_ _g237098237115_))))))
                    (declare (not safe))
                    (_g237096237154_ _clause237095_)))
                (let ((__tmp244626
                       (lambda (_g237156237159_ _g237157237161_)
                         (let ()
                           (declare (not safe))
                           (cons _g237156237159_ _g237157237161_)))))
                  (declare (not safe))
                  (foldr1 __tmp244626 '() _L237082_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause237040237079_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop237035237063_
                                       _target237032237058_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g237026237045_ _g237027237048_))))))
                        (let ()
                          (declare (not safe))
                          (_g237026237045_ _g237027237048_)))))
                (let ()
                  (declare (not safe))
                  (_g237026237045_ _g237027237048_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g237025237164_ _L236929_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?235744_))
                                              _stx235643_
                                              (let* ((_specializer-id237173_
                                                      (let* ((_id237167_
                                                              (let ((__tmp244628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L235718_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp244628 '"::specialize")))
                     (_specializer-id237170_
                      (let ((__tmp244629
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx235643_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id237167_ __tmp244629))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id237170_))
                _specializer-id237170_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id237180_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?235746_))
                                                          (let* ((_id237175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244630
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L235718_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp244630
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id237177_
                          (let ((__tmp244631
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx235643_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id237175_ __tmp244631))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id237177_))
                    _lifted-specializer-id237177_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t237182_
                                                      (let ((__tmp244632
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp244632)))
                                                     (_methods237184_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls235737_)))
                                                     (_$methods237188_
                                                      (map (lambda (_id237186_)
                                                             (let ((__tmp244633
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id237186_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp244633)))
                   _methods237184_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g244634_
                                                      (for-each
                                                       (lambda (_g237189237192_
                                                                _g237190237194_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls235737_
                                                            _g237189237192_
                                                            _g237190237194_)))
                                                       _methods237184_
                                                       _$methods237188_))
                                                     (_methods-bind237205_
                                                      (map (lambda (_g237197237200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g237198237202_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind235645_
                        _$t237182_
                        _g237197237200_
                        _g237198237202_)))
                   _methods237184_
                   _$methods237188_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots237207_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs235738_)))
                                                     (_$slots237211_
                                                      (map (lambda (_id237209_)
                                                             (let ((__tmp244635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id237209_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp244635)))
                   _slots237207_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g244636_
                                                      (for-each
                                                       (lambda (_g237212237215_
                                                                _g237213237217_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs235738_
                                                            _g237212237215_
                                                            _g237213237217_)))
                                                       _slots237207_
                                                       _$slots237211_))
                                                     (_slots-bind237228_
                                                      (map (lambda (_g237220237223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g237221237225_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind235646_
                        _$t237182_
                        _g237220237223_
                        _g237221237225_)))
                   _slots237207_
                   _$slots237211_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check237230_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check235739_)))
                                                     (_$class-check237233_
                                                      (map (lambda (_g244637_)
                                                             (let ((__tmp244638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp244638)))
                   _class-check237230_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g244639_
                                                      (for-each
                                                       (lambda (_g237234237237_
                                                                _g237235237239_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check235739_
                                                            _g237234237237_
                                                            _g237235237239_)))
                                                       _class-check237230_
                                                       _$class-check237233_))
                                                     (_class-check-bind237250_
                                                      (map (lambda (_g237242237245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g237243237247_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind235647_
                        _$t237182_
                        _g237242237245_
                        _g237243237247_)))
                   _class-check237230_
                   _$class-check237233_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all237252_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check235740_
                                                         _struct-type-assert235741_)))
                                                     (_struct-check237254_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all237252_)))
                                                     (_$struct-check237257_
                                                      (map (lambda (_g244640_)
                                                             (let ((__tmp244641
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp244641)))
                   _struct-check237254_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g244642_
                                                      (for-each
                                                       (lambda (_g237258237261_
                                                                _g237259237263_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all237252_
                                                            _g237258237261_
                                                            _g237259237263_)))
                                                       _struct-check237254_
                                                       _$struct-check237257_))
                                                     (_struct-check-bind237274_
                                                      (map (lambda (_g237266237269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g237267237271_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind235648_
                        _$t237182_
                        _g237266237269_
                        _g237267237271_)))
                   _struct-check237254_
                   _$struct-check237257_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr237373_
                                                      (lambda (_struct-type-check1237276_
                                                               _struct-type-check2237277_)
                                                        (let* ((_g237279237297_
                                                                (lambda (_g237280237294_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g237280237294_))))
                       (_g237278237370_
                        (lambda (_g237280237300_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g237280237300_))
                              (let ((_e237286237302_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g237280237300_))))
                                (let ((_hd237285237305_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237286237302_)))
                                      (_tl237284237307_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237286237302_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237284237307_))
                                      (let ((_e237289237310_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237284237307_))))
                                        (let ((_hd237288237313_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237289237310_)))
                                              (_tl237287237315_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237289237310_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd237288237313_))
                                              (let ((_e237292237318_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd237288237313_))))
                                                (let ((_hd237291237321_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e237292237318_)))
                                                      (_tl237290237323_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e237292237318_))))
                                                  ((lambda (_L237326_
                                                            _L237327_
                                                            _L237328_)
                                                     (let* ((_body237368_
                                                             (map (lambda (_g237363237365_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g237363237365_
                               _L237328_
                               _$t237182_
                               _method-calls235737_
                               _slot-refs235738_
                               _class-type-check235739_
                               _struct-type-check1237276_
                               _struct-type-check2237277_)))
                          _L237326_))
                    (__tmp244643
                     (let ((__tmp244644
                            (let ((__tmp244645
                                   (let ()
                                     (declare (not safe))
                                     (cons _L237328_ _L237327_))))
                              (declare (not safe))
                              (cons __tmp244645 _body237368_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp244644))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp244643 _L236930_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl237287237315_
                                                   _tl237290237323_
                                                   _hd237291237321_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g237279237297_
                                                 _g237280237300_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237279237297_ _g237280237300_)))))
                              (let ()
                                (declare (not safe))
                                (_g237279237297_ _g237280237300_))))))
                  (declare (not safe))
                  (_g237278237370_ _L236930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr237534_
                                                      (lambda (_struct-type-check1237375_
                                                               _struct-type-check2237376_)
                                                        (let* ((_g237378237397_
                                                                (lambda (_g237379237394_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g237379237394_))))
                       (_g237377237531_
                        (lambda (_g237379237400_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g237379237400_))
                              (let ((_e237383237402_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g237379237400_))))
                                (let ((_hd237382237405_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237383237402_)))
                                      (_tl237381237407_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237383237402_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl237381237407_))
                                      (let ((_g244646_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl237381237407_
                                                '0))))
                                        (begin
                                          (let ((_g244647_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g244646_)
                                                       (##vector-length
                                                        _g244646_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g244647_ 2)))
                                                (error "Context expects 2 values"
                                                       _g244647_)))
                                          (let ((_target237384237410_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g244646_ 0)))
                                                (_tl237386237412_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g244646_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl237386237412_))
                                                (letrec ((_loop237387237415_
                                                          (lambda (_hd237385237418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause237391237420_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd237385237418_))
                        (let ((_e237388237423_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd237385237418_))))
                          (let ((_lp-hd237389237426_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e237388237423_)))
                                (_lp-tl237390237428_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e237388237423_))))
                            (let ((__tmp244651
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd237389237426_
                                           _clause237391237420_))))
                              (declare (not safe))
                              (_loop237387237415_
                               _lp-tl237390237428_
                               __tmp244651))))
                        (let ((_clause237392237431_
                               (reverse _clause237391237420_)))
                          ((lambda (_L237434_)
                             (let* ((_clauses237529_
                                     (map (lambda (_clause237449_)
                                            (let* ((___stx243293243294_
                                                    _clause237449_)
                                                   (_g237452237467_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx243293243294_)))))
                                              (let ((___kont243295243296_
                                                     (lambda (_L237495_
                                                              _L237496_
                                                              _L237497_)
                                                       (let* ((_body237517_
                                                               (map (lambda (_g237512237514_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g237512237514_
                                 _L237497_
                                 _$t237182_
                                 _method-calls235737_
                                 _slot-refs235738_
                                 _class-type-check235739_
                                 _struct-type-check1237375_
                                 _struct-type-check2237376_)))
                            _L237495_))
                      (__tmp244648
                       (let ()
                         (declare (not safe))
                         (cons _L237497_ _L237496_))))
                 (declare (not safe))
                 (cons __tmp244648 _body237517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243297243298_
                                                     (lambda ()
                                                       _clause237449_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx243293243294_))
                                                    (let ((_e237459237479_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx243293243294_))))
                                                      (let ((_tl237457237484_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e237459237479_)))
                    (_hd237458237482_
                     (let () (declare (not safe)) (##car _e237459237479_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd237458237482_))
                    (let ((_e237462237487_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd237458237482_))))
                      (let ((_tl237460237492_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237462237487_)))
                            (_hd237461237490_
                             (let ()
                               (declare (not safe))
                               (##car _e237462237487_))))
                        (___kont243295243296_
                         _tl237457237484_
                         _tl237460237492_
                         _hd237461237490_)))
                    (___kont243297243298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243297243298_)))))
                                          (let ((__tmp244649
                                                 (lambda (_g237521237524_
                                                          _g237522237526_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g237521237524_
                                                           _g237522237526_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp244649
                                                    '()
                                                    _L237434_))))
                                    (__tmp244650
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses237529_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp244650 _L236929_)))
                           _clause237392237431_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop237387237415_
                                                     _target237384237410_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g237378237397_
                                                   _g237379237400_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237378237397_ _g237379237400_)))))
                              (let ()
                                (declare (not safe))
                                (_g237378237397_ _g237379237400_))))))
                  (declare (not safe))
                  (_g237377237531_ _L236929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl237539_
                                                      (lambda (_specializer-lambda-expr237536_
                                                               _specializer-case-lambda-expr237537_)
                                                        (let ((__tmp244652
                                                               (let ((__tmp244653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp244655
                                     (let ((__tmp244656
                                            (let ((__tmp244658
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L236931_ '())))
                                                  (__tmp244657
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr237536_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp244658 __tmp244657))))
                                       (declare (not safe))
                                       (cons __tmp244656 '())))
                                    (__tmp244654
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr237537_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp244655 __tmp244654))))
                         (declare (not safe))
                         (cons '%#let-values __tmp244653))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp244652 _stx235643_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr237541_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr237373_
                                                         _struct-check-all237252_
                                                         _empty235742_)))
                                                     (_specializer-case-lambda-expr237543_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr237534_
                                                         _struct-check-all237252_
                                                         _empty235742_)))
                                                     (_specializer-impl237545_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl237539_
                                                         _specializer-lambda-expr237541_
                                                         _specializer-case-lambda-expr237543_)))
                                                     (_unchecked-specializer-lambda-expr237547_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?235745_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr237373_
                                                             _empty235742_
                                                             _struct-check-all237252_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr237549_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?235745_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr237534_
                                                             _empty235742_
                                                             _struct-check-all237252_))
                                                          '#f))
                                                     (_unchecked-specializer-impl237551_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?235745_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl237539_
                                                             _unchecked-specializer-lambda-expr237547_
                                                             _unchecked-specializer-case-lambda-expr237549_))
                                                          '#f))
                                                     (_specializer-impl237553_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl235649_
                                                         _$t237182_
                                                         _methods-bind237205_
                                                         _slots-bind237228_
                                                         _class-check-bind237250_
                                                         _struct-check-bind237274_
                                                         _specializer-impl237545_
                                                         _lifted-specializer-id237180_
                                                         _unchecked-specializer-impl237551_))))
                                                (let ((__tmp244660
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L235718_)))
                                                      (__tmp244659
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id237173_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp244660
                                                   '" => "
                                                   __tmp244659))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def235650_
                                                   _L235718_
                                                   _specializer-id237173_
                                                   _specializer-impl237553_
                                                   _lifted-specializer-id237180_
                                                   _unchecked-specializer-impl237551_)))))
                                        _hd236862236924_
                                        _hd236859236916_
                                        _hd236856236908_)
                                       (let ()
                                         (declare (not safe))
                                         (_g236838236868_ _g236839236871_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g236838236868_ _g236839236871_)))
                           (let ()
                             (declare (not safe))
                             (_g236838236868_ _g236839236871_)))
                       (let ()
                         (declare (not safe))
                         (_g236838236868_ _g236839236871_)))))
               (let () (declare (not safe)) (_g236838236868_ _g236839236871_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g236838236868_
                                                      _g236839236871_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g236838236868_
                                              _g236839236871_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g236838236868_ _g236839236871_)))))
                           (let ()
                             (declare (not safe))
                             (_g236838236868_ _g236839236871_)))))
                   (let ()
                     (declare (not safe))
                     (_g236838236868_ _g236839236871_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g236838236868_
                                                      _g236839236871_))))))
                                       (declare (not safe))
                                       (_g236837237556_ _L235717_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L235717_))
                                         (let* ((_g237559237612_
                                                 (lambda (_g237560237609_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g237560237609_))))
                                                (_g237558238884_
                                                 (lambda (_g237560237615_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g237560237615_))
                                                       (let ((_e237568237617_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g237560237615_))))
                 (let ((_hd237567237620_
                        (let () (declare (not safe)) (##car _e237568237617_)))
                       (_tl237566237622_
                        (let () (declare (not safe)) (##cdr _e237568237617_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd237567237620_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd237567237620_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl237566237622_))
                               (let ((_e237571237625_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl237566237622_))))
                                 (let ((_hd237570237628_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e237571237625_)))
                                       (_tl237569237630_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e237571237625_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd237570237628_))
                                       (let ((_e237574237633_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd237570237628_))))
                                         (let ((_hd237573237636_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e237574237633_)))
                                               (_tl237572237638_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e237574237633_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd237573237636_))
                                               (let ((_e237577237641_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd237573237636_))))
                                                 (let ((_hd237576237644_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e237577237641_)))
                                                       (_tl237575237646_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e237577237641_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd237576237644_))
                                                       (let ((_e237580237649_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd237576237644_))))
                 (let ((_hd237579237652_
                        (let () (declare (not safe)) (##car _e237580237649_)))
                       (_tl237578237654_
                        (let () (declare (not safe)) (##cdr _e237580237649_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl237578237654_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl237575237646_))
                           (let ((_e237583237657_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl237575237646_))))
                             (let ((_hd237582237660_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e237583237657_)))
                                   (_tl237581237662_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e237583237657_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd237582237660_))
                                   (let ((_e237586237665_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd237582237660_))))
                                     (let ((_hd237585237668_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e237586237665_)))
                                           (_tl237584237670_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e237586237665_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd237585237668_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd237585237668_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl237584237670_))
                                                   (let ((_e237589237673_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl237584237670_))))
                                                     (let ((_hd237588237676_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e237589237673_)))
                                                           (_tl237587237678_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e237589237673_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd237588237676_))
                                                           (let ((_e237592237681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd237588237676_))))
                     (let ((_hd237591237684_
                            (let ()
                              (declare (not safe))
                              (##car _e237592237681_)))
                           (_tl237590237686_
                            (let ()
                              (declare (not safe))
                              (##cdr _e237592237681_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd237591237684_))
                           (let ((_e237595237689_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd237591237684_))))
                             (let ((_hd237594237692_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e237595237689_)))
                                   (_tl237593237694_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e237595237689_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd237594237692_))
                                   (let ((_e237598237697_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd237594237692_))))
                                     (let ((_hd237597237700_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e237598237697_)))
                                           (_tl237596237702_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e237598237697_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl237596237702_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl237593237694_))
                                               (let ((_e237601237705_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl237593237694_))))
                                                 (let ((_hd237600237708_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e237601237705_)))
                                                       (_tl237599237710_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e237601237705_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl237599237710_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl237590237686_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl237587237678_))
                       (let ((_e237604237713_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl237587237678_))))
                         (let ((_hd237603237716_
                                (let ()
                                  (declare (not safe))
                                  (##car _e237604237713_)))
                               (_tl237602237718_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e237604237713_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl237602237718_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl237581237662_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl237572237638_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl237569237630_))
                                           (let ((_e237607237721_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl237569237630_))))
                                             (let ((_hd237606237724_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e237607237721_)))
                                                   (_tl237605237726_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e237607237721_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl237605237726_))
                                                   ((lambda (_L237729_
                                                             _L237730_
                                                             _L237731_
                                                             _L237732_
                                                             _L237733_)
                                                      (let* ((_g237772237834_
                                                              (lambda (_g237773237831_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g237773237831_))))
                     (_g237771238881_
                      (lambda (_g237773237837_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g237773237837_))
                            (let ((_e237781237839_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g237773237837_))))
                              (let ((_hd237780237842_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237781237839_)))
                                    (_tl237779237844_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237781237839_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd237780237842_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd237780237842_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl237779237844_))
                                            (let ((_e237784237847_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl237779237844_))))
                                              (let ((_hd237783237850_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e237784237847_)))
                                                    (_tl237782237852_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e237784237847_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl237782237852_))
                                                    (let ((_e237787237855_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl237782237852_))))
                                                      (let ((_hd237786237858_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e237787237855_)))
                    (_tl237785237860_
                     (let () (declare (not safe)) (##cdr _e237787237855_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd237786237858_))
                    (let ((_e237790237863_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd237786237858_))))
                      (let ((_hd237789237866_
                             (let ()
                               (declare (not safe))
                               (##car _e237790237863_)))
                            (_tl237788237868_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237790237863_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd237789237866_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd237789237866_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl237788237868_))
                                    (let ((_e237793237871_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl237788237868_))))
                                      (let ((_hd237792237874_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e237793237871_)))
                                            (_tl237791237876_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e237793237871_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd237792237874_))
                                            (let ((_e237796237879_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd237792237874_))))
                                              (let ((_hd237795237882_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e237796237879_)))
                                                    (_tl237794237884_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e237796237879_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd237795237882_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd237795237882_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl237794237884_))
                                                            (let ((_e237799237887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl237794237884_))))
                      (let ((_hd237798237890_
                             (let ()
                               (declare (not safe))
                               (##car _e237799237887_)))
                            (_tl237797237892_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237799237887_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl237797237892_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl237791237876_))
                                (let ((_e237802237895_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl237791237876_))))
                                  (let ((_hd237801237898_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237802237895_)))
                                        (_tl237800237900_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237802237895_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd237801237898_))
                                        (let ((_e237805237903_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd237801237898_))))
                                          (let ((_hd237804237906_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e237805237903_)))
                                                (_tl237803237908_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e237805237903_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd237804237906_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd237804237906_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl237803237908_))
                                                        (let ((_e237808237911_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl237803237908_))))
                  (let ((_hd237807237914_
                         (let () (declare (not safe)) (##car _e237808237911_)))
                        (_tl237806237916_
                         (let ()
                           (declare (not safe))
                           (##cdr _e237808237911_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl237806237916_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237800237900_))
                            (let ((_e237811237919_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237800237900_))))
                              (let ((_hd237810237922_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237811237919_)))
                                    (_tl237809237924_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237811237919_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd237810237922_))
                                    (let ((_e237814237927_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd237810237922_))))
                                      (let ((_hd237813237930_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e237814237927_)))
                                            (_tl237812237932_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e237814237927_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd237813237930_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd237813237930_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl237812237932_))
                                                    (let ((_e237817237935_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl237812237932_))))
                                                      (let ((_hd237816237938_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e237817237935_)))
                    (_tl237815237940_
                     (let () (declare (not safe)) (##cdr _e237817237935_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl237815237940_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl237809237924_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl237809237924_))
                                  '1)
                            (let ((_g244536_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl237809237924_
                                      '1))))
                              (begin
                                (let ((_g244537_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g244536_)
                                             (##vector-length _g244536_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g244537_ 2)))
                                      (error "Context expects 2 values"
                                             _g244537_)))
                                (let ((_target237818237943_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244536_ 0)))
                                      (_tl237820237945_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244536_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237820237945_))
                                      (let ((_e237829237948_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237820237945_))))
                                        (let ((_hd237828237951_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237829237948_)))
                                              (_tl237827237953_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237829237948_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237827237953_))
                                              (letrec ((_loop237821237956_
                                                        (lambda (_hd237819237959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref237825237961_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd237819237959_))
                      (let ((_e237822237964_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd237819237959_))))
                        (let ((_lp-hd237823237967_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237822237964_)))
                              (_lp-tl237824237969_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237822237964_))))
                          (let ((__tmp244623
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd237823237967_
                                         _kw-ref237825237961_))))
                            (declare (not safe))
                            (_loop237821237956_
                             _lp-tl237824237969_
                             __tmp244623))))
                      (let ((_kw-ref237826237972_
                             (reverse _kw-ref237825237961_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl237785237860_))
                            ((lambda (_L237975_
                                      _L237976_
                                      _L237977_
                                      _L237978_
                                      _L237979_)
                               (let* ((_kw-count238030_
                                       (length (let ((__tmp244538
                                                      (lambda (_g238022238025_
                                                               _g238023238027_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g238022238025_
                                                                _g238023238027_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp244538
                                                         '()
                                                         _L237976_))))
                                      (_self-index238032_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count238030_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L237731_))
                                     (let* ((_g238035238049_
                                             (lambda (_g238036238046_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g238036238046_))))
                                            (_g238034238220_
                                             (lambda (_g238036238052_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g238036238052_))
                                                   (let ((_e238041238054_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g238036238052_))))
                                                     (let ((_hd238040238057_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e238041238054_)))
                                                           (_tl238039238059_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e238041238054_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl238039238059_))
                                                           (let ((_e238044238062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl238039238059_))))
                     (let ((_hd238043238065_
                            (let ()
                              (declare (not safe))
                              (##car _e238044238062_)))
                           (_tl238042238067_
                            (let ()
                              (declare (not safe))
                              (##cdr _e238044238062_))))
                       ((lambda (_L238070_ _L238071_)
                          (let ((_self238087_
                                 (list-ref _L238071_ _self-index238032_)))
                            (for-each
                             (lambda (_g238088238090_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g238088238090_
                                  _self238087_
                                  _method-calls235737_
                                  _slot-refs235738_
                                  _class-type-check235739_
                                  _struct-type-check235740_
                                  _struct-type-assert235741_)))
                             _L238070_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?235744_))
                                _stx235643_
                                (let* ((_specializer-id238099_
                                        (let* ((_id238093_
                                                (let ((__tmp244589
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L235718_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp244589
                                                   '"::specialize")))
                                               (_specializer-id238096_
                                                (let ((__tmp244590
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx235643_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id238093_
                                                   __tmp244590))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id238096_))
                                          _specializer-id238096_))
                                       (_lifted-specializer-id238106_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?235746_))
                                            (let* ((_id238101_
                                                    (let ((__tmp244591
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L235718_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp244591
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id238103_
                                                    (let ((__tmp244592
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx235643_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id238101_
                                                       __tmp244592))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id238103_))
                                              _lifted-specializer-id238103_)
                                            '#f))
                                       (_$t238108_
                                        (let ((__tmp244593 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp244593)))
                                       (_methods238110_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls235737_)))
                                       (_$methods238114_
                                        (map (lambda (_id238112_)
                                               (let ((__tmp244594
                                                      (gensym _id238112_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp244594)))
                                             _methods238110_))
                                       (_g244595_
                                        (for-each
                                         (lambda (_g238115238118_
                                                  _g238116238120_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls235737_
                                              _g238115238118_
                                              _g238116238120_)))
                                         _methods238110_
                                         _$methods238114_))
                                       (_methods-bind238131_
                                        (map (lambda (_g238123238126_
                                                      _g238124238128_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind235645_
                                                  _$t238108_
                                                  _g238123238126_
                                                  _g238124238128_)))
                                             _methods238110_
                                             _$methods238114_))
                                       (_slots238133_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs235738_)))
                                       (_$slots238137_
                                        (map (lambda (_id238135_)
                                               (let ((__tmp244596
                                                      (gensym _id238135_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp244596)))
                                             _slots238133_))
                                       (_g244597_
                                        (for-each
                                         (lambda (_g238138238141_
                                                  _g238139238143_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs235738_
                                              _g238138238141_
                                              _g238139238143_)))
                                         _slots238133_
                                         _$slots238137_))
                                       (_slots-bind238154_
                                        (map (lambda (_g238146238149_
                                                      _g238147238151_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind235646_
                                                  _$t238108_
                                                  _g238146238149_
                                                  _g238147238151_)))
                                             _slots238133_
                                             _$slots238137_))
                                       (_class-check238156_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check235739_)))
                                       (_$class-check238159_
                                        (map (lambda (_g244598_)
                                               (let ((__tmp244599
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp244599)))
                                             _class-check238156_))
                                       (_g244600_
                                        (for-each
                                         (lambda (_g238160238163_
                                                  _g238161238165_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check235739_
                                              _g238160238163_
                                              _g238161238165_)))
                                         _class-check238156_
                                         _$class-check238159_))
                                       (_class-check-bind238176_
                                        (map (lambda (_g238168238171_
                                                      _g238169238173_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind235647_
                                                  _$t238108_
                                                  _g238168238171_
                                                  _g238169238173_)))
                                             _class-check238156_
                                             _$class-check238159_))
                                       (_struct-check-all238178_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check235740_
                                           _struct-type-assert235741_)))
                                       (_struct-check238180_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all238178_)))
                                       (_$struct-check238183_
                                        (map (lambda (_g244601_)
                                               (let ((__tmp244602
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp244602)))
                                             _struct-check238180_))
                                       (_g244603_
                                        (for-each
                                         (lambda (_g238184238187_
                                                  _g238185238189_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all238178_
                                              _g238184238187_
                                              _g238185238189_)))
                                         _struct-check238180_
                                         _$struct-check238183_))
                                       (_struct-check-bind238200_
                                        (map (lambda (_g238192238195_
                                                      _g238193238197_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind235648_
                                                  _$t238108_
                                                  _g238192238195_
                                                  _g238193238197_)))
                                             _struct-check238180_
                                             _$struct-check238183_))
                                       (_make-specializer-impl238211_
                                        (lambda (_struct-type-check1238202_
                                                 _struct-type-check2238203_)
                                          (let* ((_specializer-body238209_
                                                  (map (lambda (_g238204238206_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g238204238206_
                                                            _self238087_
                                                            _$t238108_
                                                            _method-calls235737_
                                                            _slot-refs235738_
                                                            _class-type-check235739_
                                                            _struct-type-check1238202_
                                                            _struct-type-check2238203_)))
                                                       _L238070_))
                                                 (__tmp244604
                                                  (let ((__tmp244605
                                                         (let ((__tmp244607
                                                                (let ((__tmp244608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp244620
                                      (let ()
                                        (declare (not safe))
                                        (cons _L237733_ '())))
                                     (__tmp244609
                                      (let ((__tmp244610
                                             (let ((__tmp244611
                                                    (let ((__tmp244613
                                                           (let ((__tmp244614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244619
                                 (let ()
                                   (declare (not safe))
                                   (cons _L237732_ '())))
                                (__tmp244615
                                 (let ((__tmp244616
                                        (let ((__tmp244617
                                               (let ((__tmp244618
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L238071_
                                                              _specializer-body238209_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp244618))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp244617
                                           _L237731_))))
                                   (declare (not safe))
                                   (cons __tmp244616 '()))))
                            (declare (not safe))
                            (cons __tmp244619 __tmp244615))))
                     (declare (not safe))
                     (cons __tmp244614 '())))
                  (__tmp244612
                   (let () (declare (not safe)) (cons _L237730_ '()))))
              (declare (not safe))
              (cons __tmp244613 __tmp244612))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp244611))))
                                        (declare (not safe))
                                        (cons __tmp244610 '()))))
                                 (declare (not safe))
                                 (cons __tmp244620 __tmp244609))))
                          (declare (not safe))
                          (cons __tmp244608 '())))
                       (__tmp244606
                        (let () (declare (not safe)) (cons _L237729_ '()))))
                   (declare (not safe))
                   (cons __tmp244607 __tmp244606))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp244605))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp244604
                                             _stx235643_))))
                                       (_specializer-impl238213_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl238211_
                                           _struct-check-all238178_
                                           _empty235742_)))
                                       (_unchecked-specializer-impl238215_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?235745_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl238211_
                                               _empty235742_
                                               _struct-check-all238178_))
                                            '#f))
                                       (_specializer-impl238217_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl235649_
                                           _$t238108_
                                           _methods-bind238131_
                                           _slots-bind238154_
                                           _class-check-bind238176_
                                           _struct-check-bind238200_
                                           _specializer-impl238213_
                                           _lifted-specializer-id238106_
                                           _unchecked-specializer-impl238215_))))
                                  (let ((__tmp244622
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L235718_)))
                                        (__tmp244621
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id238099_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp244622
                                     '" => "
                                     __tmp244621))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def235650_
                                     _L235718_
                                     _specializer-id238099_
                                     _specializer-impl238217_
                                     _lifted-specializer-id238106_
                                     _unchecked-specializer-impl238215_))))))
                        _tl238042238067_
                        _hd238043238065_)))
                   (let ()
                     (declare (not safe))
                     (_g238035238049_ _g238036238052_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g238035238049_
                                                      _g238036238052_))))))
                                       (declare (not safe))
                                       (_g238034238220_ _L237731_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L237731_))
                                         (let* ((_g238223238253_
                                                 (lambda (_g238224238250_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g238224238250_))))
                                                (_g238222238878_
                                                 (lambda (_g238224238256_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g238224238256_))
                                                       (let ((_e238230238258_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g238224238256_))))
                 (let ((_hd238229238261_
                        (let () (declare (not safe)) (##car _e238230238258_)))
                       (_tl238228238263_
                        (let () (declare (not safe)) (##cdr _e238230238258_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl238228238263_))
                       (let ((_e238233238266_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl238228238263_))))
                         (let ((_hd238232238269_
                                (let ()
                                  (declare (not safe))
                                  (##car _e238233238266_)))
                               (_tl238231238271_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e238233238266_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd238232238269_))
                               (let ((_e238236238274_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd238232238269_))))
                                 (let ((_hd238235238277_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e238236238274_)))
                                       (_tl238234238279_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e238236238274_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd238235238277_))
                                       (let ((_e238239238282_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd238235238277_))))
                                         (let ((_hd238238238285_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e238239238282_)))
                                               (_tl238237238287_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e238239238282_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd238238238285_))
                                               (let ((_e238242238290_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd238238238285_))))
                                                 (let ((_hd238241238293_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e238242238290_)))
                                                       (_tl238240238295_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e238242238290_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl238240238295_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl238237238287_))
                                                           (let ((_e238245238298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl238237238287_))))
                     (let ((_hd238244238301_
                            (let ()
                              (declare (not safe))
                              (##car _e238245238298_)))
                           (_tl238243238303_
                            (let ()
                              (declare (not safe))
                              (##cdr _e238245238298_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl238243238303_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl238234238279_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl238231238271_))
                                   (let ((_e238248238306_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl238231238271_))))
                                     (let ((_hd238247238309_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e238248238306_)))
                                           (_tl238246238311_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e238248238306_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl238246238311_))
                                           ((lambda (_L238314_
                                                     _L238315_
                                                     _L238316_)
                                              (let* ((_g238339238353_
                                                      (lambda (_g238340238350_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g238340238350_))))
                                                     (_g238338238394_
                                                      (lambda (_g238340238356_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g238340238356_))
                                                            (let ((_e238345238358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g238340238356_))))
                      (let ((_hd238344238361_
                             (let ()
                               (declare (not safe))
                               (##car _e238345238358_)))
                            (_tl238343238363_
                             (let ()
                               (declare (not safe))
                               (##cdr _e238345238358_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl238343238363_))
                            (let ((_e238348238366_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl238343238363_))))
                              (let ((_hd238347238369_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238348238366_)))
                                    (_tl238346238371_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238348238366_))))
                                ((lambda (_L238374_ _L238375_)
                                   (let ((_self238388_
                                          (list-ref
                                           _L238375_
                                           _self-index238032_)))
                                     (for-each
                                      (lambda (_g238389238391_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g238389238391_
                                           _self238388_
                                           _method-calls235737_
                                           _slot-refs235738_
                                           _class-type-check235739_
                                           _struct-type-check235740_
                                           _struct-type-assert235741_)))
                                      _L238374_)))
                                 _tl238346238371_
                                 _hd238347238369_)))
                            (let ()
                              (declare (not safe))
                              (_g238339238353_ _g238340238356_)))))
                    (let ()
                      (declare (not safe))
                      (_g238339238353_ _g238340238356_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g238338238394_ _L238315_))
                                              (let* ((_g238397238416_
                                                      (lambda (_g238398238413_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g238398238413_))))
                                                     (_g238396238521_
                                                      (lambda (_g238398238419_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g238398238419_))
                                                            (let ((_e238402238421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g238398238419_))))
                      (let ((_hd238401238424_
                             (let ()
                               (declare (not safe))
                               (##car _e238402238421_)))
                            (_tl238400238426_
                             (let ()
                               (declare (not safe))
                               (##cdr _e238402238421_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl238400238426_))
                            (let ((_g244539_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl238400238426_
                                      '0))))
                              (begin
                                (let ((_g244540_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g244539_)
                                             (##vector-length _g244539_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g244540_ 2)))
                                      (error "Context expects 2 values"
                                             _g244540_)))
                                (let ((_target238403238429_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244539_ 0)))
                                      (_tl238405238431_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244539_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl238405238431_))
                                      (letrec ((_loop238406238434_
                                                (lambda (_hd238404238437_
                                                         _clause238410238439_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd238404238437_))
                                                      (let ((_e238407238442_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd238404238437_))))
                (let ((_lp-hd238408238445_
                       (let () (declare (not safe)) (##car _e238407238442_)))
                      (_lp-tl238409238447_
                       (let () (declare (not safe)) (##cdr _e238407238442_))))
                  (let ((__tmp244542
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd238408238445_ _clause238410238439_))))
                    (declare (not safe))
                    (_loop238406238434_ _lp-tl238409238447_ __tmp244542))))
              (let ((_clause238411238450_ (reverse _clause238410238439_)))
                ((lambda (_L238453_)
                   (for-each
                    (lambda (_clause238466_)
                      (let* ((_g238468238479_
                              (lambda (_g238469238476_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g238469238476_))))
                             (_g238467238511_
                              (lambda (_g238469238482_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g238469238482_))
                                    (let ((_e238474238484_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g238469238482_))))
                                      (let ((_hd238473238487_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e238474238484_)))
                                            (_tl238472238489_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e238474238484_))))
                                        ((lambda (_L238492_ _L238493_)
                                           (let ((_self238505_
                                                  (list-ref
                                                   _L238493_
                                                   _self-index238032_)))
                                             (for-each
                                              (lambda (_g238506238508_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g238506238508_
                                                   _self238505_
                                                   _method-calls235737_
                                                   _slot-refs235738_
                                                   _class-type-check235739_
                                                   _struct-type-check235740_
                                                   _struct-type-assert235741_)))
                                              _L238492_)))
                                         _tl238472238489_
                                         _hd238473238487_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g238468238479_ _g238469238482_))))))
                        (declare (not safe))
                        (_g238467238511_ _clause238466_)))
                    (let ((__tmp244541
                           (lambda (_g238513238516_ _g238514238518_)
                             (let ()
                               (declare (not safe))
                               (cons _g238513238516_ _g238514238518_)))))
                      (declare (not safe))
                      (foldr1 __tmp244541 '() _L238453_))))
                 _clause238411238450_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop238406238434_
                                           _target238403238429_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g238397238416_ _g238398238419_))))))
                            (let ()
                              (declare (not safe))
                              (_g238397238416_ _g238398238419_)))))
                    (let ()
                      (declare (not safe))
                      (_g238397238416_ _g238398238419_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g238396238521_ _L238314_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?235744_))
                                                  _stx235643_
                                                  (let* ((_specializer-id238530_
                                                          (let* ((_id238524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244543
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L235718_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp244543 '"::specialize")))
                         (_specializer-id238527_
                          (let ((__tmp244544
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx235643_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id238524_ __tmp244544))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id238527_))
                    _specializer-id238527_))
                 (_lifted-specializer-id238537_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?235746_))
                      (let* ((_id238532_
                              (let ((__tmp244545
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L235718_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp244545
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id238534_
                              (let ((__tmp244546
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx235643_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id238532_
                                 __tmp244546))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id238534_))
                        _lifted-specializer-id238534_)
                      '#f))
                 (_$t238539_
                  (let ((__tmp244547 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp244547)))
                 (_methods238541_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls235737_)))
                 (_$methods238545_
                  (map (lambda (_id238543_)
                         (let ((__tmp244548 (gensym _id238543_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp244548)))
                       _methods238541_))
                 (_g244549_
                  (for-each
                   (lambda (_g238546238549_ _g238547238551_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls235737_
                        _g238546238549_
                        _g238547238551_)))
                   _methods238541_
                   _$methods238545_))
                 (_methods-bind238562_
                  (map (lambda (_g238554238557_ _g238555238559_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind235645_
                            _$t238539_
                            _g238554238557_
                            _g238555238559_)))
                       _methods238541_
                       _$methods238545_))
                 (_slots238564_
                  (let () (declare (not safe)) (hash-keys _slot-refs235738_)))
                 (_$slots238568_
                  (map (lambda (_id238566_)
                         (let ((__tmp244550 (gensym _id238566_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp244550)))
                       _slots238564_))
                 (_g244551_
                  (for-each
                   (lambda (_g238569238572_ _g238570238574_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs235738_
                        _g238569238572_
                        _g238570238574_)))
                   _slots238564_
                   _$slots238568_))
                 (_slots-bind238585_
                  (map (lambda (_g238577238580_ _g238578238582_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind235646_
                            _$t238539_
                            _g238577238580_
                            _g238578238582_)))
                       _slots238564_
                       _$slots238568_))
                 (_class-check238587_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check235739_)))
                 (_$class-check238590_
                  (map (lambda (_g244552_)
                         (let ((__tmp244553 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp244553)))
                       _class-check238587_))
                 (_g244554_
                  (for-each
                   (lambda (_g238591238594_ _g238592238596_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check235739_
                        _g238591238594_
                        _g238592238596_)))
                   _class-check238587_
                   _$class-check238590_))
                 (_class-check-bind238607_
                  (map (lambda (_g238599238602_ _g238600238604_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind235647_
                            _$t238539_
                            _g238599238602_
                            _g238600238604_)))
                       _class-check238587_
                       _$class-check238590_))
                 (_struct-check-all238609_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check235740_
                     _struct-type-assert235741_)))
                 (_struct-check238611_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all238609_)))
                 (_$struct-check238614_
                  (map (lambda (_g244555_)
                         (let ((__tmp244556 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp244556)))
                       _struct-check238611_))
                 (_g244557_
                  (for-each
                   (lambda (_g238615238618_ _g238616238620_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all238609_
                        _g238615238618_
                        _g238616238620_)))
                   _struct-check238611_
                   _$struct-check238614_))
                 (_struct-check-bind238631_
                  (map (lambda (_g238623238626_ _g238624238628_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind235648_
                            _$t238539_
                            _g238623238626_
                            _g238624238628_)))
                       _struct-check238611_
                       _$struct-check238614_))
                 (_make-specializer-lambda-expr238717_
                  (lambda (_struct-type-check1238633_
                           _struct-type-check2238634_)
                    (let* ((_g238636238650_
                            (lambda (_g238637238647_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g238637238647_))))
                           (_g238635238714_
                            (lambda (_g238637238653_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g238637238653_))
                                  (let ((_e238642238655_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g238637238653_))))
                                    (let ((_hd238641238658_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238642238655_)))
                                          (_tl238640238660_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238642238655_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl238640238660_))
                                          (let ((_e238645238663_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl238640238660_))))
                                            (let ((_hd238644238666_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e238645238663_)))
                                                  (_tl238643238668_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e238645238663_))))
                                              ((lambda (_L238671_ _L238672_)
                                                 (let* ((_self238705_
                                                         (list-ref
                                                          _L238672_
                                                          _self-index238032_))
                                                        (_body238711_
                                                         (map (lambda (_g238706238708_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g238706238708_
                           _self238705_
                           _$t238539_
                           _method-calls235737_
                           _slot-refs235738_
                           _class-type-check235739_
                           _struct-type-check1238633_
                           _struct-type-check2238634_)))
                      _L238671_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp244558
                                                          (let ((__tmp244559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L238672_ _body238711_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp244559))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp244558
                                                      _L238315_))))
                                               _tl238643238668_
                                               _hd238644238666_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g238636238650_
                                             _g238637238653_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g238636238650_ _g238637238653_))))))
                      (declare (not safe))
                      (_g238635238714_ _L238315_))))
                 (_make-specializer-case-lambda-expr238856_
                  (lambda (_struct-type-check1238719_
                           _struct-type-check2238720_)
                    (let* ((_g238722238741_
                            (lambda (_g238723238738_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g238723238738_))))
                           (_g238721238853_
                            (lambda (_g238723238744_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g238723238744_))
                                  (let ((_e238727238746_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g238723238744_))))
                                    (let ((_hd238726238749_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238727238746_)))
                                          (_tl238725238751_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238727238746_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl238725238751_))
                                          (let ((_g244560_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl238725238751_
                                                    '0))))
                                            (begin
                                              (let ((_g244561_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g244560_)
                                                           (##vector-length
                                                            _g244560_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g244561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g244561_)))
                                              (let ((_target238728238754_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g244560_
                                                        0)))
                                                    (_tl238730238756_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g244560_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl238730238756_))
                                                    (letrec ((_loop238731238759_
                                                              (lambda (_hd238729238762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause238735238764_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd238729238762_))
                            (let ((_e238732238767_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd238729238762_))))
                              (let ((_lp-hd238733238770_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238732238767_)))
                                    (_lp-tl238734238772_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238732238767_))))
                                (let ((__tmp244564
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd238733238770_
                                               _clause238735238764_))))
                                  (declare (not safe))
                                  (_loop238731238759_
                                   _lp-tl238734238772_
                                   __tmp244564))))
                            (let ((_clause238736238775_
                                   (reverse _clause238735238764_)))
                              ((lambda (_L238778_)
                                 (let* ((_clauses238851_
                                         (map (lambda (_clause238793_)
                                                (let* ((_g238795238806_
                                                        (lambda (_g238796238803_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g238796238803_))))
                                                       (_g238794238841_
                                                        (lambda (_g238796238809_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g238796238809_))
                      (let ((_e238801238811_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g238796238809_))))
                        (let ((_hd238800238814_
                               (let ()
                                 (declare (not safe))
                                 (##car _e238801238811_)))
                              (_tl238799238816_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e238801238811_))))
                          ((lambda (_L238819_ _L238820_)
                             (let* ((_self238832_
                                     (list-ref _L238820_ _self-index238032_))
                                    (_body238838_
                                     (map (lambda (_g238833238835_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g238833238835_
                                               _self238832_
                                               _$t238539_
                                               _method-calls235737_
                                               _slot-refs235738_
                                               _class-type-check235739_
                                               _struct-type-check1238719_
                                               _struct-type-check2238720_)))
                                          _L238819_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L238820_ _body238838_))))
                           _tl238799238816_
                           _hd238800238814_)))
                      (let ()
                        (declare (not safe))
                        (_g238795238806_ _g238796238809_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g238794238841_
                                                   _clause238793_)))
                                              (let ((__tmp244562
                                                     (lambda (_g238843238846_
                                                              _g238844238848_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g238843238846_
                                                               _g238844238848_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp244562
                                                        '()
                                                        _L238778_))))
                                        (__tmp244563
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses238851_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp244563
                                    _L238314_)))
                               _clause238736238775_))))))
              (let ()
                (declare (not safe))
                (_loop238731238759_ _target238728238754_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g238722238741_
                                                       _g238723238744_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g238722238741_
                                             _g238723238744_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g238722238741_ _g238723238744_))))))
                      (declare (not safe))
                      (_g238721238853_ _L238314_))))
                 (_make-specializer-impl238861_
                  (lambda (_specializer-lambda-expr238858_
                           _specializer-case-lambda-expr238859_)
                    (let ((__tmp244565
                           (let ((__tmp244566
                                  (let ((__tmp244568
                                         (let ((__tmp244569
                                                (let ((__tmp244586
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L237733_ '())))
                                                      (__tmp244570
                                                       (let ((__tmp244571
                                                              (let ((__tmp244572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp244574
                                    (let ((__tmp244575
                                           (let ((__tmp244585
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L237732_ '())))
                                                 (__tmp244576
                                                  (let ((__tmp244577
                                                         (let ((__tmp244578
                                                                (let ((__tmp244579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp244581
                                      (let ((__tmp244582
                                             (let ((__tmp244584
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L238316_ '())))
                                                   (__tmp244583
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr238858_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp244584
                                                     __tmp244583))))
                                        (declare (not safe))
                                        (cons __tmp244582 '())))
                                     (__tmp244580
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr238859_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp244581 __tmp244580))))
                          (declare (not safe))
                          (cons '%#let-values __tmp244579))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp244578 _stx235643_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244577 '()))))
                                             (declare (not safe))
                                             (cons __tmp244585 __tmp244576))))
                                      (declare (not safe))
                                      (cons __tmp244575 '())))
                                   (__tmp244573
                                    (let ()
                                      (declare (not safe))
                                      (cons _L237730_ '()))))
                               (declare (not safe))
                               (cons __tmp244574 __tmp244573))))
                        (declare (not safe))
                        (cons '%#let-values __tmp244572))))
                 (declare (not safe))
                 (cons __tmp244571 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp244586
                                                        __tmp244570))))
                                           (declare (not safe))
                                           (cons __tmp244569 '())))
                                        (__tmp244567
                                         (let ()
                                           (declare (not safe))
                                           (cons _L237729_ '()))))
                                    (declare (not safe))
                                    (cons __tmp244568 __tmp244567))))
                             (declare (not safe))
                             (cons '%#let-values __tmp244566))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244565 _stx235643_))))
                 (_specializer-lambda-expr238863_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr238717_
                     _struct-check-all238609_
                     _empty235742_)))
                 (_specializer-case-lambda-expr238865_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr238856_
                     _struct-check-all238609_
                     _empty235742_)))
                 (_specializer-impl238867_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl238861_
                     _specializer-lambda-expr238863_
                     _specializer-case-lambda-expr238865_)))
                 (_unchecked-specializer-lambda-expr238869_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?235745_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr238717_
                         _empty235742_
                         _struct-check-all238609_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr238871_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?235745_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr238856_
                         _empty235742_
                         _struct-check-all238609_))
                      '#f))
                 (_unchecked-specializer-impl238873_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?235745_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl238861_
                         _unchecked-specializer-lambda-expr238869_
                         _unchecked-specializer-case-lambda-expr238871_))
                      '#f))
                 (_specializer-impl238875_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl235649_
                     _$t238539_
                     _methods-bind238562_
                     _slots-bind238585_
                     _class-check-bind238607_
                     _struct-check-bind238631_
                     _specializer-impl238867_
                     _lifted-specializer-id238537_
                     _unchecked-specializer-impl238873_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp244588
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L235718_)))
                                                          (__tmp244587
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id238530_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp244588
                                                       '" => "
                                                       __tmp244587))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def235650_
                                                       _L235718_
                                                       _specializer-id238530_
                                                       _specializer-impl238875_
                                                       _lifted-specializer-id238537_
                                                       _unchecked-specializer-impl238873_)))))
                                            _hd238247238309_
                                            _hd238244238301_
                                            _hd238241238293_)
                                           (let ()
                                             (declare (not safe))
                                             (_g238223238253_
                                              _g238224238256_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g238223238253_ _g238224238256_)))
                               (let ()
                                 (declare (not safe))
                                 (_g238223238253_ _g238224238256_)))
                           (let ()
                             (declare (not safe))
                             (_g238223238253_ _g238224238256_)))))
                   (let ()
                     (declare (not safe))
                     (_g238223238253_ _g238224238256_)))
               (let ()
                 (declare (not safe))
                 (_g238223238253_ _g238224238256_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g238223238253_
                                                  _g238224238256_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g238223238253_ _g238224238256_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g238223238253_ _g238224238256_)))))
                       (let ()
                         (declare (not safe))
                         (_g238223238253_ _g238224238256_)))))
               (let ()
                 (declare (not safe))
                 (_g238223238253_ _g238224238256_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g238222238878_ _L237731_))
                                         _stx235643_))))
                             _hd237828237951_
                             _kw-ref237826237972_
                             _hd237816237938_
                             _hd237807237914_
                             _hd237798237890_)
                            (let ()
                              (declare (not safe))
                              (_g237772237834_ _g237773237837_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop237821237956_
                                                   _target237818237943_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g237772237834_
                                                 _g237773237837_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237772237834_ _g237773237837_))))))
                            (let ()
                              (declare (not safe))
                              (_g237772237834_ _g237773237837_)))
                        (let ()
                          (declare (not safe))
                          (_g237772237834_ _g237773237837_)))
                    (let ()
                      (declare (not safe))
                      (_g237772237834_ _g237773237837_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g237772237834_
                                                       _g237773237837_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g237772237834_
                                                   _g237773237837_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g237772237834_
                                               _g237773237837_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g237772237834_ _g237773237837_)))))
                            (let ()
                              (declare (not safe))
                              (_g237772237834_ _g237773237837_)))
                        (let ()
                          (declare (not safe))
                          (_g237772237834_ _g237773237837_)))))
                (let ()
                  (declare (not safe))
                  (_g237772237834_ _g237773237837_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g237772237834_
                                                       _g237773237837_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g237772237834_
                                                   _g237773237837_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g237772237834_ _g237773237837_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g237772237834_ _g237773237837_)))
                            (let ()
                              (declare (not safe))
                              (_g237772237834_ _g237773237837_)))))
                    (let ()
                      (declare (not safe))
                      (_g237772237834_ _g237773237837_)))
                (let ()
                  (declare (not safe))
                  (_g237772237834_ _g237773237837_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g237772237834_
                                                       _g237773237837_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g237772237834_
                                               _g237773237837_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g237772237834_ _g237773237837_)))
                                (let ()
                                  (declare (not safe))
                                  (_g237772237834_ _g237773237837_)))
                            (let ()
                              (declare (not safe))
                              (_g237772237834_ _g237773237837_)))))
                    (let ()
                      (declare (not safe))
                      (_g237772237834_ _g237773237837_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g237772237834_
                                                       _g237773237837_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g237772237834_
                                               _g237773237837_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g237772237834_ _g237773237837_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g237772237834_ _g237773237837_)))))
                            (let ()
                              (declare (not safe))
                              (_g237772237834_ _g237773237837_))))))
                (declare (not safe))
                (_g237771238881_ _L237730_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd237606237724_
                                                    _hd237603237716_
                                                    _hd237600237708_
                                                    _hd237597237700_
                                                    _hd237579237652_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g237559237612_
                                                      _g237560237615_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g237559237612_
                                              _g237560237615_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g237559237612_ _g237560237615_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g237559237612_ _g237560237615_)))
                               (let ()
                                 (declare (not safe))
                                 (_g237559237612_ _g237560237615_)))))
                       (let ()
                         (declare (not safe))
                         (_g237559237612_ _g237560237615_)))
                   (let ()
                     (declare (not safe))
                     (_g237559237612_ _g237560237615_)))
               (let ()
                 (declare (not safe))
                 (_g237559237612_ _g237560237615_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g237559237612_
                                                  _g237560237615_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g237559237612_
                                              _g237560237615_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g237559237612_ _g237560237615_)))))
                           (let ()
                             (declare (not safe))
                             (_g237559237612_ _g237560237615_)))))
                   (let ()
                     (declare (not safe))
                     (_g237559237612_ _g237560237615_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g237559237612_
                                                      _g237560237615_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g237559237612_
                                                  _g237560237615_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g237559237612_
                                              _g237560237615_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g237559237612_ _g237560237615_)))))
                           (let ()
                             (declare (not safe))
                             (_g237559237612_ _g237560237615_)))
                       (let ()
                         (declare (not safe))
                         (_g237559237612_ _g237560237615_)))))
               (let ()
                 (declare (not safe))
                 (_g237559237612_ _g237560237615_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g237559237612_
                                                  _g237560237615_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g237559237612_ _g237560237615_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g237559237612_ _g237560237615_)))
                           (let ()
                             (declare (not safe))
                             (_g237559237612_ _g237560237615_)))
                       (let ()
                         (declare (not safe))
                         (_g237559237612_ _g237560237615_)))))
               (let ()
                 (declare (not safe))
                 (_g237559237612_ _g237560237615_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g237558238884_ _L235717_))
                                         _stx235643_))))))))
                  (___kont243317243318_ (lambda () _stx235643_)))
              (let ((___match243346243347_
                     (lambda (_e235659235685_
                              _hd235658235688_
                              _tl235657235690_
                              _e235662235693_
                              _hd235661235696_
                              _tl235660235698_
                              _e235665235701_
                              _hd235664235704_
                              _tl235663235706_
                              _e235668235709_
                              _hd235667235712_
                              _tl235666235714_)
                       (let ((_L235717_ _hd235667235712_)
                             (_L235718_ _hd235664235704_))
                         (if (let ((__tmp244705
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L235718_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp244705))
                             (___kont243315243316_ _L235717_ _L235718_)
                             (___kont243317243318_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx243313243314_))
                    (let ((_e235659235685_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx243313243314_))))
                      (let ((_tl235657235690_
                             (let ()
                               (declare (not safe))
                               (##cdr _e235659235685_)))
                            (_hd235658235688_
                             (let ()
                               (declare (not safe))
                               (##car _e235659235685_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl235657235690_))
                            (let ((_e235662235693_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl235657235690_))))
                              (let ((_tl235660235698_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e235662235693_)))
                                    (_hd235661235696_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e235662235693_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd235661235696_))
                                    (let ((_e235665235701_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd235661235696_))))
                                      (let ((_tl235663235706_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e235665235701_)))
                                            (_hd235664235704_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e235665235701_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl235663235706_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl235660235698_))
                                                (let ((_e235668235709_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl235660235698_))))
                                                  (let ((_tl235666235714_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e235668235709_)))
                                                        (_hd235667235712_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e235668235709_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl235666235714_))
                                                        (___match243346243347_
                                                         _e235659235685_
                                                         _hd235658235688_
                                                         _tl235657235690_
                                                         _e235662235693_
                                                         _hd235661235696_
                                                         _tl235660235698_
                                                         _e235665235701_
                                                         _hd235664235704_
                                                         _tl235663235706_
                                                         _e235668235709_
                                                         _hd235667235712_
                                                         _tl235666235714_)
                                                        (___kont243317243318_))))
                                                (___kont243317243318_))
                                            (___kont243317243318_))))
                                    (___kont243317243318_))))
                            (___kont243317243318_))))
                    (___kont243317243318_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx234619_
               _self234620_
               _methods234621_
               _slots234622_
               _class-check234623_
               _struct-check234624_
               _struct-assert234625_)
        (let* ((___stx243349243350_ _stx234619_)
               (_g234633234855_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243349243350_)))))
          (let ((___kont243351243352_
                 (lambda (_L235592_ _L235593_ _L235594_ _L235595_)
                   (let ((__tmp244706
                          (let () (declare (not safe)) (gx#stx-e _L235593_))))
                     (declare (not safe))
                     (table-set! _methods234621_ __tmp244706 '#t))
                   (for-each
                    (lambda (_g235628235630_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g235628235630_
                         _self234620_
                         _methods234621_
                         _slots234622_
                         _class-check234623_
                         _struct-check234624_
                         _struct-assert234625_)))
                    (let ((__tmp244707
                           (lambda (_g235632235635_ _g235633235637_)
                             (let ()
                               (declare (not safe))
                               (cons _g235632235635_ _g235633235637_)))))
                      (declare (not safe))
                      (foldr1 __tmp244707 '() _L235592_)))))
                (___kont243355243356_
                 (lambda (_L235427_ _L235428_ _L235429_ _L235430_ _L235431_)
                   (let ((__tmp244708
                          (let () (declare (not safe)) (gx#stx-e _L235428_))))
                     (declare (not safe))
                     (table-set! _methods234621_ __tmp244708 '#t))
                   (for-each
                    (lambda (_g235471235473_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g235471235473_
                         _self234620_
                         _methods234621_
                         _slots234622_
                         _class-check234623_
                         _struct-check234624_
                         _struct-assert234625_)))
                    (let ((__tmp244709
                           (lambda (_g235475235478_ _g235476235480_)
                             (let ()
                               (declare (not safe))
                               (cons _g235475235478_ _g235476235480_)))))
                      (declare (not safe))
                      (foldr1 __tmp244709 '() _L235427_)))))
                (___kont243359243360_
                 (lambda (_L235260_ _L235261_ _L235262_)
                   (let ((__tmp244710
                          (let () (declare (not safe)) (gx#stx-e _L235260_))))
                     (declare (not safe))
                     (table-set! _slots234622_ __tmp244710 '#t))))
                (___kont243361243362_
                 (lambda (_L235137_ _L235138_ _L235139_ _L235140_)
                   (let ((__tmp244711
                          (let () (declare (not safe)) (gx#stx-e _L235138_))))
                     (declare (not safe))
                     (table-set! _slots234622_ __tmp244711 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L235137_
                      _self234620_
                      _methods234621_
                      _slots234622_
                      _class-check234623_
                      _struct-check234624_
                      _struct-assert234625_))))
                (___kont243363243364_
                 (lambda (_L235021_ _L235022_)
                   (let ((__tmp244712
                          (##structure-ref
                           (let ((__tmp244713
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L235022_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp244713))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots234622_ __tmp244712 '#t))))
                (___kont243365243366_
                 (lambda (_L234931_ _L234932_ _L234933_)
                   (let ((__tmp244714
                          (##structure-ref
                           (let ((__tmp244715
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L234933_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp244715))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots234622_ __tmp244714 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L234931_
                      _self234620_
                      _methods234621_
                      _slots234622_
                      _class-check234623_
                      _struct-check234624_
                      _struct-assert234625_))))
                (___kont243367243368_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx234619_
                      _self234620_
                      _methods234621_
                      _slots234622_
                      _class-check234623_
                      _struct-check234624_
                      _struct-assert234625_)))))
            (let* ((___match243848243849_
                    (lambda (_e234829234867_
                             _hd234828234870_
                             _tl234827234872_
                             _e234832234875_
                             _hd234831234878_
                             _tl234830234880_
                             _e234835234883_
                             _hd234834234886_
                             _tl234833234888_
                             _e234838234891_
                             _hd234837234894_
                             _tl234836234896_
                             _e234841234899_
                             _hd234840234902_
                             _tl234839234904_
                             _e234844234907_
                             _hd234843234910_
                             _tl234842234912_
                             _e234847234915_
                             _hd234846234918_
                             _tl234845234920_
                             _e234850234923_
                             _hd234849234926_
                             _tl234848234928_)
                      (let ((_L234931_ _hd234849234926_)
                            (_L234932_ _hd234846234918_)
                            (_L234933_ _hd234837234894_))
                        (if (and (let ((__tmp244716
                                        (let ((__tmp244717
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L234933_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp244717))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp244716
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L234932_
                                    _self234620_)))
                            (___kont243365243366_
                             _L234931_
                             _L234932_
                             _L234933_)
                            (___kont243367243368_)))))
                   (___match243846243847_
                    (lambda (_e234829234867_
                             _hd234828234870_
                             _tl234827234872_
                             _e234832234875_
                             _hd234831234878_
                             _tl234830234880_
                             _e234835234883_
                             _hd234834234886_
                             _tl234833234888_
                             _e234838234891_
                             _hd234837234894_
                             _tl234836234896_
                             _e234841234899_
                             _hd234840234902_
                             _tl234839234904_
                             _e234844234907_
                             _hd234843234910_
                             _tl234842234912_
                             _e234847234915_
                             _hd234846234918_
                             _tl234845234920_
                             _e234850234923_
                             _hd234849234926_
                             _tl234848234928_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl234848234928_))
                          (___match243848243849_
                           _e234829234867_
                           _hd234828234870_
                           _tl234827234872_
                           _e234832234875_
                           _hd234831234878_
                           _tl234830234880_
                           _e234835234883_
                           _hd234834234886_
                           _tl234833234888_
                           _e234838234891_
                           _hd234837234894_
                           _tl234836234896_
                           _e234841234899_
                           _hd234840234902_
                           _tl234839234904_
                           _e234844234907_
                           _hd234843234910_
                           _tl234842234912_
                           _e234847234915_
                           _hd234846234918_
                           _tl234845234920_
                           _e234850234923_
                           _hd234849234926_
                           _tl234848234928_)
                          (___kont243367243368_))))
                   (___match243840243841_
                    (lambda (_e234829234867_
                             _hd234828234870_
                             _tl234827234872_
                             _e234832234875_
                             _hd234831234878_
                             _tl234830234880_
                             _e234835234883_
                             _hd234834234886_
                             _tl234833234888_
                             _e234838234891_
                             _hd234837234894_
                             _tl234836234896_
                             _e234841234899_
                             _hd234840234902_
                             _tl234839234904_
                             _e234844234907_
                             _hd234843234910_
                             _tl234842234912_
                             _e234847234915_
                             _hd234846234918_
                             _tl234845234920_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234839234904_))
                          (let ((_e234850234923_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234839234904_))))
                            (let ((_tl234848234928_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234850234923_)))
                                  (_hd234849234926_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234850234923_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234848234928_))
                                  (___match243848243849_
                                   _e234829234867_
                                   _hd234828234870_
                                   _tl234827234872_
                                   _e234832234875_
                                   _hd234831234878_
                                   _tl234830234880_
                                   _e234835234883_
                                   _hd234834234886_
                                   _tl234833234888_
                                   _e234838234891_
                                   _hd234837234894_
                                   _tl234836234896_
                                   _e234841234899_
                                   _hd234840234902_
                                   _tl234839234904_
                                   _e234844234907_
                                   _hd234843234910_
                                   _tl234842234912_
                                   _e234847234915_
                                   _hd234846234918_
                                   _tl234845234920_
                                   _e234850234923_
                                   _hd234849234926_
                                   _tl234848234928_)
                                  (___kont243367243368_))))
                          (___kont243367243368_))))
                   (___match243786243787_
                    (lambda (_e234805234965_
                             _hd234804234968_
                             _tl234803234970_
                             _e234808234973_
                             _hd234807234976_
                             _tl234806234978_
                             _e234811234981_
                             _hd234810234984_
                             _tl234809234986_
                             _e234814234989_
                             _hd234813234992_
                             _tl234812234994_
                             _e234817234997_
                             _hd234816235000_
                             _tl234815235002_
                             _e234820235005_
                             _hd234819235008_
                             _tl234818235010_
                             _e234823235013_
                             _hd234822235016_
                             _tl234821235018_)
                      (let ((_L235021_ _hd234822235016_)
                            (_L235022_ _hd234813234992_))
                        (if (and (let ((__tmp244718
                                        (let ((__tmp244719
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L235022_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp244719))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp244718
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L235021_
                                    _self234620_)))
                            (___kont243363243364_ _L235021_ _L235022_)
                            (___kont243367243368_)))))
                   (___match243784243785_
                    (lambda (_e234805234965_
                             _hd234804234968_
                             _tl234803234970_
                             _e234808234973_
                             _hd234807234976_
                             _tl234806234978_
                             _e234811234981_
                             _hd234810234984_
                             _tl234809234986_
                             _e234814234989_
                             _hd234813234992_
                             _tl234812234994_
                             _e234817234997_
                             _hd234816235000_
                             _tl234815235002_
                             _e234820235005_
                             _hd234819235008_
                             _tl234818235010_
                             _e234823235013_
                             _hd234822235016_
                             _tl234821235018_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl234815235002_))
                          (___match243786243787_
                           _e234805234965_
                           _hd234804234968_
                           _tl234803234970_
                           _e234808234973_
                           _hd234807234976_
                           _tl234806234978_
                           _e234811234981_
                           _hd234810234984_
                           _tl234809234986_
                           _e234814234989_
                           _hd234813234992_
                           _tl234812234994_
                           _e234817234997_
                           _hd234816235000_
                           _tl234815235002_
                           _e234820235005_
                           _hd234819235008_
                           _tl234818235010_
                           _e234823235013_
                           _hd234822235016_
                           _tl234821235018_)
                          (___match243840243841_
                           _e234805234965_
                           _hd234804234968_
                           _tl234803234970_
                           _e234808234973_
                           _hd234807234976_
                           _tl234806234978_
                           _e234811234981_
                           _hd234810234984_
                           _tl234809234986_
                           _e234814234989_
                           _hd234813234992_
                           _tl234812234994_
                           _e234817234997_
                           _hd234816235000_
                           _tl234815235002_
                           _e234820235005_
                           _hd234819235008_
                           _tl234818235010_
                           _e234823235013_
                           _hd234822235016_
                           _tl234821235018_))))
                   (___match243730243731_
                    (lambda (_e234770235049_
                             _hd234769235052_
                             _tl234768235054_
                             _e234773235057_
                             _hd234772235060_
                             _tl234771235062_
                             _e234776235065_
                             _hd234775235068_
                             _tl234774235070_
                             _e234779235073_
                             _hd234778235076_
                             _tl234777235078_
                             _e234782235081_
                             _hd234781235084_
                             _tl234780235086_
                             _e234785235089_
                             _hd234784235092_
                             _tl234783235094_
                             _e234788235097_
                             _hd234787235100_
                             _tl234786235102_
                             _e234791235105_
                             _hd234790235108_
                             _tl234789235110_
                             _e234794235113_
                             _hd234793235116_
                             _tl234792235118_
                             _e234797235121_
                             _hd234796235124_
                             _tl234795235126_
                             _e234800235129_
                             _hd234799235132_
                             _tl234798235134_)
                      (let ((_L235137_ _hd234799235132_)
                            (_L235138_ _hd234796235124_)
                            (_L235139_ _hd234787235100_)
                            (_L235140_ _hd234778235076_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L235140_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L235140_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L235139_
                                    _self234620_)))
                            (___kont243361243362_
                             _L235137_
                             _L235138_
                             _L235139_
                             _L235140_)
                            (___kont243367243368_)))))
                   (___match243722243723_
                    (lambda (_e234770235049_
                             _hd234769235052_
                             _tl234768235054_
                             _e234773235057_
                             _hd234772235060_
                             _tl234771235062_
                             _e234776235065_
                             _hd234775235068_
                             _tl234774235070_
                             _e234779235073_
                             _hd234778235076_
                             _tl234777235078_
                             _e234782235081_
                             _hd234781235084_
                             _tl234780235086_
                             _e234785235089_
                             _hd234784235092_
                             _tl234783235094_
                             _e234788235097_
                             _hd234787235100_
                             _tl234786235102_
                             _e234791235105_
                             _hd234790235108_
                             _tl234789235110_
                             _e234794235113_
                             _hd234793235116_
                             _tl234792235118_
                             _e234797235121_
                             _hd234796235124_
                             _tl234795235126_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234789235110_))
                          (let ((_e234800235129_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234789235110_))))
                            (let ((_tl234798235134_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234800235129_)))
                                  (_hd234799235132_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234800235129_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234798235134_))
                                  (___match243730243731_
                                   _e234770235049_
                                   _hd234769235052_
                                   _tl234768235054_
                                   _e234773235057_
                                   _hd234772235060_
                                   _tl234771235062_
                                   _e234776235065_
                                   _hd234775235068_
                                   _tl234774235070_
                                   _e234779235073_
                                   _hd234778235076_
                                   _tl234777235078_
                                   _e234782235081_
                                   _hd234781235084_
                                   _tl234780235086_
                                   _e234785235089_
                                   _hd234784235092_
                                   _tl234783235094_
                                   _e234788235097_
                                   _hd234787235100_
                                   _tl234786235102_
                                   _e234791235105_
                                   _hd234790235108_
                                   _tl234789235110_
                                   _e234794235113_
                                   _hd234793235116_
                                   _tl234792235118_
                                   _e234797235121_
                                   _hd234796235124_
                                   _tl234795235126_
                                   _e234800235129_
                                   _hd234799235132_
                                   _tl234798235134_)
                                  (___kont243367243368_))))
                          (___match243846243847_
                           _e234770235049_
                           _hd234769235052_
                           _tl234768235054_
                           _e234773235057_
                           _hd234772235060_
                           _tl234771235062_
                           _e234776235065_
                           _hd234775235068_
                           _tl234774235070_
                           _e234779235073_
                           _hd234778235076_
                           _tl234777235078_
                           _e234782235081_
                           _hd234781235084_
                           _tl234780235086_
                           _e234785235089_
                           _hd234784235092_
                           _tl234783235094_
                           _e234788235097_
                           _hd234787235100_
                           _tl234786235102_
                           _e234791235105_
                           _hd234790235108_
                           _tl234789235110_))))
                   (___match243644243645_
                    (lambda (_e234736235180_
                             _hd234735235183_
                             _tl234734235185_
                             _e234739235188_
                             _hd234738235191_
                             _tl234737235193_
                             _e234742235196_
                             _hd234741235199_
                             _tl234740235201_
                             _e234745235204_
                             _hd234744235207_
                             _tl234743235209_
                             _e234748235212_
                             _hd234747235215_
                             _tl234746235217_
                             _e234751235220_
                             _hd234750235223_
                             _tl234749235225_
                             _e234754235228_
                             _hd234753235231_
                             _tl234752235233_
                             _e234757235236_
                             _hd234756235239_
                             _tl234755235241_
                             _e234760235244_
                             _hd234759235247_
                             _tl234758235249_
                             _e234763235252_
                             _hd234762235255_
                             _tl234761235257_)
                      (let ((_L235260_ _hd234762235255_)
                            (_L235261_ _hd234753235231_)
                            (_L235262_ _hd234744235207_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L235262_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L235262_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L235261_
                                    _self234620_)))
                            (___kont243359243360_
                             _L235260_
                             _L235261_
                             _L235262_)
                            (___match243848243849_
                             _e234736235180_
                             _hd234735235183_
                             _tl234734235185_
                             _e234739235188_
                             _hd234738235191_
                             _tl234737235193_
                             _e234742235196_
                             _hd234741235199_
                             _tl234740235201_
                             _e234745235204_
                             _hd234744235207_
                             _tl234743235209_
                             _e234748235212_
                             _hd234747235215_
                             _tl234746235217_
                             _e234751235220_
                             _hd234750235223_
                             _tl234749235225_
                             _e234754235228_
                             _hd234753235231_
                             _tl234752235233_
                             _e234757235236_
                             _hd234756235239_
                             _tl234755235241_)))))
                   (___match243642243643_
                    (lambda (_e234736235180_
                             _hd234735235183_
                             _tl234734235185_
                             _e234739235188_
                             _hd234738235191_
                             _tl234737235193_
                             _e234742235196_
                             _hd234741235199_
                             _tl234740235201_
                             _e234745235204_
                             _hd234744235207_
                             _tl234743235209_
                             _e234748235212_
                             _hd234747235215_
                             _tl234746235217_
                             _e234751235220_
                             _hd234750235223_
                             _tl234749235225_
                             _e234754235228_
                             _hd234753235231_
                             _tl234752235233_
                             _e234757235236_
                             _hd234756235239_
                             _tl234755235241_
                             _e234760235244_
                             _hd234759235247_
                             _tl234758235249_
                             _e234763235252_
                             _hd234762235255_
                             _tl234761235257_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl234755235241_))
                          (___match243644243645_
                           _e234736235180_
                           _hd234735235183_
                           _tl234734235185_
                           _e234739235188_
                           _hd234738235191_
                           _tl234737235193_
                           _e234742235196_
                           _hd234741235199_
                           _tl234740235201_
                           _e234745235204_
                           _hd234744235207_
                           _tl234743235209_
                           _e234748235212_
                           _hd234747235215_
                           _tl234746235217_
                           _e234751235220_
                           _hd234750235223_
                           _tl234749235225_
                           _e234754235228_
                           _hd234753235231_
                           _tl234752235233_
                           _e234757235236_
                           _hd234756235239_
                           _tl234755235241_
                           _e234760235244_
                           _hd234759235247_
                           _tl234758235249_
                           _e234763235252_
                           _hd234762235255_
                           _tl234761235257_)
                          (___match243722243723_
                           _e234736235180_
                           _hd234735235183_
                           _tl234734235185_
                           _e234739235188_
                           _hd234738235191_
                           _tl234737235193_
                           _e234742235196_
                           _hd234741235199_
                           _tl234740235201_
                           _e234745235204_
                           _hd234744235207_
                           _tl234743235209_
                           _e234748235212_
                           _hd234747235215_
                           _tl234746235217_
                           _e234751235220_
                           _hd234750235223_
                           _tl234749235225_
                           _e234754235228_
                           _hd234753235231_
                           _tl234752235233_
                           _e234757235236_
                           _hd234756235239_
                           _tl234755235241_
                           _e234760235244_
                           _hd234759235247_
                           _tl234758235249_
                           _e234763235252_
                           _hd234762235255_
                           _tl234761235257_))))
                   (___match243632243633_
                    (lambda (_e234736235180_
                             _hd234735235183_
                             _tl234734235185_
                             _e234739235188_
                             _hd234738235191_
                             _tl234737235193_
                             _e234742235196_
                             _hd234741235199_
                             _tl234740235201_
                             _e234745235204_
                             _hd234744235207_
                             _tl234743235209_
                             _e234748235212_
                             _hd234747235215_
                             _tl234746235217_
                             _e234751235220_
                             _hd234750235223_
                             _tl234749235225_
                             _e234754235228_
                             _hd234753235231_
                             _tl234752235233_
                             _e234757235236_
                             _hd234756235239_
                             _tl234755235241_
                             _e234760235244_
                             _hd234759235247_
                             _tl234758235249_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd234759235247_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234758235249_))
                              (let ((_e234763235252_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234758235249_))))
                                (let ((_tl234761235257_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234763235252_)))
                                      (_hd234762235255_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234763235252_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234761235257_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234755235241_))
                                          (___match243644243645_
                                           _e234736235180_
                                           _hd234735235183_
                                           _tl234734235185_
                                           _e234739235188_
                                           _hd234738235191_
                                           _tl234737235193_
                                           _e234742235196_
                                           _hd234741235199_
                                           _tl234740235201_
                                           _e234745235204_
                                           _hd234744235207_
                                           _tl234743235209_
                                           _e234748235212_
                                           _hd234747235215_
                                           _tl234746235217_
                                           _e234751235220_
                                           _hd234750235223_
                                           _tl234749235225_
                                           _e234754235228_
                                           _hd234753235231_
                                           _tl234752235233_
                                           _e234757235236_
                                           _hd234756235239_
                                           _tl234755235241_
                                           _e234760235244_
                                           _hd234759235247_
                                           _tl234758235249_
                                           _e234763235252_
                                           _hd234762235255_
                                           _tl234761235257_)
                                          (___match243722243723_
                                           _e234736235180_
                                           _hd234735235183_
                                           _tl234734235185_
                                           _e234739235188_
                                           _hd234738235191_
                                           _tl234737235193_
                                           _e234742235196_
                                           _hd234741235199_
                                           _tl234740235201_
                                           _e234745235204_
                                           _hd234744235207_
                                           _tl234743235209_
                                           _e234748235212_
                                           _hd234747235215_
                                           _tl234746235217_
                                           _e234751235220_
                                           _hd234750235223_
                                           _tl234749235225_
                                           _e234754235228_
                                           _hd234753235231_
                                           _tl234752235233_
                                           _e234757235236_
                                           _hd234756235239_
                                           _tl234755235241_
                                           _e234760235244_
                                           _hd234759235247_
                                           _tl234758235249_
                                           _e234763235252_
                                           _hd234762235255_
                                           _tl234761235257_))
                                      (___match243846243847_
                                       _e234736235180_
                                       _hd234735235183_
                                       _tl234734235185_
                                       _e234739235188_
                                       _hd234738235191_
                                       _tl234737235193_
                                       _e234742235196_
                                       _hd234741235199_
                                       _tl234740235201_
                                       _e234745235204_
                                       _hd234744235207_
                                       _tl234743235209_
                                       _e234748235212_
                                       _hd234747235215_
                                       _tl234746235217_
                                       _e234751235220_
                                       _hd234750235223_
                                       _tl234749235225_
                                       _e234754235228_
                                       _hd234753235231_
                                       _tl234752235233_
                                       _e234757235236_
                                       _hd234756235239_
                                       _tl234755235241_))))
                              (___match243846243847_
                               _e234736235180_
                               _hd234735235183_
                               _tl234734235185_
                               _e234739235188_
                               _hd234738235191_
                               _tl234737235193_
                               _e234742235196_
                               _hd234741235199_
                               _tl234740235201_
                               _e234745235204_
                               _hd234744235207_
                               _tl234743235209_
                               _e234748235212_
                               _hd234747235215_
                               _tl234746235217_
                               _e234751235220_
                               _hd234750235223_
                               _tl234749235225_
                               _e234754235228_
                               _hd234753235231_
                               _tl234752235233_
                               _e234757235236_
                               _hd234756235239_
                               _tl234755235241_))
                          (___match243846243847_
                           _e234736235180_
                           _hd234735235183_
                           _tl234734235185_
                           _e234739235188_
                           _hd234738235191_
                           _tl234737235193_
                           _e234742235196_
                           _hd234741235199_
                           _tl234740235201_
                           _e234745235204_
                           _hd234744235207_
                           _tl234743235209_
                           _e234748235212_
                           _hd234747235215_
                           _tl234746235217_
                           _e234751235220_
                           _hd234750235223_
                           _tl234749235225_
                           _e234754235228_
                           _hd234753235231_
                           _tl234752235233_
                           _e234757235236_
                           _hd234756235239_
                           _tl234755235241_))))
                   (___match243564243565_
                    (lambda (_e234685235299_
                             _hd234684235302_
                             _tl234683235304_
                             _e234688235307_
                             _hd234687235310_
                             _tl234686235312_
                             _e234691235315_
                             _hd234690235318_
                             _tl234689235320_
                             _e234694235323_
                             _hd234693235326_
                             _tl234692235328_
                             _e234697235331_
                             _hd234696235334_
                             _tl234695235336_
                             _e234700235339_
                             _hd234699235342_
                             _tl234698235344_
                             _e234703235347_
                             _hd234702235350_
                             _tl234701235352_
                             _e234706235355_
                             _hd234705235358_
                             _tl234704235360_
                             _e234709235363_
                             _hd234708235366_
                             _tl234707235368_
                             _e234712235371_
                             _hd234711235374_
                             _tl234710235376_
                             _e234715235379_
                             _hd234714235382_
                             _tl234713235384_
                             _e234718235387_
                             _hd234717235390_
                             _tl234716235392_
                             _e234721235395_
                             _hd234720235398_
                             _tl234719235400_
                             ___splice243357243358_
                             _target234722235403_
                             _tl234724235405_)
                      (letrec ((_loop234725235408_
                                (lambda (_hd234723235411_ _args234729235413_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234723235411_))
                                      (let ((_e234726235416_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234723235411_))))
                                        (let ((_lp-tl234728235421_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234726235416_)))
                                              (_lp-hd234727235419_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234726235416_))))
                                          (let ((__tmp244720
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234727235419_
                                                         _args234729235413_))))
                                            (declare (not safe))
                                            (_loop234725235408_
                                             _lp-tl234728235421_
                                             __tmp244720))))
                                      (let ((_args234730235424_
                                             (reverse _args234729235413_)))
                                        (let ((_L235427_ _args234730235424_)
                                              (_L235428_ _hd234720235398_)
                                              (_L235429_ _hd234711235374_)
                                              (_L235430_ _hd234702235350_)
                                              (_L235431_ _hd234693235326_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L235431_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L235430_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L235429_
                                                      _self234620_)))
                                              (___kont243355243356_
                                               _L235427_
                                               _L235428_
                                               _L235429_
                                               _L235430_
                                               _L235431_)
                                              (___kont243367243368_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop234725235408_ _target234722235403_ '())))))
                   (___match243522243523_
                    (lambda (_e234685235299_
                             _hd234684235302_
                             _tl234683235304_
                             _e234688235307_
                             _hd234687235310_
                             _tl234686235312_
                             _e234691235315_
                             _hd234690235318_
                             _tl234689235320_
                             _e234694235323_
                             _hd234693235326_
                             _tl234692235328_
                             _e234697235331_
                             _hd234696235334_
                             _tl234695235336_
                             _e234700235339_
                             _hd234699235342_
                             _tl234698235344_
                             _e234703235347_
                             _hd234702235350_
                             _tl234701235352_
                             _e234706235355_
                             _hd234705235358_
                             _tl234704235360_
                             _e234709235363_
                             _hd234708235366_
                             _tl234707235368_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd234708235366_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234707235368_))
                              (let ((_e234712235371_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234707235368_))))
                                (let ((_tl234710235376_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234712235371_)))
                                      (_hd234711235374_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234712235371_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234710235376_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234704235360_))
                                          (let ((_e234715235379_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234704235360_))))
                                            (let ((_tl234713235384_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234715235379_)))
                                                  (_hd234714235382_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234715235379_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd234714235382_))
                                                  (let ((_e234718235387_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd234714235382_))))
                                                    (let ((_tl234716235392_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234718235387_)))
                                                          (_hd234717235390_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234718235387_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd234717235390_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd234717235390_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234716235392_))
                          (let ((_e234721235395_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234716235392_))))
                            (let ((_tl234719235400_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234721235395_)))
                                  (_hd234720235398_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234721235395_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234719235400_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl234713235384_))
                                      (let ((___splice243357243358_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl234713235384_
                                                '0))))
                                        (let ((_tl234724235405_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243357243358_
                                                  '1)))
                                              (_target234722235403_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243357243358_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234724235405_))
                                              (___match243564243565_
                                               _e234685235299_
                                               _hd234684235302_
                                               _tl234683235304_
                                               _e234688235307_
                                               _hd234687235310_
                                               _tl234686235312_
                                               _e234691235315_
                                               _hd234690235318_
                                               _tl234689235320_
                                               _e234694235323_
                                               _hd234693235326_
                                               _tl234692235328_
                                               _e234697235331_
                                               _hd234696235334_
                                               _tl234695235336_
                                               _e234700235339_
                                               _hd234699235342_
                                               _tl234698235344_
                                               _e234703235347_
                                               _hd234702235350_
                                               _tl234701235352_
                                               _e234706235355_
                                               _hd234705235358_
                                               _tl234704235360_
                                               _e234709235363_
                                               _hd234708235366_
                                               _tl234707235368_
                                               _e234712235371_
                                               _hd234711235374_
                                               _tl234710235376_
                                               _e234715235379_
                                               _hd234714235382_
                                               _tl234713235384_
                                               _e234718235387_
                                               _hd234717235390_
                                               _tl234716235392_
                                               _e234721235395_
                                               _hd234720235398_
                                               _tl234719235400_
                                               ___splice243357243358_
                                               _target234722235403_
                                               _tl234724235405_)
                                              (___kont243367243368_))))
                                      (___kont243367243368_))
                                  (___kont243367243368_))))
                          (___kont243367243368_))
                      (___kont243367243368_))
                  (___kont243367243368_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243367243368_))))
                                          (___match243846243847_
                                           _e234685235299_
                                           _hd234684235302_
                                           _tl234683235304_
                                           _e234688235307_
                                           _hd234687235310_
                                           _tl234686235312_
                                           _e234691235315_
                                           _hd234690235318_
                                           _tl234689235320_
                                           _e234694235323_
                                           _hd234693235326_
                                           _tl234692235328_
                                           _e234697235331_
                                           _hd234696235334_
                                           _tl234695235336_
                                           _e234700235339_
                                           _hd234699235342_
                                           _tl234698235344_
                                           _e234703235347_
                                           _hd234702235350_
                                           _tl234701235352_
                                           _e234706235355_
                                           _hd234705235358_
                                           _tl234704235360_))
                                      (___match243846243847_
                                       _e234685235299_
                                       _hd234684235302_
                                       _tl234683235304_
                                       _e234688235307_
                                       _hd234687235310_
                                       _tl234686235312_
                                       _e234691235315_
                                       _hd234690235318_
                                       _tl234689235320_
                                       _e234694235323_
                                       _hd234693235326_
                                       _tl234692235328_
                                       _e234697235331_
                                       _hd234696235334_
                                       _tl234695235336_
                                       _e234700235339_
                                       _hd234699235342_
                                       _tl234698235344_
                                       _e234703235347_
                                       _hd234702235350_
                                       _tl234701235352_
                                       _e234706235355_
                                       _hd234705235358_
                                       _tl234704235360_))))
                              (___match243846243847_
                               _e234685235299_
                               _hd234684235302_
                               _tl234683235304_
                               _e234688235307_
                               _hd234687235310_
                               _tl234686235312_
                               _e234691235315_
                               _hd234690235318_
                               _tl234689235320_
                               _e234694235323_
                               _hd234693235326_
                               _tl234692235328_
                               _e234697235331_
                               _hd234696235334_
                               _tl234695235336_
                               _e234700235339_
                               _hd234699235342_
                               _tl234698235344_
                               _e234703235347_
                               _hd234702235350_
                               _tl234701235352_
                               _e234706235355_
                               _hd234705235358_
                               _tl234704235360_))
                          (___match243632243633_
                           _e234685235299_
                           _hd234684235302_
                           _tl234683235304_
                           _e234688235307_
                           _hd234687235310_
                           _tl234686235312_
                           _e234691235315_
                           _hd234690235318_
                           _tl234689235320_
                           _e234694235323_
                           _hd234693235326_
                           _tl234692235328_
                           _e234697235331_
                           _hd234696235334_
                           _tl234695235336_
                           _e234700235339_
                           _hd234699235342_
                           _tl234698235344_
                           _e234703235347_
                           _hd234702235350_
                           _tl234701235352_
                           _e234706235355_
                           _hd234705235358_
                           _tl234704235360_
                           _e234709235363_
                           _hd234708235366_
                           _tl234707235368_))))
                   (___match243454243455_
                    (lambda (_e234641235488_
                             _hd234640235491_
                             _tl234639235493_
                             _e234644235496_
                             _hd234643235499_
                             _tl234642235501_
                             _e234647235504_
                             _hd234646235507_
                             _tl234645235509_
                             _e234650235512_
                             _hd234649235515_
                             _tl234648235517_
                             _e234653235520_
                             _hd234652235523_
                             _tl234651235525_
                             _e234656235528_
                             _hd234655235531_
                             _tl234654235533_
                             _e234659235536_
                             _hd234658235539_
                             _tl234657235541_
                             _e234662235544_
                             _hd234661235547_
                             _tl234660235549_
                             _e234665235552_
                             _hd234664235555_
                             _tl234663235557_
                             _e234668235560_
                             _hd234667235563_
                             _tl234666235565_
                             ___splice243353243354_
                             _target234669235568_
                             _tl234671235570_)
                      (letrec ((_loop234672235573_
                                (lambda (_hd234670235576_ _args234676235578_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234670235576_))
                                      (let ((_e234673235581_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234670235576_))))
                                        (let ((_lp-tl234675235586_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234673235581_)))
                                              (_lp-hd234674235584_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234673235581_))))
                                          (let ((__tmp244721
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234674235584_
                                                         _args234676235578_))))
                                            (declare (not safe))
                                            (_loop234672235573_
                                             _lp-tl234675235586_
                                             __tmp244721))))
                                      (let ((_args234677235589_
                                             (reverse _args234676235578_)))
                                        (let ((_L235592_ _args234677235589_)
                                              (_L235593_ _hd234667235563_)
                                              (_L235594_ _hd234658235539_)
                                              (_L235595_ _hd234649235515_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L235595_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L235594_
                                                      _self234620_)))
                                              (___kont243351243352_
                                               _L235592_
                                               _L235593_
                                               _L235594_
                                               _L235595_)
                                              (___match243642243643_
                                               _e234641235488_
                                               _hd234640235491_
                                               _tl234639235493_
                                               _e234644235496_
                                               _hd234643235499_
                                               _tl234642235501_
                                               _e234647235504_
                                               _hd234646235507_
                                               _tl234645235509_
                                               _e234650235512_
                                               _hd234649235515_
                                               _tl234648235517_
                                               _e234653235520_
                                               _hd234652235523_
                                               _tl234651235525_
                                               _e234656235528_
                                               _hd234655235531_
                                               _tl234654235533_
                                               _e234659235536_
                                               _hd234658235539_
                                               _tl234657235541_
                                               _e234662235544_
                                               _hd234661235547_
                                               _tl234660235549_
                                               _e234665235552_
                                               _hd234664235555_
                                               _tl234663235557_
                                               _e234668235560_
                                               _hd234667235563_
                                               _tl234666235565_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop234672235573_ _target234669235568_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243349243350_))
                  (let ((_e234641235488_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243349243350_))))
                    (let ((_tl234639235493_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234641235488_)))
                          (_hd234640235491_
                           (let ()
                             (declare (not safe))
                             (##car _e234641235488_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234639235493_))
                          (let ((_e234644235496_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234639235493_))))
                            (let ((_tl234642235501_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234644235496_)))
                                  (_hd234643235499_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234644235496_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd234643235499_))
                                  (let ((_e234647235504_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd234643235499_))))
                                    (let ((_tl234645235509_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234647235504_)))
                                          (_hd234646235507_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234647235504_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd234646235507_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd234646235507_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234645235509_))
                                                  (let ((_e234650235512_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234645235509_))))
                                                    (let ((_tl234648235517_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234650235512_)))
                                                          (_hd234649235515_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234650235512_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl234648235517_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl234642235501_))
                      (let ((_e234653235520_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl234642235501_))))
                        (let ((_tl234651235525_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234653235520_)))
                              (_hd234652235523_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234653235520_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd234652235523_))
                              (let ((_e234656235528_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd234652235523_))))
                                (let ((_tl234654235533_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234656235528_)))
                                      (_hd234655235531_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234656235528_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd234655235531_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd234655235531_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234654235533_))
                                              (let ((_e234659235536_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234654235533_))))
                                                (let ((_tl234657235541_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234659235536_)))
                                                      (_hd234658235539_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234659235536_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234657235541_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234651235525_))
                                                          (let ((_e234662235544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234651235525_))))
                    (let ((_tl234660235549_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234662235544_)))
                          (_hd234661235547_
                           (let ()
                             (declare (not safe))
                             (##car _e234662235544_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234661235547_))
                          (let ((_e234665235552_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234661235547_))))
                            (let ((_tl234663235557_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234665235552_)))
                                  (_hd234664235555_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234665235552_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234664235555_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd234664235555_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234663235557_))
                                          (let ((_e234668235560_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234663235557_))))
                                            (let ((_tl234666235565_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234668235560_)))
                                                  (_hd234667235563_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234668235560_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234666235565_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl234660235549_))
                                                      (let ((___splice243353243354_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl234660235549_ '0))))
                (let ((_tl234671235570_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice243353243354_ '1)))
                      (_target234669235568_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice243353243354_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl234671235570_))
                      (___match243454243455_
                       _e234641235488_
                       _hd234640235491_
                       _tl234639235493_
                       _e234644235496_
                       _hd234643235499_
                       _tl234642235501_
                       _e234647235504_
                       _hd234646235507_
                       _tl234645235509_
                       _e234650235512_
                       _hd234649235515_
                       _tl234648235517_
                       _e234653235520_
                       _hd234652235523_
                       _tl234651235525_
                       _e234656235528_
                       _hd234655235531_
                       _tl234654235533_
                       _e234659235536_
                       _hd234658235539_
                       _tl234657235541_
                       _e234662235544_
                       _hd234661235547_
                       _tl234660235549_
                       _e234665235552_
                       _hd234664235555_
                       _tl234663235557_
                       _e234668235560_
                       _hd234667235563_
                       _tl234666235565_
                       ___splice243353243354_
                       _target234669235568_
                       _tl234671235570_)
                      (___match243642243643_
                       _e234641235488_
                       _hd234640235491_
                       _tl234639235493_
                       _e234644235496_
                       _hd234643235499_
                       _tl234642235501_
                       _e234647235504_
                       _hd234646235507_
                       _tl234645235509_
                       _e234650235512_
                       _hd234649235515_
                       _tl234648235517_
                       _e234653235520_
                       _hd234652235523_
                       _tl234651235525_
                       _e234656235528_
                       _hd234655235531_
                       _tl234654235533_
                       _e234659235536_
                       _hd234658235539_
                       _tl234657235541_
                       _e234662235544_
                       _hd234661235547_
                       _tl234660235549_
                       _e234665235552_
                       _hd234664235555_
                       _tl234663235557_
                       _e234668235560_
                       _hd234667235563_
                       _tl234666235565_))))
              (___match243642243643_
               _e234641235488_
               _hd234640235491_
               _tl234639235493_
               _e234644235496_
               _hd234643235499_
               _tl234642235501_
               _e234647235504_
               _hd234646235507_
               _tl234645235509_
               _e234650235512_
               _hd234649235515_
               _tl234648235517_
               _e234653235520_
               _hd234652235523_
               _tl234651235525_
               _e234656235528_
               _hd234655235531_
               _tl234654235533_
               _e234659235536_
               _hd234658235539_
               _tl234657235541_
               _e234662235544_
               _hd234661235547_
               _tl234660235549_
               _e234665235552_
               _hd234664235555_
               _tl234663235557_
               _e234668235560_
               _hd234667235563_
               _tl234666235565_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243846243847_
                                                   _e234641235488_
                                                   _hd234640235491_
                                                   _tl234639235493_
                                                   _e234644235496_
                                                   _hd234643235499_
                                                   _tl234642235501_
                                                   _e234647235504_
                                                   _hd234646235507_
                                                   _tl234645235509_
                                                   _e234650235512_
                                                   _hd234649235515_
                                                   _tl234648235517_
                                                   _e234653235520_
                                                   _hd234652235523_
                                                   _tl234651235525_
                                                   _e234656235528_
                                                   _hd234655235531_
                                                   _tl234654235533_
                                                   _e234659235536_
                                                   _hd234658235539_
                                                   _tl234657235541_
                                                   _e234662235544_
                                                   _hd234661235547_
                                                   _tl234660235549_))))
                                          (___match243846243847_
                                           _e234641235488_
                                           _hd234640235491_
                                           _tl234639235493_
                                           _e234644235496_
                                           _hd234643235499_
                                           _tl234642235501_
                                           _e234647235504_
                                           _hd234646235507_
                                           _tl234645235509_
                                           _e234650235512_
                                           _hd234649235515_
                                           _tl234648235517_
                                           _e234653235520_
                                           _hd234652235523_
                                           _tl234651235525_
                                           _e234656235528_
                                           _hd234655235531_
                                           _tl234654235533_
                                           _e234659235536_
                                           _hd234658235539_
                                           _tl234657235541_
                                           _e234662235544_
                                           _hd234661235547_
                                           _tl234660235549_))
                                      (___match243522243523_
                                       _e234641235488_
                                       _hd234640235491_
                                       _tl234639235493_
                                       _e234644235496_
                                       _hd234643235499_
                                       _tl234642235501_
                                       _e234647235504_
                                       _hd234646235507_
                                       _tl234645235509_
                                       _e234650235512_
                                       _hd234649235515_
                                       _tl234648235517_
                                       _e234653235520_
                                       _hd234652235523_
                                       _tl234651235525_
                                       _e234656235528_
                                       _hd234655235531_
                                       _tl234654235533_
                                       _e234659235536_
                                       _hd234658235539_
                                       _tl234657235541_
                                       _e234662235544_
                                       _hd234661235547_
                                       _tl234660235549_
                                       _e234665235552_
                                       _hd234664235555_
                                       _tl234663235557_))
                                  (___match243846243847_
                                   _e234641235488_
                                   _hd234640235491_
                                   _tl234639235493_
                                   _e234644235496_
                                   _hd234643235499_
                                   _tl234642235501_
                                   _e234647235504_
                                   _hd234646235507_
                                   _tl234645235509_
                                   _e234650235512_
                                   _hd234649235515_
                                   _tl234648235517_
                                   _e234653235520_
                                   _hd234652235523_
                                   _tl234651235525_
                                   _e234656235528_
                                   _hd234655235531_
                                   _tl234654235533_
                                   _e234659235536_
                                   _hd234658235539_
                                   _tl234657235541_
                                   _e234662235544_
                                   _hd234661235547_
                                   _tl234660235549_))))
                          (___match243846243847_
                           _e234641235488_
                           _hd234640235491_
                           _tl234639235493_
                           _e234644235496_
                           _hd234643235499_
                           _tl234642235501_
                           _e234647235504_
                           _hd234646235507_
                           _tl234645235509_
                           _e234650235512_
                           _hd234649235515_
                           _tl234648235517_
                           _e234653235520_
                           _hd234652235523_
                           _tl234651235525_
                           _e234656235528_
                           _hd234655235531_
                           _tl234654235533_
                           _e234659235536_
                           _hd234658235539_
                           _tl234657235541_
                           _e234662235544_
                           _hd234661235547_
                           _tl234660235549_))))
                  (___match243784243785_
                   _e234641235488_
                   _hd234640235491_
                   _tl234639235493_
                   _e234644235496_
                   _hd234643235499_
                   _tl234642235501_
                   _e234647235504_
                   _hd234646235507_
                   _tl234645235509_
                   _e234650235512_
                   _hd234649235515_
                   _tl234648235517_
                   _e234653235520_
                   _hd234652235523_
                   _tl234651235525_
                   _e234656235528_
                   _hd234655235531_
                   _tl234654235533_
                   _e234659235536_
                   _hd234658235539_
                   _tl234657235541_))
              (___kont243367243368_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont243367243368_))
                                          (___kont243367243368_))
                                      (___kont243367243368_))))
                              (___kont243367243368_))))
                      (___kont243367243368_))
                  (___kont243367243368_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243367243368_))
                                              (___kont243367243368_))
                                          (___kont243367243368_))))
                                  (___kont243367243368_))))
                          (___kont243367243368_))))
                  (___kont243367243368_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx233565_
               _self233566_
               _$t233567_
               _methods233568_
               _slots233569_
               _class-check233570_
               _struct-check233571_
               _struct-assert233572_)
        (letrec ((_force-e233574_
                  (lambda (_what234617_)
                    (let ((__tmp244722
                           (let ((__tmp244726
                                  (let ((__tmp244727
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp244727)))
                                 (__tmp244723
                                  (let ((__tmp244724
                                         (let ((__tmp244725
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what234617_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp244725))))
                                    (declare (not safe))
                                    (cons __tmp244724 '()))))
                             (declare (not safe))
                             (cons __tmp244726 __tmp244723))))
                      (declare (not safe))
                      (cons '%#call __tmp244722)))))
          (let* ((___stx243851243852_ _stx233565_)
                 (_g233582233804_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx243851243852_)))))
            (let ((___kont243853243854_
                   (lambda (_L234563_ _L234564_ _L234565_ _L234566_)
                     (let ((_$method234611_
                            (let ((__tmp244728
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L234564_))))
                              (declare (not safe))
                              (table-ref _methods233568_ __tmp244728)))
                           (_args234612_
                            (map (lambda (_g234599234601_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g234599234601_
                                      _self233566_
                                      _$t233567_
                                      _methods233568_
                                      _slots233569_
                                      _class-check233570_
                                      _struct-check233571_
                                      _struct-assert233572_)))
                                 (let ((__tmp244729
                                        (lambda (_g234603234606_
                                                 _g234604234608_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g234603234606_
                                                  _g234604234608_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp244729 '() _L234563_)))))
                       (let ((__tmp244730
                              (let ((__tmp244731
                                     (let ((__tmp244735
                                            (let ()
                                              (declare (not safe))
                                              (_force-e233574_
                                               _$method234611_)))
                                           (__tmp244732
                                            (let ((__tmp244733
                                                   (let ((__tmp244734
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self233566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp244734))))
                                              (declare (not safe))
                                              (cons __tmp244733
                                                    _args234612_))))
                                       (declare (not safe))
                                       (cons __tmp244735 __tmp244732))))
                                (declare (not safe))
                                (cons '%#call __tmp244731))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244730 _stx233565_)))))
                  (___kont243857243858_
                   (lambda (_L234395_ _L234396_ _L234397_ _L234398_ _L234399_)
                     (let ((_$method234451_
                            (let ((__tmp244736
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L234396_))))
                              (declare (not safe))
                              (table-ref _methods233568_ __tmp244736)))
                           (_args234452_
                            (map (lambda (_g234439234441_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g234439234441_
                                      _self233566_
                                      _$t233567_
                                      _methods233568_
                                      _slots233569_
                                      _class-check233570_
                                      _struct-check233571_
                                      _struct-assert233572_)))
                                 (let ((__tmp244737
                                        (lambda (_g234443234446_
                                                 _g234444234448_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g234443234446_
                                                  _g234444234448_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp244737 '() _L234395_)))))
                       (let ((__tmp244738
                              (let ((__tmp244739
                                     (let ((__tmp244745
                                            (let ((__tmp244746
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp244746)))
                                           (__tmp244740
                                            (let ((__tmp244744
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e233574_
                                                      _$method234451_)))
                                                  (__tmp244741
                                                   (let ((__tmp244742
                                                          (let ((__tmp244743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self233566_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp244743))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244742
                                                           _args234452_))))
                                              (declare (not safe))
                                              (cons __tmp244744 __tmp244741))))
                                       (declare (not safe))
                                       (cons __tmp244745 __tmp244740))))
                                (declare (not safe))
                                (cons '%#call __tmp244739))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244738 _stx233565_)))))
                  (___kont243861243862_
                   (lambda (_L234226_ _L234227_ _L234228_)
                     (let* ((_$field234260_
                             (let ((__tmp244747
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L234226_))))
                               (declare (not safe))
                               (table-ref _slots233569_ __tmp244747)))
                            (__tmp244748
                             (let ((__tmp244749
                                    (let ((__tmp244756
                                           (let ((__tmp244757
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t233567_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp244757)))
                                          (__tmp244750
                                           (let ((__tmp244754
                                                  (let ((__tmp244755
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field234260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp244755)))
                                                 (__tmp244751
                                                  (let ((__tmp244752
                                                         (let ((__tmp244753
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self233566_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp244753))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244752 '()))))
                                             (declare (not safe))
                                             (cons __tmp244754 __tmp244751))))
                                      (declare (not safe))
                                      (cons __tmp244756 __tmp244750))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp244749))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp244748 _stx233565_))))
                  (___kont243863243864_
                   (lambda (_L234100_ _L234101_ _L234102_ _L234103_)
                     (let ((_$field234138_
                            (let ((__tmp244758
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L234101_))))
                              (declare (not safe))
                              (table-ref _slots233569_ __tmp244758)))
                           (_expr234139_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L234100_
                               _self233566_
                               _$t233567_
                               _methods233568_
                               _slots233569_
                               _class-check233570_
                               _struct-check233571_
                               _struct-assert233572_))))
                       (let ((__tmp244759
                              (let ((__tmp244760
                                     (let ((__tmp244768
                                            (let ((__tmp244769
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t233567_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp244769)))
                                           (__tmp244761
                                            (let ((__tmp244766
                                                   (let ((__tmp244767
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field234138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp244767)))
                                                  (__tmp244762
                                                   (let ((__tmp244764
                                                          (let ((__tmp244765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self233566_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp244765)))
                 (__tmp244763
                  (let () (declare (not safe)) (cons _expr234139_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244764
                                                           __tmp244763))))
                                              (declare (not safe))
                                              (cons __tmp244766 __tmp244762))))
                                       (declare (not safe))
                                       (cons __tmp244768 __tmp244761))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp244760))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244759 _stx233565_)))))
                  (___kont243865243866_
                   (lambda (_L233979_ _L233980_)
                     (let* ((_slot234002_
                             (##structure-ref
                              (let ((__tmp244770
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L233980_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp244770))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field234004_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots233569_ _slot234002_))))
                       (let ((__tmp244771
                              (let ((__tmp244772
                                     (let ((__tmp244779
                                            (let ((__tmp244780
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t233567_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp244780)))
                                           (__tmp244773
                                            (let ((__tmp244777
                                                   (let ((__tmp244778
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field234004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp244778)))
                                                  (__tmp244774
                                                   (let ((__tmp244775
                                                          (let ((__tmp244776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self233566_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp244776))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244775 '()))))
                                              (declare (not safe))
                                              (cons __tmp244777 __tmp244774))))
                                       (declare (not safe))
                                       (cons __tmp244779 __tmp244773))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp244772))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244771 _stx233565_)))))
                  (___kont243867243868_
                   (lambda (_L233880_ _L233881_ _L233882_)
                     (let* ((_slot233911_
                             (##structure-ref
                              (let ((__tmp244781
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L233882_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp244781))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field233913_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots233569_ _slot233911_)))
                            (_expr233915_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L233880_
                                _self233566_
                                _$t233567_
                                _methods233568_
                                _slots233569_
                                _class-check233570_
                                _struct-check233571_
                                _struct-assert233572_))))
                       (let ((__tmp244782
                              (let ((__tmp244783
                                     (let ((__tmp244791
                                            (let ((__tmp244792
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t233567_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp244792)))
                                           (__tmp244784
                                            (let ((__tmp244789
                                                   (let ((__tmp244790
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field233913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp244790)))
                                                  (__tmp244785
                                                   (let ((__tmp244787
                                                          (let ((__tmp244788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self233566_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp244788)))
                 (__tmp244786
                  (let () (declare (not safe)) (cons _expr233915_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244787
                                                           __tmp244786))))
                                              (declare (not safe))
                                              (cons __tmp244789 __tmp244785))))
                                       (declare (not safe))
                                       (cons __tmp244791 __tmp244784))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp244783))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244782 _stx233565_)))))
                  (___kont243869243870_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx233565_
                        _self233566_
                        _$t233567_
                        _methods233568_
                        _slots233569_
                        _class-check233570_
                        _struct-check233571_
                        _struct-assert233572_)))))
              (let* ((___match244350244351_
                      (lambda (_e233778233816_
                               _hd233777233819_
                               _tl233776233821_
                               _e233781233824_
                               _hd233780233827_
                               _tl233779233829_
                               _e233784233832_
                               _hd233783233835_
                               _tl233782233837_
                               _e233787233840_
                               _hd233786233843_
                               _tl233785233845_
                               _e233790233848_
                               _hd233789233851_
                               _tl233788233853_
                               _e233793233856_
                               _hd233792233859_
                               _tl233791233861_
                               _e233796233864_
                               _hd233795233867_
                               _tl233794233869_
                               _e233799233872_
                               _hd233798233875_
                               _tl233797233877_)
                        (let ((_L233880_ _hd233798233875_)
                              (_L233881_ _hd233795233867_)
                              (_L233882_ _hd233786233843_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L233881_
                                      _self233566_))
                                   (let ((__tmp244793
                                          (let ((__tmp244794
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L233882_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp244794))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp244793
                                      'gxc#!mutator::t)))
                              (___kont243867243868_
                               _L233880_
                               _L233881_
                               _L233882_)
                              (___kont243869243870_)))))
                     (___match244348244349_
                      (lambda (_e233778233816_
                               _hd233777233819_
                               _tl233776233821_
                               _e233781233824_
                               _hd233780233827_
                               _tl233779233829_
                               _e233784233832_
                               _hd233783233835_
                               _tl233782233837_
                               _e233787233840_
                               _hd233786233843_
                               _tl233785233845_
                               _e233790233848_
                               _hd233789233851_
                               _tl233788233853_
                               _e233793233856_
                               _hd233792233859_
                               _tl233791233861_
                               _e233796233864_
                               _hd233795233867_
                               _tl233794233869_
                               _e233799233872_
                               _hd233798233875_
                               _tl233797233877_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl233797233877_))
                            (___match244350244351_
                             _e233778233816_
                             _hd233777233819_
                             _tl233776233821_
                             _e233781233824_
                             _hd233780233827_
                             _tl233779233829_
                             _e233784233832_
                             _hd233783233835_
                             _tl233782233837_
                             _e233787233840_
                             _hd233786233843_
                             _tl233785233845_
                             _e233790233848_
                             _hd233789233851_
                             _tl233788233853_
                             _e233793233856_
                             _hd233792233859_
                             _tl233791233861_
                             _e233796233864_
                             _hd233795233867_
                             _tl233794233869_
                             _e233799233872_
                             _hd233798233875_
                             _tl233797233877_)
                            (___kont243869243870_))))
                     (___match244342244343_
                      (lambda (_e233778233816_
                               _hd233777233819_
                               _tl233776233821_
                               _e233781233824_
                               _hd233780233827_
                               _tl233779233829_
                               _e233784233832_
                               _hd233783233835_
                               _tl233782233837_
                               _e233787233840_
                               _hd233786233843_
                               _tl233785233845_
                               _e233790233848_
                               _hd233789233851_
                               _tl233788233853_
                               _e233793233856_
                               _hd233792233859_
                               _tl233791233861_
                               _e233796233864_
                               _hd233795233867_
                               _tl233794233869_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233788233853_))
                            (let ((_e233799233872_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233788233853_))))
                              (let ((_tl233797233877_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233799233872_)))
                                    (_hd233798233875_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233799233872_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233797233877_))
                                    (___match244350244351_
                                     _e233778233816_
                                     _hd233777233819_
                                     _tl233776233821_
                                     _e233781233824_
                                     _hd233780233827_
                                     _tl233779233829_
                                     _e233784233832_
                                     _hd233783233835_
                                     _tl233782233837_
                                     _e233787233840_
                                     _hd233786233843_
                                     _tl233785233845_
                                     _e233790233848_
                                     _hd233789233851_
                                     _tl233788233853_
                                     _e233793233856_
                                     _hd233792233859_
                                     _tl233791233861_
                                     _e233796233864_
                                     _hd233795233867_
                                     _tl233794233869_
                                     _e233799233872_
                                     _hd233798233875_
                                     _tl233797233877_)
                                    (___kont243869243870_))))
                            (___kont243869243870_))))
                     (___match244288244289_
                      (lambda (_e233754233923_
                               _hd233753233926_
                               _tl233752233928_
                               _e233757233931_
                               _hd233756233934_
                               _tl233755233936_
                               _e233760233939_
                               _hd233759233942_
                               _tl233758233944_
                               _e233763233947_
                               _hd233762233950_
                               _tl233761233952_
                               _e233766233955_
                               _hd233765233958_
                               _tl233764233960_
                               _e233769233963_
                               _hd233768233966_
                               _tl233767233968_
                               _e233772233971_
                               _hd233771233974_
                               _tl233770233976_)
                        (let ((_L233979_ _hd233771233974_)
                              (_L233980_ _hd233762233950_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L233979_
                                      _self233566_))
                                   (let ((__tmp244795
                                          (let ((__tmp244796
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L233980_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp244796))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp244795
                                      'gxc#!accessor::t)))
                              (___kont243865243866_ _L233979_ _L233980_)
                              (___kont243869243870_)))))
                     (___match244286244287_
                      (lambda (_e233754233923_
                               _hd233753233926_
                               _tl233752233928_
                               _e233757233931_
                               _hd233756233934_
                               _tl233755233936_
                               _e233760233939_
                               _hd233759233942_
                               _tl233758233944_
                               _e233763233947_
                               _hd233762233950_
                               _tl233761233952_
                               _e233766233955_
                               _hd233765233958_
                               _tl233764233960_
                               _e233769233963_
                               _hd233768233966_
                               _tl233767233968_
                               _e233772233971_
                               _hd233771233974_
                               _tl233770233976_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl233764233960_))
                            (___match244288244289_
                             _e233754233923_
                             _hd233753233926_
                             _tl233752233928_
                             _e233757233931_
                             _hd233756233934_
                             _tl233755233936_
                             _e233760233939_
                             _hd233759233942_
                             _tl233758233944_
                             _e233763233947_
                             _hd233762233950_
                             _tl233761233952_
                             _e233766233955_
                             _hd233765233958_
                             _tl233764233960_
                             _e233769233963_
                             _hd233768233966_
                             _tl233767233968_
                             _e233772233971_
                             _hd233771233974_
                             _tl233770233976_)
                            (___match244342244343_
                             _e233754233923_
                             _hd233753233926_
                             _tl233752233928_
                             _e233757233931_
                             _hd233756233934_
                             _tl233755233936_
                             _e233760233939_
                             _hd233759233942_
                             _tl233758233944_
                             _e233763233947_
                             _hd233762233950_
                             _tl233761233952_
                             _e233766233955_
                             _hd233765233958_
                             _tl233764233960_
                             _e233769233963_
                             _hd233768233966_
                             _tl233767233968_
                             _e233772233971_
                             _hd233771233974_
                             _tl233770233976_))))
                     (___match244232244233_
                      (lambda (_e233719234012_
                               _hd233718234015_
                               _tl233717234017_
                               _e233722234020_
                               _hd233721234023_
                               _tl233720234025_
                               _e233725234028_
                               _hd233724234031_
                               _tl233723234033_
                               _e233728234036_
                               _hd233727234039_
                               _tl233726234041_
                               _e233731234044_
                               _hd233730234047_
                               _tl233729234049_
                               _e233734234052_
                               _hd233733234055_
                               _tl233732234057_
                               _e233737234060_
                               _hd233736234063_
                               _tl233735234065_
                               _e233740234068_
                               _hd233739234071_
                               _tl233738234073_
                               _e233743234076_
                               _hd233742234079_
                               _tl233741234081_
                               _e233746234084_
                               _hd233745234087_
                               _tl233744234089_
                               _e233749234092_
                               _hd233748234095_
                               _tl233747234097_)
                        (let ((_L234100_ _hd233748234095_)
                              (_L234101_ _hd233745234087_)
                              (_L234102_ _hd233736234063_)
                              (_L234103_ _hd233727234039_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L234103_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L234103_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L234102_
                                      _self233566_)))
                              (___kont243863243864_
                               _L234100_
                               _L234101_
                               _L234102_
                               _L234103_)
                              (___kont243869243870_)))))
                     (___match244224244225_
                      (lambda (_e233719234012_
                               _hd233718234015_
                               _tl233717234017_
                               _e233722234020_
                               _hd233721234023_
                               _tl233720234025_
                               _e233725234028_
                               _hd233724234031_
                               _tl233723234033_
                               _e233728234036_
                               _hd233727234039_
                               _tl233726234041_
                               _e233731234044_
                               _hd233730234047_
                               _tl233729234049_
                               _e233734234052_
                               _hd233733234055_
                               _tl233732234057_
                               _e233737234060_
                               _hd233736234063_
                               _tl233735234065_
                               _e233740234068_
                               _hd233739234071_
                               _tl233738234073_
                               _e233743234076_
                               _hd233742234079_
                               _tl233741234081_
                               _e233746234084_
                               _hd233745234087_
                               _tl233744234089_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233738234073_))
                            (let ((_e233749234092_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233738234073_))))
                              (let ((_tl233747234097_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233749234092_)))
                                    (_hd233748234095_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233749234092_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233747234097_))
                                    (___match244232244233_
                                     _e233719234012_
                                     _hd233718234015_
                                     _tl233717234017_
                                     _e233722234020_
                                     _hd233721234023_
                                     _tl233720234025_
                                     _e233725234028_
                                     _hd233724234031_
                                     _tl233723234033_
                                     _e233728234036_
                                     _hd233727234039_
                                     _tl233726234041_
                                     _e233731234044_
                                     _hd233730234047_
                                     _tl233729234049_
                                     _e233734234052_
                                     _hd233733234055_
                                     _tl233732234057_
                                     _e233737234060_
                                     _hd233736234063_
                                     _tl233735234065_
                                     _e233740234068_
                                     _hd233739234071_
                                     _tl233738234073_
                                     _e233743234076_
                                     _hd233742234079_
                                     _tl233741234081_
                                     _e233746234084_
                                     _hd233745234087_
                                     _tl233744234089_
                                     _e233749234092_
                                     _hd233748234095_
                                     _tl233747234097_)
                                    (___kont243869243870_))))
                            (___match244348244349_
                             _e233719234012_
                             _hd233718234015_
                             _tl233717234017_
                             _e233722234020_
                             _hd233721234023_
                             _tl233720234025_
                             _e233725234028_
                             _hd233724234031_
                             _tl233723234033_
                             _e233728234036_
                             _hd233727234039_
                             _tl233726234041_
                             _e233731234044_
                             _hd233730234047_
                             _tl233729234049_
                             _e233734234052_
                             _hd233733234055_
                             _tl233732234057_
                             _e233737234060_
                             _hd233736234063_
                             _tl233735234065_
                             _e233740234068_
                             _hd233739234071_
                             _tl233738234073_))))
                     (___match244146244147_
                      (lambda (_e233685234146_
                               _hd233684234149_
                               _tl233683234151_
                               _e233688234154_
                               _hd233687234157_
                               _tl233686234159_
                               _e233691234162_
                               _hd233690234165_
                               _tl233689234167_
                               _e233694234170_
                               _hd233693234173_
                               _tl233692234175_
                               _e233697234178_
                               _hd233696234181_
                               _tl233695234183_
                               _e233700234186_
                               _hd233699234189_
                               _tl233698234191_
                               _e233703234194_
                               _hd233702234197_
                               _tl233701234199_
                               _e233706234202_
                               _hd233705234205_
                               _tl233704234207_
                               _e233709234210_
                               _hd233708234213_
                               _tl233707234215_
                               _e233712234218_
                               _hd233711234221_
                               _tl233710234223_)
                        (let ((_L234226_ _hd233711234221_)
                              (_L234227_ _hd233702234197_)
                              (_L234228_ _hd233693234173_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L234228_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L234228_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L234227_
                                      _self233566_)))
                              (___kont243861243862_
                               _L234226_
                               _L234227_
                               _L234228_)
                              (___match244350244351_
                               _e233685234146_
                               _hd233684234149_
                               _tl233683234151_
                               _e233688234154_
                               _hd233687234157_
                               _tl233686234159_
                               _e233691234162_
                               _hd233690234165_
                               _tl233689234167_
                               _e233694234170_
                               _hd233693234173_
                               _tl233692234175_
                               _e233697234178_
                               _hd233696234181_
                               _tl233695234183_
                               _e233700234186_
                               _hd233699234189_
                               _tl233698234191_
                               _e233703234194_
                               _hd233702234197_
                               _tl233701234199_
                               _e233706234202_
                               _hd233705234205_
                               _tl233704234207_)))))
                     (___match244144244145_
                      (lambda (_e233685234146_
                               _hd233684234149_
                               _tl233683234151_
                               _e233688234154_
                               _hd233687234157_
                               _tl233686234159_
                               _e233691234162_
                               _hd233690234165_
                               _tl233689234167_
                               _e233694234170_
                               _hd233693234173_
                               _tl233692234175_
                               _e233697234178_
                               _hd233696234181_
                               _tl233695234183_
                               _e233700234186_
                               _hd233699234189_
                               _tl233698234191_
                               _e233703234194_
                               _hd233702234197_
                               _tl233701234199_
                               _e233706234202_
                               _hd233705234205_
                               _tl233704234207_
                               _e233709234210_
                               _hd233708234213_
                               _tl233707234215_
                               _e233712234218_
                               _hd233711234221_
                               _tl233710234223_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl233704234207_))
                            (___match244146244147_
                             _e233685234146_
                             _hd233684234149_
                             _tl233683234151_
                             _e233688234154_
                             _hd233687234157_
                             _tl233686234159_
                             _e233691234162_
                             _hd233690234165_
                             _tl233689234167_
                             _e233694234170_
                             _hd233693234173_
                             _tl233692234175_
                             _e233697234178_
                             _hd233696234181_
                             _tl233695234183_
                             _e233700234186_
                             _hd233699234189_
                             _tl233698234191_
                             _e233703234194_
                             _hd233702234197_
                             _tl233701234199_
                             _e233706234202_
                             _hd233705234205_
                             _tl233704234207_
                             _e233709234210_
                             _hd233708234213_
                             _tl233707234215_
                             _e233712234218_
                             _hd233711234221_
                             _tl233710234223_)
                            (___match244224244225_
                             _e233685234146_
                             _hd233684234149_
                             _tl233683234151_
                             _e233688234154_
                             _hd233687234157_
                             _tl233686234159_
                             _e233691234162_
                             _hd233690234165_
                             _tl233689234167_
                             _e233694234170_
                             _hd233693234173_
                             _tl233692234175_
                             _e233697234178_
                             _hd233696234181_
                             _tl233695234183_
                             _e233700234186_
                             _hd233699234189_
                             _tl233698234191_
                             _e233703234194_
                             _hd233702234197_
                             _tl233701234199_
                             _e233706234202_
                             _hd233705234205_
                             _tl233704234207_
                             _e233709234210_
                             _hd233708234213_
                             _tl233707234215_
                             _e233712234218_
                             _hd233711234221_
                             _tl233710234223_))))
                     (___match244134244135_
                      (lambda (_e233685234146_
                               _hd233684234149_
                               _tl233683234151_
                               _e233688234154_
                               _hd233687234157_
                               _tl233686234159_
                               _e233691234162_
                               _hd233690234165_
                               _tl233689234167_
                               _e233694234170_
                               _hd233693234173_
                               _tl233692234175_
                               _e233697234178_
                               _hd233696234181_
                               _tl233695234183_
                               _e233700234186_
                               _hd233699234189_
                               _tl233698234191_
                               _e233703234194_
                               _hd233702234197_
                               _tl233701234199_
                               _e233706234202_
                               _hd233705234205_
                               _tl233704234207_
                               _e233709234210_
                               _hd233708234213_
                               _tl233707234215_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd233708234213_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233707234215_))
                                (let ((_e233712234218_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233707234215_))))
                                  (let ((_tl233710234223_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233712234218_)))
                                        (_hd233711234221_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233712234218_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233710234223_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl233704234207_))
                                            (___match244146244147_
                                             _e233685234146_
                                             _hd233684234149_
                                             _tl233683234151_
                                             _e233688234154_
                                             _hd233687234157_
                                             _tl233686234159_
                                             _e233691234162_
                                             _hd233690234165_
                                             _tl233689234167_
                                             _e233694234170_
                                             _hd233693234173_
                                             _tl233692234175_
                                             _e233697234178_
                                             _hd233696234181_
                                             _tl233695234183_
                                             _e233700234186_
                                             _hd233699234189_
                                             _tl233698234191_
                                             _e233703234194_
                                             _hd233702234197_
                                             _tl233701234199_
                                             _e233706234202_
                                             _hd233705234205_
                                             _tl233704234207_
                                             _e233709234210_
                                             _hd233708234213_
                                             _tl233707234215_
                                             _e233712234218_
                                             _hd233711234221_
                                             _tl233710234223_)
                                            (___match244224244225_
                                             _e233685234146_
                                             _hd233684234149_
                                             _tl233683234151_
                                             _e233688234154_
                                             _hd233687234157_
                                             _tl233686234159_
                                             _e233691234162_
                                             _hd233690234165_
                                             _tl233689234167_
                                             _e233694234170_
                                             _hd233693234173_
                                             _tl233692234175_
                                             _e233697234178_
                                             _hd233696234181_
                                             _tl233695234183_
                                             _e233700234186_
                                             _hd233699234189_
                                             _tl233698234191_
                                             _e233703234194_
                                             _hd233702234197_
                                             _tl233701234199_
                                             _e233706234202_
                                             _hd233705234205_
                                             _tl233704234207_
                                             _e233709234210_
                                             _hd233708234213_
                                             _tl233707234215_
                                             _e233712234218_
                                             _hd233711234221_
                                             _tl233710234223_))
                                        (___match244348244349_
                                         _e233685234146_
                                         _hd233684234149_
                                         _tl233683234151_
                                         _e233688234154_
                                         _hd233687234157_
                                         _tl233686234159_
                                         _e233691234162_
                                         _hd233690234165_
                                         _tl233689234167_
                                         _e233694234170_
                                         _hd233693234173_
                                         _tl233692234175_
                                         _e233697234178_
                                         _hd233696234181_
                                         _tl233695234183_
                                         _e233700234186_
                                         _hd233699234189_
                                         _tl233698234191_
                                         _e233703234194_
                                         _hd233702234197_
                                         _tl233701234199_
                                         _e233706234202_
                                         _hd233705234205_
                                         _tl233704234207_))))
                                (___match244348244349_
                                 _e233685234146_
                                 _hd233684234149_
                                 _tl233683234151_
                                 _e233688234154_
                                 _hd233687234157_
                                 _tl233686234159_
                                 _e233691234162_
                                 _hd233690234165_
                                 _tl233689234167_
                                 _e233694234170_
                                 _hd233693234173_
                                 _tl233692234175_
                                 _e233697234178_
                                 _hd233696234181_
                                 _tl233695234183_
                                 _e233700234186_
                                 _hd233699234189_
                                 _tl233698234191_
                                 _e233703234194_
                                 _hd233702234197_
                                 _tl233701234199_
                                 _e233706234202_
                                 _hd233705234205_
                                 _tl233704234207_))
                            (___match244348244349_
                             _e233685234146_
                             _hd233684234149_
                             _tl233683234151_
                             _e233688234154_
                             _hd233687234157_
                             _tl233686234159_
                             _e233691234162_
                             _hd233690234165_
                             _tl233689234167_
                             _e233694234170_
                             _hd233693234173_
                             _tl233692234175_
                             _e233697234178_
                             _hd233696234181_
                             _tl233695234183_
                             _e233700234186_
                             _hd233699234189_
                             _tl233698234191_
                             _e233703234194_
                             _hd233702234197_
                             _tl233701234199_
                             _e233706234202_
                             _hd233705234205_
                             _tl233704234207_))))
                     (___match244066244067_
                      (lambda (_e233634234267_
                               _hd233633234270_
                               _tl233632234272_
                               _e233637234275_
                               _hd233636234278_
                               _tl233635234280_
                               _e233640234283_
                               _hd233639234286_
                               _tl233638234288_
                               _e233643234291_
                               _hd233642234294_
                               _tl233641234296_
                               _e233646234299_
                               _hd233645234302_
                               _tl233644234304_
                               _e233649234307_
                               _hd233648234310_
                               _tl233647234312_
                               _e233652234315_
                               _hd233651234318_
                               _tl233650234320_
                               _e233655234323_
                               _hd233654234326_
                               _tl233653234328_
                               _e233658234331_
                               _hd233657234334_
                               _tl233656234336_
                               _e233661234339_
                               _hd233660234342_
                               _tl233659234344_
                               _e233664234347_
                               _hd233663234350_
                               _tl233662234352_
                               _e233667234355_
                               _hd233666234358_
                               _tl233665234360_
                               _e233670234363_
                               _hd233669234366_
                               _tl233668234368_
                               ___splice243859243860_
                               _target233671234371_
                               _tl233673234373_)
                        (letrec ((_loop233674234376_
                                  (lambda (_hd233672234379_ _args233678234381_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd233672234379_))
                                        (let ((_e233675234384_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd233672234379_))))
                                          (let ((_lp-tl233677234389_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233675234384_)))
                                                (_lp-hd233676234387_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233675234384_))))
                                            (let ((__tmp244797
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd233676234387_
                                                           _args233678234381_))))
                                              (declare (not safe))
                                              (_loop233674234376_
                                               _lp-tl233677234389_
                                               __tmp244797))))
                                        (let ((_args233679234392_
                                               (reverse _args233678234381_)))
                                          (let ((_L234395_ _args233679234392_)
                                                (_L234396_ _hd233669234366_)
                                                (_L234397_ _hd233660234342_)
                                                (_L234398_ _hd233651234318_)
                                                (_L234399_ _hd233642234294_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L234399_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L234398_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L234397_
                                                        _self233566_)))
                                                (___kont243857243858_
                                                 _L234395_
                                                 _L234396_
                                                 _L234397_
                                                 _L234398_
                                                 _L234399_)
                                                (___kont243869243870_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop233674234376_ _target233671234371_ '())))))
                     (___match244024244025_
                      (lambda (_e233634234267_
                               _hd233633234270_
                               _tl233632234272_
                               _e233637234275_
                               _hd233636234278_
                               _tl233635234280_
                               _e233640234283_
                               _hd233639234286_
                               _tl233638234288_
                               _e233643234291_
                               _hd233642234294_
                               _tl233641234296_
                               _e233646234299_
                               _hd233645234302_
                               _tl233644234304_
                               _e233649234307_
                               _hd233648234310_
                               _tl233647234312_
                               _e233652234315_
                               _hd233651234318_
                               _tl233650234320_
                               _e233655234323_
                               _hd233654234326_
                               _tl233653234328_
                               _e233658234331_
                               _hd233657234334_
                               _tl233656234336_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd233657234334_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233656234336_))
                                (let ((_e233661234339_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233656234336_))))
                                  (let ((_tl233659234344_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233661234339_)))
                                        (_hd233660234342_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233661234339_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233659234344_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233653234328_))
                                            (let ((_e233664234347_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233653234328_))))
                                              (let ((_tl233662234352_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233664234347_)))
                                                    (_hd233663234350_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233664234347_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233663234350_))
                                                    (let ((_e233667234355_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233663234350_))))
                                                      (let ((_tl233665234360_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233667234355_)))
                    (_hd233666234358_
                     (let () (declare (not safe)) (##car _e233667234355_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233666234358_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd233666234358_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233665234360_))
                            (let ((_e233670234363_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233665234360_))))
                              (let ((_tl233668234368_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233670234363_)))
                                    (_hd233669234366_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233670234363_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233668234368_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl233662234352_))
                                        (let ((___splice243859243860_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl233662234352_
                                                  '0))))
                                          (let ((_tl233673234373_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice243859243860_
                                                    '1)))
                                                (_target233671234371_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice243859243860_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl233673234373_))
                                                (___match244066244067_
                                                 _e233634234267_
                                                 _hd233633234270_
                                                 _tl233632234272_
                                                 _e233637234275_
                                                 _hd233636234278_
                                                 _tl233635234280_
                                                 _e233640234283_
                                                 _hd233639234286_
                                                 _tl233638234288_
                                                 _e233643234291_
                                                 _hd233642234294_
                                                 _tl233641234296_
                                                 _e233646234299_
                                                 _hd233645234302_
                                                 _tl233644234304_
                                                 _e233649234307_
                                                 _hd233648234310_
                                                 _tl233647234312_
                                                 _e233652234315_
                                                 _hd233651234318_
                                                 _tl233650234320_
                                                 _e233655234323_
                                                 _hd233654234326_
                                                 _tl233653234328_
                                                 _e233658234331_
                                                 _hd233657234334_
                                                 _tl233656234336_
                                                 _e233661234339_
                                                 _hd233660234342_
                                                 _tl233659234344_
                                                 _e233664234347_
                                                 _hd233663234350_
                                                 _tl233662234352_
                                                 _e233667234355_
                                                 _hd233666234358_
                                                 _tl233665234360_
                                                 _e233670234363_
                                                 _hd233669234366_
                                                 _tl233668234368_
                                                 ___splice243859243860_
                                                 _target233671234371_
                                                 _tl233673234373_)
                                                (___kont243869243870_))))
                                        (___kont243869243870_))
                                    (___kont243869243870_))))
                            (___kont243869243870_))
                        (___kont243869243870_))
                    (___kont243869243870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243869243870_))))
                                            (___match244348244349_
                                             _e233634234267_
                                             _hd233633234270_
                                             _tl233632234272_
                                             _e233637234275_
                                             _hd233636234278_
                                             _tl233635234280_
                                             _e233640234283_
                                             _hd233639234286_
                                             _tl233638234288_
                                             _e233643234291_
                                             _hd233642234294_
                                             _tl233641234296_
                                             _e233646234299_
                                             _hd233645234302_
                                             _tl233644234304_
                                             _e233649234307_
                                             _hd233648234310_
                                             _tl233647234312_
                                             _e233652234315_
                                             _hd233651234318_
                                             _tl233650234320_
                                             _e233655234323_
                                             _hd233654234326_
                                             _tl233653234328_))
                                        (___match244348244349_
                                         _e233634234267_
                                         _hd233633234270_
                                         _tl233632234272_
                                         _e233637234275_
                                         _hd233636234278_
                                         _tl233635234280_
                                         _e233640234283_
                                         _hd233639234286_
                                         _tl233638234288_
                                         _e233643234291_
                                         _hd233642234294_
                                         _tl233641234296_
                                         _e233646234299_
                                         _hd233645234302_
                                         _tl233644234304_
                                         _e233649234307_
                                         _hd233648234310_
                                         _tl233647234312_
                                         _e233652234315_
                                         _hd233651234318_
                                         _tl233650234320_
                                         _e233655234323_
                                         _hd233654234326_
                                         _tl233653234328_))))
                                (___match244348244349_
                                 _e233634234267_
                                 _hd233633234270_
                                 _tl233632234272_
                                 _e233637234275_
                                 _hd233636234278_
                                 _tl233635234280_
                                 _e233640234283_
                                 _hd233639234286_
                                 _tl233638234288_
                                 _e233643234291_
                                 _hd233642234294_
                                 _tl233641234296_
                                 _e233646234299_
                                 _hd233645234302_
                                 _tl233644234304_
                                 _e233649234307_
                                 _hd233648234310_
                                 _tl233647234312_
                                 _e233652234315_
                                 _hd233651234318_
                                 _tl233650234320_
                                 _e233655234323_
                                 _hd233654234326_
                                 _tl233653234328_))
                            (___match244134244135_
                             _e233634234267_
                             _hd233633234270_
                             _tl233632234272_
                             _e233637234275_
                             _hd233636234278_
                             _tl233635234280_
                             _e233640234283_
                             _hd233639234286_
                             _tl233638234288_
                             _e233643234291_
                             _hd233642234294_
                             _tl233641234296_
                             _e233646234299_
                             _hd233645234302_
                             _tl233644234304_
                             _e233649234307_
                             _hd233648234310_
                             _tl233647234312_
                             _e233652234315_
                             _hd233651234318_
                             _tl233650234320_
                             _e233655234323_
                             _hd233654234326_
                             _tl233653234328_
                             _e233658234331_
                             _hd233657234334_
                             _tl233656234336_))))
                     (___match243956243957_
                      (lambda (_e233590234459_
                               _hd233589234462_
                               _tl233588234464_
                               _e233593234467_
                               _hd233592234470_
                               _tl233591234472_
                               _e233596234475_
                               _hd233595234478_
                               _tl233594234480_
                               _e233599234483_
                               _hd233598234486_
                               _tl233597234488_
                               _e233602234491_
                               _hd233601234494_
                               _tl233600234496_
                               _e233605234499_
                               _hd233604234502_
                               _tl233603234504_
                               _e233608234507_
                               _hd233607234510_
                               _tl233606234512_
                               _e233611234515_
                               _hd233610234518_
                               _tl233609234520_
                               _e233614234523_
                               _hd233613234526_
                               _tl233612234528_
                               _e233617234531_
                               _hd233616234534_
                               _tl233615234536_
                               ___splice243855243856_
                               _target233618234539_
                               _tl233620234541_)
                        (letrec ((_loop233621234544_
                                  (lambda (_hd233619234547_ _args233625234549_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd233619234547_))
                                        (let ((_e233622234552_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd233619234547_))))
                                          (let ((_lp-tl233624234557_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233622234552_)))
                                                (_lp-hd233623234555_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233622234552_))))
                                            (let ((__tmp244798
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd233623234555_
                                                           _args233625234549_))))
                                              (declare (not safe))
                                              (_loop233621234544_
                                               _lp-tl233624234557_
                                               __tmp244798))))
                                        (let ((_args233626234560_
                                               (reverse _args233625234549_)))
                                          (let ((_L234563_ _args233626234560_)
                                                (_L234564_ _hd233616234534_)
                                                (_L234565_ _hd233607234510_)
                                                (_L234566_ _hd233598234486_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L234566_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L234565_
                                                        _self233566_)))
                                                (___kont243853243854_
                                                 _L234563_
                                                 _L234564_
                                                 _L234565_
                                                 _L234566_)
                                                (___match244144244145_
                                                 _e233590234459_
                                                 _hd233589234462_
                                                 _tl233588234464_
                                                 _e233593234467_
                                                 _hd233592234470_
                                                 _tl233591234472_
                                                 _e233596234475_
                                                 _hd233595234478_
                                                 _tl233594234480_
                                                 _e233599234483_
                                                 _hd233598234486_
                                                 _tl233597234488_
                                                 _e233602234491_
                                                 _hd233601234494_
                                                 _tl233600234496_
                                                 _e233605234499_
                                                 _hd233604234502_
                                                 _tl233603234504_
                                                 _e233608234507_
                                                 _hd233607234510_
                                                 _tl233606234512_
                                                 _e233611234515_
                                                 _hd233610234518_
                                                 _tl233609234520_
                                                 _e233614234523_
                                                 _hd233613234526_
                                                 _tl233612234528_
                                                 _e233617234531_
                                                 _hd233616234534_
                                                 _tl233615234536_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop233621234544_ _target233618234539_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx243851243852_))
                    (let ((_e233590234459_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx243851243852_))))
                      (let ((_tl233588234464_
                             (let ()
                               (declare (not safe))
                               (##cdr _e233590234459_)))
                            (_hd233589234462_
                             (let ()
                               (declare (not safe))
                               (##car _e233590234459_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233588234464_))
                            (let ((_e233593234467_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233588234464_))))
                              (let ((_tl233591234472_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233593234467_)))
                                    (_hd233592234470_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233593234467_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233592234470_))
                                    (let ((_e233596234475_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233592234470_))))
                                      (let ((_tl233594234480_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233596234475_)))
                                            (_hd233595234478_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233596234475_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233595234478_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd233595234478_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233594234480_))
                                                    (let ((_e233599234483_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233594234480_))))
                                                      (let ((_tl233597234488_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233599234483_)))
                    (_hd233598234486_
                     (let () (declare (not safe)) (##car _e233599234483_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl233597234488_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233591234472_))
                        (let ((_e233602234491_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233591234472_))))
                          (let ((_tl233600234496_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233602234491_)))
                                (_hd233601234494_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233602234491_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233601234494_))
                                (let ((_e233605234499_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233601234494_))))
                                  (let ((_tl233603234504_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233605234499_)))
                                        (_hd233604234502_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233605234499_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233604234502_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd233604234502_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233603234504_))
                                                (let ((_e233608234507_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233603234504_))))
                                                  (let ((_tl233606234512_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233608234507_)))
                                                        (_hd233607234510_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233608234507_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233606234512_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl233600234496_))
                                                            (let ((_e233611234515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl233600234496_))))
                      (let ((_tl233609234520_
                             (let ()
                               (declare (not safe))
                               (##cdr _e233611234515_)))
                            (_hd233610234518_
                             (let ()
                               (declare (not safe))
                               (##car _e233611234515_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd233610234518_))
                            (let ((_e233614234523_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd233610234518_))))
                              (let ((_tl233612234528_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233614234523_)))
                                    (_hd233613234526_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233614234523_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd233613234526_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd233613234526_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233612234528_))
                                            (let ((_e233617234531_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233612234528_))))
                                              (let ((_tl233615234536_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233617234531_)))
                                                    (_hd233616234534_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233617234531_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl233615234536_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl233609234520_))
                                                        (let ((___splice243855243856_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl233609234520_ '0))))
                  (let ((_tl233620234541_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice243855243856_ '1)))
                        (_target233618234539_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice243855243856_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl233620234541_))
                        (___match243956243957_
                         _e233590234459_
                         _hd233589234462_
                         _tl233588234464_
                         _e233593234467_
                         _hd233592234470_
                         _tl233591234472_
                         _e233596234475_
                         _hd233595234478_
                         _tl233594234480_
                         _e233599234483_
                         _hd233598234486_
                         _tl233597234488_
                         _e233602234491_
                         _hd233601234494_
                         _tl233600234496_
                         _e233605234499_
                         _hd233604234502_
                         _tl233603234504_
                         _e233608234507_
                         _hd233607234510_
                         _tl233606234512_
                         _e233611234515_
                         _hd233610234518_
                         _tl233609234520_
                         _e233614234523_
                         _hd233613234526_
                         _tl233612234528_
                         _e233617234531_
                         _hd233616234534_
                         _tl233615234536_
                         ___splice243855243856_
                         _target233618234539_
                         _tl233620234541_)
                        (___match244144244145_
                         _e233590234459_
                         _hd233589234462_
                         _tl233588234464_
                         _e233593234467_
                         _hd233592234470_
                         _tl233591234472_
                         _e233596234475_
                         _hd233595234478_
                         _tl233594234480_
                         _e233599234483_
                         _hd233598234486_
                         _tl233597234488_
                         _e233602234491_
                         _hd233601234494_
                         _tl233600234496_
                         _e233605234499_
                         _hd233604234502_
                         _tl233603234504_
                         _e233608234507_
                         _hd233607234510_
                         _tl233606234512_
                         _e233611234515_
                         _hd233610234518_
                         _tl233609234520_
                         _e233614234523_
                         _hd233613234526_
                         _tl233612234528_
                         _e233617234531_
                         _hd233616234534_
                         _tl233615234536_))))
                (___match244144244145_
                 _e233590234459_
                 _hd233589234462_
                 _tl233588234464_
                 _e233593234467_
                 _hd233592234470_
                 _tl233591234472_
                 _e233596234475_
                 _hd233595234478_
                 _tl233594234480_
                 _e233599234483_
                 _hd233598234486_
                 _tl233597234488_
                 _e233602234491_
                 _hd233601234494_
                 _tl233600234496_
                 _e233605234499_
                 _hd233604234502_
                 _tl233603234504_
                 _e233608234507_
                 _hd233607234510_
                 _tl233606234512_
                 _e233611234515_
                 _hd233610234518_
                 _tl233609234520_
                 _e233614234523_
                 _hd233613234526_
                 _tl233612234528_
                 _e233617234531_
                 _hd233616234534_
                 _tl233615234536_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match244348244349_
                                                     _e233590234459_
                                                     _hd233589234462_
                                                     _tl233588234464_
                                                     _e233593234467_
                                                     _hd233592234470_
                                                     _tl233591234472_
                                                     _e233596234475_
                                                     _hd233595234478_
                                                     _tl233594234480_
                                                     _e233599234483_
                                                     _hd233598234486_
                                                     _tl233597234488_
                                                     _e233602234491_
                                                     _hd233601234494_
                                                     _tl233600234496_
                                                     _e233605234499_
                                                     _hd233604234502_
                                                     _tl233603234504_
                                                     _e233608234507_
                                                     _hd233607234510_
                                                     _tl233606234512_
                                                     _e233611234515_
                                                     _hd233610234518_
                                                     _tl233609234520_))))
                                            (___match244348244349_
                                             _e233590234459_
                                             _hd233589234462_
                                             _tl233588234464_
                                             _e233593234467_
                                             _hd233592234470_
                                             _tl233591234472_
                                             _e233596234475_
                                             _hd233595234478_
                                             _tl233594234480_
                                             _e233599234483_
                                             _hd233598234486_
                                             _tl233597234488_
                                             _e233602234491_
                                             _hd233601234494_
                                             _tl233600234496_
                                             _e233605234499_
                                             _hd233604234502_
                                             _tl233603234504_
                                             _e233608234507_
                                             _hd233607234510_
                                             _tl233606234512_
                                             _e233611234515_
                                             _hd233610234518_
                                             _tl233609234520_))
                                        (___match244024244025_
                                         _e233590234459_
                                         _hd233589234462_
                                         _tl233588234464_
                                         _e233593234467_
                                         _hd233592234470_
                                         _tl233591234472_
                                         _e233596234475_
                                         _hd233595234478_
                                         _tl233594234480_
                                         _e233599234483_
                                         _hd233598234486_
                                         _tl233597234488_
                                         _e233602234491_
                                         _hd233601234494_
                                         _tl233600234496_
                                         _e233605234499_
                                         _hd233604234502_
                                         _tl233603234504_
                                         _e233608234507_
                                         _hd233607234510_
                                         _tl233606234512_
                                         _e233611234515_
                                         _hd233610234518_
                                         _tl233609234520_
                                         _e233614234523_
                                         _hd233613234526_
                                         _tl233612234528_))
                                    (___match244348244349_
                                     _e233590234459_
                                     _hd233589234462_
                                     _tl233588234464_
                                     _e233593234467_
                                     _hd233592234470_
                                     _tl233591234472_
                                     _e233596234475_
                                     _hd233595234478_
                                     _tl233594234480_
                                     _e233599234483_
                                     _hd233598234486_
                                     _tl233597234488_
                                     _e233602234491_
                                     _hd233601234494_
                                     _tl233600234496_
                                     _e233605234499_
                                     _hd233604234502_
                                     _tl233603234504_
                                     _e233608234507_
                                     _hd233607234510_
                                     _tl233606234512_
                                     _e233611234515_
                                     _hd233610234518_
                                     _tl233609234520_))))
                            (___match244348244349_
                             _e233590234459_
                             _hd233589234462_
                             _tl233588234464_
                             _e233593234467_
                             _hd233592234470_
                             _tl233591234472_
                             _e233596234475_
                             _hd233595234478_
                             _tl233594234480_
                             _e233599234483_
                             _hd233598234486_
                             _tl233597234488_
                             _e233602234491_
                             _hd233601234494_
                             _tl233600234496_
                             _e233605234499_
                             _hd233604234502_
                             _tl233603234504_
                             _e233608234507_
                             _hd233607234510_
                             _tl233606234512_
                             _e233611234515_
                             _hd233610234518_
                             _tl233609234520_))))
                    (___match244286244287_
                     _e233590234459_
                     _hd233589234462_
                     _tl233588234464_
                     _e233593234467_
                     _hd233592234470_
                     _tl233591234472_
                     _e233596234475_
                     _hd233595234478_
                     _tl233594234480_
                     _e233599234483_
                     _hd233598234486_
                     _tl233597234488_
                     _e233602234491_
                     _hd233601234494_
                     _tl233600234496_
                     _e233605234499_
                     _hd233604234502_
                     _tl233603234504_
                     _e233608234507_
                     _hd233607234510_
                     _tl233606234512_))
                (___kont243869243870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont243869243870_))
                                            (___kont243869243870_))
                                        (___kont243869243870_))))
                                (___kont243869243870_))))
                        (___kont243869243870_))
                    (___kont243869243870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243869243870_))
                                                (___kont243869243870_))
                                            (___kont243869243870_))))
                                    (___kont243869243870_))))
                            (___kont243869243870_))))
                    (___kont243869243870_))))))))))
