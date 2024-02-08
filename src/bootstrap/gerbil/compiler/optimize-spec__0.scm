(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1707384299)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl239010_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp244332 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl239010_ __tmp244332))
           (let ()
             (declare (not safe))
             (table-set! _tbl239010_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl239010_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl239010_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl239010_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl239010_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx238993_ . _args238995_)
        (let ((__tmp244334
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
              (__tmp244333 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp244334
           gxc#current-compile-methods
           __tmp244333))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl238990_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp244335 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl238990_ __tmp244335))
           (let ()
             (declare (not safe))
             (table-set! _tbl238990_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238990_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238990_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238990_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238990_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238990_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238990_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238990_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238990_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl238990_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238990_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl238990_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238990_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238990_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238990_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238990_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl238990_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx238973_ . _args238975_)
        (let ((__tmp244337
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
              (__tmp244336 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp244337
           gxc#current-compile-methods
           __tmp244336))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl238970_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp244338 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl238970_ __tmp244338))
           (let ()
             (declare (not safe))
             (table-set! _tbl238970_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238970_ '%#call gxc#subst-object-refs-call%))
           _tbl238970_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx238953_ . _args238955_)
        (let ((__tmp244340
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238955_)
                     (gxc#compile-e__0 _stx238953_)
                     (let ((_arg1238960_ (car _args238955_))
                           (_rest238962_ (cdr _args238955_)))
                       (if (null? _rest238962_)
                           (gxc#compile-e__1 _stx238953_ _arg1238960_)
                           (let ((_arg2238965_ (car _rest238962_))
                                 (_rest238967_ (cdr _rest238962_)))
                             (if (null? _rest238967_)
                                 (gxc#compile-e__2
                                  _stx238953_
                                  _arg1238960_
                                  _arg2238965_)
                                 (apply gxc#compile-e
                                        _stx238953_
                                        _arg1238960_
                                        _arg2238965_
                                        _rest238967_))))))))
              (__tmp244339 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp244340
           gxc#current-compile-methods
           __tmp244339))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx235623_)
        (letrec ((_generate-method-bind235625_
                  (lambda (_$t238947_ _id238948_ _$id238949_)
                    (let ((_$tmp238951_
                           (let ((__tmp244341 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp244341))))
                      (let ((__tmp244386
                             (let ()
                               (declare (not safe))
                               (cons _$id238949_ '())))
                            (__tmp244342
                             (let ((__tmp244343
                                    (let ((__tmp244344
                                           (let ((__tmp244384
                                                  (let ((__tmp244385
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp244385)))
                                                 (__tmp244345
                                                  (let ((__tmp244346
                                                         (let ((__tmp244347
                                                                (let ((__tmp244348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp244349
                                      (let ((__tmp244350
                                             (let ((__tmp244370
                                                    (let ((__tmp244371
                                                           (let ((__tmp244383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp238951_ '())))
                         (__tmp244372
                          (let ((__tmp244373
                                 (let ((__tmp244374
                                        (let ((__tmp244381
                                               (let ((__tmp244382
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp244382)))
                                              (__tmp244375
                                               (let ((__tmp244379
                                                      (let ((__tmp244380
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t238947_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp244380)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp244376
                                                      (let ((__tmp244377
                                                             (let ((__tmp244378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id238948_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp244378))))
                (declare (not safe))
                (cons __tmp244377 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp244379
                                                       __tmp244376))))
                                          (declare (not safe))
                                          (cons __tmp244381 __tmp244375))))
                                   (declare (not safe))
                                   (cons '%#call __tmp244374))))
                            (declare (not safe))
                            (cons __tmp244373 '()))))
                     (declare (not safe))
                     (cons __tmp244383 __tmp244372))))
              (declare (not safe))
              (cons __tmp244371 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp244351
                                                    (let ((__tmp244352
                                                           (let ((__tmp244353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244368
                                 (let ((__tmp244369
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp238951_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp244369)))
                                (__tmp244354
                                 (let ((__tmp244366
                                        (let ((__tmp244367
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp238951_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp244367)))
                                       (__tmp244355
                                        (let ((__tmp244356
                                               (let ((__tmp244357
                                                      (let ((__tmp244364
                                                             (let ((__tmp244365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp244365)))
                    (__tmp244358
                     (let ((__tmp244362
                            (let ((__tmp244363
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp244363)))
                           (__tmp244359
                            (let ((__tmp244360
                                   (let ((__tmp244361
                                          (let ()
                                            (declare (not safe))
                                            (cons _id238948_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp244361))))
                              (declare (not safe))
                              (cons __tmp244360 '()))))
                       (declare (not safe))
                       (cons __tmp244362 __tmp244359))))
                (declare (not safe))
                (cons __tmp244364 __tmp244358))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp244357))))
                                          (declare (not safe))
                                          (cons __tmp244356 '()))))
                                   (declare (not safe))
                                   (cons __tmp244366 __tmp244355))))
                            (declare (not safe))
                            (cons __tmp244368 __tmp244354))))
                     (declare (not safe))
                     (cons '%#if __tmp244353))))
              (declare (not safe))
              (cons __tmp244352 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp244370
                                                     __tmp244351))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp244350))))
                                 (declare (not safe))
                                 (cons __tmp244349 '()))))
                          (declare (not safe))
                          (cons '() __tmp244348))))
                   (declare (not safe))
                   (cons '%#lambda __tmp244347))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244346 '()))))
                                             (declare (not safe))
                                             (cons __tmp244384 __tmp244345))))
                                      (declare (not safe))
                                      (cons '%#call __tmp244344))))
                               (declare (not safe))
                               (cons __tmp244343 '()))))
                        (declare (not safe))
                        (cons __tmp244386 __tmp244342)))))
                 (_generate-slot-bind235626_
                  (lambda (_$t238941_ _id238942_ _$id238943_)
                    (let ((_$tmp238945_
                           (let ((__tmp244387 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp244387))))
                      (let ((__tmp244424
                             (let ()
                               (declare (not safe))
                               (cons _$id238943_ '())))
                            (__tmp244388
                             (let ((__tmp244389
                                    (let ((__tmp244390
                                           (let ((__tmp244410
                                                  (let ((__tmp244411
                                                         (let ((__tmp244423
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp238945_ '())))
                       (__tmp244412
                        (let ((__tmp244413
                               (let ((__tmp244414
                                      (let ((__tmp244421
                                             (let ((__tmp244422
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset*
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp244422)))
                                            (__tmp244415
                                             (let ((__tmp244419
                                                    (let ((__tmp244420
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t238941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp244420)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp244416
                                                    (let ((__tmp244417
                                                           (let ((__tmp244418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id238942_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp244418))))
              (declare (not safe))
              (cons __tmp244417 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp244419
                                                     __tmp244416))))
                                        (declare (not safe))
                                        (cons __tmp244421 __tmp244415))))
                                 (declare (not safe))
                                 (cons '%#call __tmp244414))))
                          (declare (not safe))
                          (cons __tmp244413 '()))))
                   (declare (not safe))
                   (cons __tmp244423 __tmp244412))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244411 '())))
                                                 (__tmp244391
                                                  (let ((__tmp244392
                                                         (let ((__tmp244393
                                                                (let ((__tmp244408
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp244409
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp238945_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp244409)))
                              (__tmp244394
                               (let ((__tmp244406
                                      (let ((__tmp244407
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp238945_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp244407)))
                                     (__tmp244395
                                      (let ((__tmp244396
                                             (let ((__tmp244397
                                                    (let ((__tmp244404
                                                           (let ((__tmp244405
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp244405)))
                  (__tmp244398
                   (let ((__tmp244402
                          (let ((__tmp244403
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp244403)))
                         (__tmp244399
                          (let ((__tmp244400
                                 (let ((__tmp244401
                                        (let ()
                                          (declare (not safe))
                                          (cons _id238942_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp244401))))
                            (declare (not safe))
                            (cons __tmp244400 '()))))
                     (declare (not safe))
                     (cons __tmp244402 __tmp244399))))
              (declare (not safe))
              (cons __tmp244404 __tmp244398))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp244397))))
                                        (declare (not safe))
                                        (cons __tmp244396 '()))))
                                 (declare (not safe))
                                 (cons __tmp244406 __tmp244395))))
                          (declare (not safe))
                          (cons __tmp244408 __tmp244394))))
                   (declare (not safe))
                   (cons '%#if __tmp244393))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244392 '()))))
                                             (declare (not safe))
                                             (cons __tmp244410 __tmp244391))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp244390))))
                               (declare (not safe))
                               (cons __tmp244389 '()))))
                        (declare (not safe))
                        (cons __tmp244424 __tmp244388)))))
                 (_generate-class-check-bind235627_
                  (lambda (_$t238937_ _class-type238938_ _$class-type238939_)
                    (let ((__tmp244436
                           (let ()
                             (declare (not safe))
                             (cons _$class-type238939_ '())))
                          (__tmp244425
                           (let ((__tmp244426
                                  (let ((__tmp244427
                                         (let ((__tmp244434
                                                (let ((__tmp244435
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-subtype?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp244435)))
                                               (__tmp244428
                                                (let ((__tmp244432
                                                       (let ((__tmp244433
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _class-type238938_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp244433)))
              (__tmp244429
               (let ((__tmp244430
                      (let ((__tmp244431
                             (let ()
                               (declare (not safe))
                               (cons _$t238937_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp244431))))
                 (declare (not safe))
                 (cons __tmp244430 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp244432
                                                        __tmp244429))))
                                           (declare (not safe))
                                           (cons __tmp244434 __tmp244428))))
                                    (declare (not safe))
                                    (cons '%#call __tmp244427))))
                             (declare (not safe))
                             (cons __tmp244426 '()))))
                      (declare (not safe))
                      (cons __tmp244436 __tmp244425))))
                 (_generate-struct-check-bind235628_
                  (lambda (_$t238933_ _class-type238934_ _$class-type238935_)
                    (let ((__tmp244448
                           (let ()
                             (declare (not safe))
                             (cons _$class-type238935_ '())))
                          (__tmp244437
                           (let ((__tmp244438
                                  (let ((__tmp244439
                                         (let ((__tmp244446
                                                (let ((__tmp244447
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct-subtype?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp244447)))
                                               (__tmp244440
                                                (let ((__tmp244444
                                                       (let ((__tmp244445
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _class-type238934_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp244445)))
              (__tmp244441
               (let ((__tmp244442
                      (let ((__tmp244443
                             (let ()
                               (declare (not safe))
                               (cons _$t238933_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp244443))))
                 (declare (not safe))
                 (cons __tmp244442 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp244444
                                                        __tmp244441))))
                                           (declare (not safe))
                                           (cons __tmp244446 __tmp244440))))
                                    (declare (not safe))
                                    (cons '%#call __tmp244439))))
                             (declare (not safe))
                             (cons __tmp244438 '()))))
                      (declare (not safe))
                      (cons __tmp244448 __tmp244437))))
                 (_generate-specializer-impl235629_
                  (lambda (_$t238882_
                           _methods-bind238883_
                           _slots-bind238884_
                           _class-check-bind238885_
                           _struct-check-bind238886_
                           _specializer-impl238887_
                           _lifted-specializer-id238888_
                           _unchecked-specializer-impl238889_)
                    (let ((__tmp244449
                           (let ((__tmp244450
                                  (let ((__tmp244476
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t238882_ '())))
                                        (__tmp244451
                                         (let ((__tmp244452
                                                (let ((__tmp244453
                                                       (let ((__tmp244473
                                                              (let ((__tmp244474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp244475
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind238886_
                                              _class-check-bind238885_))))
                               (declare (not safe))
                               (foldr1 cons __tmp244475 _slots-bind238884_))))
                        (declare (not safe))
                        (foldr1 cons __tmp244474 _methods-bind238883_)))
                     (__tmp244454
                      (let ((__tmp244455
                             (if (or _lifted-specializer-id238888_
                                     _unchecked-specializer-impl238889_)
                                 (let* ((_$specializer238894_
                                         (let ((__tmp244456
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp244456)))
                                        (__tmp244457
                                         (let ((__tmp244469
                                                (let ((__tmp244470
                                                       (let ((__tmp244472
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer238894_ '())))
                     (__tmp244471
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl238887_ '()))))
                 (declare (not safe))
                 (cons __tmp244472 __tmp244471))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp244470 '())))
                                               (__tmp244458
                                                (let ((__tmp244459
                                                       (let _recur238896_ ((_rest238898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind238886_)))
                 (let* ((_rest238899238907_ _rest238898_)
                        (_else238901238915_
                         (lambda ()
                           (if _lifted-specializer-id238888_
                               (let ((__tmp244460
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id238888_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp244460))
                               _unchecked-specializer-impl238889_)))
                        (_K238903238921_
                         (lambda (_rest238918_ _checkq238919_)
                           (let ((__tmp244461
                                  (let ((__tmp244467
                                         (let ((__tmp244468
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq238919_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp244468)))
                                        (__tmp244462
                                         (let ((__tmp244466
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur238896_
                                                   _rest238918_)))
                                               (__tmp244463
                                                (let ((__tmp244464
                                                       (let ((__tmp244465
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer238894_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp244465))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp244464 '()))))
                                           (declare (not safe))
                                           (cons __tmp244466 __tmp244463))))
                                    (declare (not safe))
                                    (cons __tmp244467 __tmp244462))))
                             (declare (not safe))
                             (cons '%#if __tmp244461)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest238899238907_))
                       (let ((_hd238904238924_
                              (let ()
                                (declare (not safe))
                                (##car _rest238899238907_)))
                             (_tl238905238926_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest238899238907_))))
                         (let* ((_checkq238929_ _hd238904238924_)
                                (_rest238931_ _tl238905238926_))
                           (declare (not safe))
                           (_K238903238921_ _rest238931_ _checkq238929_)))
                       (let () (declare (not safe)) (_else238901238915_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp244459 '()))))
                                           (declare (not safe))
                                           (cons __tmp244469 __tmp244458))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp244457))
                                 _specializer-impl238887_)))
                        (declare (not safe))
                        (cons __tmp244455 '()))))
                 (declare (not safe))
                 (cons __tmp244473 __tmp244454))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp244453))))
                                           (declare (not safe))
                                           (cons __tmp244452 '()))))
                                    (declare (not safe))
                                    (cons __tmp244476 __tmp244451))))
                             (declare (not safe))
                             (cons '%#lambda __tmp244450))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244449 _stx235623_))))
                 (_generate-specializer-def235630_
                  (lambda (_id238876_
                           _specializer-id238877_
                           _specializer-impl238878_
                           _lifted-specializer-id238879_
                           _unchecked-specializer-impl238880_)
                    (let ((__tmp244477
                           (let ((__tmp244478
                                  (let ((__tmp244479
                                         (let ((__tmp244499
                                                (let ((__tmp244500
                                                       (let ((__tmp244501
                                                              (let ((__tmp244503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id238877_ '())))
                            (__tmp244502
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl238878_ '()))))
                        (declare (not safe))
                        (cons __tmp244503 __tmp244502))))
                 (declare (not safe))
                 (cons '%#define-values __tmp244501))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp244500
                                                   _stx235623_)))
                                               (__tmp244480
                                                (let ((__tmp244487
                                                       (let ((__tmp244488
                                                              (let ((__tmp244489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp244490
                                    (let ((__tmp244497
                                           (let ((__tmp244498
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp244498)))
                                          (__tmp244491
                                           (let ((__tmp244495
                                                  (let ((__tmp244496
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id238876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp244496)))
                                                 (__tmp244492
                                                  (let ((__tmp244493
                                                         (let ((__tmp244494
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id238877_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp244494))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244493 '()))))
                                             (declare (not safe))
                                             (cons __tmp244495 __tmp244492))))
                                      (declare (not safe))
                                      (cons __tmp244497 __tmp244491))))
                               (declare (not safe))
                               (cons '%#call __tmp244490))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp244489 _stx235623_))))
                 (declare (not safe))
                 (cons __tmp244488 '())))
              (__tmp244481
               (if _lifted-specializer-id238879_
                   (let ((__tmp244482
                          (let ((__tmp244483
                                 (let ((__tmp244484
                                        (let ((__tmp244486
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id238879_
                                                       '())))
                                              (__tmp244485
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl238880_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp244486 __tmp244485))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp244484))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp244483 _stx235623_))))
                     (declare (not safe))
                     (cons __tmp244482 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp244487
                                                          __tmp244481))))
                                           (declare (not safe))
                                           (cons __tmp244499 __tmp244480))))
                                    (declare (not safe))
                                    (cons _stx235623_ __tmp244479))))
                             (declare (not safe))
                             (cons '%#begin __tmp244478))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244477 _stx235623_)))))
          (let* ((___stx243293243294_ _stx235623_)
                 (_g235633235653_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx243293243294_)))))
            (let ((___kont243295243296_
                   (lambda (_L235697_ _L235698_)
                     (let ((_method-calls235717_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs235718_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check235719_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check235720_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert235721_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty235722_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?235724_
                                 (lambda ()
                                   (if (let ((__tmp244508
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls235717_))))
                                         (declare (not safe))
                                         (fxzero? __tmp244508))
                                       (if (let ((__tmp244507
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs235718_))))
                                             (declare (not safe))
                                             (fxzero? __tmp244507))
                                           (if (let ((__tmp244506
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check235719_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp244506))
                                               (if (let ((__tmp244505
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check235720_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp244505))
                                                   (let ((__tmp244504
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert235721_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp244504))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?235725_
                                 (lambda ()
                                   (let ((_$e238869_
                                          (let ((__tmp244509
                                                 (let ((__tmp244510
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check235720_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp244510))))
                                            (declare (not safe))
                                            (not __tmp244509))))
                                     (if _$e238869_
                                         _$e238869_
                                         (let ((__tmp244511
                                                (let ((__tmp244512
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert235721_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp244512))))
                                           (declare (not safe))
                                           (not __tmp244511))))))
                                (_lift-unchecked-specializer?235726_
                                 (lambda ()
                                   (if (let ((__tmp244515
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls235717_))))
                                         (declare (not safe))
                                         (fxzero? __tmp244515))
                                       (if (let ((__tmp244514
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs235718_))))
                                             (declare (not safe))
                                             (fxzero? __tmp244514))
                                           (let ((__tmp244513
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check235719_))))
                                             (declare (not safe))
                                             (fxzero? __tmp244513))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L235697_))
                             (let* ((___stx243207243208_ _L235697_)
                                    (_g236239236257_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx243207243208_)))))
                               (let ((___kont243209243210_
                                      (lambda (_L236293_ _L236294_ _L236295_)
                                        (for-each
                                         (lambda (_g236310236312_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g236310236312_
                                              _L236295_
                                              _method-calls235717_
                                              _slot-refs235718_
                                              _class-type-check235719_
                                              _struct-type-check235720_
                                              _struct-type-assert235721_)))
                                         _L236293_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?235724_))
                                            _stx235623_
                                            (let* ((_specializer-id236321_
                                                    (let* ((_id236315_
                                                            (let ((__tmp244665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L235698_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp244665 '"::specialize")))
                   (_specializer-id236318_
                    (let ((__tmp244666
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx235623_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id236315_ __tmp244666))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id236318_))
              _specializer-id236318_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id236328_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?235726_))
                                                        (let* ((_id236323_
                                                                (let ((__tmp244667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L235698_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp244667
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id236325_
                        (let ((__tmp244668
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx235623_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id236323_ __tmp244668))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id236325_))
                  _lifted-specializer-id236325_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t236330_
                                                    (let ((__tmp244669
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp244669)))
                                                   (_methods236332_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls235717_)))
                                                   (_$methods236336_
                                                    (map (lambda (_id236334_)
                                                           (let ((__tmp244670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id236334_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp244670)))
                 _methods236332_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g244671_
                                                    (for-each
                                                     (lambda (_g236337236340_
                                                              _g236338236342_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls235717_
                                                          _g236337236340_
                                                          _g236338236342_)))
                                                     _methods236332_
                                                     _$methods236336_))
                                                   (_methods-bind236353_
                                                    (map (lambda (_g236345236348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g236346236350_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind235625_
                      _$t236330_
                      _g236345236348_
                      _g236346236350_)))
                 _methods236332_
                 _$methods236336_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots236355_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs235718_)))
                                                   (_$slots236359_
                                                    (map (lambda (_id236357_)
                                                           (let ((__tmp244672
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id236357_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp244672)))
                 _slots236355_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g244673_
                                                    (for-each
                                                     (lambda (_g236360236363_
                                                              _g236361236365_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs235718_
                                                          _g236360236363_
                                                          _g236361236365_)))
                                                     _slots236355_
                                                     _$slots236359_))
                                                   (_slots-bind236376_
                                                    (map (lambda (_g236368236371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g236369236373_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind235626_
                      _$t236330_
                      _g236368236371_
                      _g236369236373_)))
                 _slots236355_
                 _$slots236359_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check236378_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check235719_)))
                                                   (_$class-check236381_
                                                    (map (lambda (_g244674_)
                                                           (let ((__tmp244675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp244675)))
                 _class-check236378_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g244676_
                                                    (for-each
                                                     (lambda (_g236382236385_
                                                              _g236383236387_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check235719_
                                                          _g236382236385_
                                                          _g236383236387_)))
                                                     _class-check236378_
                                                     _$class-check236381_))
                                                   (_class-check-bind236398_
                                                    (map (lambda (_g236390236393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g236391236395_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind235627_
                      _$t236330_
                      _g236390236393_
                      _g236391236395_)))
                 _class-check236378_
                 _$class-check236381_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all236400_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check235720_
                                                       _struct-type-assert235721_)))
                                                   (_struct-check236402_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all236400_)))
                                                   (_$struct-check236405_
                                                    (map (lambda (_g244677_)
                                                           (let ((__tmp244678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp244678)))
                 _struct-check236402_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g244679_
                                                    (for-each
                                                     (lambda (_g236406236409_
                                                              _g236407236411_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all236400_
                                                          _g236406236409_
                                                          _g236407236411_)))
                                                     _struct-check236402_
                                                     _$struct-check236405_))
                                                   (_struct-check-bind236422_
                                                    (map (lambda (_g236414236417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g236415236419_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind235628_
                      _$t236330_
                      _g236414236417_
                      _g236415236419_)))
                 _struct-check236402_
                 _$struct-check236405_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl236433_
                                                    (lambda (_struct-type-check1236424_
                                                             _struct-type-check2236425_)
                                                      (let* ((_specializer-body236431_
                                                              (map (lambda (_g236426236428_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g236426236428_
                                _L236295_
                                _$t236330_
                                _method-calls235717_
                                _slot-refs235718_
                                _class-type-check235719_
                                _struct-type-check1236424_
                                _struct-type-check2236425_)))
                           _L236293_))
                     (__tmp244680
                      (let ((__tmp244681
                             (let ((__tmp244682
                                    (let ()
                                      (declare (not safe))
                                      (cons _L236295_ _L236294_))))
                               (declare (not safe))
                               (cons __tmp244682 _specializer-body236431_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp244681))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp244680 _stx235623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl236435_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl236433_
                                                       _struct-check-all236400_
                                                       _empty235722_)))
                                                   (_unchecked-specializer-impl236437_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?235725_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl236433_
                                                           _empty235722_
                                                           _struct-check-all236400_))
                                                        '#f))
                                                   (_specializer-impl236439_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl235629_
                                                       _$t236330_
                                                       _methods-bind236353_
                                                       _slots-bind236376_
                                                       _class-check-bind236398_
                                                       _struct-check-bind236422_
                                                       _specializer-impl236435_
                                                       _lifted-specializer-id236328_
                                                       _unchecked-specializer-impl236437_))))
                                              (let ((__tmp244684
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L235698_)))
                                                    (__tmp244683
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id236321_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp244684
                                                 '" => "
                                                 __tmp244683))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def235630_
                                                 _L235698_
                                                 _specializer-id236321_
                                                 _specializer-impl236439_
                                                 _lifted-specializer-id236328_
                                                 _unchecked-specializer-impl236437_))))))
                                     (___kont243211243212_
                                      (lambda () _stx235623_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx243207243208_))
                                     (let ((_e236246236269_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx243207243208_))))
                                       (let ((_tl236244236274_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e236246236269_)))
                                             (_hd236245236272_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e236246236269_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl236244236274_))
                                             (let ((_e236249236277_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl236244236274_))))
                                               (let ((_tl236247236282_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e236249236277_)))
                                                     (_hd236248236280_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e236249236277_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd236248236280_))
                                                     (let ((_e236252236285_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd236248236280_))))
                                                       (let ((_tl236250236290_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e236252236285_)))
                     (_hd236251236288_
                      (let () (declare (not safe)) (##car _e236252236285_))))
                 (___kont243209243210_
                  _tl236247236282_
                  _tl236250236290_
                  _hd236251236288_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont243211243212_))))
                                             (___kont243211243212_))))
                                     (___kont243211243212_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L235697_))
                                 (let* ((_g236445236464_
                                         (lambda (_g236446236461_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g236446236461_))))
                                        (_g236444236815_
                                         (lambda (_g236446236467_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g236446236467_))
                                               (let ((_e236450236469_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g236446236467_))))
                                                 (let ((_hd236449236472_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e236450236469_)))
                                                       (_tl236448236474_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e236450236469_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl236448236474_))
                                                       (let ((_g244641_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl236448236474_ '0))))
                 (begin
                   (let ((_g244642_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g244641_)
                                (##vector-length _g244641_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g244642_ 2)))
                         (error "Context expects 2 values" _g244642_)))
                   (let ((_target236451236477_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g244641_ 0)))
                         (_tl236453236479_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g244641_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl236453236479_))
                         (letrec ((_loop236454236482_
                                   (lambda (_hd236452236485_
                                            _clause236458236487_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd236452236485_))
                                         (let ((_e236455236490_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd236452236485_))))
                                           (let ((_lp-hd236456236493_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e236455236490_)))
                                                 (_lp-tl236457236495_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e236455236490_))))
                                             (let ((__tmp244664
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd236456236493_
                                                            _clause236458236487_))))
                                               (declare (not safe))
                                               (_loop236454236482_
                                                _lp-tl236457236495_
                                                __tmp244664))))
                                         (let ((_clause236459236498_
                                                (reverse _clause236458236487_)))
                                           ((lambda (_L236501_)
                                              (for-each
                                               (lambda (_clause236514_)
                                                 (let* ((___stx243233243234_
                                                         _clause236514_)
                                                        (_g236517236532_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx243233243234_)))))
                                                   (let ((___kont243235243236_
                                                          (lambda (_L236560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L236561_
                           _L236562_)
                    (for-each
                     (lambda (_g236577236579_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g236577236579_
                          _L236562_
                          _method-calls235717_
                          _slot-refs235718_
                          _class-type-check235719_
                          _struct-type-check235720_
                          _struct-type-assert235721_)))
                     _L236560_)))
                 (___kont243237243238_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx243233243234_))
                                                         (let ((_e236524236544_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx243233243234_))))
                   (let ((_tl236522236549_
                          (let ()
                            (declare (not safe))
                            (##cdr _e236524236544_)))
                         (_hd236523236547_
                          (let ()
                            (declare (not safe))
                            (##car _e236524236544_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd236523236547_))
                         (let ((_e236527236552_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd236523236547_))))
                           (let ((_tl236525236557_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e236527236552_)))
                                 (_hd236526236555_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e236527236552_))))
                             (___kont243235243236_
                              _tl236522236549_
                              _tl236525236557_
                              _hd236526236555_)))
                         (___kont243237243238_))))
                 (___kont243237243238_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp244643
                                                      (lambda (_g236584236587_
                                                               _g236585236589_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g236584236587_
                                                                _g236585236589_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp244643
                                                         '()
                                                         _L236501_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?235724_))
                                                  _stx235623_
                                                  (let* ((_specializer-id236598_
                                                          (let* ((_id236592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244644
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L235698_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp244644 '"::specialize")))
                         (_specializer-id236595_
                          (let ((__tmp244645
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx235623_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id236592_ __tmp244645))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id236595_))
                    _specializer-id236595_))
                 (_lifted-specializer-id236605_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?235726_))
                      (let* ((_id236600_
                              (let ((__tmp244646
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L235698_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp244646
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id236602_
                              (let ((__tmp244647
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx235623_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id236600_
                                 __tmp244647))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id236602_))
                        _lifted-specializer-id236602_)
                      '#f))
                 (_$t236607_
                  (let ((__tmp244648 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp244648)))
                 (_methods236609_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls235717_)))
                 (_$methods236613_
                  (map (lambda (_id236611_)
                         (let ((__tmp244649 (gensym _id236611_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp244649)))
                       _methods236609_))
                 (_g244650_
                  (for-each
                   (lambda (_g236614236617_ _g236615236619_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls235717_
                        _g236614236617_
                        _g236615236619_)))
                   _methods236609_
                   _$methods236613_))
                 (_methods-bind236630_
                  (map (lambda (_g236622236625_ _g236623236627_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind235625_
                            _$t236607_
                            _g236622236625_
                            _g236623236627_)))
                       _methods236609_
                       _$methods236613_))
                 (_slots236632_
                  (let () (declare (not safe)) (hash-keys _slot-refs235718_)))
                 (_$slots236636_
                  (map (lambda (_id236634_)
                         (let ((__tmp244651 (gensym _id236634_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp244651)))
                       _slots236632_))
                 (_g244652_
                  (for-each
                   (lambda (_g236637236640_ _g236638236642_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs235718_
                        _g236637236640_
                        _g236638236642_)))
                   _slots236632_
                   _$slots236636_))
                 (_slots-bind236653_
                  (map (lambda (_g236645236648_ _g236646236650_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind235626_
                            _$t236607_
                            _g236645236648_
                            _g236646236650_)))
                       _slots236632_
                       _$slots236636_))
                 (_class-check236655_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check235719_)))
                 (_$class-check236658_
                  (map (lambda (_g244653_)
                         (let ((__tmp244654 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp244654)))
                       _class-check236655_))
                 (_g244655_
                  (for-each
                   (lambda (_g236659236662_ _g236660236664_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check235719_
                        _g236659236662_
                        _g236660236664_)))
                   _class-check236655_
                   _$class-check236658_))
                 (_class-check-bind236675_
                  (map (lambda (_g236667236670_ _g236668236672_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind235627_
                            _$t236607_
                            _g236667236670_
                            _g236668236672_)))
                       _class-check236655_
                       _$class-check236658_))
                 (_struct-check-all236677_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check235720_
                     _struct-type-assert235721_)))
                 (_struct-check236679_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all236677_)))
                 (_$struct-check236682_
                  (map (lambda (_g244656_)
                         (let ((__tmp244657 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp244657)))
                       _struct-check236679_))
                 (_g244658_
                  (for-each
                   (lambda (_g236683236686_ _g236684236688_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all236677_
                        _g236683236686_
                        _g236684236688_)))
                   _struct-check236679_
                   _$struct-check236682_))
                 (_struct-check-bind236699_
                  (map (lambda (_g236691236694_ _g236692236696_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind235628_
                            _$t236607_
                            _g236691236694_
                            _g236692236696_)))
                       _struct-check236679_
                       _$struct-check236682_))
                 (_make-specializer-impl236806_
                  (lambda (_struct-type-check1236701_
                           _struct-type-check2236702_)
                    (let* ((_specializer-clauses236804_
                            (map (lambda (_clause236704_)
                                   (let* ((___stx243253243254_ _clause236704_)
                                          (_g236707236722_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx243253243254_)))))
                                     (let ((___kont243255243256_
                                            (lambda (_L236750_
                                                     _L236751_
                                                     _L236752_)
                                              (let* ((_body236792_
                                                      (map (lambda (_g236787236789_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g236787236789_
                        _L236752_
                        _$t236607_
                        _method-calls235717_
                        _slot-refs235718_
                        _class-type-check235719_
                        _struct-type-check1236701_
                        _struct-type-check2236702_)))
                   _L236750_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp244659
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L236752_
                                                              _L236751_))))
                                                (declare (not safe))
                                                (cons __tmp244659
                                                      _body236792_))))
                                           (___kont243257243258_
                                            (lambda () _clause236704_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx243253243254_))
                                           (let ((_e236714236734_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx243253243254_))))
                                             (let ((_tl236712236739_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e236714236734_)))
                                                   (_hd236713236737_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e236714236734_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd236713236737_))
                                                   (let ((_e236717236742_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd236713236737_))))
                                                     (let ((_tl236715236747_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e236717236742_)))
                                                           (_hd236716236745_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e236717236742_))))
                                                       (___kont243255243256_
                                                        _tl236712236739_
                                                        _tl236715236747_
                                                        _hd236716236745_)))
                                                   (___kont243257243258_))))
                                           (___kont243257243258_)))))
                                 (let ((__tmp244660
                                        (lambda (_g236796236799_
                                                 _g236797236801_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g236796236799_
                                                  _g236797236801_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp244660 '() _L236501_))))
                           (__tmp244661
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses236804_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244661 _stx235623_))))
                 (_specializer-impl236808_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl236806_
                     _struct-check-all236677_
                     _empty235722_)))
                 (_unchecked-specializer-impl236810_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?235725_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl236806_
                         _empty235722_
                         _struct-check-all236677_))
                      '#f))
                 (_specializer-impl236812_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl235629_
                     _$t236607_
                     _methods-bind236630_
                     _slots-bind236653_
                     _class-check-bind236675_
                     _struct-check-bind236699_
                     _specializer-impl236808_
                     _lifted-specializer-id236605_
                     _unchecked-specializer-impl236810_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp244663
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L235698_)))
                                                          (__tmp244662
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id236598_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp244663
                                                       '" => "
                                                       __tmp244662))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def235630_
                                                       _L235698_
                                                       _specializer-id236598_
                                                       _specializer-impl236812_
                                                       _lifted-specializer-id236605_
                                                       _unchecked-specializer-impl236810_)))))
                                            _clause236459236498_))))))
                           (let ()
                             (declare (not safe))
                             (_loop236454236482_ _target236451236477_ '())))
                         (let ()
                           (declare (not safe))
                           (_g236445236464_ _g236446236467_))))))
               (let ()
                 (declare (not safe))
                 (_g236445236464_ _g236446236467_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g236445236464_
                                                  _g236446236467_))))))
                                   (declare (not safe))
                                   (_g236444236815_ _L235697_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L235697_))
                                     (let* ((_g236818236848_
                                             (lambda (_g236819236845_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g236819236845_))))
                                            (_g236817237536_
                                             (lambda (_g236819236851_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g236819236851_))
                                                   (let ((_e236825236853_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g236819236851_))))
                                                     (let ((_hd236824236856_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e236825236853_)))
                                                           (_tl236823236858_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e236825236853_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl236823236858_))
                                                           (let ((_e236828236861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl236823236858_))))
                     (let ((_hd236827236864_
                            (let ()
                              (declare (not safe))
                              (##car _e236828236861_)))
                           (_tl236826236866_
                            (let ()
                              (declare (not safe))
                              (##cdr _e236828236861_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd236827236864_))
                           (let ((_e236831236869_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd236827236864_))))
                             (let ((_hd236830236872_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e236831236869_)))
                                   (_tl236829236874_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e236831236869_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd236830236872_))
                                   (let ((_e236834236877_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd236830236872_))))
                                     (let ((_hd236833236880_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e236834236877_)))
                                           (_tl236832236882_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e236834236877_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd236833236880_))
                                           (let ((_e236837236885_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd236833236880_))))
                                             (let ((_hd236836236888_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e236837236885_)))
                                                   (_tl236835236890_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e236837236885_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl236835236890_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl236832236882_))
                                                       (let ((_e236840236893_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl236832236882_))))
                 (let ((_hd236839236896_
                        (let () (declare (not safe)) (##car _e236840236893_)))
                       (_tl236838236898_
                        (let () (declare (not safe)) (##cdr _e236840236893_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl236838236898_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl236829236874_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl236826236866_))
                               (let ((_e236843236901_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl236826236866_))))
                                 (let ((_hd236842236904_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e236843236901_)))
                                       (_tl236841236906_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e236843236901_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl236841236906_))
                                       ((lambda (_L236909_ _L236910_ _L236911_)
                                          (let* ((_g236934236952_
                                                  (lambda (_g236935236949_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g236935236949_))))
                                                 (_g236933237003_
                                                  (lambda (_g236935236955_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g236935236955_))
                                                        (let ((_e236941236957_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g236935236955_))))
                  (let ((_hd236940236960_
                         (let () (declare (not safe)) (##car _e236941236957_)))
                        (_tl236939236962_
                         (let ()
                           (declare (not safe))
                           (##cdr _e236941236957_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl236939236962_))
                        (let ((_e236944236965_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl236939236962_))))
                          (let ((_hd236943236968_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e236944236965_)))
                                (_tl236942236970_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e236944236965_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd236943236968_))
                                (let ((_e236947236973_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd236943236968_))))
                                  (let ((_hd236946236976_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e236947236973_)))
                                        (_tl236945236978_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e236947236973_))))
                                    ((lambda (_L236981_ _L236982_ _L236983_)
                                       (for-each
                                        (lambda (_g236998237000_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g236998237000_
                                             _L236983_
                                             _method-calls235717_
                                             _slot-refs235718_
                                             _class-type-check235719_
                                             _struct-type-check235720_
                                             _struct-type-assert235721_)))
                                        _L236981_))
                                     _tl236942236970_
                                     _tl236945236978_
                                     _hd236946236976_)))
                                (let ()
                                  (declare (not safe))
                                  (_g236934236952_ _g236935236955_)))))
                        (let ()
                          (declare (not safe))
                          (_g236934236952_ _g236935236955_)))))
                (let ()
                  (declare (not safe))
                  (_g236934236952_ _g236935236955_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g236933237003_ _L236910_))
                                          (let* ((_g237006237025_
                                                  (lambda (_g237007237022_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g237007237022_))))
                                                 (_g237005237144_
                                                  (lambda (_g237007237028_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g237007237028_))
                                                        (let ((_e237011237030_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g237007237028_))))
                  (let ((_hd237010237033_
                         (let () (declare (not safe)) (##car _e237011237030_)))
                        (_tl237009237035_
                         (let ()
                           (declare (not safe))
                           (##cdr _e237011237030_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl237009237035_))
                        (let ((_g244604_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl237009237035_
                                  '0))))
                          (begin
                            (let ((_g244605_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g244604_)
                                         (##vector-length _g244604_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g244605_ 2)))
                                  (error "Context expects 2 values"
                                         _g244605_)))
                            (let ((_target237012237038_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g244604_ 0)))
                                  (_tl237014237040_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g244604_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl237014237040_))
                                  (letrec ((_loop237015237043_
                                            (lambda (_hd237013237046_
                                                     _clause237019237048_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd237013237046_))
                                                  (let ((_e237016237051_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd237013237046_))))
                                                    (let ((_lp-hd237017237054_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237016237051_)))
                                                          (_lp-tl237018237056_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237016237051_))))
                                                      (let ((__tmp244607
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd237017237054_ _clause237019237048_))))
                (declare (not safe))
                (_loop237015237043_ _lp-tl237018237056_ __tmp244607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause237020237059_
                                                         (reverse _clause237019237048_)))
                                                    ((lambda (_L237062_)
                                                       (for-each
                                                        (lambda (_clause237075_)
                                                          (let* ((_g237077237092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g237078237089_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g237078237089_))))
                         (_g237076237134_
                          (lambda (_g237078237095_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g237078237095_))
                                (let ((_e237084237097_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g237078237095_))))
                                  (let ((_hd237083237100_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237084237097_)))
                                        (_tl237082237102_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237084237097_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd237083237100_))
                                        (let ((_e237087237105_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd237083237100_))))
                                          (let ((_hd237086237108_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e237087237105_)))
                                                (_tl237085237110_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e237087237105_))))
                                            ((lambda (_L237113_
                                                      _L237114_
                                                      _L237115_)
                                               (for-each
                                                (lambda (_g237129237131_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g237129237131_
                                                     _L237115_
                                                     _method-calls235717_
                                                     _slot-refs235718_
                                                     _class-type-check235719_
                                                     _struct-type-check235720_
                                                     _struct-type-assert235721_)))
                                                _L237113_))
                                             _tl237082237102_
                                             _tl237085237110_
                                             _hd237086237108_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g237077237092_ _g237078237095_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g237077237092_ _g237078237095_))))))
                    (declare (not safe))
                    (_g237076237134_ _clause237075_)))
                (let ((__tmp244606
                       (lambda (_g237136237139_ _g237137237141_)
                         (let ()
                           (declare (not safe))
                           (cons _g237136237139_ _g237137237141_)))))
                  (declare (not safe))
                  (foldr1 __tmp244606 '() _L237062_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause237020237059_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop237015237043_
                                       _target237012237038_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g237006237025_ _g237007237028_))))))
                        (let ()
                          (declare (not safe))
                          (_g237006237025_ _g237007237028_)))))
                (let ()
                  (declare (not safe))
                  (_g237006237025_ _g237007237028_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g237005237144_ _L236909_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?235724_))
                                              _stx235623_
                                              (let* ((_specializer-id237153_
                                                      (let* ((_id237147_
                                                              (let ((__tmp244608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L235698_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp244608 '"::specialize")))
                     (_specializer-id237150_
                      (let ((__tmp244609
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx235623_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id237147_ __tmp244609))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id237150_))
                _specializer-id237150_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id237160_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?235726_))
                                                          (let* ((_id237155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244610
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L235698_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp244610
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id237157_
                          (let ((__tmp244611
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx235623_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id237155_ __tmp244611))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id237157_))
                    _lifted-specializer-id237157_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t237162_
                                                      (let ((__tmp244612
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp244612)))
                                                     (_methods237164_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls235717_)))
                                                     (_$methods237168_
                                                      (map (lambda (_id237166_)
                                                             (let ((__tmp244613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id237166_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp244613)))
                   _methods237164_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g244614_
                                                      (for-each
                                                       (lambda (_g237169237172_
                                                                _g237170237174_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls235717_
                                                            _g237169237172_
                                                            _g237170237174_)))
                                                       _methods237164_
                                                       _$methods237168_))
                                                     (_methods-bind237185_
                                                      (map (lambda (_g237177237180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g237178237182_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind235625_
                        _$t237162_
                        _g237177237180_
                        _g237178237182_)))
                   _methods237164_
                   _$methods237168_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots237187_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs235718_)))
                                                     (_$slots237191_
                                                      (map (lambda (_id237189_)
                                                             (let ((__tmp244615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id237189_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp244615)))
                   _slots237187_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g244616_
                                                      (for-each
                                                       (lambda (_g237192237195_
                                                                _g237193237197_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs235718_
                                                            _g237192237195_
                                                            _g237193237197_)))
                                                       _slots237187_
                                                       _$slots237191_))
                                                     (_slots-bind237208_
                                                      (map (lambda (_g237200237203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g237201237205_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind235626_
                        _$t237162_
                        _g237200237203_
                        _g237201237205_)))
                   _slots237187_
                   _$slots237191_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check237210_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check235719_)))
                                                     (_$class-check237213_
                                                      (map (lambda (_g244617_)
                                                             (let ((__tmp244618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp244618)))
                   _class-check237210_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g244619_
                                                      (for-each
                                                       (lambda (_g237214237217_
                                                                _g237215237219_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check235719_
                                                            _g237214237217_
                                                            _g237215237219_)))
                                                       _class-check237210_
                                                       _$class-check237213_))
                                                     (_class-check-bind237230_
                                                      (map (lambda (_g237222237225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g237223237227_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind235627_
                        _$t237162_
                        _g237222237225_
                        _g237223237227_)))
                   _class-check237210_
                   _$class-check237213_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all237232_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check235720_
                                                         _struct-type-assert235721_)))
                                                     (_struct-check237234_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all237232_)))
                                                     (_$struct-check237237_
                                                      (map (lambda (_g244620_)
                                                             (let ((__tmp244621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp244621)))
                   _struct-check237234_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g244622_
                                                      (for-each
                                                       (lambda (_g237238237241_
                                                                _g237239237243_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all237232_
                                                            _g237238237241_
                                                            _g237239237243_)))
                                                       _struct-check237234_
                                                       _$struct-check237237_))
                                                     (_struct-check-bind237254_
                                                      (map (lambda (_g237246237249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g237247237251_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind235628_
                        _$t237162_
                        _g237246237249_
                        _g237247237251_)))
                   _struct-check237234_
                   _$struct-check237237_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr237353_
                                                      (lambda (_struct-type-check1237256_
                                                               _struct-type-check2237257_)
                                                        (let* ((_g237259237277_
                                                                (lambda (_g237260237274_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g237260237274_))))
                       (_g237258237350_
                        (lambda (_g237260237280_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g237260237280_))
                              (let ((_e237266237282_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g237260237280_))))
                                (let ((_hd237265237285_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237266237282_)))
                                      (_tl237264237287_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237266237282_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237264237287_))
                                      (let ((_e237269237290_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237264237287_))))
                                        (let ((_hd237268237293_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237269237290_)))
                                              (_tl237267237295_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237269237290_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd237268237293_))
                                              (let ((_e237272237298_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd237268237293_))))
                                                (let ((_hd237271237301_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e237272237298_)))
                                                      (_tl237270237303_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e237272237298_))))
                                                  ((lambda (_L237306_
                                                            _L237307_
                                                            _L237308_)
                                                     (let* ((_body237348_
                                                             (map (lambda (_g237343237345_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g237343237345_
                               _L237308_
                               _$t237162_
                               _method-calls235717_
                               _slot-refs235718_
                               _class-type-check235719_
                               _struct-type-check1237256_
                               _struct-type-check2237257_)))
                          _L237306_))
                    (__tmp244623
                     (let ((__tmp244624
                            (let ((__tmp244625
                                   (let ()
                                     (declare (not safe))
                                     (cons _L237308_ _L237307_))))
                              (declare (not safe))
                              (cons __tmp244625 _body237348_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp244624))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp244623 _L236910_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl237267237295_
                                                   _tl237270237303_
                                                   _hd237271237301_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g237259237277_
                                                 _g237260237280_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237259237277_ _g237260237280_)))))
                              (let ()
                                (declare (not safe))
                                (_g237259237277_ _g237260237280_))))))
                  (declare (not safe))
                  (_g237258237350_ _L236910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr237514_
                                                      (lambda (_struct-type-check1237355_
                                                               _struct-type-check2237356_)
                                                        (let* ((_g237358237377_
                                                                (lambda (_g237359237374_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g237359237374_))))
                       (_g237357237511_
                        (lambda (_g237359237380_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g237359237380_))
                              (let ((_e237363237382_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g237359237380_))))
                                (let ((_hd237362237385_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237363237382_)))
                                      (_tl237361237387_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237363237382_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl237361237387_))
                                      (let ((_g244626_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl237361237387_
                                                '0))))
                                        (begin
                                          (let ((_g244627_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g244626_)
                                                       (##vector-length
                                                        _g244626_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g244627_ 2)))
                                                (error "Context expects 2 values"
                                                       _g244627_)))
                                          (let ((_target237364237390_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g244626_ 0)))
                                                (_tl237366237392_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g244626_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl237366237392_))
                                                (letrec ((_loop237367237395_
                                                          (lambda (_hd237365237398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause237371237400_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd237365237398_))
                        (let ((_e237368237403_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd237365237398_))))
                          (let ((_lp-hd237369237406_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e237368237403_)))
                                (_lp-tl237370237408_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e237368237403_))))
                            (let ((__tmp244631
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd237369237406_
                                           _clause237371237400_))))
                              (declare (not safe))
                              (_loop237367237395_
                               _lp-tl237370237408_
                               __tmp244631))))
                        (let ((_clause237372237411_
                               (reverse _clause237371237400_)))
                          ((lambda (_L237414_)
                             (let* ((_clauses237509_
                                     (map (lambda (_clause237429_)
                                            (let* ((___stx243273243274_
                                                    _clause237429_)
                                                   (_g237432237447_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx243273243274_)))))
                                              (let ((___kont243275243276_
                                                     (lambda (_L237475_
                                                              _L237476_
                                                              _L237477_)
                                                       (let* ((_body237497_
                                                               (map (lambda (_g237492237494_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g237492237494_
                                 _L237477_
                                 _$t237162_
                                 _method-calls235717_
                                 _slot-refs235718_
                                 _class-type-check235719_
                                 _struct-type-check1237355_
                                 _struct-type-check2237356_)))
                            _L237475_))
                      (__tmp244628
                       (let ()
                         (declare (not safe))
                         (cons _L237477_ _L237476_))))
                 (declare (not safe))
                 (cons __tmp244628 _body237497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243277243278_
                                                     (lambda ()
                                                       _clause237429_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx243273243274_))
                                                    (let ((_e237439237459_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx243273243274_))))
                                                      (let ((_tl237437237464_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e237439237459_)))
                    (_hd237438237462_
                     (let () (declare (not safe)) (##car _e237439237459_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd237438237462_))
                    (let ((_e237442237467_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd237438237462_))))
                      (let ((_tl237440237472_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237442237467_)))
                            (_hd237441237470_
                             (let ()
                               (declare (not safe))
                               (##car _e237442237467_))))
                        (___kont243275243276_
                         _tl237437237464_
                         _tl237440237472_
                         _hd237441237470_)))
                    (___kont243277243278_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243277243278_)))))
                                          (let ((__tmp244629
                                                 (lambda (_g237501237504_
                                                          _g237502237506_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g237501237504_
                                                           _g237502237506_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp244629
                                                    '()
                                                    _L237414_))))
                                    (__tmp244630
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses237509_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp244630 _L236909_)))
                           _clause237372237411_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop237367237395_
                                                     _target237364237390_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g237358237377_
                                                   _g237359237380_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237358237377_ _g237359237380_)))))
                              (let ()
                                (declare (not safe))
                                (_g237358237377_ _g237359237380_))))))
                  (declare (not safe))
                  (_g237357237511_ _L236909_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl237519_
                                                      (lambda (_specializer-lambda-expr237516_
                                                               _specializer-case-lambda-expr237517_)
                                                        (let ((__tmp244632
                                                               (let ((__tmp244633
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp244635
                                     (let ((__tmp244636
                                            (let ((__tmp244638
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L236911_ '())))
                                                  (__tmp244637
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr237516_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp244638 __tmp244637))))
                                       (declare (not safe))
                                       (cons __tmp244636 '())))
                                    (__tmp244634
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr237517_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp244635 __tmp244634))))
                         (declare (not safe))
                         (cons '%#let-values __tmp244633))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp244632 _stx235623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr237521_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr237353_
                                                         _struct-check-all237232_
                                                         _empty235722_)))
                                                     (_specializer-case-lambda-expr237523_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr237514_
                                                         _struct-check-all237232_
                                                         _empty235722_)))
                                                     (_specializer-impl237525_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl237519_
                                                         _specializer-lambda-expr237521_
                                                         _specializer-case-lambda-expr237523_)))
                                                     (_unchecked-specializer-lambda-expr237527_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?235725_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr237353_
                                                             _empty235722_
                                                             _struct-check-all237232_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr237529_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?235725_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr237514_
                                                             _empty235722_
                                                             _struct-check-all237232_))
                                                          '#f))
                                                     (_unchecked-specializer-impl237531_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?235725_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl237519_
                                                             _unchecked-specializer-lambda-expr237527_
                                                             _unchecked-specializer-case-lambda-expr237529_))
                                                          '#f))
                                                     (_specializer-impl237533_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl235629_
                                                         _$t237162_
                                                         _methods-bind237185_
                                                         _slots-bind237208_
                                                         _class-check-bind237230_
                                                         _struct-check-bind237254_
                                                         _specializer-impl237525_
                                                         _lifted-specializer-id237160_
                                                         _unchecked-specializer-impl237531_))))
                                                (let ((__tmp244640
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L235698_)))
                                                      (__tmp244639
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id237153_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp244640
                                                   '" => "
                                                   __tmp244639))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def235630_
                                                   _L235698_
                                                   _specializer-id237153_
                                                   _specializer-impl237533_
                                                   _lifted-specializer-id237160_
                                                   _unchecked-specializer-impl237531_)))))
                                        _hd236842236904_
                                        _hd236839236896_
                                        _hd236836236888_)
                                       (let ()
                                         (declare (not safe))
                                         (_g236818236848_ _g236819236851_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g236818236848_ _g236819236851_)))
                           (let ()
                             (declare (not safe))
                             (_g236818236848_ _g236819236851_)))
                       (let ()
                         (declare (not safe))
                         (_g236818236848_ _g236819236851_)))))
               (let () (declare (not safe)) (_g236818236848_ _g236819236851_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g236818236848_
                                                      _g236819236851_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g236818236848_
                                              _g236819236851_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g236818236848_ _g236819236851_)))))
                           (let ()
                             (declare (not safe))
                             (_g236818236848_ _g236819236851_)))))
                   (let ()
                     (declare (not safe))
                     (_g236818236848_ _g236819236851_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g236818236848_
                                                      _g236819236851_))))))
                                       (declare (not safe))
                                       (_g236817237536_ _L235697_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L235697_))
                                         (let* ((_g237539237592_
                                                 (lambda (_g237540237589_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g237540237589_))))
                                                (_g237538238864_
                                                 (lambda (_g237540237595_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g237540237595_))
                                                       (let ((_e237548237597_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g237540237595_))))
                 (let ((_hd237547237600_
                        (let () (declare (not safe)) (##car _e237548237597_)))
                       (_tl237546237602_
                        (let () (declare (not safe)) (##cdr _e237548237597_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd237547237600_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd237547237600_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl237546237602_))
                               (let ((_e237551237605_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl237546237602_))))
                                 (let ((_hd237550237608_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e237551237605_)))
                                       (_tl237549237610_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e237551237605_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd237550237608_))
                                       (let ((_e237554237613_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd237550237608_))))
                                         (let ((_hd237553237616_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e237554237613_)))
                                               (_tl237552237618_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e237554237613_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd237553237616_))
                                               (let ((_e237557237621_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd237553237616_))))
                                                 (let ((_hd237556237624_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e237557237621_)))
                                                       (_tl237555237626_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e237557237621_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd237556237624_))
                                                       (let ((_e237560237629_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd237556237624_))))
                 (let ((_hd237559237632_
                        (let () (declare (not safe)) (##car _e237560237629_)))
                       (_tl237558237634_
                        (let () (declare (not safe)) (##cdr _e237560237629_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl237558237634_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl237555237626_))
                           (let ((_e237563237637_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl237555237626_))))
                             (let ((_hd237562237640_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e237563237637_)))
                                   (_tl237561237642_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e237563237637_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd237562237640_))
                                   (let ((_e237566237645_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd237562237640_))))
                                     (let ((_hd237565237648_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e237566237645_)))
                                           (_tl237564237650_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e237566237645_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd237565237648_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd237565237648_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl237564237650_))
                                                   (let ((_e237569237653_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl237564237650_))))
                                                     (let ((_hd237568237656_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e237569237653_)))
                                                           (_tl237567237658_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e237569237653_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd237568237656_))
                                                           (let ((_e237572237661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd237568237656_))))
                     (let ((_hd237571237664_
                            (let ()
                              (declare (not safe))
                              (##car _e237572237661_)))
                           (_tl237570237666_
                            (let ()
                              (declare (not safe))
                              (##cdr _e237572237661_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd237571237664_))
                           (let ((_e237575237669_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd237571237664_))))
                             (let ((_hd237574237672_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e237575237669_)))
                                   (_tl237573237674_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e237575237669_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd237574237672_))
                                   (let ((_e237578237677_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd237574237672_))))
                                     (let ((_hd237577237680_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e237578237677_)))
                                           (_tl237576237682_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e237578237677_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl237576237682_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl237573237674_))
                                               (let ((_e237581237685_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl237573237674_))))
                                                 (let ((_hd237580237688_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e237581237685_)))
                                                       (_tl237579237690_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e237581237685_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl237579237690_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl237570237666_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl237567237658_))
                       (let ((_e237584237693_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl237567237658_))))
                         (let ((_hd237583237696_
                                (let ()
                                  (declare (not safe))
                                  (##car _e237584237693_)))
                               (_tl237582237698_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e237584237693_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl237582237698_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl237561237642_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl237552237618_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl237549237610_))
                                           (let ((_e237587237701_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl237549237610_))))
                                             (let ((_hd237586237704_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e237587237701_)))
                                                   (_tl237585237706_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e237587237701_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl237585237706_))
                                                   ((lambda (_L237709_
                                                             _L237710_
                                                             _L237711_
                                                             _L237712_
                                                             _L237713_)
                                                      (let* ((_g237752237814_
                                                              (lambda (_g237753237811_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g237753237811_))))
                     (_g237751238861_
                      (lambda (_g237753237817_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g237753237817_))
                            (let ((_e237761237819_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g237753237817_))))
                              (let ((_hd237760237822_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237761237819_)))
                                    (_tl237759237824_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237761237819_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd237760237822_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd237760237822_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl237759237824_))
                                            (let ((_e237764237827_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl237759237824_))))
                                              (let ((_hd237763237830_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e237764237827_)))
                                                    (_tl237762237832_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e237764237827_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl237762237832_))
                                                    (let ((_e237767237835_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl237762237832_))))
                                                      (let ((_hd237766237838_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e237767237835_)))
                    (_tl237765237840_
                     (let () (declare (not safe)) (##cdr _e237767237835_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd237766237838_))
                    (let ((_e237770237843_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd237766237838_))))
                      (let ((_hd237769237846_
                             (let ()
                               (declare (not safe))
                               (##car _e237770237843_)))
                            (_tl237768237848_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237770237843_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd237769237846_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd237769237846_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl237768237848_))
                                    (let ((_e237773237851_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl237768237848_))))
                                      (let ((_hd237772237854_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e237773237851_)))
                                            (_tl237771237856_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e237773237851_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd237772237854_))
                                            (let ((_e237776237859_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd237772237854_))))
                                              (let ((_hd237775237862_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e237776237859_)))
                                                    (_tl237774237864_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e237776237859_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd237775237862_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd237775237862_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl237774237864_))
                                                            (let ((_e237779237867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl237774237864_))))
                      (let ((_hd237778237870_
                             (let ()
                               (declare (not safe))
                               (##car _e237779237867_)))
                            (_tl237777237872_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237779237867_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl237777237872_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl237771237856_))
                                (let ((_e237782237875_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl237771237856_))))
                                  (let ((_hd237781237878_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237782237875_)))
                                        (_tl237780237880_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237782237875_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd237781237878_))
                                        (let ((_e237785237883_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd237781237878_))))
                                          (let ((_hd237784237886_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e237785237883_)))
                                                (_tl237783237888_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e237785237883_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd237784237886_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd237784237886_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl237783237888_))
                                                        (let ((_e237788237891_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl237783237888_))))
                  (let ((_hd237787237894_
                         (let () (declare (not safe)) (##car _e237788237891_)))
                        (_tl237786237896_
                         (let ()
                           (declare (not safe))
                           (##cdr _e237788237891_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl237786237896_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237780237880_))
                            (let ((_e237791237899_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237780237880_))))
                              (let ((_hd237790237902_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237791237899_)))
                                    (_tl237789237904_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237791237899_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd237790237902_))
                                    (let ((_e237794237907_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd237790237902_))))
                                      (let ((_hd237793237910_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e237794237907_)))
                                            (_tl237792237912_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e237794237907_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd237793237910_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd237793237910_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl237792237912_))
                                                    (let ((_e237797237915_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl237792237912_))))
                                                      (let ((_hd237796237918_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e237797237915_)))
                    (_tl237795237920_
                     (let () (declare (not safe)) (##cdr _e237797237915_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl237795237920_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl237789237904_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl237789237904_))
                                  '1)
                            (let ((_g244516_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl237789237904_
                                      '1))))
                              (begin
                                (let ((_g244517_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g244516_)
                                             (##vector-length _g244516_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g244517_ 2)))
                                      (error "Context expects 2 values"
                                             _g244517_)))
                                (let ((_target237798237923_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244516_ 0)))
                                      (_tl237800237925_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244516_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237800237925_))
                                      (let ((_e237809237928_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237800237925_))))
                                        (let ((_hd237808237931_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237809237928_)))
                                              (_tl237807237933_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237809237928_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237807237933_))
                                              (letrec ((_loop237801237936_
                                                        (lambda (_hd237799237939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref237805237941_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd237799237939_))
                      (let ((_e237802237944_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd237799237939_))))
                        (let ((_lp-hd237803237947_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237802237944_)))
                              (_lp-tl237804237949_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237802237944_))))
                          (let ((__tmp244603
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd237803237947_
                                         _kw-ref237805237941_))))
                            (declare (not safe))
                            (_loop237801237936_
                             _lp-tl237804237949_
                             __tmp244603))))
                      (let ((_kw-ref237806237952_
                             (reverse _kw-ref237805237941_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl237765237840_))
                            ((lambda (_L237955_
                                      _L237956_
                                      _L237957_
                                      _L237958_
                                      _L237959_)
                               (let* ((_kw-count238010_
                                       (length (let ((__tmp244518
                                                      (lambda (_g238002238005_
                                                               _g238003238007_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g238002238005_
                                                                _g238003238007_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp244518
                                                         '()
                                                         _L237956_))))
                                      (_self-index238012_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count238010_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L237711_))
                                     (let* ((_g238015238029_
                                             (lambda (_g238016238026_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g238016238026_))))
                                            (_g238014238200_
                                             (lambda (_g238016238032_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g238016238032_))
                                                   (let ((_e238021238034_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g238016238032_))))
                                                     (let ((_hd238020238037_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e238021238034_)))
                                                           (_tl238019238039_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e238021238034_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl238019238039_))
                                                           (let ((_e238024238042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl238019238039_))))
                     (let ((_hd238023238045_
                            (let ()
                              (declare (not safe))
                              (##car _e238024238042_)))
                           (_tl238022238047_
                            (let ()
                              (declare (not safe))
                              (##cdr _e238024238042_))))
                       ((lambda (_L238050_ _L238051_)
                          (let ((_self238067_
                                 (list-ref _L238051_ _self-index238012_)))
                            (for-each
                             (lambda (_g238068238070_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g238068238070_
                                  _self238067_
                                  _method-calls235717_
                                  _slot-refs235718_
                                  _class-type-check235719_
                                  _struct-type-check235720_
                                  _struct-type-assert235721_)))
                             _L238050_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?235724_))
                                _stx235623_
                                (let* ((_specializer-id238079_
                                        (let* ((_id238073_
                                                (let ((__tmp244569
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L235698_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp244569
                                                   '"::specialize")))
                                               (_specializer-id238076_
                                                (let ((__tmp244570
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx235623_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id238073_
                                                   __tmp244570))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id238076_))
                                          _specializer-id238076_))
                                       (_lifted-specializer-id238086_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?235726_))
                                            (let* ((_id238081_
                                                    (let ((__tmp244571
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L235698_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp244571
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id238083_
                                                    (let ((__tmp244572
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx235623_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id238081_
                                                       __tmp244572))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id238083_))
                                              _lifted-specializer-id238083_)
                                            '#f))
                                       (_$t238088_
                                        (let ((__tmp244573 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp244573)))
                                       (_methods238090_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls235717_)))
                                       (_$methods238094_
                                        (map (lambda (_id238092_)
                                               (let ((__tmp244574
                                                      (gensym _id238092_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp244574)))
                                             _methods238090_))
                                       (_g244575_
                                        (for-each
                                         (lambda (_g238095238098_
                                                  _g238096238100_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls235717_
                                              _g238095238098_
                                              _g238096238100_)))
                                         _methods238090_
                                         _$methods238094_))
                                       (_methods-bind238111_
                                        (map (lambda (_g238103238106_
                                                      _g238104238108_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind235625_
                                                  _$t238088_
                                                  _g238103238106_
                                                  _g238104238108_)))
                                             _methods238090_
                                             _$methods238094_))
                                       (_slots238113_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs235718_)))
                                       (_$slots238117_
                                        (map (lambda (_id238115_)
                                               (let ((__tmp244576
                                                      (gensym _id238115_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp244576)))
                                             _slots238113_))
                                       (_g244577_
                                        (for-each
                                         (lambda (_g238118238121_
                                                  _g238119238123_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs235718_
                                              _g238118238121_
                                              _g238119238123_)))
                                         _slots238113_
                                         _$slots238117_))
                                       (_slots-bind238134_
                                        (map (lambda (_g238126238129_
                                                      _g238127238131_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind235626_
                                                  _$t238088_
                                                  _g238126238129_
                                                  _g238127238131_)))
                                             _slots238113_
                                             _$slots238117_))
                                       (_class-check238136_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check235719_)))
                                       (_$class-check238139_
                                        (map (lambda (_g244578_)
                                               (let ((__tmp244579
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp244579)))
                                             _class-check238136_))
                                       (_g244580_
                                        (for-each
                                         (lambda (_g238140238143_
                                                  _g238141238145_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check235719_
                                              _g238140238143_
                                              _g238141238145_)))
                                         _class-check238136_
                                         _$class-check238139_))
                                       (_class-check-bind238156_
                                        (map (lambda (_g238148238151_
                                                      _g238149238153_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind235627_
                                                  _$t238088_
                                                  _g238148238151_
                                                  _g238149238153_)))
                                             _class-check238136_
                                             _$class-check238139_))
                                       (_struct-check-all238158_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check235720_
                                           _struct-type-assert235721_)))
                                       (_struct-check238160_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all238158_)))
                                       (_$struct-check238163_
                                        (map (lambda (_g244581_)
                                               (let ((__tmp244582
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp244582)))
                                             _struct-check238160_))
                                       (_g244583_
                                        (for-each
                                         (lambda (_g238164238167_
                                                  _g238165238169_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all238158_
                                              _g238164238167_
                                              _g238165238169_)))
                                         _struct-check238160_
                                         _$struct-check238163_))
                                       (_struct-check-bind238180_
                                        (map (lambda (_g238172238175_
                                                      _g238173238177_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind235628_
                                                  _$t238088_
                                                  _g238172238175_
                                                  _g238173238177_)))
                                             _struct-check238160_
                                             _$struct-check238163_))
                                       (_make-specializer-impl238191_
                                        (lambda (_struct-type-check1238182_
                                                 _struct-type-check2238183_)
                                          (let* ((_specializer-body238189_
                                                  (map (lambda (_g238184238186_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g238184238186_
                                                            _self238067_
                                                            _$t238088_
                                                            _method-calls235717_
                                                            _slot-refs235718_
                                                            _class-type-check235719_
                                                            _struct-type-check1238182_
                                                            _struct-type-check2238183_)))
                                                       _L238050_))
                                                 (__tmp244584
                                                  (let ((__tmp244585
                                                         (let ((__tmp244587
                                                                (let ((__tmp244588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp244600
                                      (let ()
                                        (declare (not safe))
                                        (cons _L237713_ '())))
                                     (__tmp244589
                                      (let ((__tmp244590
                                             (let ((__tmp244591
                                                    (let ((__tmp244593
                                                           (let ((__tmp244594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244599
                                 (let ()
                                   (declare (not safe))
                                   (cons _L237712_ '())))
                                (__tmp244595
                                 (let ((__tmp244596
                                        (let ((__tmp244597
                                               (let ((__tmp244598
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L238051_
                                                              _specializer-body238189_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp244598))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp244597
                                           _L237711_))))
                                   (declare (not safe))
                                   (cons __tmp244596 '()))))
                            (declare (not safe))
                            (cons __tmp244599 __tmp244595))))
                     (declare (not safe))
                     (cons __tmp244594 '())))
                  (__tmp244592
                   (let () (declare (not safe)) (cons _L237710_ '()))))
              (declare (not safe))
              (cons __tmp244593 __tmp244592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp244591))))
                                        (declare (not safe))
                                        (cons __tmp244590 '()))))
                                 (declare (not safe))
                                 (cons __tmp244600 __tmp244589))))
                          (declare (not safe))
                          (cons __tmp244588 '())))
                       (__tmp244586
                        (let () (declare (not safe)) (cons _L237709_ '()))))
                   (declare (not safe))
                   (cons __tmp244587 __tmp244586))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp244585))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp244584
                                             _stx235623_))))
                                       (_specializer-impl238193_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl238191_
                                           _struct-check-all238158_
                                           _empty235722_)))
                                       (_unchecked-specializer-impl238195_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?235725_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl238191_
                                               _empty235722_
                                               _struct-check-all238158_))
                                            '#f))
                                       (_specializer-impl238197_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl235629_
                                           _$t238088_
                                           _methods-bind238111_
                                           _slots-bind238134_
                                           _class-check-bind238156_
                                           _struct-check-bind238180_
                                           _specializer-impl238193_
                                           _lifted-specializer-id238086_
                                           _unchecked-specializer-impl238195_))))
                                  (let ((__tmp244602
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L235698_)))
                                        (__tmp244601
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id238079_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp244602
                                     '" => "
                                     __tmp244601))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def235630_
                                     _L235698_
                                     _specializer-id238079_
                                     _specializer-impl238197_
                                     _lifted-specializer-id238086_
                                     _unchecked-specializer-impl238195_))))))
                        _tl238022238047_
                        _hd238023238045_)))
                   (let ()
                     (declare (not safe))
                     (_g238015238029_ _g238016238032_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g238015238029_
                                                      _g238016238032_))))))
                                       (declare (not safe))
                                       (_g238014238200_ _L237711_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L237711_))
                                         (let* ((_g238203238233_
                                                 (lambda (_g238204238230_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g238204238230_))))
                                                (_g238202238858_
                                                 (lambda (_g238204238236_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g238204238236_))
                                                       (let ((_e238210238238_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g238204238236_))))
                 (let ((_hd238209238241_
                        (let () (declare (not safe)) (##car _e238210238238_)))
                       (_tl238208238243_
                        (let () (declare (not safe)) (##cdr _e238210238238_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl238208238243_))
                       (let ((_e238213238246_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl238208238243_))))
                         (let ((_hd238212238249_
                                (let ()
                                  (declare (not safe))
                                  (##car _e238213238246_)))
                               (_tl238211238251_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e238213238246_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd238212238249_))
                               (let ((_e238216238254_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd238212238249_))))
                                 (let ((_hd238215238257_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e238216238254_)))
                                       (_tl238214238259_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e238216238254_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd238215238257_))
                                       (let ((_e238219238262_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd238215238257_))))
                                         (let ((_hd238218238265_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e238219238262_)))
                                               (_tl238217238267_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e238219238262_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd238218238265_))
                                               (let ((_e238222238270_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd238218238265_))))
                                                 (let ((_hd238221238273_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e238222238270_)))
                                                       (_tl238220238275_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e238222238270_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl238220238275_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl238217238267_))
                                                           (let ((_e238225238278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl238217238267_))))
                     (let ((_hd238224238281_
                            (let ()
                              (declare (not safe))
                              (##car _e238225238278_)))
                           (_tl238223238283_
                            (let ()
                              (declare (not safe))
                              (##cdr _e238225238278_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl238223238283_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl238214238259_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl238211238251_))
                                   (let ((_e238228238286_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl238211238251_))))
                                     (let ((_hd238227238289_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e238228238286_)))
                                           (_tl238226238291_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e238228238286_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl238226238291_))
                                           ((lambda (_L238294_
                                                     _L238295_
                                                     _L238296_)
                                              (let* ((_g238319238333_
                                                      (lambda (_g238320238330_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g238320238330_))))
                                                     (_g238318238374_
                                                      (lambda (_g238320238336_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g238320238336_))
                                                            (let ((_e238325238338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g238320238336_))))
                      (let ((_hd238324238341_
                             (let ()
                               (declare (not safe))
                               (##car _e238325238338_)))
                            (_tl238323238343_
                             (let ()
                               (declare (not safe))
                               (##cdr _e238325238338_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl238323238343_))
                            (let ((_e238328238346_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl238323238343_))))
                              (let ((_hd238327238349_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238328238346_)))
                                    (_tl238326238351_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238328238346_))))
                                ((lambda (_L238354_ _L238355_)
                                   (let ((_self238368_
                                          (list-ref
                                           _L238355_
                                           _self-index238012_)))
                                     (for-each
                                      (lambda (_g238369238371_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g238369238371_
                                           _self238368_
                                           _method-calls235717_
                                           _slot-refs235718_
                                           _class-type-check235719_
                                           _struct-type-check235720_
                                           _struct-type-assert235721_)))
                                      _L238354_)))
                                 _tl238326238351_
                                 _hd238327238349_)))
                            (let ()
                              (declare (not safe))
                              (_g238319238333_ _g238320238336_)))))
                    (let ()
                      (declare (not safe))
                      (_g238319238333_ _g238320238336_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g238318238374_ _L238295_))
                                              (let* ((_g238377238396_
                                                      (lambda (_g238378238393_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g238378238393_))))
                                                     (_g238376238501_
                                                      (lambda (_g238378238399_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g238378238399_))
                                                            (let ((_e238382238401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g238378238399_))))
                      (let ((_hd238381238404_
                             (let ()
                               (declare (not safe))
                               (##car _e238382238401_)))
                            (_tl238380238406_
                             (let ()
                               (declare (not safe))
                               (##cdr _e238382238401_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl238380238406_))
                            (let ((_g244519_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl238380238406_
                                      '0))))
                              (begin
                                (let ((_g244520_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g244519_)
                                             (##vector-length _g244519_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g244520_ 2)))
                                      (error "Context expects 2 values"
                                             _g244520_)))
                                (let ((_target238383238409_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244519_ 0)))
                                      (_tl238385238411_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244519_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl238385238411_))
                                      (letrec ((_loop238386238414_
                                                (lambda (_hd238384238417_
                                                         _clause238390238419_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd238384238417_))
                                                      (let ((_e238387238422_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd238384238417_))))
                (let ((_lp-hd238388238425_
                       (let () (declare (not safe)) (##car _e238387238422_)))
                      (_lp-tl238389238427_
                       (let () (declare (not safe)) (##cdr _e238387238422_))))
                  (let ((__tmp244522
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd238388238425_ _clause238390238419_))))
                    (declare (not safe))
                    (_loop238386238414_ _lp-tl238389238427_ __tmp244522))))
              (let ((_clause238391238430_ (reverse _clause238390238419_)))
                ((lambda (_L238433_)
                   (for-each
                    (lambda (_clause238446_)
                      (let* ((_g238448238459_
                              (lambda (_g238449238456_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g238449238456_))))
                             (_g238447238491_
                              (lambda (_g238449238462_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g238449238462_))
                                    (let ((_e238454238464_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g238449238462_))))
                                      (let ((_hd238453238467_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e238454238464_)))
                                            (_tl238452238469_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e238454238464_))))
                                        ((lambda (_L238472_ _L238473_)
                                           (let ((_self238485_
                                                  (list-ref
                                                   _L238473_
                                                   _self-index238012_)))
                                             (for-each
                                              (lambda (_g238486238488_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g238486238488_
                                                   _self238485_
                                                   _method-calls235717_
                                                   _slot-refs235718_
                                                   _class-type-check235719_
                                                   _struct-type-check235720_
                                                   _struct-type-assert235721_)))
                                              _L238472_)))
                                         _tl238452238469_
                                         _hd238453238467_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g238448238459_ _g238449238462_))))))
                        (declare (not safe))
                        (_g238447238491_ _clause238446_)))
                    (let ((__tmp244521
                           (lambda (_g238493238496_ _g238494238498_)
                             (let ()
                               (declare (not safe))
                               (cons _g238493238496_ _g238494238498_)))))
                      (declare (not safe))
                      (foldr1 __tmp244521 '() _L238433_))))
                 _clause238391238430_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop238386238414_
                                           _target238383238409_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g238377238396_ _g238378238399_))))))
                            (let ()
                              (declare (not safe))
                              (_g238377238396_ _g238378238399_)))))
                    (let ()
                      (declare (not safe))
                      (_g238377238396_ _g238378238399_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g238376238501_ _L238294_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?235724_))
                                                  _stx235623_
                                                  (let* ((_specializer-id238510_
                                                          (let* ((_id238504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244523
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L235698_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp244523 '"::specialize")))
                         (_specializer-id238507_
                          (let ((__tmp244524
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx235623_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id238504_ __tmp244524))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id238507_))
                    _specializer-id238507_))
                 (_lifted-specializer-id238517_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?235726_))
                      (let* ((_id238512_
                              (let ((__tmp244525
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L235698_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp244525
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id238514_
                              (let ((__tmp244526
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx235623_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id238512_
                                 __tmp244526))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id238514_))
                        _lifted-specializer-id238514_)
                      '#f))
                 (_$t238519_
                  (let ((__tmp244527 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp244527)))
                 (_methods238521_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls235717_)))
                 (_$methods238525_
                  (map (lambda (_id238523_)
                         (let ((__tmp244528 (gensym _id238523_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp244528)))
                       _methods238521_))
                 (_g244529_
                  (for-each
                   (lambda (_g238526238529_ _g238527238531_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls235717_
                        _g238526238529_
                        _g238527238531_)))
                   _methods238521_
                   _$methods238525_))
                 (_methods-bind238542_
                  (map (lambda (_g238534238537_ _g238535238539_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind235625_
                            _$t238519_
                            _g238534238537_
                            _g238535238539_)))
                       _methods238521_
                       _$methods238525_))
                 (_slots238544_
                  (let () (declare (not safe)) (hash-keys _slot-refs235718_)))
                 (_$slots238548_
                  (map (lambda (_id238546_)
                         (let ((__tmp244530 (gensym _id238546_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp244530)))
                       _slots238544_))
                 (_g244531_
                  (for-each
                   (lambda (_g238549238552_ _g238550238554_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs235718_
                        _g238549238552_
                        _g238550238554_)))
                   _slots238544_
                   _$slots238548_))
                 (_slots-bind238565_
                  (map (lambda (_g238557238560_ _g238558238562_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind235626_
                            _$t238519_
                            _g238557238560_
                            _g238558238562_)))
                       _slots238544_
                       _$slots238548_))
                 (_class-check238567_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check235719_)))
                 (_$class-check238570_
                  (map (lambda (_g244532_)
                         (let ((__tmp244533 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp244533)))
                       _class-check238567_))
                 (_g244534_
                  (for-each
                   (lambda (_g238571238574_ _g238572238576_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check235719_
                        _g238571238574_
                        _g238572238576_)))
                   _class-check238567_
                   _$class-check238570_))
                 (_class-check-bind238587_
                  (map (lambda (_g238579238582_ _g238580238584_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind235627_
                            _$t238519_
                            _g238579238582_
                            _g238580238584_)))
                       _class-check238567_
                       _$class-check238570_))
                 (_struct-check-all238589_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check235720_
                     _struct-type-assert235721_)))
                 (_struct-check238591_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all238589_)))
                 (_$struct-check238594_
                  (map (lambda (_g244535_)
                         (let ((__tmp244536 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp244536)))
                       _struct-check238591_))
                 (_g244537_
                  (for-each
                   (lambda (_g238595238598_ _g238596238600_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all238589_
                        _g238595238598_
                        _g238596238600_)))
                   _struct-check238591_
                   _$struct-check238594_))
                 (_struct-check-bind238611_
                  (map (lambda (_g238603238606_ _g238604238608_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind235628_
                            _$t238519_
                            _g238603238606_
                            _g238604238608_)))
                       _struct-check238591_
                       _$struct-check238594_))
                 (_make-specializer-lambda-expr238697_
                  (lambda (_struct-type-check1238613_
                           _struct-type-check2238614_)
                    (let* ((_g238616238630_
                            (lambda (_g238617238627_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g238617238627_))))
                           (_g238615238694_
                            (lambda (_g238617238633_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g238617238633_))
                                  (let ((_e238622238635_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g238617238633_))))
                                    (let ((_hd238621238638_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238622238635_)))
                                          (_tl238620238640_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238622238635_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl238620238640_))
                                          (let ((_e238625238643_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl238620238640_))))
                                            (let ((_hd238624238646_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e238625238643_)))
                                                  (_tl238623238648_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e238625238643_))))
                                              ((lambda (_L238651_ _L238652_)
                                                 (let* ((_self238685_
                                                         (list-ref
                                                          _L238652_
                                                          _self-index238012_))
                                                        (_body238691_
                                                         (map (lambda (_g238686238688_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g238686238688_
                           _self238685_
                           _$t238519_
                           _method-calls235717_
                           _slot-refs235718_
                           _class-type-check235719_
                           _struct-type-check1238613_
                           _struct-type-check2238614_)))
                      _L238651_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp244538
                                                          (let ((__tmp244539
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L238652_ _body238691_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp244539))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp244538
                                                      _L238295_))))
                                               _tl238623238648_
                                               _hd238624238646_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g238616238630_
                                             _g238617238633_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g238616238630_ _g238617238633_))))))
                      (declare (not safe))
                      (_g238615238694_ _L238295_))))
                 (_make-specializer-case-lambda-expr238836_
                  (lambda (_struct-type-check1238699_
                           _struct-type-check2238700_)
                    (let* ((_g238702238721_
                            (lambda (_g238703238718_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g238703238718_))))
                           (_g238701238833_
                            (lambda (_g238703238724_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g238703238724_))
                                  (let ((_e238707238726_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g238703238724_))))
                                    (let ((_hd238706238729_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238707238726_)))
                                          (_tl238705238731_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238707238726_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl238705238731_))
                                          (let ((_g244540_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl238705238731_
                                                    '0))))
                                            (begin
                                              (let ((_g244541_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g244540_)
                                                           (##vector-length
                                                            _g244540_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g244541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g244541_)))
                                              (let ((_target238708238734_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g244540_
                                                        0)))
                                                    (_tl238710238736_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g244540_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl238710238736_))
                                                    (letrec ((_loop238711238739_
                                                              (lambda (_hd238709238742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause238715238744_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd238709238742_))
                            (let ((_e238712238747_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd238709238742_))))
                              (let ((_lp-hd238713238750_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238712238747_)))
                                    (_lp-tl238714238752_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238712238747_))))
                                (let ((__tmp244544
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd238713238750_
                                               _clause238715238744_))))
                                  (declare (not safe))
                                  (_loop238711238739_
                                   _lp-tl238714238752_
                                   __tmp244544))))
                            (let ((_clause238716238755_
                                   (reverse _clause238715238744_)))
                              ((lambda (_L238758_)
                                 (let* ((_clauses238831_
                                         (map (lambda (_clause238773_)
                                                (let* ((_g238775238786_
                                                        (lambda (_g238776238783_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g238776238783_))))
                                                       (_g238774238821_
                                                        (lambda (_g238776238789_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g238776238789_))
                      (let ((_e238781238791_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g238776238789_))))
                        (let ((_hd238780238794_
                               (let ()
                                 (declare (not safe))
                                 (##car _e238781238791_)))
                              (_tl238779238796_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e238781238791_))))
                          ((lambda (_L238799_ _L238800_)
                             (let* ((_self238812_
                                     (list-ref _L238800_ _self-index238012_))
                                    (_body238818_
                                     (map (lambda (_g238813238815_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g238813238815_
                                               _self238812_
                                               _$t238519_
                                               _method-calls235717_
                                               _slot-refs235718_
                                               _class-type-check235719_
                                               _struct-type-check1238699_
                                               _struct-type-check2238700_)))
                                          _L238799_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L238800_ _body238818_))))
                           _tl238779238796_
                           _hd238780238794_)))
                      (let ()
                        (declare (not safe))
                        (_g238775238786_ _g238776238789_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g238774238821_
                                                   _clause238773_)))
                                              (let ((__tmp244542
                                                     (lambda (_g238823238826_
                                                              _g238824238828_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g238823238826_
                                                               _g238824238828_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp244542
                                                        '()
                                                        _L238758_))))
                                        (__tmp244543
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses238831_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp244543
                                    _L238294_)))
                               _clause238716238755_))))))
              (let ()
                (declare (not safe))
                (_loop238711238739_ _target238708238734_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g238702238721_
                                                       _g238703238724_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g238702238721_
                                             _g238703238724_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g238702238721_ _g238703238724_))))))
                      (declare (not safe))
                      (_g238701238833_ _L238294_))))
                 (_make-specializer-impl238841_
                  (lambda (_specializer-lambda-expr238838_
                           _specializer-case-lambda-expr238839_)
                    (let ((__tmp244545
                           (let ((__tmp244546
                                  (let ((__tmp244548
                                         (let ((__tmp244549
                                                (let ((__tmp244566
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L237713_ '())))
                                                      (__tmp244550
                                                       (let ((__tmp244551
                                                              (let ((__tmp244552
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp244554
                                    (let ((__tmp244555
                                           (let ((__tmp244565
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L237712_ '())))
                                                 (__tmp244556
                                                  (let ((__tmp244557
                                                         (let ((__tmp244558
                                                                (let ((__tmp244559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp244561
                                      (let ((__tmp244562
                                             (let ((__tmp244564
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L238296_ '())))
                                                   (__tmp244563
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr238838_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp244564
                                                     __tmp244563))))
                                        (declare (not safe))
                                        (cons __tmp244562 '())))
                                     (__tmp244560
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr238839_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp244561 __tmp244560))))
                          (declare (not safe))
                          (cons '%#let-values __tmp244559))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp244558 _stx235623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244557 '()))))
                                             (declare (not safe))
                                             (cons __tmp244565 __tmp244556))))
                                      (declare (not safe))
                                      (cons __tmp244555 '())))
                                   (__tmp244553
                                    (let ()
                                      (declare (not safe))
                                      (cons _L237710_ '()))))
                               (declare (not safe))
                               (cons __tmp244554 __tmp244553))))
                        (declare (not safe))
                        (cons '%#let-values __tmp244552))))
                 (declare (not safe))
                 (cons __tmp244551 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp244566
                                                        __tmp244550))))
                                           (declare (not safe))
                                           (cons __tmp244549 '())))
                                        (__tmp244547
                                         (let ()
                                           (declare (not safe))
                                           (cons _L237709_ '()))))
                                    (declare (not safe))
                                    (cons __tmp244548 __tmp244547))))
                             (declare (not safe))
                             (cons '%#let-values __tmp244546))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244545 _stx235623_))))
                 (_specializer-lambda-expr238843_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr238697_
                     _struct-check-all238589_
                     _empty235722_)))
                 (_specializer-case-lambda-expr238845_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr238836_
                     _struct-check-all238589_
                     _empty235722_)))
                 (_specializer-impl238847_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl238841_
                     _specializer-lambda-expr238843_
                     _specializer-case-lambda-expr238845_)))
                 (_unchecked-specializer-lambda-expr238849_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?235725_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr238697_
                         _empty235722_
                         _struct-check-all238589_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr238851_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?235725_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr238836_
                         _empty235722_
                         _struct-check-all238589_))
                      '#f))
                 (_unchecked-specializer-impl238853_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?235725_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl238841_
                         _unchecked-specializer-lambda-expr238849_
                         _unchecked-specializer-case-lambda-expr238851_))
                      '#f))
                 (_specializer-impl238855_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl235629_
                     _$t238519_
                     _methods-bind238542_
                     _slots-bind238565_
                     _class-check-bind238587_
                     _struct-check-bind238611_
                     _specializer-impl238847_
                     _lifted-specializer-id238517_
                     _unchecked-specializer-impl238853_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp244568
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L235698_)))
                                                          (__tmp244567
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id238510_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp244568
                                                       '" => "
                                                       __tmp244567))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def235630_
                                                       _L235698_
                                                       _specializer-id238510_
                                                       _specializer-impl238855_
                                                       _lifted-specializer-id238517_
                                                       _unchecked-specializer-impl238853_)))))
                                            _hd238227238289_
                                            _hd238224238281_
                                            _hd238221238273_)
                                           (let ()
                                             (declare (not safe))
                                             (_g238203238233_
                                              _g238204238236_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g238203238233_ _g238204238236_)))
                               (let ()
                                 (declare (not safe))
                                 (_g238203238233_ _g238204238236_)))
                           (let ()
                             (declare (not safe))
                             (_g238203238233_ _g238204238236_)))))
                   (let ()
                     (declare (not safe))
                     (_g238203238233_ _g238204238236_)))
               (let ()
                 (declare (not safe))
                 (_g238203238233_ _g238204238236_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g238203238233_
                                                  _g238204238236_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g238203238233_ _g238204238236_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g238203238233_ _g238204238236_)))))
                       (let ()
                         (declare (not safe))
                         (_g238203238233_ _g238204238236_)))))
               (let ()
                 (declare (not safe))
                 (_g238203238233_ _g238204238236_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g238202238858_ _L237711_))
                                         _stx235623_))))
                             _hd237808237931_
                             _kw-ref237806237952_
                             _hd237796237918_
                             _hd237787237894_
                             _hd237778237870_)
                            (let ()
                              (declare (not safe))
                              (_g237752237814_ _g237753237817_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop237801237936_
                                                   _target237798237923_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g237752237814_
                                                 _g237753237817_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237752237814_ _g237753237817_))))))
                            (let ()
                              (declare (not safe))
                              (_g237752237814_ _g237753237817_)))
                        (let ()
                          (declare (not safe))
                          (_g237752237814_ _g237753237817_)))
                    (let ()
                      (declare (not safe))
                      (_g237752237814_ _g237753237817_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g237752237814_
                                                       _g237753237817_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g237752237814_
                                                   _g237753237817_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g237752237814_
                                               _g237753237817_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g237752237814_ _g237753237817_)))))
                            (let ()
                              (declare (not safe))
                              (_g237752237814_ _g237753237817_)))
                        (let ()
                          (declare (not safe))
                          (_g237752237814_ _g237753237817_)))))
                (let ()
                  (declare (not safe))
                  (_g237752237814_ _g237753237817_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g237752237814_
                                                       _g237753237817_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g237752237814_
                                                   _g237753237817_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g237752237814_ _g237753237817_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g237752237814_ _g237753237817_)))
                            (let ()
                              (declare (not safe))
                              (_g237752237814_ _g237753237817_)))))
                    (let ()
                      (declare (not safe))
                      (_g237752237814_ _g237753237817_)))
                (let ()
                  (declare (not safe))
                  (_g237752237814_ _g237753237817_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g237752237814_
                                                       _g237753237817_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g237752237814_
                                               _g237753237817_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g237752237814_ _g237753237817_)))
                                (let ()
                                  (declare (not safe))
                                  (_g237752237814_ _g237753237817_)))
                            (let ()
                              (declare (not safe))
                              (_g237752237814_ _g237753237817_)))))
                    (let ()
                      (declare (not safe))
                      (_g237752237814_ _g237753237817_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g237752237814_
                                                       _g237753237817_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g237752237814_
                                               _g237753237817_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g237752237814_ _g237753237817_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g237752237814_ _g237753237817_)))))
                            (let ()
                              (declare (not safe))
                              (_g237752237814_ _g237753237817_))))))
                (declare (not safe))
                (_g237751238861_ _L237710_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd237586237704_
                                                    _hd237583237696_
                                                    _hd237580237688_
                                                    _hd237577237680_
                                                    _hd237559237632_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g237539237592_
                                                      _g237540237595_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g237539237592_
                                              _g237540237595_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g237539237592_ _g237540237595_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g237539237592_ _g237540237595_)))
                               (let ()
                                 (declare (not safe))
                                 (_g237539237592_ _g237540237595_)))))
                       (let ()
                         (declare (not safe))
                         (_g237539237592_ _g237540237595_)))
                   (let ()
                     (declare (not safe))
                     (_g237539237592_ _g237540237595_)))
               (let ()
                 (declare (not safe))
                 (_g237539237592_ _g237540237595_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g237539237592_
                                                  _g237540237595_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g237539237592_
                                              _g237540237595_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g237539237592_ _g237540237595_)))))
                           (let ()
                             (declare (not safe))
                             (_g237539237592_ _g237540237595_)))))
                   (let ()
                     (declare (not safe))
                     (_g237539237592_ _g237540237595_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g237539237592_
                                                      _g237540237595_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g237539237592_
                                                  _g237540237595_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g237539237592_
                                              _g237540237595_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g237539237592_ _g237540237595_)))))
                           (let ()
                             (declare (not safe))
                             (_g237539237592_ _g237540237595_)))
                       (let ()
                         (declare (not safe))
                         (_g237539237592_ _g237540237595_)))))
               (let ()
                 (declare (not safe))
                 (_g237539237592_ _g237540237595_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g237539237592_
                                                  _g237540237595_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g237539237592_ _g237540237595_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g237539237592_ _g237540237595_)))
                           (let ()
                             (declare (not safe))
                             (_g237539237592_ _g237540237595_)))
                       (let ()
                         (declare (not safe))
                         (_g237539237592_ _g237540237595_)))))
               (let ()
                 (declare (not safe))
                 (_g237539237592_ _g237540237595_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g237538238864_ _L235697_))
                                         _stx235623_))))))))
                  (___kont243297243298_ (lambda () _stx235623_)))
              (let ((___match243326243327_
                     (lambda (_e235639235665_
                              _hd235638235668_
                              _tl235637235670_
                              _e235642235673_
                              _hd235641235676_
                              _tl235640235678_
                              _e235645235681_
                              _hd235644235684_
                              _tl235643235686_
                              _e235648235689_
                              _hd235647235692_
                              _tl235646235694_)
                       (let ((_L235697_ _hd235647235692_)
                             (_L235698_ _hd235644235684_))
                         (if (let ((__tmp244685
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L235698_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp244685))
                             (___kont243295243296_ _L235697_ _L235698_)
                             (___kont243297243298_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx243293243294_))
                    (let ((_e235639235665_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx243293243294_))))
                      (let ((_tl235637235670_
                             (let ()
                               (declare (not safe))
                               (##cdr _e235639235665_)))
                            (_hd235638235668_
                             (let ()
                               (declare (not safe))
                               (##car _e235639235665_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl235637235670_))
                            (let ((_e235642235673_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl235637235670_))))
                              (let ((_tl235640235678_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e235642235673_)))
                                    (_hd235641235676_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e235642235673_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd235641235676_))
                                    (let ((_e235645235681_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd235641235676_))))
                                      (let ((_tl235643235686_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e235645235681_)))
                                            (_hd235644235684_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e235645235681_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl235643235686_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl235640235678_))
                                                (let ((_e235648235689_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl235640235678_))))
                                                  (let ((_tl235646235694_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e235648235689_)))
                                                        (_hd235647235692_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e235648235689_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl235646235694_))
                                                        (___match243326243327_
                                                         _e235639235665_
                                                         _hd235638235668_
                                                         _tl235637235670_
                                                         _e235642235673_
                                                         _hd235641235676_
                                                         _tl235640235678_
                                                         _e235645235681_
                                                         _hd235644235684_
                                                         _tl235643235686_
                                                         _e235648235689_
                                                         _hd235647235692_
                                                         _tl235646235694_)
                                                        (___kont243297243298_))))
                                                (___kont243297243298_))
                                            (___kont243297243298_))))
                                    (___kont243297243298_))))
                            (___kont243297243298_))))
                    (___kont243297243298_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx234599_
               _self234600_
               _methods234601_
               _slots234602_
               _class-check234603_
               _struct-check234604_
               _struct-assert234605_)
        (let* ((___stx243329243330_ _stx234599_)
               (_g234613234835_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243329243330_)))))
          (let ((___kont243331243332_
                 (lambda (_L235572_ _L235573_ _L235574_ _L235575_)
                   (let ((__tmp244686
                          (let () (declare (not safe)) (gx#stx-e _L235573_))))
                     (declare (not safe))
                     (table-set! _methods234601_ __tmp244686 '#t))
                   (for-each
                    (lambda (_g235608235610_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g235608235610_
                         _self234600_
                         _methods234601_
                         _slots234602_
                         _class-check234603_
                         _struct-check234604_
                         _struct-assert234605_)))
                    (let ((__tmp244687
                           (lambda (_g235612235615_ _g235613235617_)
                             (let ()
                               (declare (not safe))
                               (cons _g235612235615_ _g235613235617_)))))
                      (declare (not safe))
                      (foldr1 __tmp244687 '() _L235572_)))))
                (___kont243335243336_
                 (lambda (_L235407_ _L235408_ _L235409_ _L235410_ _L235411_)
                   (let ((__tmp244688
                          (let () (declare (not safe)) (gx#stx-e _L235408_))))
                     (declare (not safe))
                     (table-set! _methods234601_ __tmp244688 '#t))
                   (for-each
                    (lambda (_g235451235453_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g235451235453_
                         _self234600_
                         _methods234601_
                         _slots234602_
                         _class-check234603_
                         _struct-check234604_
                         _struct-assert234605_)))
                    (let ((__tmp244689
                           (lambda (_g235455235458_ _g235456235460_)
                             (let ()
                               (declare (not safe))
                               (cons _g235455235458_ _g235456235460_)))))
                      (declare (not safe))
                      (foldr1 __tmp244689 '() _L235407_)))))
                (___kont243339243340_
                 (lambda (_L235240_ _L235241_ _L235242_)
                   (let ((__tmp244690
                          (let () (declare (not safe)) (gx#stx-e _L235240_))))
                     (declare (not safe))
                     (table-set! _slots234602_ __tmp244690 '#t))))
                (___kont243341243342_
                 (lambda (_L235117_ _L235118_ _L235119_ _L235120_)
                   (let ((__tmp244691
                          (let () (declare (not safe)) (gx#stx-e _L235118_))))
                     (declare (not safe))
                     (table-set! _slots234602_ __tmp244691 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L235117_
                      _self234600_
                      _methods234601_
                      _slots234602_
                      _class-check234603_
                      _struct-check234604_
                      _struct-assert234605_))))
                (___kont243343243344_
                 (lambda (_L235001_ _L235002_)
                   (let ((__tmp244692
                          (##structure-ref
                           (let ((__tmp244693
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L235002_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp244693))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots234602_ __tmp244692 '#t))))
                (___kont243345243346_
                 (lambda (_L234911_ _L234912_ _L234913_)
                   (let ((__tmp244694
                          (##structure-ref
                           (let ((__tmp244695
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L234913_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp244695))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots234602_ __tmp244694 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L234911_
                      _self234600_
                      _methods234601_
                      _slots234602_
                      _class-check234603_
                      _struct-check234604_
                      _struct-assert234605_))))
                (___kont243347243348_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx234599_
                      _self234600_
                      _methods234601_
                      _slots234602_
                      _class-check234603_
                      _struct-check234604_
                      _struct-assert234605_)))))
            (let* ((___match243828243829_
                    (lambda (_e234809234847_
                             _hd234808234850_
                             _tl234807234852_
                             _e234812234855_
                             _hd234811234858_
                             _tl234810234860_
                             _e234815234863_
                             _hd234814234866_
                             _tl234813234868_
                             _e234818234871_
                             _hd234817234874_
                             _tl234816234876_
                             _e234821234879_
                             _hd234820234882_
                             _tl234819234884_
                             _e234824234887_
                             _hd234823234890_
                             _tl234822234892_
                             _e234827234895_
                             _hd234826234898_
                             _tl234825234900_
                             _e234830234903_
                             _hd234829234906_
                             _tl234828234908_)
                      (let ((_L234911_ _hd234829234906_)
                            (_L234912_ _hd234826234898_)
                            (_L234913_ _hd234817234874_))
                        (if (and (let ((__tmp244696
                                        (let ((__tmp244697
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L234913_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp244697))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp244696
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L234912_
                                    _self234600_)))
                            (___kont243345243346_
                             _L234911_
                             _L234912_
                             _L234913_)
                            (___kont243347243348_)))))
                   (___match243826243827_
                    (lambda (_e234809234847_
                             _hd234808234850_
                             _tl234807234852_
                             _e234812234855_
                             _hd234811234858_
                             _tl234810234860_
                             _e234815234863_
                             _hd234814234866_
                             _tl234813234868_
                             _e234818234871_
                             _hd234817234874_
                             _tl234816234876_
                             _e234821234879_
                             _hd234820234882_
                             _tl234819234884_
                             _e234824234887_
                             _hd234823234890_
                             _tl234822234892_
                             _e234827234895_
                             _hd234826234898_
                             _tl234825234900_
                             _e234830234903_
                             _hd234829234906_
                             _tl234828234908_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl234828234908_))
                          (___match243828243829_
                           _e234809234847_
                           _hd234808234850_
                           _tl234807234852_
                           _e234812234855_
                           _hd234811234858_
                           _tl234810234860_
                           _e234815234863_
                           _hd234814234866_
                           _tl234813234868_
                           _e234818234871_
                           _hd234817234874_
                           _tl234816234876_
                           _e234821234879_
                           _hd234820234882_
                           _tl234819234884_
                           _e234824234887_
                           _hd234823234890_
                           _tl234822234892_
                           _e234827234895_
                           _hd234826234898_
                           _tl234825234900_
                           _e234830234903_
                           _hd234829234906_
                           _tl234828234908_)
                          (___kont243347243348_))))
                   (___match243820243821_
                    (lambda (_e234809234847_
                             _hd234808234850_
                             _tl234807234852_
                             _e234812234855_
                             _hd234811234858_
                             _tl234810234860_
                             _e234815234863_
                             _hd234814234866_
                             _tl234813234868_
                             _e234818234871_
                             _hd234817234874_
                             _tl234816234876_
                             _e234821234879_
                             _hd234820234882_
                             _tl234819234884_
                             _e234824234887_
                             _hd234823234890_
                             _tl234822234892_
                             _e234827234895_
                             _hd234826234898_
                             _tl234825234900_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234819234884_))
                          (let ((_e234830234903_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234819234884_))))
                            (let ((_tl234828234908_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234830234903_)))
                                  (_hd234829234906_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234830234903_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234828234908_))
                                  (___match243828243829_
                                   _e234809234847_
                                   _hd234808234850_
                                   _tl234807234852_
                                   _e234812234855_
                                   _hd234811234858_
                                   _tl234810234860_
                                   _e234815234863_
                                   _hd234814234866_
                                   _tl234813234868_
                                   _e234818234871_
                                   _hd234817234874_
                                   _tl234816234876_
                                   _e234821234879_
                                   _hd234820234882_
                                   _tl234819234884_
                                   _e234824234887_
                                   _hd234823234890_
                                   _tl234822234892_
                                   _e234827234895_
                                   _hd234826234898_
                                   _tl234825234900_
                                   _e234830234903_
                                   _hd234829234906_
                                   _tl234828234908_)
                                  (___kont243347243348_))))
                          (___kont243347243348_))))
                   (___match243766243767_
                    (lambda (_e234785234945_
                             _hd234784234948_
                             _tl234783234950_
                             _e234788234953_
                             _hd234787234956_
                             _tl234786234958_
                             _e234791234961_
                             _hd234790234964_
                             _tl234789234966_
                             _e234794234969_
                             _hd234793234972_
                             _tl234792234974_
                             _e234797234977_
                             _hd234796234980_
                             _tl234795234982_
                             _e234800234985_
                             _hd234799234988_
                             _tl234798234990_
                             _e234803234993_
                             _hd234802234996_
                             _tl234801234998_)
                      (let ((_L235001_ _hd234802234996_)
                            (_L235002_ _hd234793234972_))
                        (if (and (let ((__tmp244698
                                        (let ((__tmp244699
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L235002_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp244699))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp244698
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L235001_
                                    _self234600_)))
                            (___kont243343243344_ _L235001_ _L235002_)
                            (___kont243347243348_)))))
                   (___match243764243765_
                    (lambda (_e234785234945_
                             _hd234784234948_
                             _tl234783234950_
                             _e234788234953_
                             _hd234787234956_
                             _tl234786234958_
                             _e234791234961_
                             _hd234790234964_
                             _tl234789234966_
                             _e234794234969_
                             _hd234793234972_
                             _tl234792234974_
                             _e234797234977_
                             _hd234796234980_
                             _tl234795234982_
                             _e234800234985_
                             _hd234799234988_
                             _tl234798234990_
                             _e234803234993_
                             _hd234802234996_
                             _tl234801234998_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl234795234982_))
                          (___match243766243767_
                           _e234785234945_
                           _hd234784234948_
                           _tl234783234950_
                           _e234788234953_
                           _hd234787234956_
                           _tl234786234958_
                           _e234791234961_
                           _hd234790234964_
                           _tl234789234966_
                           _e234794234969_
                           _hd234793234972_
                           _tl234792234974_
                           _e234797234977_
                           _hd234796234980_
                           _tl234795234982_
                           _e234800234985_
                           _hd234799234988_
                           _tl234798234990_
                           _e234803234993_
                           _hd234802234996_
                           _tl234801234998_)
                          (___match243820243821_
                           _e234785234945_
                           _hd234784234948_
                           _tl234783234950_
                           _e234788234953_
                           _hd234787234956_
                           _tl234786234958_
                           _e234791234961_
                           _hd234790234964_
                           _tl234789234966_
                           _e234794234969_
                           _hd234793234972_
                           _tl234792234974_
                           _e234797234977_
                           _hd234796234980_
                           _tl234795234982_
                           _e234800234985_
                           _hd234799234988_
                           _tl234798234990_
                           _e234803234993_
                           _hd234802234996_
                           _tl234801234998_))))
                   (___match243710243711_
                    (lambda (_e234750235029_
                             _hd234749235032_
                             _tl234748235034_
                             _e234753235037_
                             _hd234752235040_
                             _tl234751235042_
                             _e234756235045_
                             _hd234755235048_
                             _tl234754235050_
                             _e234759235053_
                             _hd234758235056_
                             _tl234757235058_
                             _e234762235061_
                             _hd234761235064_
                             _tl234760235066_
                             _e234765235069_
                             _hd234764235072_
                             _tl234763235074_
                             _e234768235077_
                             _hd234767235080_
                             _tl234766235082_
                             _e234771235085_
                             _hd234770235088_
                             _tl234769235090_
                             _e234774235093_
                             _hd234773235096_
                             _tl234772235098_
                             _e234777235101_
                             _hd234776235104_
                             _tl234775235106_
                             _e234780235109_
                             _hd234779235112_
                             _tl234778235114_)
                      (let ((_L235117_ _hd234779235112_)
                            (_L235118_ _hd234776235104_)
                            (_L235119_ _hd234767235080_)
                            (_L235120_ _hd234758235056_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L235120_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L235120_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L235119_
                                    _self234600_)))
                            (___kont243341243342_
                             _L235117_
                             _L235118_
                             _L235119_
                             _L235120_)
                            (___kont243347243348_)))))
                   (___match243702243703_
                    (lambda (_e234750235029_
                             _hd234749235032_
                             _tl234748235034_
                             _e234753235037_
                             _hd234752235040_
                             _tl234751235042_
                             _e234756235045_
                             _hd234755235048_
                             _tl234754235050_
                             _e234759235053_
                             _hd234758235056_
                             _tl234757235058_
                             _e234762235061_
                             _hd234761235064_
                             _tl234760235066_
                             _e234765235069_
                             _hd234764235072_
                             _tl234763235074_
                             _e234768235077_
                             _hd234767235080_
                             _tl234766235082_
                             _e234771235085_
                             _hd234770235088_
                             _tl234769235090_
                             _e234774235093_
                             _hd234773235096_
                             _tl234772235098_
                             _e234777235101_
                             _hd234776235104_
                             _tl234775235106_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234769235090_))
                          (let ((_e234780235109_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234769235090_))))
                            (let ((_tl234778235114_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234780235109_)))
                                  (_hd234779235112_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234780235109_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234778235114_))
                                  (___match243710243711_
                                   _e234750235029_
                                   _hd234749235032_
                                   _tl234748235034_
                                   _e234753235037_
                                   _hd234752235040_
                                   _tl234751235042_
                                   _e234756235045_
                                   _hd234755235048_
                                   _tl234754235050_
                                   _e234759235053_
                                   _hd234758235056_
                                   _tl234757235058_
                                   _e234762235061_
                                   _hd234761235064_
                                   _tl234760235066_
                                   _e234765235069_
                                   _hd234764235072_
                                   _tl234763235074_
                                   _e234768235077_
                                   _hd234767235080_
                                   _tl234766235082_
                                   _e234771235085_
                                   _hd234770235088_
                                   _tl234769235090_
                                   _e234774235093_
                                   _hd234773235096_
                                   _tl234772235098_
                                   _e234777235101_
                                   _hd234776235104_
                                   _tl234775235106_
                                   _e234780235109_
                                   _hd234779235112_
                                   _tl234778235114_)
                                  (___kont243347243348_))))
                          (___match243826243827_
                           _e234750235029_
                           _hd234749235032_
                           _tl234748235034_
                           _e234753235037_
                           _hd234752235040_
                           _tl234751235042_
                           _e234756235045_
                           _hd234755235048_
                           _tl234754235050_
                           _e234759235053_
                           _hd234758235056_
                           _tl234757235058_
                           _e234762235061_
                           _hd234761235064_
                           _tl234760235066_
                           _e234765235069_
                           _hd234764235072_
                           _tl234763235074_
                           _e234768235077_
                           _hd234767235080_
                           _tl234766235082_
                           _e234771235085_
                           _hd234770235088_
                           _tl234769235090_))))
                   (___match243624243625_
                    (lambda (_e234716235160_
                             _hd234715235163_
                             _tl234714235165_
                             _e234719235168_
                             _hd234718235171_
                             _tl234717235173_
                             _e234722235176_
                             _hd234721235179_
                             _tl234720235181_
                             _e234725235184_
                             _hd234724235187_
                             _tl234723235189_
                             _e234728235192_
                             _hd234727235195_
                             _tl234726235197_
                             _e234731235200_
                             _hd234730235203_
                             _tl234729235205_
                             _e234734235208_
                             _hd234733235211_
                             _tl234732235213_
                             _e234737235216_
                             _hd234736235219_
                             _tl234735235221_
                             _e234740235224_
                             _hd234739235227_
                             _tl234738235229_
                             _e234743235232_
                             _hd234742235235_
                             _tl234741235237_)
                      (let ((_L235240_ _hd234742235235_)
                            (_L235241_ _hd234733235211_)
                            (_L235242_ _hd234724235187_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L235242_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L235242_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L235241_
                                    _self234600_)))
                            (___kont243339243340_
                             _L235240_
                             _L235241_
                             _L235242_)
                            (___match243828243829_
                             _e234716235160_
                             _hd234715235163_
                             _tl234714235165_
                             _e234719235168_
                             _hd234718235171_
                             _tl234717235173_
                             _e234722235176_
                             _hd234721235179_
                             _tl234720235181_
                             _e234725235184_
                             _hd234724235187_
                             _tl234723235189_
                             _e234728235192_
                             _hd234727235195_
                             _tl234726235197_
                             _e234731235200_
                             _hd234730235203_
                             _tl234729235205_
                             _e234734235208_
                             _hd234733235211_
                             _tl234732235213_
                             _e234737235216_
                             _hd234736235219_
                             _tl234735235221_)))))
                   (___match243622243623_
                    (lambda (_e234716235160_
                             _hd234715235163_
                             _tl234714235165_
                             _e234719235168_
                             _hd234718235171_
                             _tl234717235173_
                             _e234722235176_
                             _hd234721235179_
                             _tl234720235181_
                             _e234725235184_
                             _hd234724235187_
                             _tl234723235189_
                             _e234728235192_
                             _hd234727235195_
                             _tl234726235197_
                             _e234731235200_
                             _hd234730235203_
                             _tl234729235205_
                             _e234734235208_
                             _hd234733235211_
                             _tl234732235213_
                             _e234737235216_
                             _hd234736235219_
                             _tl234735235221_
                             _e234740235224_
                             _hd234739235227_
                             _tl234738235229_
                             _e234743235232_
                             _hd234742235235_
                             _tl234741235237_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl234735235221_))
                          (___match243624243625_
                           _e234716235160_
                           _hd234715235163_
                           _tl234714235165_
                           _e234719235168_
                           _hd234718235171_
                           _tl234717235173_
                           _e234722235176_
                           _hd234721235179_
                           _tl234720235181_
                           _e234725235184_
                           _hd234724235187_
                           _tl234723235189_
                           _e234728235192_
                           _hd234727235195_
                           _tl234726235197_
                           _e234731235200_
                           _hd234730235203_
                           _tl234729235205_
                           _e234734235208_
                           _hd234733235211_
                           _tl234732235213_
                           _e234737235216_
                           _hd234736235219_
                           _tl234735235221_
                           _e234740235224_
                           _hd234739235227_
                           _tl234738235229_
                           _e234743235232_
                           _hd234742235235_
                           _tl234741235237_)
                          (___match243702243703_
                           _e234716235160_
                           _hd234715235163_
                           _tl234714235165_
                           _e234719235168_
                           _hd234718235171_
                           _tl234717235173_
                           _e234722235176_
                           _hd234721235179_
                           _tl234720235181_
                           _e234725235184_
                           _hd234724235187_
                           _tl234723235189_
                           _e234728235192_
                           _hd234727235195_
                           _tl234726235197_
                           _e234731235200_
                           _hd234730235203_
                           _tl234729235205_
                           _e234734235208_
                           _hd234733235211_
                           _tl234732235213_
                           _e234737235216_
                           _hd234736235219_
                           _tl234735235221_
                           _e234740235224_
                           _hd234739235227_
                           _tl234738235229_
                           _e234743235232_
                           _hd234742235235_
                           _tl234741235237_))))
                   (___match243612243613_
                    (lambda (_e234716235160_
                             _hd234715235163_
                             _tl234714235165_
                             _e234719235168_
                             _hd234718235171_
                             _tl234717235173_
                             _e234722235176_
                             _hd234721235179_
                             _tl234720235181_
                             _e234725235184_
                             _hd234724235187_
                             _tl234723235189_
                             _e234728235192_
                             _hd234727235195_
                             _tl234726235197_
                             _e234731235200_
                             _hd234730235203_
                             _tl234729235205_
                             _e234734235208_
                             _hd234733235211_
                             _tl234732235213_
                             _e234737235216_
                             _hd234736235219_
                             _tl234735235221_
                             _e234740235224_
                             _hd234739235227_
                             _tl234738235229_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd234739235227_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234738235229_))
                              (let ((_e234743235232_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234738235229_))))
                                (let ((_tl234741235237_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234743235232_)))
                                      (_hd234742235235_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234743235232_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234741235237_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234735235221_))
                                          (___match243624243625_
                                           _e234716235160_
                                           _hd234715235163_
                                           _tl234714235165_
                                           _e234719235168_
                                           _hd234718235171_
                                           _tl234717235173_
                                           _e234722235176_
                                           _hd234721235179_
                                           _tl234720235181_
                                           _e234725235184_
                                           _hd234724235187_
                                           _tl234723235189_
                                           _e234728235192_
                                           _hd234727235195_
                                           _tl234726235197_
                                           _e234731235200_
                                           _hd234730235203_
                                           _tl234729235205_
                                           _e234734235208_
                                           _hd234733235211_
                                           _tl234732235213_
                                           _e234737235216_
                                           _hd234736235219_
                                           _tl234735235221_
                                           _e234740235224_
                                           _hd234739235227_
                                           _tl234738235229_
                                           _e234743235232_
                                           _hd234742235235_
                                           _tl234741235237_)
                                          (___match243702243703_
                                           _e234716235160_
                                           _hd234715235163_
                                           _tl234714235165_
                                           _e234719235168_
                                           _hd234718235171_
                                           _tl234717235173_
                                           _e234722235176_
                                           _hd234721235179_
                                           _tl234720235181_
                                           _e234725235184_
                                           _hd234724235187_
                                           _tl234723235189_
                                           _e234728235192_
                                           _hd234727235195_
                                           _tl234726235197_
                                           _e234731235200_
                                           _hd234730235203_
                                           _tl234729235205_
                                           _e234734235208_
                                           _hd234733235211_
                                           _tl234732235213_
                                           _e234737235216_
                                           _hd234736235219_
                                           _tl234735235221_
                                           _e234740235224_
                                           _hd234739235227_
                                           _tl234738235229_
                                           _e234743235232_
                                           _hd234742235235_
                                           _tl234741235237_))
                                      (___match243826243827_
                                       _e234716235160_
                                       _hd234715235163_
                                       _tl234714235165_
                                       _e234719235168_
                                       _hd234718235171_
                                       _tl234717235173_
                                       _e234722235176_
                                       _hd234721235179_
                                       _tl234720235181_
                                       _e234725235184_
                                       _hd234724235187_
                                       _tl234723235189_
                                       _e234728235192_
                                       _hd234727235195_
                                       _tl234726235197_
                                       _e234731235200_
                                       _hd234730235203_
                                       _tl234729235205_
                                       _e234734235208_
                                       _hd234733235211_
                                       _tl234732235213_
                                       _e234737235216_
                                       _hd234736235219_
                                       _tl234735235221_))))
                              (___match243826243827_
                               _e234716235160_
                               _hd234715235163_
                               _tl234714235165_
                               _e234719235168_
                               _hd234718235171_
                               _tl234717235173_
                               _e234722235176_
                               _hd234721235179_
                               _tl234720235181_
                               _e234725235184_
                               _hd234724235187_
                               _tl234723235189_
                               _e234728235192_
                               _hd234727235195_
                               _tl234726235197_
                               _e234731235200_
                               _hd234730235203_
                               _tl234729235205_
                               _e234734235208_
                               _hd234733235211_
                               _tl234732235213_
                               _e234737235216_
                               _hd234736235219_
                               _tl234735235221_))
                          (___match243826243827_
                           _e234716235160_
                           _hd234715235163_
                           _tl234714235165_
                           _e234719235168_
                           _hd234718235171_
                           _tl234717235173_
                           _e234722235176_
                           _hd234721235179_
                           _tl234720235181_
                           _e234725235184_
                           _hd234724235187_
                           _tl234723235189_
                           _e234728235192_
                           _hd234727235195_
                           _tl234726235197_
                           _e234731235200_
                           _hd234730235203_
                           _tl234729235205_
                           _e234734235208_
                           _hd234733235211_
                           _tl234732235213_
                           _e234737235216_
                           _hd234736235219_
                           _tl234735235221_))))
                   (___match243544243545_
                    (lambda (_e234665235279_
                             _hd234664235282_
                             _tl234663235284_
                             _e234668235287_
                             _hd234667235290_
                             _tl234666235292_
                             _e234671235295_
                             _hd234670235298_
                             _tl234669235300_
                             _e234674235303_
                             _hd234673235306_
                             _tl234672235308_
                             _e234677235311_
                             _hd234676235314_
                             _tl234675235316_
                             _e234680235319_
                             _hd234679235322_
                             _tl234678235324_
                             _e234683235327_
                             _hd234682235330_
                             _tl234681235332_
                             _e234686235335_
                             _hd234685235338_
                             _tl234684235340_
                             _e234689235343_
                             _hd234688235346_
                             _tl234687235348_
                             _e234692235351_
                             _hd234691235354_
                             _tl234690235356_
                             _e234695235359_
                             _hd234694235362_
                             _tl234693235364_
                             _e234698235367_
                             _hd234697235370_
                             _tl234696235372_
                             _e234701235375_
                             _hd234700235378_
                             _tl234699235380_
                             ___splice243337243338_
                             _target234702235383_
                             _tl234704235385_)
                      (letrec ((_loop234705235388_
                                (lambda (_hd234703235391_ _args234709235393_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234703235391_))
                                      (let ((_e234706235396_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234703235391_))))
                                        (let ((_lp-tl234708235401_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234706235396_)))
                                              (_lp-hd234707235399_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234706235396_))))
                                          (let ((__tmp244700
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234707235399_
                                                         _args234709235393_))))
                                            (declare (not safe))
                                            (_loop234705235388_
                                             _lp-tl234708235401_
                                             __tmp244700))))
                                      (let ((_args234710235404_
                                             (reverse _args234709235393_)))
                                        (let ((_L235407_ _args234710235404_)
                                              (_L235408_ _hd234700235378_)
                                              (_L235409_ _hd234691235354_)
                                              (_L235410_ _hd234682235330_)
                                              (_L235411_ _hd234673235306_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L235411_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L235410_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L235409_
                                                      _self234600_)))
                                              (___kont243335243336_
                                               _L235407_
                                               _L235408_
                                               _L235409_
                                               _L235410_
                                               _L235411_)
                                              (___kont243347243348_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop234705235388_ _target234702235383_ '())))))
                   (___match243502243503_
                    (lambda (_e234665235279_
                             _hd234664235282_
                             _tl234663235284_
                             _e234668235287_
                             _hd234667235290_
                             _tl234666235292_
                             _e234671235295_
                             _hd234670235298_
                             _tl234669235300_
                             _e234674235303_
                             _hd234673235306_
                             _tl234672235308_
                             _e234677235311_
                             _hd234676235314_
                             _tl234675235316_
                             _e234680235319_
                             _hd234679235322_
                             _tl234678235324_
                             _e234683235327_
                             _hd234682235330_
                             _tl234681235332_
                             _e234686235335_
                             _hd234685235338_
                             _tl234684235340_
                             _e234689235343_
                             _hd234688235346_
                             _tl234687235348_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd234688235346_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234687235348_))
                              (let ((_e234692235351_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234687235348_))))
                                (let ((_tl234690235356_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234692235351_)))
                                      (_hd234691235354_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234692235351_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234690235356_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234684235340_))
                                          (let ((_e234695235359_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234684235340_))))
                                            (let ((_tl234693235364_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234695235359_)))
                                                  (_hd234694235362_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234695235359_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd234694235362_))
                                                  (let ((_e234698235367_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd234694235362_))))
                                                    (let ((_tl234696235372_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234698235367_)))
                                                          (_hd234697235370_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234698235367_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd234697235370_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd234697235370_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234696235372_))
                          (let ((_e234701235375_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234696235372_))))
                            (let ((_tl234699235380_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234701235375_)))
                                  (_hd234700235378_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234701235375_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234699235380_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl234693235364_))
                                      (let ((___splice243337243338_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl234693235364_
                                                '0))))
                                        (let ((_tl234704235385_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243337243338_
                                                  '1)))
                                              (_target234702235383_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243337243338_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234704235385_))
                                              (___match243544243545_
                                               _e234665235279_
                                               _hd234664235282_
                                               _tl234663235284_
                                               _e234668235287_
                                               _hd234667235290_
                                               _tl234666235292_
                                               _e234671235295_
                                               _hd234670235298_
                                               _tl234669235300_
                                               _e234674235303_
                                               _hd234673235306_
                                               _tl234672235308_
                                               _e234677235311_
                                               _hd234676235314_
                                               _tl234675235316_
                                               _e234680235319_
                                               _hd234679235322_
                                               _tl234678235324_
                                               _e234683235327_
                                               _hd234682235330_
                                               _tl234681235332_
                                               _e234686235335_
                                               _hd234685235338_
                                               _tl234684235340_
                                               _e234689235343_
                                               _hd234688235346_
                                               _tl234687235348_
                                               _e234692235351_
                                               _hd234691235354_
                                               _tl234690235356_
                                               _e234695235359_
                                               _hd234694235362_
                                               _tl234693235364_
                                               _e234698235367_
                                               _hd234697235370_
                                               _tl234696235372_
                                               _e234701235375_
                                               _hd234700235378_
                                               _tl234699235380_
                                               ___splice243337243338_
                                               _target234702235383_
                                               _tl234704235385_)
                                              (___kont243347243348_))))
                                      (___kont243347243348_))
                                  (___kont243347243348_))))
                          (___kont243347243348_))
                      (___kont243347243348_))
                  (___kont243347243348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243347243348_))))
                                          (___match243826243827_
                                           _e234665235279_
                                           _hd234664235282_
                                           _tl234663235284_
                                           _e234668235287_
                                           _hd234667235290_
                                           _tl234666235292_
                                           _e234671235295_
                                           _hd234670235298_
                                           _tl234669235300_
                                           _e234674235303_
                                           _hd234673235306_
                                           _tl234672235308_
                                           _e234677235311_
                                           _hd234676235314_
                                           _tl234675235316_
                                           _e234680235319_
                                           _hd234679235322_
                                           _tl234678235324_
                                           _e234683235327_
                                           _hd234682235330_
                                           _tl234681235332_
                                           _e234686235335_
                                           _hd234685235338_
                                           _tl234684235340_))
                                      (___match243826243827_
                                       _e234665235279_
                                       _hd234664235282_
                                       _tl234663235284_
                                       _e234668235287_
                                       _hd234667235290_
                                       _tl234666235292_
                                       _e234671235295_
                                       _hd234670235298_
                                       _tl234669235300_
                                       _e234674235303_
                                       _hd234673235306_
                                       _tl234672235308_
                                       _e234677235311_
                                       _hd234676235314_
                                       _tl234675235316_
                                       _e234680235319_
                                       _hd234679235322_
                                       _tl234678235324_
                                       _e234683235327_
                                       _hd234682235330_
                                       _tl234681235332_
                                       _e234686235335_
                                       _hd234685235338_
                                       _tl234684235340_))))
                              (___match243826243827_
                               _e234665235279_
                               _hd234664235282_
                               _tl234663235284_
                               _e234668235287_
                               _hd234667235290_
                               _tl234666235292_
                               _e234671235295_
                               _hd234670235298_
                               _tl234669235300_
                               _e234674235303_
                               _hd234673235306_
                               _tl234672235308_
                               _e234677235311_
                               _hd234676235314_
                               _tl234675235316_
                               _e234680235319_
                               _hd234679235322_
                               _tl234678235324_
                               _e234683235327_
                               _hd234682235330_
                               _tl234681235332_
                               _e234686235335_
                               _hd234685235338_
                               _tl234684235340_))
                          (___match243612243613_
                           _e234665235279_
                           _hd234664235282_
                           _tl234663235284_
                           _e234668235287_
                           _hd234667235290_
                           _tl234666235292_
                           _e234671235295_
                           _hd234670235298_
                           _tl234669235300_
                           _e234674235303_
                           _hd234673235306_
                           _tl234672235308_
                           _e234677235311_
                           _hd234676235314_
                           _tl234675235316_
                           _e234680235319_
                           _hd234679235322_
                           _tl234678235324_
                           _e234683235327_
                           _hd234682235330_
                           _tl234681235332_
                           _e234686235335_
                           _hd234685235338_
                           _tl234684235340_
                           _e234689235343_
                           _hd234688235346_
                           _tl234687235348_))))
                   (___match243434243435_
                    (lambda (_e234621235468_
                             _hd234620235471_
                             _tl234619235473_
                             _e234624235476_
                             _hd234623235479_
                             _tl234622235481_
                             _e234627235484_
                             _hd234626235487_
                             _tl234625235489_
                             _e234630235492_
                             _hd234629235495_
                             _tl234628235497_
                             _e234633235500_
                             _hd234632235503_
                             _tl234631235505_
                             _e234636235508_
                             _hd234635235511_
                             _tl234634235513_
                             _e234639235516_
                             _hd234638235519_
                             _tl234637235521_
                             _e234642235524_
                             _hd234641235527_
                             _tl234640235529_
                             _e234645235532_
                             _hd234644235535_
                             _tl234643235537_
                             _e234648235540_
                             _hd234647235543_
                             _tl234646235545_
                             ___splice243333243334_
                             _target234649235548_
                             _tl234651235550_)
                      (letrec ((_loop234652235553_
                                (lambda (_hd234650235556_ _args234656235558_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234650235556_))
                                      (let ((_e234653235561_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234650235556_))))
                                        (let ((_lp-tl234655235566_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234653235561_)))
                                              (_lp-hd234654235564_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234653235561_))))
                                          (let ((__tmp244701
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234654235564_
                                                         _args234656235558_))))
                                            (declare (not safe))
                                            (_loop234652235553_
                                             _lp-tl234655235566_
                                             __tmp244701))))
                                      (let ((_args234657235569_
                                             (reverse _args234656235558_)))
                                        (let ((_L235572_ _args234657235569_)
                                              (_L235573_ _hd234647235543_)
                                              (_L235574_ _hd234638235519_)
                                              (_L235575_ _hd234629235495_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L235575_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L235574_
                                                      _self234600_)))
                                              (___kont243331243332_
                                               _L235572_
                                               _L235573_
                                               _L235574_
                                               _L235575_)
                                              (___match243622243623_
                                               _e234621235468_
                                               _hd234620235471_
                                               _tl234619235473_
                                               _e234624235476_
                                               _hd234623235479_
                                               _tl234622235481_
                                               _e234627235484_
                                               _hd234626235487_
                                               _tl234625235489_
                                               _e234630235492_
                                               _hd234629235495_
                                               _tl234628235497_
                                               _e234633235500_
                                               _hd234632235503_
                                               _tl234631235505_
                                               _e234636235508_
                                               _hd234635235511_
                                               _tl234634235513_
                                               _e234639235516_
                                               _hd234638235519_
                                               _tl234637235521_
                                               _e234642235524_
                                               _hd234641235527_
                                               _tl234640235529_
                                               _e234645235532_
                                               _hd234644235535_
                                               _tl234643235537_
                                               _e234648235540_
                                               _hd234647235543_
                                               _tl234646235545_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop234652235553_ _target234649235548_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243329243330_))
                  (let ((_e234621235468_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243329243330_))))
                    (let ((_tl234619235473_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234621235468_)))
                          (_hd234620235471_
                           (let ()
                             (declare (not safe))
                             (##car _e234621235468_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234619235473_))
                          (let ((_e234624235476_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234619235473_))))
                            (let ((_tl234622235481_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234624235476_)))
                                  (_hd234623235479_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234624235476_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd234623235479_))
                                  (let ((_e234627235484_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd234623235479_))))
                                    (let ((_tl234625235489_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234627235484_)))
                                          (_hd234626235487_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234627235484_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd234626235487_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd234626235487_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234625235489_))
                                                  (let ((_e234630235492_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234625235489_))))
                                                    (let ((_tl234628235497_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234630235492_)))
                                                          (_hd234629235495_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234630235492_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl234628235497_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl234622235481_))
                      (let ((_e234633235500_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl234622235481_))))
                        (let ((_tl234631235505_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234633235500_)))
                              (_hd234632235503_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234633235500_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd234632235503_))
                              (let ((_e234636235508_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd234632235503_))))
                                (let ((_tl234634235513_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234636235508_)))
                                      (_hd234635235511_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234636235508_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd234635235511_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd234635235511_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234634235513_))
                                              (let ((_e234639235516_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234634235513_))))
                                                (let ((_tl234637235521_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234639235516_)))
                                                      (_hd234638235519_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234639235516_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234637235521_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234631235505_))
                                                          (let ((_e234642235524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234631235505_))))
                    (let ((_tl234640235529_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234642235524_)))
                          (_hd234641235527_
                           (let ()
                             (declare (not safe))
                             (##car _e234642235524_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234641235527_))
                          (let ((_e234645235532_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234641235527_))))
                            (let ((_tl234643235537_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234645235532_)))
                                  (_hd234644235535_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234645235532_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234644235535_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd234644235535_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234643235537_))
                                          (let ((_e234648235540_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234643235537_))))
                                            (let ((_tl234646235545_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234648235540_)))
                                                  (_hd234647235543_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234648235540_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234646235545_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl234640235529_))
                                                      (let ((___splice243333243334_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl234640235529_ '0))))
                (let ((_tl234651235550_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice243333243334_ '1)))
                      (_target234649235548_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice243333243334_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl234651235550_))
                      (___match243434243435_
                       _e234621235468_
                       _hd234620235471_
                       _tl234619235473_
                       _e234624235476_
                       _hd234623235479_
                       _tl234622235481_
                       _e234627235484_
                       _hd234626235487_
                       _tl234625235489_
                       _e234630235492_
                       _hd234629235495_
                       _tl234628235497_
                       _e234633235500_
                       _hd234632235503_
                       _tl234631235505_
                       _e234636235508_
                       _hd234635235511_
                       _tl234634235513_
                       _e234639235516_
                       _hd234638235519_
                       _tl234637235521_
                       _e234642235524_
                       _hd234641235527_
                       _tl234640235529_
                       _e234645235532_
                       _hd234644235535_
                       _tl234643235537_
                       _e234648235540_
                       _hd234647235543_
                       _tl234646235545_
                       ___splice243333243334_
                       _target234649235548_
                       _tl234651235550_)
                      (___match243622243623_
                       _e234621235468_
                       _hd234620235471_
                       _tl234619235473_
                       _e234624235476_
                       _hd234623235479_
                       _tl234622235481_
                       _e234627235484_
                       _hd234626235487_
                       _tl234625235489_
                       _e234630235492_
                       _hd234629235495_
                       _tl234628235497_
                       _e234633235500_
                       _hd234632235503_
                       _tl234631235505_
                       _e234636235508_
                       _hd234635235511_
                       _tl234634235513_
                       _e234639235516_
                       _hd234638235519_
                       _tl234637235521_
                       _e234642235524_
                       _hd234641235527_
                       _tl234640235529_
                       _e234645235532_
                       _hd234644235535_
                       _tl234643235537_
                       _e234648235540_
                       _hd234647235543_
                       _tl234646235545_))))
              (___match243622243623_
               _e234621235468_
               _hd234620235471_
               _tl234619235473_
               _e234624235476_
               _hd234623235479_
               _tl234622235481_
               _e234627235484_
               _hd234626235487_
               _tl234625235489_
               _e234630235492_
               _hd234629235495_
               _tl234628235497_
               _e234633235500_
               _hd234632235503_
               _tl234631235505_
               _e234636235508_
               _hd234635235511_
               _tl234634235513_
               _e234639235516_
               _hd234638235519_
               _tl234637235521_
               _e234642235524_
               _hd234641235527_
               _tl234640235529_
               _e234645235532_
               _hd234644235535_
               _tl234643235537_
               _e234648235540_
               _hd234647235543_
               _tl234646235545_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243826243827_
                                                   _e234621235468_
                                                   _hd234620235471_
                                                   _tl234619235473_
                                                   _e234624235476_
                                                   _hd234623235479_
                                                   _tl234622235481_
                                                   _e234627235484_
                                                   _hd234626235487_
                                                   _tl234625235489_
                                                   _e234630235492_
                                                   _hd234629235495_
                                                   _tl234628235497_
                                                   _e234633235500_
                                                   _hd234632235503_
                                                   _tl234631235505_
                                                   _e234636235508_
                                                   _hd234635235511_
                                                   _tl234634235513_
                                                   _e234639235516_
                                                   _hd234638235519_
                                                   _tl234637235521_
                                                   _e234642235524_
                                                   _hd234641235527_
                                                   _tl234640235529_))))
                                          (___match243826243827_
                                           _e234621235468_
                                           _hd234620235471_
                                           _tl234619235473_
                                           _e234624235476_
                                           _hd234623235479_
                                           _tl234622235481_
                                           _e234627235484_
                                           _hd234626235487_
                                           _tl234625235489_
                                           _e234630235492_
                                           _hd234629235495_
                                           _tl234628235497_
                                           _e234633235500_
                                           _hd234632235503_
                                           _tl234631235505_
                                           _e234636235508_
                                           _hd234635235511_
                                           _tl234634235513_
                                           _e234639235516_
                                           _hd234638235519_
                                           _tl234637235521_
                                           _e234642235524_
                                           _hd234641235527_
                                           _tl234640235529_))
                                      (___match243502243503_
                                       _e234621235468_
                                       _hd234620235471_
                                       _tl234619235473_
                                       _e234624235476_
                                       _hd234623235479_
                                       _tl234622235481_
                                       _e234627235484_
                                       _hd234626235487_
                                       _tl234625235489_
                                       _e234630235492_
                                       _hd234629235495_
                                       _tl234628235497_
                                       _e234633235500_
                                       _hd234632235503_
                                       _tl234631235505_
                                       _e234636235508_
                                       _hd234635235511_
                                       _tl234634235513_
                                       _e234639235516_
                                       _hd234638235519_
                                       _tl234637235521_
                                       _e234642235524_
                                       _hd234641235527_
                                       _tl234640235529_
                                       _e234645235532_
                                       _hd234644235535_
                                       _tl234643235537_))
                                  (___match243826243827_
                                   _e234621235468_
                                   _hd234620235471_
                                   _tl234619235473_
                                   _e234624235476_
                                   _hd234623235479_
                                   _tl234622235481_
                                   _e234627235484_
                                   _hd234626235487_
                                   _tl234625235489_
                                   _e234630235492_
                                   _hd234629235495_
                                   _tl234628235497_
                                   _e234633235500_
                                   _hd234632235503_
                                   _tl234631235505_
                                   _e234636235508_
                                   _hd234635235511_
                                   _tl234634235513_
                                   _e234639235516_
                                   _hd234638235519_
                                   _tl234637235521_
                                   _e234642235524_
                                   _hd234641235527_
                                   _tl234640235529_))))
                          (___match243826243827_
                           _e234621235468_
                           _hd234620235471_
                           _tl234619235473_
                           _e234624235476_
                           _hd234623235479_
                           _tl234622235481_
                           _e234627235484_
                           _hd234626235487_
                           _tl234625235489_
                           _e234630235492_
                           _hd234629235495_
                           _tl234628235497_
                           _e234633235500_
                           _hd234632235503_
                           _tl234631235505_
                           _e234636235508_
                           _hd234635235511_
                           _tl234634235513_
                           _e234639235516_
                           _hd234638235519_
                           _tl234637235521_
                           _e234642235524_
                           _hd234641235527_
                           _tl234640235529_))))
                  (___match243764243765_
                   _e234621235468_
                   _hd234620235471_
                   _tl234619235473_
                   _e234624235476_
                   _hd234623235479_
                   _tl234622235481_
                   _e234627235484_
                   _hd234626235487_
                   _tl234625235489_
                   _e234630235492_
                   _hd234629235495_
                   _tl234628235497_
                   _e234633235500_
                   _hd234632235503_
                   _tl234631235505_
                   _e234636235508_
                   _hd234635235511_
                   _tl234634235513_
                   _e234639235516_
                   _hd234638235519_
                   _tl234637235521_))
              (___kont243347243348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont243347243348_))
                                          (___kont243347243348_))
                                      (___kont243347243348_))))
                              (___kont243347243348_))))
                      (___kont243347243348_))
                  (___kont243347243348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243347243348_))
                                              (___kont243347243348_))
                                          (___kont243347243348_))))
                                  (___kont243347243348_))))
                          (___kont243347243348_))))
                  (___kont243347243348_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx233545_
               _self233546_
               _$t233547_
               _methods233548_
               _slots233549_
               _class-check233550_
               _struct-check233551_
               _struct-assert233552_)
        (letrec ((_force-e233554_
                  (lambda (_what234597_)
                    (let ((__tmp244702
                           (let ((__tmp244706
                                  (let ((__tmp244707
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp244707)))
                                 (__tmp244703
                                  (let ((__tmp244704
                                         (let ((__tmp244705
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what234597_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp244705))))
                                    (declare (not safe))
                                    (cons __tmp244704 '()))))
                             (declare (not safe))
                             (cons __tmp244706 __tmp244703))))
                      (declare (not safe))
                      (cons '%#call __tmp244702)))))
          (let* ((___stx243831243832_ _stx233545_)
                 (_g233562233784_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx243831243832_)))))
            (let ((___kont243833243834_
                   (lambda (_L234543_ _L234544_ _L234545_ _L234546_)
                     (let ((_$method234591_
                            (let ((__tmp244708
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L234544_))))
                              (declare (not safe))
                              (table-ref _methods233548_ __tmp244708)))
                           (_args234592_
                            (map (lambda (_g234579234581_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g234579234581_
                                      _self233546_
                                      _$t233547_
                                      _methods233548_
                                      _slots233549_
                                      _class-check233550_
                                      _struct-check233551_
                                      _struct-assert233552_)))
                                 (let ((__tmp244709
                                        (lambda (_g234583234586_
                                                 _g234584234588_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g234583234586_
                                                  _g234584234588_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp244709 '() _L234543_)))))
                       (let ((__tmp244710
                              (let ((__tmp244711
                                     (let ((__tmp244715
                                            (let ()
                                              (declare (not safe))
                                              (_force-e233554_
                                               _$method234591_)))
                                           (__tmp244712
                                            (let ((__tmp244713
                                                   (let ((__tmp244714
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self233546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp244714))))
                                              (declare (not safe))
                                              (cons __tmp244713
                                                    _args234592_))))
                                       (declare (not safe))
                                       (cons __tmp244715 __tmp244712))))
                                (declare (not safe))
                                (cons '%#call __tmp244711))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244710 _stx233545_)))))
                  (___kont243837243838_
                   (lambda (_L234375_ _L234376_ _L234377_ _L234378_ _L234379_)
                     (let ((_$method234431_
                            (let ((__tmp244716
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L234376_))))
                              (declare (not safe))
                              (table-ref _methods233548_ __tmp244716)))
                           (_args234432_
                            (map (lambda (_g234419234421_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g234419234421_
                                      _self233546_
                                      _$t233547_
                                      _methods233548_
                                      _slots233549_
                                      _class-check233550_
                                      _struct-check233551_
                                      _struct-assert233552_)))
                                 (let ((__tmp244717
                                        (lambda (_g234423234426_
                                                 _g234424234428_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g234423234426_
                                                  _g234424234428_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp244717 '() _L234375_)))))
                       (let ((__tmp244718
                              (let ((__tmp244719
                                     (let ((__tmp244725
                                            (let ((__tmp244726
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp244726)))
                                           (__tmp244720
                                            (let ((__tmp244724
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e233554_
                                                      _$method234431_)))
                                                  (__tmp244721
                                                   (let ((__tmp244722
                                                          (let ((__tmp244723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self233546_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp244723))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244722
                                                           _args234432_))))
                                              (declare (not safe))
                                              (cons __tmp244724 __tmp244721))))
                                       (declare (not safe))
                                       (cons __tmp244725 __tmp244720))))
                                (declare (not safe))
                                (cons '%#call __tmp244719))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244718 _stx233545_)))))
                  (___kont243841243842_
                   (lambda (_L234206_ _L234207_ _L234208_)
                     (let* ((_$field234240_
                             (let ((__tmp244727
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L234206_))))
                               (declare (not safe))
                               (table-ref _slots233549_ __tmp244727)))
                            (__tmp244728
                             (let ((__tmp244729
                                    (let ((__tmp244736
                                           (let ((__tmp244737
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t233547_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp244737)))
                                          (__tmp244730
                                           (let ((__tmp244734
                                                  (let ((__tmp244735
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field234240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp244735)))
                                                 (__tmp244731
                                                  (let ((__tmp244732
                                                         (let ((__tmp244733
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self233546_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp244733))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244732 '()))))
                                             (declare (not safe))
                                             (cons __tmp244734 __tmp244731))))
                                      (declare (not safe))
                                      (cons __tmp244736 __tmp244730))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp244729))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp244728 _stx233545_))))
                  (___kont243843243844_
                   (lambda (_L234080_ _L234081_ _L234082_ _L234083_)
                     (let ((_$field234118_
                            (let ((__tmp244738
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L234081_))))
                              (declare (not safe))
                              (table-ref _slots233549_ __tmp244738)))
                           (_expr234119_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L234080_
                               _self233546_
                               _$t233547_
                               _methods233548_
                               _slots233549_
                               _class-check233550_
                               _struct-check233551_
                               _struct-assert233552_))))
                       (let ((__tmp244739
                              (let ((__tmp244740
                                     (let ((__tmp244748
                                            (let ((__tmp244749
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t233547_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp244749)))
                                           (__tmp244741
                                            (let ((__tmp244746
                                                   (let ((__tmp244747
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field234118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp244747)))
                                                  (__tmp244742
                                                   (let ((__tmp244744
                                                          (let ((__tmp244745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self233546_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp244745)))
                 (__tmp244743
                  (let () (declare (not safe)) (cons _expr234119_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244744
                                                           __tmp244743))))
                                              (declare (not safe))
                                              (cons __tmp244746 __tmp244742))))
                                       (declare (not safe))
                                       (cons __tmp244748 __tmp244741))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp244740))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244739 _stx233545_)))))
                  (___kont243845243846_
                   (lambda (_L233959_ _L233960_)
                     (let* ((_slot233982_
                             (##structure-ref
                              (let ((__tmp244750
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L233960_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp244750))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field233984_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots233549_ _slot233982_))))
                       (let ((__tmp244751
                              (let ((__tmp244752
                                     (let ((__tmp244759
                                            (let ((__tmp244760
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t233547_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp244760)))
                                           (__tmp244753
                                            (let ((__tmp244757
                                                   (let ((__tmp244758
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field233984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp244758)))
                                                  (__tmp244754
                                                   (let ((__tmp244755
                                                          (let ((__tmp244756
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self233546_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp244756))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244755 '()))))
                                              (declare (not safe))
                                              (cons __tmp244757 __tmp244754))))
                                       (declare (not safe))
                                       (cons __tmp244759 __tmp244753))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp244752))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244751 _stx233545_)))))
                  (___kont243847243848_
                   (lambda (_L233860_ _L233861_ _L233862_)
                     (let* ((_slot233891_
                             (##structure-ref
                              (let ((__tmp244761
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L233862_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp244761))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field233893_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots233549_ _slot233891_)))
                            (_expr233895_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L233860_
                                _self233546_
                                _$t233547_
                                _methods233548_
                                _slots233549_
                                _class-check233550_
                                _struct-check233551_
                                _struct-assert233552_))))
                       (let ((__tmp244762
                              (let ((__tmp244763
                                     (let ((__tmp244771
                                            (let ((__tmp244772
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t233547_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp244772)))
                                           (__tmp244764
                                            (let ((__tmp244769
                                                   (let ((__tmp244770
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field233893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp244770)))
                                                  (__tmp244765
                                                   (let ((__tmp244767
                                                          (let ((__tmp244768
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self233546_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp244768)))
                 (__tmp244766
                  (let () (declare (not safe)) (cons _expr233895_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244767
                                                           __tmp244766))))
                                              (declare (not safe))
                                              (cons __tmp244769 __tmp244765))))
                                       (declare (not safe))
                                       (cons __tmp244771 __tmp244764))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp244763))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244762 _stx233545_)))))
                  (___kont243849243850_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx233545_
                        _self233546_
                        _$t233547_
                        _methods233548_
                        _slots233549_
                        _class-check233550_
                        _struct-check233551_
                        _struct-assert233552_)))))
              (let* ((___match244330244331_
                      (lambda (_e233758233796_
                               _hd233757233799_
                               _tl233756233801_
                               _e233761233804_
                               _hd233760233807_
                               _tl233759233809_
                               _e233764233812_
                               _hd233763233815_
                               _tl233762233817_
                               _e233767233820_
                               _hd233766233823_
                               _tl233765233825_
                               _e233770233828_
                               _hd233769233831_
                               _tl233768233833_
                               _e233773233836_
                               _hd233772233839_
                               _tl233771233841_
                               _e233776233844_
                               _hd233775233847_
                               _tl233774233849_
                               _e233779233852_
                               _hd233778233855_
                               _tl233777233857_)
                        (let ((_L233860_ _hd233778233855_)
                              (_L233861_ _hd233775233847_)
                              (_L233862_ _hd233766233823_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L233861_
                                      _self233546_))
                                   (let ((__tmp244773
                                          (let ((__tmp244774
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L233862_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp244774))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp244773
                                      'gxc#!mutator::t)))
                              (___kont243847243848_
                               _L233860_
                               _L233861_
                               _L233862_)
                              (___kont243849243850_)))))
                     (___match244328244329_
                      (lambda (_e233758233796_
                               _hd233757233799_
                               _tl233756233801_
                               _e233761233804_
                               _hd233760233807_
                               _tl233759233809_
                               _e233764233812_
                               _hd233763233815_
                               _tl233762233817_
                               _e233767233820_
                               _hd233766233823_
                               _tl233765233825_
                               _e233770233828_
                               _hd233769233831_
                               _tl233768233833_
                               _e233773233836_
                               _hd233772233839_
                               _tl233771233841_
                               _e233776233844_
                               _hd233775233847_
                               _tl233774233849_
                               _e233779233852_
                               _hd233778233855_
                               _tl233777233857_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl233777233857_))
                            (___match244330244331_
                             _e233758233796_
                             _hd233757233799_
                             _tl233756233801_
                             _e233761233804_
                             _hd233760233807_
                             _tl233759233809_
                             _e233764233812_
                             _hd233763233815_
                             _tl233762233817_
                             _e233767233820_
                             _hd233766233823_
                             _tl233765233825_
                             _e233770233828_
                             _hd233769233831_
                             _tl233768233833_
                             _e233773233836_
                             _hd233772233839_
                             _tl233771233841_
                             _e233776233844_
                             _hd233775233847_
                             _tl233774233849_
                             _e233779233852_
                             _hd233778233855_
                             _tl233777233857_)
                            (___kont243849243850_))))
                     (___match244322244323_
                      (lambda (_e233758233796_
                               _hd233757233799_
                               _tl233756233801_
                               _e233761233804_
                               _hd233760233807_
                               _tl233759233809_
                               _e233764233812_
                               _hd233763233815_
                               _tl233762233817_
                               _e233767233820_
                               _hd233766233823_
                               _tl233765233825_
                               _e233770233828_
                               _hd233769233831_
                               _tl233768233833_
                               _e233773233836_
                               _hd233772233839_
                               _tl233771233841_
                               _e233776233844_
                               _hd233775233847_
                               _tl233774233849_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233768233833_))
                            (let ((_e233779233852_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233768233833_))))
                              (let ((_tl233777233857_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233779233852_)))
                                    (_hd233778233855_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233779233852_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233777233857_))
                                    (___match244330244331_
                                     _e233758233796_
                                     _hd233757233799_
                                     _tl233756233801_
                                     _e233761233804_
                                     _hd233760233807_
                                     _tl233759233809_
                                     _e233764233812_
                                     _hd233763233815_
                                     _tl233762233817_
                                     _e233767233820_
                                     _hd233766233823_
                                     _tl233765233825_
                                     _e233770233828_
                                     _hd233769233831_
                                     _tl233768233833_
                                     _e233773233836_
                                     _hd233772233839_
                                     _tl233771233841_
                                     _e233776233844_
                                     _hd233775233847_
                                     _tl233774233849_
                                     _e233779233852_
                                     _hd233778233855_
                                     _tl233777233857_)
                                    (___kont243849243850_))))
                            (___kont243849243850_))))
                     (___match244268244269_
                      (lambda (_e233734233903_
                               _hd233733233906_
                               _tl233732233908_
                               _e233737233911_
                               _hd233736233914_
                               _tl233735233916_
                               _e233740233919_
                               _hd233739233922_
                               _tl233738233924_
                               _e233743233927_
                               _hd233742233930_
                               _tl233741233932_
                               _e233746233935_
                               _hd233745233938_
                               _tl233744233940_
                               _e233749233943_
                               _hd233748233946_
                               _tl233747233948_
                               _e233752233951_
                               _hd233751233954_
                               _tl233750233956_)
                        (let ((_L233959_ _hd233751233954_)
                              (_L233960_ _hd233742233930_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L233959_
                                      _self233546_))
                                   (let ((__tmp244775
                                          (let ((__tmp244776
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L233960_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp244776))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp244775
                                      'gxc#!accessor::t)))
                              (___kont243845243846_ _L233959_ _L233960_)
                              (___kont243849243850_)))))
                     (___match244266244267_
                      (lambda (_e233734233903_
                               _hd233733233906_
                               _tl233732233908_
                               _e233737233911_
                               _hd233736233914_
                               _tl233735233916_
                               _e233740233919_
                               _hd233739233922_
                               _tl233738233924_
                               _e233743233927_
                               _hd233742233930_
                               _tl233741233932_
                               _e233746233935_
                               _hd233745233938_
                               _tl233744233940_
                               _e233749233943_
                               _hd233748233946_
                               _tl233747233948_
                               _e233752233951_
                               _hd233751233954_
                               _tl233750233956_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl233744233940_))
                            (___match244268244269_
                             _e233734233903_
                             _hd233733233906_
                             _tl233732233908_
                             _e233737233911_
                             _hd233736233914_
                             _tl233735233916_
                             _e233740233919_
                             _hd233739233922_
                             _tl233738233924_
                             _e233743233927_
                             _hd233742233930_
                             _tl233741233932_
                             _e233746233935_
                             _hd233745233938_
                             _tl233744233940_
                             _e233749233943_
                             _hd233748233946_
                             _tl233747233948_
                             _e233752233951_
                             _hd233751233954_
                             _tl233750233956_)
                            (___match244322244323_
                             _e233734233903_
                             _hd233733233906_
                             _tl233732233908_
                             _e233737233911_
                             _hd233736233914_
                             _tl233735233916_
                             _e233740233919_
                             _hd233739233922_
                             _tl233738233924_
                             _e233743233927_
                             _hd233742233930_
                             _tl233741233932_
                             _e233746233935_
                             _hd233745233938_
                             _tl233744233940_
                             _e233749233943_
                             _hd233748233946_
                             _tl233747233948_
                             _e233752233951_
                             _hd233751233954_
                             _tl233750233956_))))
                     (___match244212244213_
                      (lambda (_e233699233992_
                               _hd233698233995_
                               _tl233697233997_
                               _e233702234000_
                               _hd233701234003_
                               _tl233700234005_
                               _e233705234008_
                               _hd233704234011_
                               _tl233703234013_
                               _e233708234016_
                               _hd233707234019_
                               _tl233706234021_
                               _e233711234024_
                               _hd233710234027_
                               _tl233709234029_
                               _e233714234032_
                               _hd233713234035_
                               _tl233712234037_
                               _e233717234040_
                               _hd233716234043_
                               _tl233715234045_
                               _e233720234048_
                               _hd233719234051_
                               _tl233718234053_
                               _e233723234056_
                               _hd233722234059_
                               _tl233721234061_
                               _e233726234064_
                               _hd233725234067_
                               _tl233724234069_
                               _e233729234072_
                               _hd233728234075_
                               _tl233727234077_)
                        (let ((_L234080_ _hd233728234075_)
                              (_L234081_ _hd233725234067_)
                              (_L234082_ _hd233716234043_)
                              (_L234083_ _hd233707234019_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L234083_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L234083_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L234082_
                                      _self233546_)))
                              (___kont243843243844_
                               _L234080_
                               _L234081_
                               _L234082_
                               _L234083_)
                              (___kont243849243850_)))))
                     (___match244204244205_
                      (lambda (_e233699233992_
                               _hd233698233995_
                               _tl233697233997_
                               _e233702234000_
                               _hd233701234003_
                               _tl233700234005_
                               _e233705234008_
                               _hd233704234011_
                               _tl233703234013_
                               _e233708234016_
                               _hd233707234019_
                               _tl233706234021_
                               _e233711234024_
                               _hd233710234027_
                               _tl233709234029_
                               _e233714234032_
                               _hd233713234035_
                               _tl233712234037_
                               _e233717234040_
                               _hd233716234043_
                               _tl233715234045_
                               _e233720234048_
                               _hd233719234051_
                               _tl233718234053_
                               _e233723234056_
                               _hd233722234059_
                               _tl233721234061_
                               _e233726234064_
                               _hd233725234067_
                               _tl233724234069_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233718234053_))
                            (let ((_e233729234072_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233718234053_))))
                              (let ((_tl233727234077_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233729234072_)))
                                    (_hd233728234075_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233729234072_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233727234077_))
                                    (___match244212244213_
                                     _e233699233992_
                                     _hd233698233995_
                                     _tl233697233997_
                                     _e233702234000_
                                     _hd233701234003_
                                     _tl233700234005_
                                     _e233705234008_
                                     _hd233704234011_
                                     _tl233703234013_
                                     _e233708234016_
                                     _hd233707234019_
                                     _tl233706234021_
                                     _e233711234024_
                                     _hd233710234027_
                                     _tl233709234029_
                                     _e233714234032_
                                     _hd233713234035_
                                     _tl233712234037_
                                     _e233717234040_
                                     _hd233716234043_
                                     _tl233715234045_
                                     _e233720234048_
                                     _hd233719234051_
                                     _tl233718234053_
                                     _e233723234056_
                                     _hd233722234059_
                                     _tl233721234061_
                                     _e233726234064_
                                     _hd233725234067_
                                     _tl233724234069_
                                     _e233729234072_
                                     _hd233728234075_
                                     _tl233727234077_)
                                    (___kont243849243850_))))
                            (___match244328244329_
                             _e233699233992_
                             _hd233698233995_
                             _tl233697233997_
                             _e233702234000_
                             _hd233701234003_
                             _tl233700234005_
                             _e233705234008_
                             _hd233704234011_
                             _tl233703234013_
                             _e233708234016_
                             _hd233707234019_
                             _tl233706234021_
                             _e233711234024_
                             _hd233710234027_
                             _tl233709234029_
                             _e233714234032_
                             _hd233713234035_
                             _tl233712234037_
                             _e233717234040_
                             _hd233716234043_
                             _tl233715234045_
                             _e233720234048_
                             _hd233719234051_
                             _tl233718234053_))))
                     (___match244126244127_
                      (lambda (_e233665234126_
                               _hd233664234129_
                               _tl233663234131_
                               _e233668234134_
                               _hd233667234137_
                               _tl233666234139_
                               _e233671234142_
                               _hd233670234145_
                               _tl233669234147_
                               _e233674234150_
                               _hd233673234153_
                               _tl233672234155_
                               _e233677234158_
                               _hd233676234161_
                               _tl233675234163_
                               _e233680234166_
                               _hd233679234169_
                               _tl233678234171_
                               _e233683234174_
                               _hd233682234177_
                               _tl233681234179_
                               _e233686234182_
                               _hd233685234185_
                               _tl233684234187_
                               _e233689234190_
                               _hd233688234193_
                               _tl233687234195_
                               _e233692234198_
                               _hd233691234201_
                               _tl233690234203_)
                        (let ((_L234206_ _hd233691234201_)
                              (_L234207_ _hd233682234177_)
                              (_L234208_ _hd233673234153_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L234208_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L234208_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L234207_
                                      _self233546_)))
                              (___kont243841243842_
                               _L234206_
                               _L234207_
                               _L234208_)
                              (___match244330244331_
                               _e233665234126_
                               _hd233664234129_
                               _tl233663234131_
                               _e233668234134_
                               _hd233667234137_
                               _tl233666234139_
                               _e233671234142_
                               _hd233670234145_
                               _tl233669234147_
                               _e233674234150_
                               _hd233673234153_
                               _tl233672234155_
                               _e233677234158_
                               _hd233676234161_
                               _tl233675234163_
                               _e233680234166_
                               _hd233679234169_
                               _tl233678234171_
                               _e233683234174_
                               _hd233682234177_
                               _tl233681234179_
                               _e233686234182_
                               _hd233685234185_
                               _tl233684234187_)))))
                     (___match244124244125_
                      (lambda (_e233665234126_
                               _hd233664234129_
                               _tl233663234131_
                               _e233668234134_
                               _hd233667234137_
                               _tl233666234139_
                               _e233671234142_
                               _hd233670234145_
                               _tl233669234147_
                               _e233674234150_
                               _hd233673234153_
                               _tl233672234155_
                               _e233677234158_
                               _hd233676234161_
                               _tl233675234163_
                               _e233680234166_
                               _hd233679234169_
                               _tl233678234171_
                               _e233683234174_
                               _hd233682234177_
                               _tl233681234179_
                               _e233686234182_
                               _hd233685234185_
                               _tl233684234187_
                               _e233689234190_
                               _hd233688234193_
                               _tl233687234195_
                               _e233692234198_
                               _hd233691234201_
                               _tl233690234203_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl233684234187_))
                            (___match244126244127_
                             _e233665234126_
                             _hd233664234129_
                             _tl233663234131_
                             _e233668234134_
                             _hd233667234137_
                             _tl233666234139_
                             _e233671234142_
                             _hd233670234145_
                             _tl233669234147_
                             _e233674234150_
                             _hd233673234153_
                             _tl233672234155_
                             _e233677234158_
                             _hd233676234161_
                             _tl233675234163_
                             _e233680234166_
                             _hd233679234169_
                             _tl233678234171_
                             _e233683234174_
                             _hd233682234177_
                             _tl233681234179_
                             _e233686234182_
                             _hd233685234185_
                             _tl233684234187_
                             _e233689234190_
                             _hd233688234193_
                             _tl233687234195_
                             _e233692234198_
                             _hd233691234201_
                             _tl233690234203_)
                            (___match244204244205_
                             _e233665234126_
                             _hd233664234129_
                             _tl233663234131_
                             _e233668234134_
                             _hd233667234137_
                             _tl233666234139_
                             _e233671234142_
                             _hd233670234145_
                             _tl233669234147_
                             _e233674234150_
                             _hd233673234153_
                             _tl233672234155_
                             _e233677234158_
                             _hd233676234161_
                             _tl233675234163_
                             _e233680234166_
                             _hd233679234169_
                             _tl233678234171_
                             _e233683234174_
                             _hd233682234177_
                             _tl233681234179_
                             _e233686234182_
                             _hd233685234185_
                             _tl233684234187_
                             _e233689234190_
                             _hd233688234193_
                             _tl233687234195_
                             _e233692234198_
                             _hd233691234201_
                             _tl233690234203_))))
                     (___match244114244115_
                      (lambda (_e233665234126_
                               _hd233664234129_
                               _tl233663234131_
                               _e233668234134_
                               _hd233667234137_
                               _tl233666234139_
                               _e233671234142_
                               _hd233670234145_
                               _tl233669234147_
                               _e233674234150_
                               _hd233673234153_
                               _tl233672234155_
                               _e233677234158_
                               _hd233676234161_
                               _tl233675234163_
                               _e233680234166_
                               _hd233679234169_
                               _tl233678234171_
                               _e233683234174_
                               _hd233682234177_
                               _tl233681234179_
                               _e233686234182_
                               _hd233685234185_
                               _tl233684234187_
                               _e233689234190_
                               _hd233688234193_
                               _tl233687234195_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd233688234193_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233687234195_))
                                (let ((_e233692234198_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233687234195_))))
                                  (let ((_tl233690234203_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233692234198_)))
                                        (_hd233691234201_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233692234198_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233690234203_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl233684234187_))
                                            (___match244126244127_
                                             _e233665234126_
                                             _hd233664234129_
                                             _tl233663234131_
                                             _e233668234134_
                                             _hd233667234137_
                                             _tl233666234139_
                                             _e233671234142_
                                             _hd233670234145_
                                             _tl233669234147_
                                             _e233674234150_
                                             _hd233673234153_
                                             _tl233672234155_
                                             _e233677234158_
                                             _hd233676234161_
                                             _tl233675234163_
                                             _e233680234166_
                                             _hd233679234169_
                                             _tl233678234171_
                                             _e233683234174_
                                             _hd233682234177_
                                             _tl233681234179_
                                             _e233686234182_
                                             _hd233685234185_
                                             _tl233684234187_
                                             _e233689234190_
                                             _hd233688234193_
                                             _tl233687234195_
                                             _e233692234198_
                                             _hd233691234201_
                                             _tl233690234203_)
                                            (___match244204244205_
                                             _e233665234126_
                                             _hd233664234129_
                                             _tl233663234131_
                                             _e233668234134_
                                             _hd233667234137_
                                             _tl233666234139_
                                             _e233671234142_
                                             _hd233670234145_
                                             _tl233669234147_
                                             _e233674234150_
                                             _hd233673234153_
                                             _tl233672234155_
                                             _e233677234158_
                                             _hd233676234161_
                                             _tl233675234163_
                                             _e233680234166_
                                             _hd233679234169_
                                             _tl233678234171_
                                             _e233683234174_
                                             _hd233682234177_
                                             _tl233681234179_
                                             _e233686234182_
                                             _hd233685234185_
                                             _tl233684234187_
                                             _e233689234190_
                                             _hd233688234193_
                                             _tl233687234195_
                                             _e233692234198_
                                             _hd233691234201_
                                             _tl233690234203_))
                                        (___match244328244329_
                                         _e233665234126_
                                         _hd233664234129_
                                         _tl233663234131_
                                         _e233668234134_
                                         _hd233667234137_
                                         _tl233666234139_
                                         _e233671234142_
                                         _hd233670234145_
                                         _tl233669234147_
                                         _e233674234150_
                                         _hd233673234153_
                                         _tl233672234155_
                                         _e233677234158_
                                         _hd233676234161_
                                         _tl233675234163_
                                         _e233680234166_
                                         _hd233679234169_
                                         _tl233678234171_
                                         _e233683234174_
                                         _hd233682234177_
                                         _tl233681234179_
                                         _e233686234182_
                                         _hd233685234185_
                                         _tl233684234187_))))
                                (___match244328244329_
                                 _e233665234126_
                                 _hd233664234129_
                                 _tl233663234131_
                                 _e233668234134_
                                 _hd233667234137_
                                 _tl233666234139_
                                 _e233671234142_
                                 _hd233670234145_
                                 _tl233669234147_
                                 _e233674234150_
                                 _hd233673234153_
                                 _tl233672234155_
                                 _e233677234158_
                                 _hd233676234161_
                                 _tl233675234163_
                                 _e233680234166_
                                 _hd233679234169_
                                 _tl233678234171_
                                 _e233683234174_
                                 _hd233682234177_
                                 _tl233681234179_
                                 _e233686234182_
                                 _hd233685234185_
                                 _tl233684234187_))
                            (___match244328244329_
                             _e233665234126_
                             _hd233664234129_
                             _tl233663234131_
                             _e233668234134_
                             _hd233667234137_
                             _tl233666234139_
                             _e233671234142_
                             _hd233670234145_
                             _tl233669234147_
                             _e233674234150_
                             _hd233673234153_
                             _tl233672234155_
                             _e233677234158_
                             _hd233676234161_
                             _tl233675234163_
                             _e233680234166_
                             _hd233679234169_
                             _tl233678234171_
                             _e233683234174_
                             _hd233682234177_
                             _tl233681234179_
                             _e233686234182_
                             _hd233685234185_
                             _tl233684234187_))))
                     (___match244046244047_
                      (lambda (_e233614234247_
                               _hd233613234250_
                               _tl233612234252_
                               _e233617234255_
                               _hd233616234258_
                               _tl233615234260_
                               _e233620234263_
                               _hd233619234266_
                               _tl233618234268_
                               _e233623234271_
                               _hd233622234274_
                               _tl233621234276_
                               _e233626234279_
                               _hd233625234282_
                               _tl233624234284_
                               _e233629234287_
                               _hd233628234290_
                               _tl233627234292_
                               _e233632234295_
                               _hd233631234298_
                               _tl233630234300_
                               _e233635234303_
                               _hd233634234306_
                               _tl233633234308_
                               _e233638234311_
                               _hd233637234314_
                               _tl233636234316_
                               _e233641234319_
                               _hd233640234322_
                               _tl233639234324_
                               _e233644234327_
                               _hd233643234330_
                               _tl233642234332_
                               _e233647234335_
                               _hd233646234338_
                               _tl233645234340_
                               _e233650234343_
                               _hd233649234346_
                               _tl233648234348_
                               ___splice243839243840_
                               _target233651234351_
                               _tl233653234353_)
                        (letrec ((_loop233654234356_
                                  (lambda (_hd233652234359_ _args233658234361_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd233652234359_))
                                        (let ((_e233655234364_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd233652234359_))))
                                          (let ((_lp-tl233657234369_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233655234364_)))
                                                (_lp-hd233656234367_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233655234364_))))
                                            (let ((__tmp244777
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd233656234367_
                                                           _args233658234361_))))
                                              (declare (not safe))
                                              (_loop233654234356_
                                               _lp-tl233657234369_
                                               __tmp244777))))
                                        (let ((_args233659234372_
                                               (reverse _args233658234361_)))
                                          (let ((_L234375_ _args233659234372_)
                                                (_L234376_ _hd233649234346_)
                                                (_L234377_ _hd233640234322_)
                                                (_L234378_ _hd233631234298_)
                                                (_L234379_ _hd233622234274_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L234379_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L234378_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L234377_
                                                        _self233546_)))
                                                (___kont243837243838_
                                                 _L234375_
                                                 _L234376_
                                                 _L234377_
                                                 _L234378_
                                                 _L234379_)
                                                (___kont243849243850_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop233654234356_ _target233651234351_ '())))))
                     (___match244004244005_
                      (lambda (_e233614234247_
                               _hd233613234250_
                               _tl233612234252_
                               _e233617234255_
                               _hd233616234258_
                               _tl233615234260_
                               _e233620234263_
                               _hd233619234266_
                               _tl233618234268_
                               _e233623234271_
                               _hd233622234274_
                               _tl233621234276_
                               _e233626234279_
                               _hd233625234282_
                               _tl233624234284_
                               _e233629234287_
                               _hd233628234290_
                               _tl233627234292_
                               _e233632234295_
                               _hd233631234298_
                               _tl233630234300_
                               _e233635234303_
                               _hd233634234306_
                               _tl233633234308_
                               _e233638234311_
                               _hd233637234314_
                               _tl233636234316_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd233637234314_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233636234316_))
                                (let ((_e233641234319_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233636234316_))))
                                  (let ((_tl233639234324_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233641234319_)))
                                        (_hd233640234322_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233641234319_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233639234324_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233633234308_))
                                            (let ((_e233644234327_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233633234308_))))
                                              (let ((_tl233642234332_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233644234327_)))
                                                    (_hd233643234330_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233644234327_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233643234330_))
                                                    (let ((_e233647234335_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233643234330_))))
                                                      (let ((_tl233645234340_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233647234335_)))
                    (_hd233646234338_
                     (let () (declare (not safe)) (##car _e233647234335_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233646234338_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd233646234338_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233645234340_))
                            (let ((_e233650234343_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233645234340_))))
                              (let ((_tl233648234348_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233650234343_)))
                                    (_hd233649234346_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233650234343_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233648234348_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl233642234332_))
                                        (let ((___splice243839243840_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl233642234332_
                                                  '0))))
                                          (let ((_tl233653234353_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice243839243840_
                                                    '1)))
                                                (_target233651234351_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice243839243840_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl233653234353_))
                                                (___match244046244047_
                                                 _e233614234247_
                                                 _hd233613234250_
                                                 _tl233612234252_
                                                 _e233617234255_
                                                 _hd233616234258_
                                                 _tl233615234260_
                                                 _e233620234263_
                                                 _hd233619234266_
                                                 _tl233618234268_
                                                 _e233623234271_
                                                 _hd233622234274_
                                                 _tl233621234276_
                                                 _e233626234279_
                                                 _hd233625234282_
                                                 _tl233624234284_
                                                 _e233629234287_
                                                 _hd233628234290_
                                                 _tl233627234292_
                                                 _e233632234295_
                                                 _hd233631234298_
                                                 _tl233630234300_
                                                 _e233635234303_
                                                 _hd233634234306_
                                                 _tl233633234308_
                                                 _e233638234311_
                                                 _hd233637234314_
                                                 _tl233636234316_
                                                 _e233641234319_
                                                 _hd233640234322_
                                                 _tl233639234324_
                                                 _e233644234327_
                                                 _hd233643234330_
                                                 _tl233642234332_
                                                 _e233647234335_
                                                 _hd233646234338_
                                                 _tl233645234340_
                                                 _e233650234343_
                                                 _hd233649234346_
                                                 _tl233648234348_
                                                 ___splice243839243840_
                                                 _target233651234351_
                                                 _tl233653234353_)
                                                (___kont243849243850_))))
                                        (___kont243849243850_))
                                    (___kont243849243850_))))
                            (___kont243849243850_))
                        (___kont243849243850_))
                    (___kont243849243850_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243849243850_))))
                                            (___match244328244329_
                                             _e233614234247_
                                             _hd233613234250_
                                             _tl233612234252_
                                             _e233617234255_
                                             _hd233616234258_
                                             _tl233615234260_
                                             _e233620234263_
                                             _hd233619234266_
                                             _tl233618234268_
                                             _e233623234271_
                                             _hd233622234274_
                                             _tl233621234276_
                                             _e233626234279_
                                             _hd233625234282_
                                             _tl233624234284_
                                             _e233629234287_
                                             _hd233628234290_
                                             _tl233627234292_
                                             _e233632234295_
                                             _hd233631234298_
                                             _tl233630234300_
                                             _e233635234303_
                                             _hd233634234306_
                                             _tl233633234308_))
                                        (___match244328244329_
                                         _e233614234247_
                                         _hd233613234250_
                                         _tl233612234252_
                                         _e233617234255_
                                         _hd233616234258_
                                         _tl233615234260_
                                         _e233620234263_
                                         _hd233619234266_
                                         _tl233618234268_
                                         _e233623234271_
                                         _hd233622234274_
                                         _tl233621234276_
                                         _e233626234279_
                                         _hd233625234282_
                                         _tl233624234284_
                                         _e233629234287_
                                         _hd233628234290_
                                         _tl233627234292_
                                         _e233632234295_
                                         _hd233631234298_
                                         _tl233630234300_
                                         _e233635234303_
                                         _hd233634234306_
                                         _tl233633234308_))))
                                (___match244328244329_
                                 _e233614234247_
                                 _hd233613234250_
                                 _tl233612234252_
                                 _e233617234255_
                                 _hd233616234258_
                                 _tl233615234260_
                                 _e233620234263_
                                 _hd233619234266_
                                 _tl233618234268_
                                 _e233623234271_
                                 _hd233622234274_
                                 _tl233621234276_
                                 _e233626234279_
                                 _hd233625234282_
                                 _tl233624234284_
                                 _e233629234287_
                                 _hd233628234290_
                                 _tl233627234292_
                                 _e233632234295_
                                 _hd233631234298_
                                 _tl233630234300_
                                 _e233635234303_
                                 _hd233634234306_
                                 _tl233633234308_))
                            (___match244114244115_
                             _e233614234247_
                             _hd233613234250_
                             _tl233612234252_
                             _e233617234255_
                             _hd233616234258_
                             _tl233615234260_
                             _e233620234263_
                             _hd233619234266_
                             _tl233618234268_
                             _e233623234271_
                             _hd233622234274_
                             _tl233621234276_
                             _e233626234279_
                             _hd233625234282_
                             _tl233624234284_
                             _e233629234287_
                             _hd233628234290_
                             _tl233627234292_
                             _e233632234295_
                             _hd233631234298_
                             _tl233630234300_
                             _e233635234303_
                             _hd233634234306_
                             _tl233633234308_
                             _e233638234311_
                             _hd233637234314_
                             _tl233636234316_))))
                     (___match243936243937_
                      (lambda (_e233570234439_
                               _hd233569234442_
                               _tl233568234444_
                               _e233573234447_
                               _hd233572234450_
                               _tl233571234452_
                               _e233576234455_
                               _hd233575234458_
                               _tl233574234460_
                               _e233579234463_
                               _hd233578234466_
                               _tl233577234468_
                               _e233582234471_
                               _hd233581234474_
                               _tl233580234476_
                               _e233585234479_
                               _hd233584234482_
                               _tl233583234484_
                               _e233588234487_
                               _hd233587234490_
                               _tl233586234492_
                               _e233591234495_
                               _hd233590234498_
                               _tl233589234500_
                               _e233594234503_
                               _hd233593234506_
                               _tl233592234508_
                               _e233597234511_
                               _hd233596234514_
                               _tl233595234516_
                               ___splice243835243836_
                               _target233598234519_
                               _tl233600234521_)
                        (letrec ((_loop233601234524_
                                  (lambda (_hd233599234527_ _args233605234529_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd233599234527_))
                                        (let ((_e233602234532_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd233599234527_))))
                                          (let ((_lp-tl233604234537_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233602234532_)))
                                                (_lp-hd233603234535_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233602234532_))))
                                            (let ((__tmp244778
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd233603234535_
                                                           _args233605234529_))))
                                              (declare (not safe))
                                              (_loop233601234524_
                                               _lp-tl233604234537_
                                               __tmp244778))))
                                        (let ((_args233606234540_
                                               (reverse _args233605234529_)))
                                          (let ((_L234543_ _args233606234540_)
                                                (_L234544_ _hd233596234514_)
                                                (_L234545_ _hd233587234490_)
                                                (_L234546_ _hd233578234466_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L234546_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L234545_
                                                        _self233546_)))
                                                (___kont243833243834_
                                                 _L234543_
                                                 _L234544_
                                                 _L234545_
                                                 _L234546_)
                                                (___match244124244125_
                                                 _e233570234439_
                                                 _hd233569234442_
                                                 _tl233568234444_
                                                 _e233573234447_
                                                 _hd233572234450_
                                                 _tl233571234452_
                                                 _e233576234455_
                                                 _hd233575234458_
                                                 _tl233574234460_
                                                 _e233579234463_
                                                 _hd233578234466_
                                                 _tl233577234468_
                                                 _e233582234471_
                                                 _hd233581234474_
                                                 _tl233580234476_
                                                 _e233585234479_
                                                 _hd233584234482_
                                                 _tl233583234484_
                                                 _e233588234487_
                                                 _hd233587234490_
                                                 _tl233586234492_
                                                 _e233591234495_
                                                 _hd233590234498_
                                                 _tl233589234500_
                                                 _e233594234503_
                                                 _hd233593234506_
                                                 _tl233592234508_
                                                 _e233597234511_
                                                 _hd233596234514_
                                                 _tl233595234516_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop233601234524_ _target233598234519_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx243831243832_))
                    (let ((_e233570234439_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx243831243832_))))
                      (let ((_tl233568234444_
                             (let ()
                               (declare (not safe))
                               (##cdr _e233570234439_)))
                            (_hd233569234442_
                             (let ()
                               (declare (not safe))
                               (##car _e233570234439_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233568234444_))
                            (let ((_e233573234447_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233568234444_))))
                              (let ((_tl233571234452_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233573234447_)))
                                    (_hd233572234450_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233573234447_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233572234450_))
                                    (let ((_e233576234455_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233572234450_))))
                                      (let ((_tl233574234460_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233576234455_)))
                                            (_hd233575234458_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233576234455_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233575234458_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd233575234458_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233574234460_))
                                                    (let ((_e233579234463_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233574234460_))))
                                                      (let ((_tl233577234468_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233579234463_)))
                    (_hd233578234466_
                     (let () (declare (not safe)) (##car _e233579234463_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl233577234468_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233571234452_))
                        (let ((_e233582234471_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233571234452_))))
                          (let ((_tl233580234476_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233582234471_)))
                                (_hd233581234474_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233582234471_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233581234474_))
                                (let ((_e233585234479_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233581234474_))))
                                  (let ((_tl233583234484_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233585234479_)))
                                        (_hd233584234482_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233585234479_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233584234482_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd233584234482_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233583234484_))
                                                (let ((_e233588234487_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233583234484_))))
                                                  (let ((_tl233586234492_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233588234487_)))
                                                        (_hd233587234490_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233588234487_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233586234492_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl233580234476_))
                                                            (let ((_e233591234495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl233580234476_))))
                      (let ((_tl233589234500_
                             (let ()
                               (declare (not safe))
                               (##cdr _e233591234495_)))
                            (_hd233590234498_
                             (let ()
                               (declare (not safe))
                               (##car _e233591234495_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd233590234498_))
                            (let ((_e233594234503_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd233590234498_))))
                              (let ((_tl233592234508_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233594234503_)))
                                    (_hd233593234506_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233594234503_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd233593234506_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd233593234506_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233592234508_))
                                            (let ((_e233597234511_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233592234508_))))
                                              (let ((_tl233595234516_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233597234511_)))
                                                    (_hd233596234514_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233597234511_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl233595234516_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl233589234500_))
                                                        (let ((___splice243835243836_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl233589234500_ '0))))
                  (let ((_tl233600234521_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice243835243836_ '1)))
                        (_target233598234519_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice243835243836_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl233600234521_))
                        (___match243936243937_
                         _e233570234439_
                         _hd233569234442_
                         _tl233568234444_
                         _e233573234447_
                         _hd233572234450_
                         _tl233571234452_
                         _e233576234455_
                         _hd233575234458_
                         _tl233574234460_
                         _e233579234463_
                         _hd233578234466_
                         _tl233577234468_
                         _e233582234471_
                         _hd233581234474_
                         _tl233580234476_
                         _e233585234479_
                         _hd233584234482_
                         _tl233583234484_
                         _e233588234487_
                         _hd233587234490_
                         _tl233586234492_
                         _e233591234495_
                         _hd233590234498_
                         _tl233589234500_
                         _e233594234503_
                         _hd233593234506_
                         _tl233592234508_
                         _e233597234511_
                         _hd233596234514_
                         _tl233595234516_
                         ___splice243835243836_
                         _target233598234519_
                         _tl233600234521_)
                        (___match244124244125_
                         _e233570234439_
                         _hd233569234442_
                         _tl233568234444_
                         _e233573234447_
                         _hd233572234450_
                         _tl233571234452_
                         _e233576234455_
                         _hd233575234458_
                         _tl233574234460_
                         _e233579234463_
                         _hd233578234466_
                         _tl233577234468_
                         _e233582234471_
                         _hd233581234474_
                         _tl233580234476_
                         _e233585234479_
                         _hd233584234482_
                         _tl233583234484_
                         _e233588234487_
                         _hd233587234490_
                         _tl233586234492_
                         _e233591234495_
                         _hd233590234498_
                         _tl233589234500_
                         _e233594234503_
                         _hd233593234506_
                         _tl233592234508_
                         _e233597234511_
                         _hd233596234514_
                         _tl233595234516_))))
                (___match244124244125_
                 _e233570234439_
                 _hd233569234442_
                 _tl233568234444_
                 _e233573234447_
                 _hd233572234450_
                 _tl233571234452_
                 _e233576234455_
                 _hd233575234458_
                 _tl233574234460_
                 _e233579234463_
                 _hd233578234466_
                 _tl233577234468_
                 _e233582234471_
                 _hd233581234474_
                 _tl233580234476_
                 _e233585234479_
                 _hd233584234482_
                 _tl233583234484_
                 _e233588234487_
                 _hd233587234490_
                 _tl233586234492_
                 _e233591234495_
                 _hd233590234498_
                 _tl233589234500_
                 _e233594234503_
                 _hd233593234506_
                 _tl233592234508_
                 _e233597234511_
                 _hd233596234514_
                 _tl233595234516_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match244328244329_
                                                     _e233570234439_
                                                     _hd233569234442_
                                                     _tl233568234444_
                                                     _e233573234447_
                                                     _hd233572234450_
                                                     _tl233571234452_
                                                     _e233576234455_
                                                     _hd233575234458_
                                                     _tl233574234460_
                                                     _e233579234463_
                                                     _hd233578234466_
                                                     _tl233577234468_
                                                     _e233582234471_
                                                     _hd233581234474_
                                                     _tl233580234476_
                                                     _e233585234479_
                                                     _hd233584234482_
                                                     _tl233583234484_
                                                     _e233588234487_
                                                     _hd233587234490_
                                                     _tl233586234492_
                                                     _e233591234495_
                                                     _hd233590234498_
                                                     _tl233589234500_))))
                                            (___match244328244329_
                                             _e233570234439_
                                             _hd233569234442_
                                             _tl233568234444_
                                             _e233573234447_
                                             _hd233572234450_
                                             _tl233571234452_
                                             _e233576234455_
                                             _hd233575234458_
                                             _tl233574234460_
                                             _e233579234463_
                                             _hd233578234466_
                                             _tl233577234468_
                                             _e233582234471_
                                             _hd233581234474_
                                             _tl233580234476_
                                             _e233585234479_
                                             _hd233584234482_
                                             _tl233583234484_
                                             _e233588234487_
                                             _hd233587234490_
                                             _tl233586234492_
                                             _e233591234495_
                                             _hd233590234498_
                                             _tl233589234500_))
                                        (___match244004244005_
                                         _e233570234439_
                                         _hd233569234442_
                                         _tl233568234444_
                                         _e233573234447_
                                         _hd233572234450_
                                         _tl233571234452_
                                         _e233576234455_
                                         _hd233575234458_
                                         _tl233574234460_
                                         _e233579234463_
                                         _hd233578234466_
                                         _tl233577234468_
                                         _e233582234471_
                                         _hd233581234474_
                                         _tl233580234476_
                                         _e233585234479_
                                         _hd233584234482_
                                         _tl233583234484_
                                         _e233588234487_
                                         _hd233587234490_
                                         _tl233586234492_
                                         _e233591234495_
                                         _hd233590234498_
                                         _tl233589234500_
                                         _e233594234503_
                                         _hd233593234506_
                                         _tl233592234508_))
                                    (___match244328244329_
                                     _e233570234439_
                                     _hd233569234442_
                                     _tl233568234444_
                                     _e233573234447_
                                     _hd233572234450_
                                     _tl233571234452_
                                     _e233576234455_
                                     _hd233575234458_
                                     _tl233574234460_
                                     _e233579234463_
                                     _hd233578234466_
                                     _tl233577234468_
                                     _e233582234471_
                                     _hd233581234474_
                                     _tl233580234476_
                                     _e233585234479_
                                     _hd233584234482_
                                     _tl233583234484_
                                     _e233588234487_
                                     _hd233587234490_
                                     _tl233586234492_
                                     _e233591234495_
                                     _hd233590234498_
                                     _tl233589234500_))))
                            (___match244328244329_
                             _e233570234439_
                             _hd233569234442_
                             _tl233568234444_
                             _e233573234447_
                             _hd233572234450_
                             _tl233571234452_
                             _e233576234455_
                             _hd233575234458_
                             _tl233574234460_
                             _e233579234463_
                             _hd233578234466_
                             _tl233577234468_
                             _e233582234471_
                             _hd233581234474_
                             _tl233580234476_
                             _e233585234479_
                             _hd233584234482_
                             _tl233583234484_
                             _e233588234487_
                             _hd233587234490_
                             _tl233586234492_
                             _e233591234495_
                             _hd233590234498_
                             _tl233589234500_))))
                    (___match244266244267_
                     _e233570234439_
                     _hd233569234442_
                     _tl233568234444_
                     _e233573234447_
                     _hd233572234450_
                     _tl233571234452_
                     _e233576234455_
                     _hd233575234458_
                     _tl233574234460_
                     _e233579234463_
                     _hd233578234466_
                     _tl233577234468_
                     _e233582234471_
                     _hd233581234474_
                     _tl233580234476_
                     _e233585234479_
                     _hd233584234482_
                     _tl233583234484_
                     _e233588234487_
                     _hd233587234490_
                     _tl233586234492_))
                (___kont243849243850_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont243849243850_))
                                            (___kont243849243850_))
                                        (___kont243849243850_))))
                                (___kont243849243850_))))
                        (___kont243849243850_))
                    (___kont243849243850_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243849243850_))
                                                (___kont243849243850_))
                                            (___kont243849243850_))))
                                    (___kont243849243850_))))
                            (___kont243849243850_))))
                    (___kont243849243850_))))))))))
