(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1708334579)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl257125_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp262320 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl257125_ __tmp262320))
           (let ()
             (declare (not safe))
             (hash-put! _tbl257125_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl257125_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl257125_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl257125_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl257125_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx257108_ . _args257110_)
        (let ((__tmp262322
               (lambda ()
                 (declare (not safe))
                 (if (null? _args257110_)
                     (gxc#compile-e__0 _stx257108_)
                     (let ((_arg1257115_ (car _args257110_))
                           (_rest257117_ (cdr _args257110_)))
                       (if (null? _rest257117_)
                           (gxc#compile-e__1 _stx257108_ _arg1257115_)
                           (let ((_arg2257120_ (car _rest257117_))
                                 (_rest257122_ (cdr _rest257117_)))
                             (if (null? _rest257122_)
                                 (gxc#compile-e__2
                                  _stx257108_
                                  _arg1257115_
                                  _arg2257120_)
                                 (apply gxc#compile-e
                                        _stx257108_
                                        _arg1257115_
                                        _arg2257120_
                                        _rest257122_))))))))
              (__tmp262321 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp262322
           gxc#current-compile-methods
           __tmp262321))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl257105_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp262323 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl257105_ __tmp262323))
           (let ()
             (declare (not safe))
             (hash-put! _tbl257105_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl257105_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl257105_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl257105_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl257105_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl257105_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl257105_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl257105_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl257105_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl257105_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl257105_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl257105_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl257105_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl257105_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl257105_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl257105_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl257105_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx257088_ . _args257090_)
        (let ((__tmp262325
               (lambda ()
                 (declare (not safe))
                 (if (null? _args257090_)
                     (gxc#compile-e__0 _stx257088_)
                     (let ((_arg1257095_ (car _args257090_))
                           (_rest257097_ (cdr _args257090_)))
                       (if (null? _rest257097_)
                           (gxc#compile-e__1 _stx257088_ _arg1257095_)
                           (let ((_arg2257100_ (car _rest257097_))
                                 (_rest257102_ (cdr _rest257097_)))
                             (if (null? _rest257102_)
                                 (gxc#compile-e__2
                                  _stx257088_
                                  _arg1257095_
                                  _arg2257100_)
                                 (apply gxc#compile-e
                                        _stx257088_
                                        _arg1257095_
                                        _arg2257100_
                                        _rest257102_))))))))
              (__tmp262324 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp262325
           gxc#current-compile-methods
           __tmp262324))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl257085_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp262326 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl257085_ __tmp262326))
           (let ()
             (declare (not safe))
             (hash-put! _tbl257085_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl257085_ '%#call gxc#subst-object-refs-call%))
           _tbl257085_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx257068_ . _args257070_)
        (let ((__tmp262328
               (lambda ()
                 (declare (not safe))
                 (if (null? _args257070_)
                     (gxc#compile-e__0 _stx257068_)
                     (let ((_arg1257075_ (car _args257070_))
                           (_rest257077_ (cdr _args257070_)))
                       (if (null? _rest257077_)
                           (gxc#compile-e__1 _stx257068_ _arg1257075_)
                           (let ((_arg2257080_ (car _rest257077_))
                                 (_rest257082_ (cdr _rest257077_)))
                             (if (null? _rest257082_)
                                 (gxc#compile-e__2
                                  _stx257068_
                                  _arg1257075_
                                  _arg2257080_)
                                 (apply gxc#compile-e
                                        _stx257068_
                                        _arg1257075_
                                        _arg2257080_
                                        _rest257082_))))))))
              (__tmp262327 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp262328
           gxc#current-compile-methods
           __tmp262327))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx253738_)
        (letrec ((_generate-method-bind253740_
                  (lambda (_$t257062_ _id257063_ _$id257064_)
                    (let ((_$tmp257066_
                           (let ((__tmp262329 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp262329))))
                      (let ((__tmp262377
                             (let ()
                               (declare (not safe))
                               (cons _$id257064_ '())))
                            (__tmp262330
                             (let ((__tmp262331
                                    (let ((__tmp262332
                                           (let ((__tmp262375
                                                  (let ((__tmp262376
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp262376)))
                                                 (__tmp262333
                                                  (let ((__tmp262334
                                                         (let ((__tmp262335
                                                                (let ((__tmp262336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp262337
                                      (let ((__tmp262338
                                             (let ((__tmp262358
                                                    (let ((__tmp262359
                                                           (let ((__tmp262374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp257066_ '())))
                         (__tmp262360
                          (let ((__tmp262361
                                 (let ((__tmp262362
                                        (let ((__tmp262372
                                               (let ((__tmp262373
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp262373)))
                                              (__tmp262363
                                               (let ((__tmp262370
                                                      (let ((__tmp262371
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t257062_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp262371)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp262364
                                                      (let ((__tmp262368
                                                             (let ((__tmp262369
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp262369)))
                    (__tmp262365
                     (let ((__tmp262366
                            (let ((__tmp262367
                                   (let ()
                                     (declare (not safe))
                                     (cons _id257063_ '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp262367))))
                       (declare (not safe))
                       (cons __tmp262366 '()))))
                (declare (not safe))
                (cons __tmp262368 __tmp262365))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp262370
                                                       __tmp262364))))
                                          (declare (not safe))
                                          (cons __tmp262372 __tmp262363))))
                                   (declare (not safe))
                                   (cons '%#call __tmp262362))))
                            (declare (not safe))
                            (cons __tmp262361 '()))))
                     (declare (not safe))
                     (cons __tmp262374 __tmp262360))))
              (declare (not safe))
              (cons __tmp262359 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp262339
                                                    (let ((__tmp262340
                                                           (let ((__tmp262341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp262356
                                 (let ((__tmp262357
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp257066_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp262357)))
                                (__tmp262342
                                 (let ((__tmp262354
                                        (let ((__tmp262355
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp257066_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp262355)))
                                       (__tmp262343
                                        (let ((__tmp262344
                                               (let ((__tmp262345
                                                      (let ((__tmp262352
                                                             (let ((__tmp262353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp262353)))
                    (__tmp262346
                     (let ((__tmp262350
                            (let ((__tmp262351
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp262351)))
                           (__tmp262347
                            (let ((__tmp262348
                                   (let ((__tmp262349
                                          (let ()
                                            (declare (not safe))
                                            (cons _id257063_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp262349))))
                              (declare (not safe))
                              (cons __tmp262348 '()))))
                       (declare (not safe))
                       (cons __tmp262350 __tmp262347))))
                (declare (not safe))
                (cons __tmp262352 __tmp262346))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp262345))))
                                          (declare (not safe))
                                          (cons __tmp262344 '()))))
                                   (declare (not safe))
                                   (cons __tmp262354 __tmp262343))))
                            (declare (not safe))
                            (cons __tmp262356 __tmp262342))))
                     (declare (not safe))
                     (cons '%#if __tmp262341))))
              (declare (not safe))
              (cons __tmp262340 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp262358
                                                     __tmp262339))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp262338))))
                                 (declare (not safe))
                                 (cons __tmp262337 '()))))
                          (declare (not safe))
                          (cons '() __tmp262336))))
                   (declare (not safe))
                   (cons '%#lambda __tmp262335))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp262334 '()))))
                                             (declare (not safe))
                                             (cons __tmp262375 __tmp262333))))
                                      (declare (not safe))
                                      (cons '%#call __tmp262332))))
                               (declare (not safe))
                               (cons __tmp262331 '()))))
                        (declare (not safe))
                        (cons __tmp262377 __tmp262330)))))
                 (_generate-slot-bind253741_
                  (lambda (_$t257056_ _id257057_ _$id257058_)
                    (let ((_$tmp257060_
                           (let ((__tmp262378 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp262378))))
                      (let ((__tmp262415
                             (let ()
                               (declare (not safe))
                               (cons _$id257058_ '())))
                            (__tmp262379
                             (let ((__tmp262380
                                    (let ((__tmp262381
                                           (let ((__tmp262401
                                                  (let ((__tmp262402
                                                         (let ((__tmp262414
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp257060_ '())))
                       (__tmp262403
                        (let ((__tmp262404
                               (let ((__tmp262405
                                      (let ((__tmp262412
                                             (let ((__tmp262413
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp262413)))
                                            (__tmp262406
                                             (let ((__tmp262410
                                                    (let ((__tmp262411
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t257056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp262411)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp262407
                                                    (let ((__tmp262408
                                                           (let ((__tmp262409
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id257057_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp262409))))
              (declare (not safe))
              (cons __tmp262408 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp262410
                                                     __tmp262407))))
                                        (declare (not safe))
                                        (cons __tmp262412 __tmp262406))))
                                 (declare (not safe))
                                 (cons '%#call __tmp262405))))
                          (declare (not safe))
                          (cons __tmp262404 '()))))
                   (declare (not safe))
                   (cons __tmp262414 __tmp262403))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp262402 '())))
                                                 (__tmp262382
                                                  (let ((__tmp262383
                                                         (let ((__tmp262384
                                                                (let ((__tmp262399
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp262400
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp257060_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp262400)))
                              (__tmp262385
                               (let ((__tmp262397
                                      (let ((__tmp262398
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp257060_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp262398)))
                                     (__tmp262386
                                      (let ((__tmp262387
                                             (let ((__tmp262388
                                                    (let ((__tmp262395
                                                           (let ((__tmp262396
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp262396)))
                  (__tmp262389
                   (let ((__tmp262393
                          (let ((__tmp262394
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp262394)))
                         (__tmp262390
                          (let ((__tmp262391
                                 (let ((__tmp262392
                                        (let ()
                                          (declare (not safe))
                                          (cons _id257057_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp262392))))
                            (declare (not safe))
                            (cons __tmp262391 '()))))
                     (declare (not safe))
                     (cons __tmp262393 __tmp262390))))
              (declare (not safe))
              (cons __tmp262395 __tmp262389))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp262388))))
                                        (declare (not safe))
                                        (cons __tmp262387 '()))))
                                 (declare (not safe))
                                 (cons __tmp262397 __tmp262386))))
                          (declare (not safe))
                          (cons __tmp262399 __tmp262385))))
                   (declare (not safe))
                   (cons '%#if __tmp262384))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp262383 '()))))
                                             (declare (not safe))
                                             (cons __tmp262401 __tmp262382))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp262381))))
                               (declare (not safe))
                               (cons __tmp262380 '()))))
                        (declare (not safe))
                        (cons __tmp262415 __tmp262379)))))
                 (_generate-class-check-bind253742_
                  (lambda (_$t257052_ _class-type257053_ _$class-type257054_)
                    (let ((__tmp262427
                           (let ()
                             (declare (not safe))
                             (cons _$class-type257054_ '())))
                          (__tmp262416
                           (let ((__tmp262417
                                  (let ((__tmp262418
                                         (let ((__tmp262425
                                                (let ((__tmp262426
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp262426)))
                                               (__tmp262419
                                                (let ((__tmp262423
                                                       (let ((__tmp262424
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t257052_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp262424)))
              (__tmp262420
               (let ((__tmp262421
                      (let ((__tmp262422
                             (let ()
                               (declare (not safe))
                               (cons _class-type257053_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp262422))))
                 (declare (not safe))
                 (cons __tmp262421 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp262423
                                                        __tmp262420))))
                                           (declare (not safe))
                                           (cons __tmp262425 __tmp262419))))
                                    (declare (not safe))
                                    (cons '%#call __tmp262418))))
                             (declare (not safe))
                             (cons __tmp262417 '()))))
                      (declare (not safe))
                      (cons __tmp262427 __tmp262416))))
                 (_generate-struct-check-bind253743_
                  (lambda (_$t257048_ _class-type257049_ _$class-type257050_)
                    (let ((__tmp262439
                           (let ()
                             (declare (not safe))
                             (cons _$class-type257050_ '())))
                          (__tmp262428
                           (let ((__tmp262429
                                  (let ((__tmp262430
                                         (let ((__tmp262437
                                                (let ((__tmp262438
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp262438)))
                                               (__tmp262431
                                                (let ((__tmp262435
                                                       (let ((__tmp262436
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t257048_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp262436)))
              (__tmp262432
               (let ((__tmp262433
                      (let ((__tmp262434
                             (let ()
                               (declare (not safe))
                               (cons _class-type257049_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp262434))))
                 (declare (not safe))
                 (cons __tmp262433 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp262435
                                                        __tmp262432))))
                                           (declare (not safe))
                                           (cons __tmp262437 __tmp262431))))
                                    (declare (not safe))
                                    (cons '%#call __tmp262430))))
                             (declare (not safe))
                             (cons __tmp262429 '()))))
                      (declare (not safe))
                      (cons __tmp262439 __tmp262428))))
                 (_generate-specializer-impl253744_
                  (lambda (_$t256997_
                           _methods-bind256998_
                           _slots-bind256999_
                           _class-check-bind257000_
                           _struct-check-bind257001_
                           _specializer-impl257002_
                           _lifted-specializer-id257003_
                           _unchecked-specializer-impl257004_)
                    (let ((__tmp262440
                           (let ((__tmp262441
                                  (let ((__tmp262467
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t256997_ '())))
                                        (__tmp262442
                                         (let ((__tmp262443
                                                (let ((__tmp262444
                                                       (let ((__tmp262464
                                                              (let ((__tmp262465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp262466
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind257001_
                                              _class-check-bind257000_))))
                               (declare (not safe))
                               (foldr1 cons __tmp262466 _slots-bind256999_))))
                        (declare (not safe))
                        (foldr1 cons __tmp262465 _methods-bind256998_)))
                     (__tmp262445
                      (let ((__tmp262446
                             (if (or _lifted-specializer-id257003_
                                     _unchecked-specializer-impl257004_)
                                 (let* ((_$specializer257009_
                                         (let ((__tmp262447
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp262447)))
                                        (__tmp262448
                                         (let ((__tmp262460
                                                (let ((__tmp262461
                                                       (let ((__tmp262463
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer257009_ '())))
                     (__tmp262462
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl257002_ '()))))
                 (declare (not safe))
                 (cons __tmp262463 __tmp262462))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp262461 '())))
                                               (__tmp262449
                                                (let ((__tmp262450
                                                       (let _recur257011_ ((_rest257013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind257001_)))
                 (let* ((_rest257014257022_ _rest257013_)
                        (_else257016257030_
                         (lambda ()
                           (if _lifted-specializer-id257003_
                               (let ((__tmp262451
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id257003_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp262451))
                               _unchecked-specializer-impl257004_)))
                        (_K257018257036_
                         (lambda (_rest257033_ _checkq257034_)
                           (let ((__tmp262452
                                  (let ((__tmp262458
                                         (let ((__tmp262459
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq257034_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp262459)))
                                        (__tmp262453
                                         (let ((__tmp262457
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur257011_
                                                   _rest257033_)))
                                               (__tmp262454
                                                (let ((__tmp262455
                                                       (let ((__tmp262456
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer257009_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp262456))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp262455 '()))))
                                           (declare (not safe))
                                           (cons __tmp262457 __tmp262454))))
                                    (declare (not safe))
                                    (cons __tmp262458 __tmp262453))))
                             (declare (not safe))
                             (cons '%#if __tmp262452)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest257014257022_))
                       (let ((_hd257019257039_
                              (let ()
                                (declare (not safe))
                                (##car _rest257014257022_)))
                             (_tl257020257041_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest257014257022_))))
                         (let* ((_checkq257044_ _hd257019257039_)
                                (_rest257046_ _tl257020257041_))
                           (declare (not safe))
                           (_K257018257036_ _rest257046_ _checkq257044_)))
                       (let () (declare (not safe)) (_else257016257030_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp262450 '()))))
                                           (declare (not safe))
                                           (cons __tmp262460 __tmp262449))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp262448))
                                 _specializer-impl257002_)))
                        (declare (not safe))
                        (cons __tmp262446 '()))))
                 (declare (not safe))
                 (cons __tmp262464 __tmp262445))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp262444))))
                                           (declare (not safe))
                                           (cons __tmp262443 '()))))
                                    (declare (not safe))
                                    (cons __tmp262467 __tmp262442))))
                             (declare (not safe))
                             (cons '%#lambda __tmp262441))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp262440 _stx253738_))))
                 (_generate-specializer-def253745_
                  (lambda (_id256991_
                           _specializer-id256992_
                           _specializer-impl256993_
                           _lifted-specializer-id256994_
                           _unchecked-specializer-impl256995_)
                    (let ((__tmp262468
                           (let ((__tmp262469
                                  (let ((__tmp262470
                                         (let ((__tmp262490
                                                (let ((__tmp262491
                                                       (let ((__tmp262492
                                                              (let ((__tmp262494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id256992_ '())))
                            (__tmp262493
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl256993_ '()))))
                        (declare (not safe))
                        (cons __tmp262494 __tmp262493))))
                 (declare (not safe))
                 (cons '%#define-values __tmp262492))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp262491
                                                   _stx253738_)))
                                               (__tmp262471
                                                (let ((__tmp262478
                                                       (let ((__tmp262479
                                                              (let ((__tmp262480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp262481
                                    (let ((__tmp262488
                                           (let ((__tmp262489
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp262489)))
                                          (__tmp262482
                                           (let ((__tmp262486
                                                  (let ((__tmp262487
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id256991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp262487)))
                                                 (__tmp262483
                                                  (let ((__tmp262484
                                                         (let ((__tmp262485
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id256992_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp262485))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp262484 '()))))
                                             (declare (not safe))
                                             (cons __tmp262486 __tmp262483))))
                                      (declare (not safe))
                                      (cons __tmp262488 __tmp262482))))
                               (declare (not safe))
                               (cons '%#call __tmp262481))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp262480 _stx253738_))))
                 (declare (not safe))
                 (cons __tmp262479 '())))
              (__tmp262472
               (if _lifted-specializer-id256994_
                   (let ((__tmp262473
                          (let ((__tmp262474
                                 (let ((__tmp262475
                                        (let ((__tmp262477
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id256994_
                                                       '())))
                                              (__tmp262476
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl256995_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp262477 __tmp262476))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp262475))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp262474 _stx253738_))))
                     (declare (not safe))
                     (cons __tmp262473 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp262478
                                                          __tmp262472))))
                                           (declare (not safe))
                                           (cons __tmp262490 __tmp262471))))
                                    (declare (not safe))
                                    (cons _stx253738_ __tmp262470))))
                             (declare (not safe))
                             (cons '%#begin __tmp262469))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp262468 _stx253738_)))))
          (let* ((___stx261281261282_ _stx253738_)
                 (_g253748253768_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx261281261282_)))))
            (let ((___kont261283261284_
                   (lambda (_L253812_ _L253813_)
                     (let ((_method-calls253832_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs253833_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_class-type-check253834_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-check253835_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-assert253836_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty253837_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?253839_
                                 (lambda ()
                                   (if (let ((__tmp262499
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls253832_))))
                                         (declare (not safe))
                                         (fxzero? __tmp262499))
                                       (if (let ((__tmp262498
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _slot-refs253833_))))
                                             (declare (not safe))
                                             (fxzero? __tmp262498))
                                           (if (let ((__tmp262497
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-length
                                                         _class-type-check253834_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp262497))
                                               (if (let ((__tmp262496
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (hash-length
                                                             _struct-type-check253835_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp262496))
                                                   (let ((__tmp262495
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (hash-length
                                                             _struct-type-assert253836_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp262495))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?253840_
                                 (lambda ()
                                   (let ((_$e256984_
                                          (let ((__tmp262500
                                                 (let ((__tmp262501
                                                        (let ()
                                                          (declare (not safe))
                                                          (hash-length
                                                           _struct-type-check253835_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp262501))))
                                            (declare (not safe))
                                            (not __tmp262500))))
                                     (if _$e256984_
                                         _$e256984_
                                         (let ((__tmp262502
                                                (let ((__tmp262503
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-length
                                                          _struct-type-assert253836_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp262503))))
                                           (declare (not safe))
                                           (not __tmp262502))))))
                                (_lift-unchecked-specializer?253841_
                                 (lambda ()
                                   (if (let ((__tmp262506
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls253832_))))
                                         (declare (not safe))
                                         (fxzero? __tmp262506))
                                       (if (let ((__tmp262505
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _slot-refs253833_))))
                                             (declare (not safe))
                                             (fxzero? __tmp262505))
                                           (let ((__tmp262504
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _class-type-check253834_))))
                                             (declare (not safe))
                                             (fxzero? __tmp262504))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L253812_))
                             (let* ((___stx261195261196_ _L253812_)
                                    (_g254354254372_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx261195261196_)))))
                               (let ((___kont261197261198_
                                      (lambda (_L254408_ _L254409_ _L254410_)
                                        (for-each
                                         (lambda (_g254425254427_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g254425254427_
                                              _L254410_
                                              _method-calls253832_
                                              _slot-refs253833_
                                              _class-type-check253834_
                                              _struct-type-check253835_
                                              _struct-type-assert253836_)))
                                         _L254408_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?253839_))
                                            _stx253738_
                                            (let* ((_specializer-id254436_
                                                    (let* ((_id254430_
                                                            (let ((__tmp262656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L253813_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp262656 '"::specialize")))
                   (_specializer-id254433_
                    (let ((__tmp262657
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx253738_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id254430_ __tmp262657))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id254433_))
              _specializer-id254433_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id254443_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?253841_))
                                                        (let* ((_id254438_
                                                                (let ((__tmp262658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L253813_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp262658
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id254440_
                        (let ((__tmp262659
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx253738_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id254438_ __tmp262659))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id254440_))
                  _lifted-specializer-id254440_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t254445_
                                                    (let ((__tmp262660
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp262660)))
                                                   (_methods254447_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls253832_)))
                                                   (_$methods254451_
                                                    (map (lambda (_id254449_)
                                                           (let ((__tmp262661
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id254449_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp262661)))
                 _methods254447_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g262662_
                                                    (for-each
                                                     (lambda (_g254452254455_
                                                              _g254453254457_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls253832_
                                                          _g254452254455_
                                                          _g254453254457_)))
                                                     _methods254447_
                                                     _$methods254451_))
                                                   (_methods-bind254468_
                                                    (map (lambda (_g254460254463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g254461254465_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind253740_
                      _$t254445_
                      _g254460254463_
                      _g254461254465_)))
                 _methods254447_
                 _$methods254451_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots254470_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs253833_)))
                                                   (_$slots254474_
                                                    (map (lambda (_id254472_)
                                                           (let ((__tmp262663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id254472_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp262663)))
                 _slots254470_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g262664_
                                                    (for-each
                                                     (lambda (_g254475254478_
                                                              _g254476254480_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs253833_
                                                          _g254475254478_
                                                          _g254476254480_)))
                                                     _slots254470_
                                                     _$slots254474_))
                                                   (_slots-bind254491_
                                                    (map (lambda (_g254483254486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g254484254488_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind253741_
                      _$t254445_
                      _g254483254486_
                      _g254484254488_)))
                 _slots254470_
                 _$slots254474_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check254493_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check253834_)))
                                                   (_$class-check254496_
                                                    (map (lambda (_g262665_)
                                                           (let ((__tmp262666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp262666)))
                 _class-check254493_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g262667_
                                                    (for-each
                                                     (lambda (_g254497254500_
                                                              _g254498254502_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _class-type-check253834_
                                                          _g254497254500_
                                                          _g254498254502_)))
                                                     _class-check254493_
                                                     _$class-check254496_))
                                                   (_class-check-bind254513_
                                                    (map (lambda (_g254505254508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g254506254510_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind253742_
                      _$t254445_
                      _g254505254508_
                      _g254506254510_)))
                 _class-check254493_
                 _$class-check254496_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all254515_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check253835_
                                                       _struct-type-assert253836_)))
                                                   (_struct-check254517_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all254515_)))
                                                   (_$struct-check254520_
                                                    (map (lambda (_g262668_)
                                                           (let ((__tmp262669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp262669)))
                 _struct-check254517_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g262670_
                                                    (for-each
                                                     (lambda (_g254521254524_
                                                              _g254522254526_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _struct-check-all254515_
                                                          _g254521254524_
                                                          _g254522254526_)))
                                                     _struct-check254517_
                                                     _$struct-check254520_))
                                                   (_struct-check-bind254537_
                                                    (map (lambda (_g254529254532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g254530254534_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind253743_
                      _$t254445_
                      _g254529254532_
                      _g254530254534_)))
                 _struct-check254517_
                 _$struct-check254520_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl254548_
                                                    (lambda (_struct-type-check1254539_
                                                             _struct-type-check2254540_)
                                                      (let* ((_specializer-body254546_
                                                              (map (lambda (_g254541254543_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g254541254543_
                                _L254410_
                                _$t254445_
                                _method-calls253832_
                                _slot-refs253833_
                                _class-type-check253834_
                                _struct-type-check1254539_
                                _struct-type-check2254540_)))
                           _L254408_))
                     (__tmp262671
                      (let ((__tmp262672
                             (let ((__tmp262673
                                    (let ()
                                      (declare (not safe))
                                      (cons _L254410_ _L254409_))))
                               (declare (not safe))
                               (cons __tmp262673 _specializer-body254546_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp262672))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp262671 _stx253738_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl254550_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl254548_
                                                       _struct-check-all254515_
                                                       _empty253837_)))
                                                   (_unchecked-specializer-impl254552_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?253840_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl254548_
                                                           _empty253837_
                                                           _struct-check-all254515_))
                                                        '#f))
                                                   (_specializer-impl254554_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl253744_
                                                       _$t254445_
                                                       _methods-bind254468_
                                                       _slots-bind254491_
                                                       _class-check-bind254513_
                                                       _struct-check-bind254537_
                                                       _specializer-impl254550_
                                                       _lifted-specializer-id254443_
                                                       _unchecked-specializer-impl254552_))))
                                              (let ((__tmp262675
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L253813_)))
                                                    (__tmp262674
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id254436_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp262675
                                                 '" => "
                                                 __tmp262674))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def253745_
                                                 _L253813_
                                                 _specializer-id254436_
                                                 _specializer-impl254554_
                                                 _lifted-specializer-id254443_
                                                 _unchecked-specializer-impl254552_))))))
                                     (___kont261199261200_
                                      (lambda () _stx253738_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx261195261196_))
                                     (let ((_e254361254384_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx261195261196_))))
                                       (let ((_tl254359254389_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e254361254384_)))
                                             (_hd254360254387_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e254361254384_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl254359254389_))
                                             (let ((_e254364254392_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl254359254389_))))
                                               (let ((_tl254362254397_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e254364254392_)))
                                                     (_hd254363254395_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e254364254392_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd254363254395_))
                                                     (let ((_e254367254400_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd254363254395_))))
                                                       (let ((_tl254365254405_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e254367254400_)))
                     (_hd254366254403_
                      (let () (declare (not safe)) (##car _e254367254400_))))
                 (___kont261197261198_
                  _tl254362254397_
                  _tl254365254405_
                  _hd254366254403_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont261199261200_))))
                                             (___kont261199261200_))))
                                     (___kont261199261200_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L253812_))
                                 (let* ((_g254560254579_
                                         (lambda (_g254561254576_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g254561254576_))))
                                        (_g254559254930_
                                         (lambda (_g254561254582_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g254561254582_))
                                               (let ((_e254565254584_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g254561254582_))))
                                                 (let ((_hd254564254587_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e254565254584_)))
                                                       (_tl254563254589_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e254565254584_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl254563254589_))
                                                       (let ((_g262632_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl254563254589_ '0))))
                 (begin
                   (let ((_g262633_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g262632_)
                                (##vector-length _g262632_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g262633_ 2)))
                         (error "Context expects 2 values" _g262633_)))
                   (let ((_target254566254592_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g262632_ 0)))
                         (_tl254568254594_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g262632_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl254568254594_))
                         (letrec ((_loop254569254597_
                                   (lambda (_hd254567254600_
                                            _clause254573254602_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd254567254600_))
                                         (let ((_e254570254605_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd254567254600_))))
                                           (let ((_lp-hd254571254608_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e254570254605_)))
                                                 (_lp-tl254572254610_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e254570254605_))))
                                             (let ((__tmp262655
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd254571254608_
                                                            _clause254573254602_))))
                                               (declare (not safe))
                                               (_loop254569254597_
                                                _lp-tl254572254610_
                                                __tmp262655))))
                                         (let ((_clause254574254613_
                                                (reverse _clause254573254602_)))
                                           ((lambda (_L254616_)
                                              (for-each
                                               (lambda (_clause254629_)
                                                 (let* ((___stx261221261222_
                                                         _clause254629_)
                                                        (_g254632254647_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx261221261222_)))))
                                                   (let ((___kont261223261224_
                                                          (lambda (_L254675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L254676_
                           _L254677_)
                    (for-each
                     (lambda (_g254692254694_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g254692254694_
                          _L254677_
                          _method-calls253832_
                          _slot-refs253833_
                          _class-type-check253834_
                          _struct-type-check253835_
                          _struct-type-assert253836_)))
                     _L254675_)))
                 (___kont261225261226_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx261221261222_))
                                                         (let ((_e254639254659_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx261221261222_))))
                   (let ((_tl254637254664_
                          (let ()
                            (declare (not safe))
                            (##cdr _e254639254659_)))
                         (_hd254638254662_
                          (let ()
                            (declare (not safe))
                            (##car _e254639254659_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd254638254662_))
                         (let ((_e254642254667_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd254638254662_))))
                           (let ((_tl254640254672_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e254642254667_)))
                                 (_hd254641254670_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e254642254667_))))
                             (___kont261223261224_
                              _tl254637254664_
                              _tl254640254672_
                              _hd254641254670_)))
                         (___kont261225261226_))))
                 (___kont261225261226_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp262634
                                                      (lambda (_g254699254702_
                                                               _g254700254704_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g254699254702_
                                                                _g254700254704_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp262634
                                                         '()
                                                         _L254616_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?253839_))
                                                  _stx253738_
                                                  (let* ((_specializer-id254713_
                                                          (let* ((_id254707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp262635
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L253813_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp262635 '"::specialize")))
                         (_specializer-id254710_
                          (let ((__tmp262636
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx253738_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id254707_ __tmp262636))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id254710_))
                    _specializer-id254710_))
                 (_lifted-specializer-id254720_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?253841_))
                      (let* ((_id254715_
                              (let ((__tmp262637
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L253813_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp262637
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id254717_
                              (let ((__tmp262638
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx253738_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id254715_
                                 __tmp262638))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id254717_))
                        _lifted-specializer-id254717_)
                      '#f))
                 (_$t254722_
                  (let ((__tmp262639 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp262639)))
                 (_methods254724_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls253832_)))
                 (_$methods254728_
                  (map (lambda (_id254726_)
                         (let ((__tmp262640 (gensym _id254726_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp262640)))
                       _methods254724_))
                 (_g262641_
                  (for-each
                   (lambda (_g254729254732_ _g254730254734_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls253832_
                        _g254729254732_
                        _g254730254734_)))
                   _methods254724_
                   _$methods254728_))
                 (_methods-bind254745_
                  (map (lambda (_g254737254740_ _g254738254742_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind253740_
                            _$t254722_
                            _g254737254740_
                            _g254738254742_)))
                       _methods254724_
                       _$methods254728_))
                 (_slots254747_
                  (let () (declare (not safe)) (hash-keys _slot-refs253833_)))
                 (_$slots254751_
                  (map (lambda (_id254749_)
                         (let ((__tmp262642 (gensym _id254749_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp262642)))
                       _slots254747_))
                 (_g262643_
                  (for-each
                   (lambda (_g254752254755_ _g254753254757_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs253833_
                        _g254752254755_
                        _g254753254757_)))
                   _slots254747_
                   _$slots254751_))
                 (_slots-bind254768_
                  (map (lambda (_g254760254763_ _g254761254765_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind253741_
                            _$t254722_
                            _g254760254763_
                            _g254761254765_)))
                       _slots254747_
                       _$slots254751_))
                 (_class-check254770_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check253834_)))
                 (_$class-check254773_
                  (map (lambda (_g262644_)
                         (let ((__tmp262645 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp262645)))
                       _class-check254770_))
                 (_g262646_
                  (for-each
                   (lambda (_g254774254777_ _g254775254779_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _class-type-check253834_
                        _g254774254777_
                        _g254775254779_)))
                   _class-check254770_
                   _$class-check254773_))
                 (_class-check-bind254790_
                  (map (lambda (_g254782254785_ _g254783254787_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind253742_
                            _$t254722_
                            _g254782254785_
                            _g254783254787_)))
                       _class-check254770_
                       _$class-check254773_))
                 (_struct-check-all254792_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check253835_
                     _struct-type-assert253836_)))
                 (_struct-check254794_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all254792_)))
                 (_$struct-check254797_
                  (map (lambda (_g262647_)
                         (let ((__tmp262648 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp262648)))
                       _struct-check254794_))
                 (_g262649_
                  (for-each
                   (lambda (_g254798254801_ _g254799254803_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _struct-check-all254792_
                        _g254798254801_
                        _g254799254803_)))
                   _struct-check254794_
                   _$struct-check254797_))
                 (_struct-check-bind254814_
                  (map (lambda (_g254806254809_ _g254807254811_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind253743_
                            _$t254722_
                            _g254806254809_
                            _g254807254811_)))
                       _struct-check254794_
                       _$struct-check254797_))
                 (_make-specializer-impl254921_
                  (lambda (_struct-type-check1254816_
                           _struct-type-check2254817_)
                    (let* ((_specializer-clauses254919_
                            (map (lambda (_clause254819_)
                                   (let* ((___stx261241261242_ _clause254819_)
                                          (_g254822254837_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx261241261242_)))))
                                     (let ((___kont261243261244_
                                            (lambda (_L254865_
                                                     _L254866_
                                                     _L254867_)
                                              (let* ((_body254907_
                                                      (map (lambda (_g254902254904_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g254902254904_
                        _L254867_
                        _$t254722_
                        _method-calls253832_
                        _slot-refs253833_
                        _class-type-check253834_
                        _struct-type-check1254816_
                        _struct-type-check2254817_)))
                   _L254865_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp262650
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L254867_
                                                              _L254866_))))
                                                (declare (not safe))
                                                (cons __tmp262650
                                                      _body254907_))))
                                           (___kont261245261246_
                                            (lambda () _clause254819_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx261241261242_))
                                           (let ((_e254829254849_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx261241261242_))))
                                             (let ((_tl254827254854_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e254829254849_)))
                                                   (_hd254828254852_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e254829254849_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd254828254852_))
                                                   (let ((_e254832254857_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd254828254852_))))
                                                     (let ((_tl254830254862_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e254832254857_)))
                                                           (_hd254831254860_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e254832254857_))))
                                                       (___kont261243261244_
                                                        _tl254827254854_
                                                        _tl254830254862_
                                                        _hd254831254860_)))
                                                   (___kont261245261246_))))
                                           (___kont261245261246_)))))
                                 (let ((__tmp262651
                                        (lambda (_g254911254914_
                                                 _g254912254916_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g254911254914_
                                                  _g254912254916_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp262651 '() _L254616_))))
                           (__tmp262652
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses254919_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp262652 _stx253738_))))
                 (_specializer-impl254923_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl254921_
                     _struct-check-all254792_
                     _empty253837_)))
                 (_unchecked-specializer-impl254925_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?253840_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl254921_
                         _empty253837_
                         _struct-check-all254792_))
                      '#f))
                 (_specializer-impl254927_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl253744_
                     _$t254722_
                     _methods-bind254745_
                     _slots-bind254768_
                     _class-check-bind254790_
                     _struct-check-bind254814_
                     _specializer-impl254923_
                     _lifted-specializer-id254720_
                     _unchecked-specializer-impl254925_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp262654
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L253813_)))
                                                          (__tmp262653
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id254713_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp262654
                                                       '" => "
                                                       __tmp262653))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def253745_
                                                       _L253813_
                                                       _specializer-id254713_
                                                       _specializer-impl254927_
                                                       _lifted-specializer-id254720_
                                                       _unchecked-specializer-impl254925_)))))
                                            _clause254574254613_))))))
                           (let ()
                             (declare (not safe))
                             (_loop254569254597_ _target254566254592_ '())))
                         (let ()
                           (declare (not safe))
                           (_g254560254579_ _g254561254582_))))))
               (let ()
                 (declare (not safe))
                 (_g254560254579_ _g254561254582_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g254560254579_
                                                  _g254561254582_))))))
                                   (declare (not safe))
                                   (_g254559254930_ _L253812_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L253812_))
                                     (let* ((_g254933254963_
                                             (lambda (_g254934254960_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g254934254960_))))
                                            (_g254932255651_
                                             (lambda (_g254934254966_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g254934254966_))
                                                   (let ((_e254940254968_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g254934254966_))))
                                                     (let ((_hd254939254971_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e254940254968_)))
                                                           (_tl254938254973_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e254940254968_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl254938254973_))
                                                           (let ((_e254943254976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl254938254973_))))
                     (let ((_hd254942254979_
                            (let ()
                              (declare (not safe))
                              (##car _e254943254976_)))
                           (_tl254941254981_
                            (let ()
                              (declare (not safe))
                              (##cdr _e254943254976_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd254942254979_))
                           (let ((_e254946254984_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd254942254979_))))
                             (let ((_hd254945254987_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e254946254984_)))
                                   (_tl254944254989_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e254946254984_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd254945254987_))
                                   (let ((_e254949254992_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd254945254987_))))
                                     (let ((_hd254948254995_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e254949254992_)))
                                           (_tl254947254997_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e254949254992_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd254948254995_))
                                           (let ((_e254952255000_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd254948254995_))))
                                             (let ((_hd254951255003_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e254952255000_)))
                                                   (_tl254950255005_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e254952255000_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl254950255005_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl254947254997_))
                                                       (let ((_e254955255008_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl254947254997_))))
                 (let ((_hd254954255011_
                        (let () (declare (not safe)) (##car _e254955255008_)))
                       (_tl254953255013_
                        (let () (declare (not safe)) (##cdr _e254955255008_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl254953255013_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl254944254989_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl254941254981_))
                               (let ((_e254958255016_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl254941254981_))))
                                 (let ((_hd254957255019_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e254958255016_)))
                                       (_tl254956255021_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e254958255016_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl254956255021_))
                                       ((lambda (_L255024_ _L255025_ _L255026_)
                                          (let* ((_g255049255067_
                                                  (lambda (_g255050255064_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g255050255064_))))
                                                 (_g255048255118_
                                                  (lambda (_g255050255070_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g255050255070_))
                                                        (let ((_e255056255072_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g255050255070_))))
                  (let ((_hd255055255075_
                         (let () (declare (not safe)) (##car _e255056255072_)))
                        (_tl255054255077_
                         (let ()
                           (declare (not safe))
                           (##cdr _e255056255072_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl255054255077_))
                        (let ((_e255059255080_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl255054255077_))))
                          (let ((_hd255058255083_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e255059255080_)))
                                (_tl255057255085_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e255059255080_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd255058255083_))
                                (let ((_e255062255088_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd255058255083_))))
                                  (let ((_hd255061255091_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e255062255088_)))
                                        (_tl255060255093_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e255062255088_))))
                                    ((lambda (_L255096_ _L255097_ _L255098_)
                                       (for-each
                                        (lambda (_g255113255115_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g255113255115_
                                             _L255098_
                                             _method-calls253832_
                                             _slot-refs253833_
                                             _class-type-check253834_
                                             _struct-type-check253835_
                                             _struct-type-assert253836_)))
                                        _L255096_))
                                     _tl255057255085_
                                     _tl255060255093_
                                     _hd255061255091_)))
                                (let ()
                                  (declare (not safe))
                                  (_g255049255067_ _g255050255070_)))))
                        (let ()
                          (declare (not safe))
                          (_g255049255067_ _g255050255070_)))))
                (let ()
                  (declare (not safe))
                  (_g255049255067_ _g255050255070_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g255048255118_ _L255025_))
                                          (let* ((_g255121255140_
                                                  (lambda (_g255122255137_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g255122255137_))))
                                                 (_g255120255259_
                                                  (lambda (_g255122255143_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g255122255143_))
                                                        (let ((_e255126255145_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g255122255143_))))
                  (let ((_hd255125255148_
                         (let () (declare (not safe)) (##car _e255126255145_)))
                        (_tl255124255150_
                         (let ()
                           (declare (not safe))
                           (##cdr _e255126255145_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl255124255150_))
                        (let ((_g262595_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl255124255150_
                                  '0))))
                          (begin
                            (let ((_g262596_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g262595_)
                                         (##vector-length _g262595_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g262596_ 2)))
                                  (error "Context expects 2 values"
                                         _g262596_)))
                            (let ((_target255127255153_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g262595_ 0)))
                                  (_tl255129255155_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g262595_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl255129255155_))
                                  (letrec ((_loop255130255158_
                                            (lambda (_hd255128255161_
                                                     _clause255134255163_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd255128255161_))
                                                  (let ((_e255131255166_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd255128255161_))))
                                                    (let ((_lp-hd255132255169_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e255131255166_)))
                                                          (_lp-tl255133255171_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e255131255166_))))
                                                      (let ((__tmp262598
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd255132255169_ _clause255134255163_))))
                (declare (not safe))
                (_loop255130255158_ _lp-tl255133255171_ __tmp262598))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause255135255174_
                                                         (reverse _clause255134255163_)))
                                                    ((lambda (_L255177_)
                                                       (for-each
                                                        (lambda (_clause255190_)
                                                          (let* ((_g255192255207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g255193255204_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g255193255204_))))
                         (_g255191255249_
                          (lambda (_g255193255210_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g255193255210_))
                                (let ((_e255199255212_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g255193255210_))))
                                  (let ((_hd255198255215_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e255199255212_)))
                                        (_tl255197255217_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e255199255212_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd255198255215_))
                                        (let ((_e255202255220_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd255198255215_))))
                                          (let ((_hd255201255223_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e255202255220_)))
                                                (_tl255200255225_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e255202255220_))))
                                            ((lambda (_L255228_
                                                      _L255229_
                                                      _L255230_)
                                               (for-each
                                                (lambda (_g255244255246_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g255244255246_
                                                     _L255230_
                                                     _method-calls253832_
                                                     _slot-refs253833_
                                                     _class-type-check253834_
                                                     _struct-type-check253835_
                                                     _struct-type-assert253836_)))
                                                _L255228_))
                                             _tl255197255217_
                                             _tl255200255225_
                                             _hd255201255223_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g255192255207_ _g255193255210_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g255192255207_ _g255193255210_))))))
                    (declare (not safe))
                    (_g255191255249_ _clause255190_)))
                (let ((__tmp262597
                       (lambda (_g255251255254_ _g255252255256_)
                         (let ()
                           (declare (not safe))
                           (cons _g255251255254_ _g255252255256_)))))
                  (declare (not safe))
                  (foldr1 __tmp262597 '() _L255177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause255135255174_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop255130255158_
                                       _target255127255153_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g255121255140_ _g255122255143_))))))
                        (let ()
                          (declare (not safe))
                          (_g255121255140_ _g255122255143_)))))
                (let ()
                  (declare (not safe))
                  (_g255121255140_ _g255122255143_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g255120255259_ _L255024_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?253839_))
                                              _stx253738_
                                              (let* ((_specializer-id255268_
                                                      (let* ((_id255262_
                                                              (let ((__tmp262599
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L253813_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp262599 '"::specialize")))
                     (_specializer-id255265_
                      (let ((__tmp262600
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx253738_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id255262_ __tmp262600))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id255265_))
                _specializer-id255265_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id255275_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?253841_))
                                                          (let* ((_id255270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp262601
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L253813_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp262601
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id255272_
                          (let ((__tmp262602
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx253738_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id255270_ __tmp262602))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id255272_))
                    _lifted-specializer-id255272_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t255277_
                                                      (let ((__tmp262603
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp262603)))
                                                     (_methods255279_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls253832_)))
                                                     (_$methods255283_
                                                      (map (lambda (_id255281_)
                                                             (let ((__tmp262604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id255281_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp262604)))
                   _methods255279_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g262605_
                                                      (for-each
                                                       (lambda (_g255284255287_
                                                                _g255285255289_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls253832_
                                                            _g255284255287_
                                                            _g255285255289_)))
                                                       _methods255279_
                                                       _$methods255283_))
                                                     (_methods-bind255300_
                                                      (map (lambda (_g255292255295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g255293255297_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind253740_
                        _$t255277_
                        _g255292255295_
                        _g255293255297_)))
                   _methods255279_
                   _$methods255283_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots255302_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs253833_)))
                                                     (_$slots255306_
                                                      (map (lambda (_id255304_)
                                                             (let ((__tmp262606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id255304_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp262606)))
                   _slots255302_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g262607_
                                                      (for-each
                                                       (lambda (_g255307255310_
                                                                _g255308255312_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs253833_
                                                            _g255307255310_
                                                            _g255308255312_)))
                                                       _slots255302_
                                                       _$slots255306_))
                                                     (_slots-bind255323_
                                                      (map (lambda (_g255315255318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g255316255320_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind253741_
                        _$t255277_
                        _g255315255318_
                        _g255316255320_)))
                   _slots255302_
                   _$slots255306_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check255325_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check253834_)))
                                                     (_$class-check255328_
                                                      (map (lambda (_g262608_)
                                                             (let ((__tmp262609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp262609)))
                   _class-check255325_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g262610_
                                                      (for-each
                                                       (lambda (_g255329255332_
                                                                _g255330255334_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _class-type-check253834_
                                                            _g255329255332_
                                                            _g255330255334_)))
                                                       _class-check255325_
                                                       _$class-check255328_))
                                                     (_class-check-bind255345_
                                                      (map (lambda (_g255337255340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g255338255342_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind253742_
                        _$t255277_
                        _g255337255340_
                        _g255338255342_)))
                   _class-check255325_
                   _$class-check255328_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all255347_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check253835_
                                                         _struct-type-assert253836_)))
                                                     (_struct-check255349_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all255347_)))
                                                     (_$struct-check255352_
                                                      (map (lambda (_g262611_)
                                                             (let ((__tmp262612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp262612)))
                   _struct-check255349_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g262613_
                                                      (for-each
                                                       (lambda (_g255353255356_
                                                                _g255354255358_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _struct-check-all255347_
                                                            _g255353255356_
                                                            _g255354255358_)))
                                                       _struct-check255349_
                                                       _$struct-check255352_))
                                                     (_struct-check-bind255369_
                                                      (map (lambda (_g255361255364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g255362255366_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind253743_
                        _$t255277_
                        _g255361255364_
                        _g255362255366_)))
                   _struct-check255349_
                   _$struct-check255352_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr255468_
                                                      (lambda (_struct-type-check1255371_
                                                               _struct-type-check2255372_)
                                                        (let* ((_g255374255392_
                                                                (lambda (_g255375255389_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g255375255389_))))
                       (_g255373255465_
                        (lambda (_g255375255395_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g255375255395_))
                              (let ((_e255381255397_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g255375255395_))))
                                (let ((_hd255380255400_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e255381255397_)))
                                      (_tl255379255402_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e255381255397_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl255379255402_))
                                      (let ((_e255384255405_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl255379255402_))))
                                        (let ((_hd255383255408_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e255384255405_)))
                                              (_tl255382255410_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e255384255405_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd255383255408_))
                                              (let ((_e255387255413_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd255383255408_))))
                                                (let ((_hd255386255416_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e255387255413_)))
                                                      (_tl255385255418_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e255387255413_))))
                                                  ((lambda (_L255421_
                                                            _L255422_
                                                            _L255423_)
                                                     (let* ((_body255463_
                                                             (map (lambda (_g255458255460_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g255458255460_
                               _L255423_
                               _$t255277_
                               _method-calls253832_
                               _slot-refs253833_
                               _class-type-check253834_
                               _struct-type-check1255371_
                               _struct-type-check2255372_)))
                          _L255421_))
                    (__tmp262614
                     (let ((__tmp262615
                            (let ((__tmp262616
                                   (let ()
                                     (declare (not safe))
                                     (cons _L255423_ _L255422_))))
                              (declare (not safe))
                              (cons __tmp262616 _body255463_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp262615))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp262614 _L255025_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl255382255410_
                                                   _tl255385255418_
                                                   _hd255386255416_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g255374255392_
                                                 _g255375255395_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g255374255392_ _g255375255395_)))))
                              (let ()
                                (declare (not safe))
                                (_g255374255392_ _g255375255395_))))))
                  (declare (not safe))
                  (_g255373255465_ _L255025_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr255629_
                                                      (lambda (_struct-type-check1255470_
                                                               _struct-type-check2255471_)
                                                        (let* ((_g255473255492_
                                                                (lambda (_g255474255489_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g255474255489_))))
                       (_g255472255626_
                        (lambda (_g255474255495_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g255474255495_))
                              (let ((_e255478255497_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g255474255495_))))
                                (let ((_hd255477255500_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e255478255497_)))
                                      (_tl255476255502_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e255478255497_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl255476255502_))
                                      (let ((_g262617_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl255476255502_
                                                '0))))
                                        (begin
                                          (let ((_g262618_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g262617_)
                                                       (##vector-length
                                                        _g262617_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g262618_ 2)))
                                                (error "Context expects 2 values"
                                                       _g262618_)))
                                          (let ((_target255479255505_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g262617_ 0)))
                                                (_tl255481255507_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g262617_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl255481255507_))
                                                (letrec ((_loop255482255510_
                                                          (lambda (_hd255480255513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause255486255515_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd255480255513_))
                        (let ((_e255483255518_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd255480255513_))))
                          (let ((_lp-hd255484255521_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e255483255518_)))
                                (_lp-tl255485255523_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e255483255518_))))
                            (let ((__tmp262622
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd255484255521_
                                           _clause255486255515_))))
                              (declare (not safe))
                              (_loop255482255510_
                               _lp-tl255485255523_
                               __tmp262622))))
                        (let ((_clause255487255526_
                               (reverse _clause255486255515_)))
                          ((lambda (_L255529_)
                             (let* ((_clauses255624_
                                     (map (lambda (_clause255544_)
                                            (let* ((___stx261261261262_
                                                    _clause255544_)
                                                   (_g255547255562_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx261261261262_)))))
                                              (let ((___kont261263261264_
                                                     (lambda (_L255590_
                                                              _L255591_
                                                              _L255592_)
                                                       (let* ((_body255612_
                                                               (map (lambda (_g255607255609_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g255607255609_
                                 _L255592_
                                 _$t255277_
                                 _method-calls253832_
                                 _slot-refs253833_
                                 _class-type-check253834_
                                 _struct-type-check1255470_
                                 _struct-type-check2255471_)))
                            _L255590_))
                      (__tmp262619
                       (let ()
                         (declare (not safe))
                         (cons _L255592_ _L255591_))))
                 (declare (not safe))
                 (cons __tmp262619 _body255612_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont261265261266_
                                                     (lambda ()
                                                       _clause255544_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx261261261262_))
                                                    (let ((_e255554255574_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx261261261262_))))
                                                      (let ((_tl255552255579_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e255554255574_)))
                    (_hd255553255577_
                     (let () (declare (not safe)) (##car _e255554255574_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd255553255577_))
                    (let ((_e255557255582_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd255553255577_))))
                      (let ((_tl255555255587_
                             (let ()
                               (declare (not safe))
                               (##cdr _e255557255582_)))
                            (_hd255556255585_
                             (let ()
                               (declare (not safe))
                               (##car _e255557255582_))))
                        (___kont261263261264_
                         _tl255552255579_
                         _tl255555255587_
                         _hd255556255585_)))
                    (___kont261265261266_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont261265261266_)))))
                                          (let ((__tmp262620
                                                 (lambda (_g255616255619_
                                                          _g255617255621_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g255616255619_
                                                           _g255617255621_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp262620
                                                    '()
                                                    _L255529_))))
                                    (__tmp262621
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses255624_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp262621 _L255024_)))
                           _clause255487255526_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop255482255510_
                                                     _target255479255505_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g255473255492_
                                                   _g255474255495_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g255473255492_ _g255474255495_)))))
                              (let ()
                                (declare (not safe))
                                (_g255473255492_ _g255474255495_))))))
                  (declare (not safe))
                  (_g255472255626_ _L255024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl255634_
                                                      (lambda (_specializer-lambda-expr255631_
                                                               _specializer-case-lambda-expr255632_)
                                                        (let ((__tmp262623
                                                               (let ((__tmp262624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp262626
                                     (let ((__tmp262627
                                            (let ((__tmp262629
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L255026_ '())))
                                                  (__tmp262628
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr255631_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp262629 __tmp262628))))
                                       (declare (not safe))
                                       (cons __tmp262627 '())))
                                    (__tmp262625
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr255632_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp262626 __tmp262625))))
                         (declare (not safe))
                         (cons '%#let-values __tmp262624))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp262623 _stx253738_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr255636_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr255468_
                                                         _struct-check-all255347_
                                                         _empty253837_)))
                                                     (_specializer-case-lambda-expr255638_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr255629_
                                                         _struct-check-all255347_
                                                         _empty253837_)))
                                                     (_specializer-impl255640_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl255634_
                                                         _specializer-lambda-expr255636_
                                                         _specializer-case-lambda-expr255638_)))
                                                     (_unchecked-specializer-lambda-expr255642_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?253840_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr255468_
                                                             _empty253837_
                                                             _struct-check-all255347_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr255644_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?253840_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr255629_
                                                             _empty253837_
                                                             _struct-check-all255347_))
                                                          '#f))
                                                     (_unchecked-specializer-impl255646_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?253840_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl255634_
                                                             _unchecked-specializer-lambda-expr255642_
                                                             _unchecked-specializer-case-lambda-expr255644_))
                                                          '#f))
                                                     (_specializer-impl255648_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl253744_
                                                         _$t255277_
                                                         _methods-bind255300_
                                                         _slots-bind255323_
                                                         _class-check-bind255345_
                                                         _struct-check-bind255369_
                                                         _specializer-impl255640_
                                                         _lifted-specializer-id255275_
                                                         _unchecked-specializer-impl255646_))))
                                                (let ((__tmp262631
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L253813_)))
                                                      (__tmp262630
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id255268_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp262631
                                                   '" => "
                                                   __tmp262630))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def253745_
                                                   _L253813_
                                                   _specializer-id255268_
                                                   _specializer-impl255648_
                                                   _lifted-specializer-id255275_
                                                   _unchecked-specializer-impl255646_)))))
                                        _hd254957255019_
                                        _hd254954255011_
                                        _hd254951255003_)
                                       (let ()
                                         (declare (not safe))
                                         (_g254933254963_ _g254934254966_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g254933254963_ _g254934254966_)))
                           (let ()
                             (declare (not safe))
                             (_g254933254963_ _g254934254966_)))
                       (let ()
                         (declare (not safe))
                         (_g254933254963_ _g254934254966_)))))
               (let () (declare (not safe)) (_g254933254963_ _g254934254966_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g254933254963_
                                                      _g254934254966_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g254933254963_
                                              _g254934254966_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g254933254963_ _g254934254966_)))))
                           (let ()
                             (declare (not safe))
                             (_g254933254963_ _g254934254966_)))))
                   (let ()
                     (declare (not safe))
                     (_g254933254963_ _g254934254966_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g254933254963_
                                                      _g254934254966_))))))
                                       (declare (not safe))
                                       (_g254932255651_ _L253812_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L253812_))
                                         (let* ((_g255654255707_
                                                 (lambda (_g255655255704_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g255655255704_))))
                                                (_g255653256979_
                                                 (lambda (_g255655255710_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g255655255710_))
                                                       (let ((_e255663255712_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g255655255710_))))
                 (let ((_hd255662255715_
                        (let () (declare (not safe)) (##car _e255663255712_)))
                       (_tl255661255717_
                        (let () (declare (not safe)) (##cdr _e255663255712_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd255662255715_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd255662255715_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl255661255717_))
                               (let ((_e255666255720_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl255661255717_))))
                                 (let ((_hd255665255723_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e255666255720_)))
                                       (_tl255664255725_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e255666255720_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd255665255723_))
                                       (let ((_e255669255728_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd255665255723_))))
                                         (let ((_hd255668255731_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e255669255728_)))
                                               (_tl255667255733_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e255669255728_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd255668255731_))
                                               (let ((_e255672255736_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd255668255731_))))
                                                 (let ((_hd255671255739_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e255672255736_)))
                                                       (_tl255670255741_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e255672255736_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd255671255739_))
                                                       (let ((_e255675255744_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd255671255739_))))
                 (let ((_hd255674255747_
                        (let () (declare (not safe)) (##car _e255675255744_)))
                       (_tl255673255749_
                        (let () (declare (not safe)) (##cdr _e255675255744_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl255673255749_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl255670255741_))
                           (let ((_e255678255752_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl255670255741_))))
                             (let ((_hd255677255755_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e255678255752_)))
                                   (_tl255676255757_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e255678255752_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd255677255755_))
                                   (let ((_e255681255760_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd255677255755_))))
                                     (let ((_hd255680255763_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e255681255760_)))
                                           (_tl255679255765_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e255681255760_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd255680255763_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd255680255763_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl255679255765_))
                                                   (let ((_e255684255768_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl255679255765_))))
                                                     (let ((_hd255683255771_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e255684255768_)))
                                                           (_tl255682255773_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e255684255768_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd255683255771_))
                                                           (let ((_e255687255776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd255683255771_))))
                     (let ((_hd255686255779_
                            (let ()
                              (declare (not safe))
                              (##car _e255687255776_)))
                           (_tl255685255781_
                            (let ()
                              (declare (not safe))
                              (##cdr _e255687255776_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd255686255779_))
                           (let ((_e255690255784_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd255686255779_))))
                             (let ((_hd255689255787_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e255690255784_)))
                                   (_tl255688255789_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e255690255784_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd255689255787_))
                                   (let ((_e255693255792_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd255689255787_))))
                                     (let ((_hd255692255795_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e255693255792_)))
                                           (_tl255691255797_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e255693255792_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl255691255797_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl255688255789_))
                                               (let ((_e255696255800_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl255688255789_))))
                                                 (let ((_hd255695255803_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e255696255800_)))
                                                       (_tl255694255805_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e255696255800_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl255694255805_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl255685255781_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl255682255773_))
                       (let ((_e255699255808_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl255682255773_))))
                         (let ((_hd255698255811_
                                (let ()
                                  (declare (not safe))
                                  (##car _e255699255808_)))
                               (_tl255697255813_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e255699255808_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl255697255813_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl255676255757_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl255667255733_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl255664255725_))
                                           (let ((_e255702255816_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl255664255725_))))
                                             (let ((_hd255701255819_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e255702255816_)))
                                                   (_tl255700255821_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e255702255816_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl255700255821_))
                                                   ((lambda (_L255824_
                                                             _L255825_
                                                             _L255826_
                                                             _L255827_
                                                             _L255828_)
                                                      (let* ((_g255867255929_
                                                              (lambda (_g255868255926_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g255868255926_))))
                     (_g255866256976_
                      (lambda (_g255868255932_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g255868255932_))
                            (let ((_e255876255934_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g255868255932_))))
                              (let ((_hd255875255937_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e255876255934_)))
                                    (_tl255874255939_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e255876255934_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd255875255937_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd255875255937_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl255874255939_))
                                            (let ((_e255879255942_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl255874255939_))))
                                              (let ((_hd255878255945_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e255879255942_)))
                                                    (_tl255877255947_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e255879255942_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl255877255947_))
                                                    (let ((_e255882255950_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl255877255947_))))
                                                      (let ((_hd255881255953_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e255882255950_)))
                    (_tl255880255955_
                     (let () (declare (not safe)) (##cdr _e255882255950_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd255881255953_))
                    (let ((_e255885255958_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd255881255953_))))
                      (let ((_hd255884255961_
                             (let ()
                               (declare (not safe))
                               (##car _e255885255958_)))
                            (_tl255883255963_
                             (let ()
                               (declare (not safe))
                               (##cdr _e255885255958_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd255884255961_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd255884255961_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl255883255963_))
                                    (let ((_e255888255966_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl255883255963_))))
                                      (let ((_hd255887255969_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e255888255966_)))
                                            (_tl255886255971_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e255888255966_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd255887255969_))
                                            (let ((_e255891255974_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd255887255969_))))
                                              (let ((_hd255890255977_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e255891255974_)))
                                                    (_tl255889255979_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e255891255974_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd255890255977_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd255890255977_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl255889255979_))
                                                            (let ((_e255894255982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl255889255979_))))
                      (let ((_hd255893255985_
                             (let ()
                               (declare (not safe))
                               (##car _e255894255982_)))
                            (_tl255892255987_
                             (let ()
                               (declare (not safe))
                               (##cdr _e255894255982_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl255892255987_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl255886255971_))
                                (let ((_e255897255990_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl255886255971_))))
                                  (let ((_hd255896255993_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e255897255990_)))
                                        (_tl255895255995_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e255897255990_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd255896255993_))
                                        (let ((_e255900255998_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd255896255993_))))
                                          (let ((_hd255899256001_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e255900255998_)))
                                                (_tl255898256003_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e255900255998_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd255899256001_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd255899256001_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl255898256003_))
                                                        (let ((_e255903256006_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl255898256003_))))
                  (let ((_hd255902256009_
                         (let () (declare (not safe)) (##car _e255903256006_)))
                        (_tl255901256011_
                         (let ()
                           (declare (not safe))
                           (##cdr _e255903256006_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl255901256011_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl255895255995_))
                            (let ((_e255906256014_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl255895255995_))))
                              (let ((_hd255905256017_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e255906256014_)))
                                    (_tl255904256019_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e255906256014_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd255905256017_))
                                    (let ((_e255909256022_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd255905256017_))))
                                      (let ((_hd255908256025_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e255909256022_)))
                                            (_tl255907256027_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e255909256022_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd255908256025_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd255908256025_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl255907256027_))
                                                    (let ((_e255912256030_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl255907256027_))))
                                                      (let ((_hd255911256033_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e255912256030_)))
                    (_tl255910256035_
                     (let () (declare (not safe)) (##cdr _e255912256030_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl255910256035_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl255904256019_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl255904256019_))
                                  '1)
                            (let ((_g262507_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl255904256019_
                                      '1))))
                              (begin
                                (let ((_g262508_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g262507_)
                                             (##vector-length _g262507_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g262508_ 2)))
                                      (error "Context expects 2 values"
                                             _g262508_)))
                                (let ((_target255913256038_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g262507_ 0)))
                                      (_tl255915256040_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g262507_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl255915256040_))
                                      (let ((_e255924256043_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl255915256040_))))
                                        (let ((_hd255923256046_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e255924256043_)))
                                              (_tl255922256048_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e255924256043_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl255922256048_))
                                              (letrec ((_loop255916256051_
                                                        (lambda (_hd255914256054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref255920256056_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd255914256054_))
                      (let ((_e255917256059_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd255914256054_))))
                        (let ((_lp-hd255918256062_
                               (let ()
                                 (declare (not safe))
                                 (##car _e255917256059_)))
                              (_lp-tl255919256064_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e255917256059_))))
                          (let ((__tmp262594
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd255918256062_
                                         _kw-ref255920256056_))))
                            (declare (not safe))
                            (_loop255916256051_
                             _lp-tl255919256064_
                             __tmp262594))))
                      (let ((_kw-ref255921256067_
                             (reverse _kw-ref255920256056_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl255880255955_))
                            ((lambda (_L256070_
                                      _L256071_
                                      _L256072_
                                      _L256073_
                                      _L256074_)
                               (let* ((_kw-count256125_
                                       (length (let ((__tmp262509
                                                      (lambda (_g256117256120_
                                                               _g256118256122_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g256117256120_
                                                                _g256118256122_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp262509
                                                         '()
                                                         _L256071_))))
                                      (_self-index256127_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count256125_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L255826_))
                                     (let* ((_g256130256144_
                                             (lambda (_g256131256141_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g256131256141_))))
                                            (_g256129256315_
                                             (lambda (_g256131256147_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g256131256147_))
                                                   (let ((_e256136256149_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g256131256147_))))
                                                     (let ((_hd256135256152_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e256136256149_)))
                                                           (_tl256134256154_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e256136256149_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl256134256154_))
                                                           (let ((_e256139256157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl256134256154_))))
                     (let ((_hd256138256160_
                            (let ()
                              (declare (not safe))
                              (##car _e256139256157_)))
                           (_tl256137256162_
                            (let ()
                              (declare (not safe))
                              (##cdr _e256139256157_))))
                       ((lambda (_L256165_ _L256166_)
                          (let ((_self256182_
                                 (list-ref _L256166_ _self-index256127_)))
                            (for-each
                             (lambda (_g256183256185_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g256183256185_
                                  _self256182_
                                  _method-calls253832_
                                  _slot-refs253833_
                                  _class-type-check253834_
                                  _struct-type-check253835_
                                  _struct-type-assert253836_)))
                             _L256165_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?253839_))
                                _stx253738_
                                (let* ((_specializer-id256194_
                                        (let* ((_id256188_
                                                (let ((__tmp262560
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L253813_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp262560
                                                   '"::specialize")))
                                               (_specializer-id256191_
                                                (let ((__tmp262561
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx253738_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id256188_
                                                   __tmp262561))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id256191_))
                                          _specializer-id256191_))
                                       (_lifted-specializer-id256201_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?253841_))
                                            (let* ((_id256196_
                                                    (let ((__tmp262562
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L253813_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp262562
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id256198_
                                                    (let ((__tmp262563
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx253738_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id256196_
                                                       __tmp262563))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id256198_))
                                              _lifted-specializer-id256198_)
                                            '#f))
                                       (_$t256203_
                                        (let ((__tmp262564 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp262564)))
                                       (_methods256205_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls253832_)))
                                       (_$methods256209_
                                        (map (lambda (_id256207_)
                                               (let ((__tmp262565
                                                      (gensym _id256207_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp262565)))
                                             _methods256205_))
                                       (_g262566_
                                        (for-each
                                         (lambda (_g256210256213_
                                                  _g256211256215_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls253832_
                                              _g256210256213_
                                              _g256211256215_)))
                                         _methods256205_
                                         _$methods256209_))
                                       (_methods-bind256226_
                                        (map (lambda (_g256218256221_
                                                      _g256219256223_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind253740_
                                                  _$t256203_
                                                  _g256218256221_
                                                  _g256219256223_)))
                                             _methods256205_
                                             _$methods256209_))
                                       (_slots256228_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs253833_)))
                                       (_$slots256232_
                                        (map (lambda (_id256230_)
                                               (let ((__tmp262567
                                                      (gensym _id256230_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp262567)))
                                             _slots256228_))
                                       (_g262568_
                                        (for-each
                                         (lambda (_g256233256236_
                                                  _g256234256238_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs253833_
                                              _g256233256236_
                                              _g256234256238_)))
                                         _slots256228_
                                         _$slots256232_))
                                       (_slots-bind256249_
                                        (map (lambda (_g256241256244_
                                                      _g256242256246_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind253741_
                                                  _$t256203_
                                                  _g256241256244_
                                                  _g256242256246_)))
                                             _slots256228_
                                             _$slots256232_))
                                       (_class-check256251_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check253834_)))
                                       (_$class-check256254_
                                        (map (lambda (_g262569_)
                                               (let ((__tmp262570
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp262570)))
                                             _class-check256251_))
                                       (_g262571_
                                        (for-each
                                         (lambda (_g256255256258_
                                                  _g256256256260_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _class-type-check253834_
                                              _g256255256258_
                                              _g256256256260_)))
                                         _class-check256251_
                                         _$class-check256254_))
                                       (_class-check-bind256271_
                                        (map (lambda (_g256263256266_
                                                      _g256264256268_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind253742_
                                                  _$t256203_
                                                  _g256263256266_
                                                  _g256264256268_)))
                                             _class-check256251_
                                             _$class-check256254_))
                                       (_struct-check-all256273_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check253835_
                                           _struct-type-assert253836_)))
                                       (_struct-check256275_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all256273_)))
                                       (_$struct-check256278_
                                        (map (lambda (_g262572_)
                                               (let ((__tmp262573
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp262573)))
                                             _struct-check256275_))
                                       (_g262574_
                                        (for-each
                                         (lambda (_g256279256282_
                                                  _g256280256284_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _struct-check-all256273_
                                              _g256279256282_
                                              _g256280256284_)))
                                         _struct-check256275_
                                         _$struct-check256278_))
                                       (_struct-check-bind256295_
                                        (map (lambda (_g256287256290_
                                                      _g256288256292_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind253743_
                                                  _$t256203_
                                                  _g256287256290_
                                                  _g256288256292_)))
                                             _struct-check256275_
                                             _$struct-check256278_))
                                       (_make-specializer-impl256306_
                                        (lambda (_struct-type-check1256297_
                                                 _struct-type-check2256298_)
                                          (let* ((_specializer-body256304_
                                                  (map (lambda (_g256299256301_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g256299256301_
                                                            _self256182_
                                                            _$t256203_
                                                            _method-calls253832_
                                                            _slot-refs253833_
                                                            _class-type-check253834_
                                                            _struct-type-check1256297_
                                                            _struct-type-check2256298_)))
                                                       _L256165_))
                                                 (__tmp262575
                                                  (let ((__tmp262576
                                                         (let ((__tmp262578
                                                                (let ((__tmp262579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp262591
                                      (let ()
                                        (declare (not safe))
                                        (cons _L255828_ '())))
                                     (__tmp262580
                                      (let ((__tmp262581
                                             (let ((__tmp262582
                                                    (let ((__tmp262584
                                                           (let ((__tmp262585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp262590
                                 (let ()
                                   (declare (not safe))
                                   (cons _L255827_ '())))
                                (__tmp262586
                                 (let ((__tmp262587
                                        (let ((__tmp262588
                                               (let ((__tmp262589
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L256166_
                                                              _specializer-body256304_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp262589))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp262588
                                           _L255826_))))
                                   (declare (not safe))
                                   (cons __tmp262587 '()))))
                            (declare (not safe))
                            (cons __tmp262590 __tmp262586))))
                     (declare (not safe))
                     (cons __tmp262585 '())))
                  (__tmp262583
                   (let () (declare (not safe)) (cons _L255825_ '()))))
              (declare (not safe))
              (cons __tmp262584 __tmp262583))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp262582))))
                                        (declare (not safe))
                                        (cons __tmp262581 '()))))
                                 (declare (not safe))
                                 (cons __tmp262591 __tmp262580))))
                          (declare (not safe))
                          (cons __tmp262579 '())))
                       (__tmp262577
                        (let () (declare (not safe)) (cons _L255824_ '()))))
                   (declare (not safe))
                   (cons __tmp262578 __tmp262577))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp262576))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp262575
                                             _stx253738_))))
                                       (_specializer-impl256308_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl256306_
                                           _struct-check-all256273_
                                           _empty253837_)))
                                       (_unchecked-specializer-impl256310_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?253840_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl256306_
                                               _empty253837_
                                               _struct-check-all256273_))
                                            '#f))
                                       (_specializer-impl256312_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl253744_
                                           _$t256203_
                                           _methods-bind256226_
                                           _slots-bind256249_
                                           _class-check-bind256271_
                                           _struct-check-bind256295_
                                           _specializer-impl256308_
                                           _lifted-specializer-id256201_
                                           _unchecked-specializer-impl256310_))))
                                  (let ((__tmp262593
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L253813_)))
                                        (__tmp262592
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id256194_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp262593
                                     '" => "
                                     __tmp262592))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def253745_
                                     _L253813_
                                     _specializer-id256194_
                                     _specializer-impl256312_
                                     _lifted-specializer-id256201_
                                     _unchecked-specializer-impl256310_))))))
                        _tl256137256162_
                        _hd256138256160_)))
                   (let ()
                     (declare (not safe))
                     (_g256130256144_ _g256131256147_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g256130256144_
                                                      _g256131256147_))))))
                                       (declare (not safe))
                                       (_g256129256315_ _L255826_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L255826_))
                                         (let* ((_g256318256348_
                                                 (lambda (_g256319256345_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g256319256345_))))
                                                (_g256317256973_
                                                 (lambda (_g256319256351_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g256319256351_))
                                                       (let ((_e256325256353_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g256319256351_))))
                 (let ((_hd256324256356_
                        (let () (declare (not safe)) (##car _e256325256353_)))
                       (_tl256323256358_
                        (let () (declare (not safe)) (##cdr _e256325256353_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl256323256358_))
                       (let ((_e256328256361_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl256323256358_))))
                         (let ((_hd256327256364_
                                (let ()
                                  (declare (not safe))
                                  (##car _e256328256361_)))
                               (_tl256326256366_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e256328256361_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd256327256364_))
                               (let ((_e256331256369_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd256327256364_))))
                                 (let ((_hd256330256372_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e256331256369_)))
                                       (_tl256329256374_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e256331256369_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd256330256372_))
                                       (let ((_e256334256377_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd256330256372_))))
                                         (let ((_hd256333256380_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e256334256377_)))
                                               (_tl256332256382_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e256334256377_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd256333256380_))
                                               (let ((_e256337256385_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd256333256380_))))
                                                 (let ((_hd256336256388_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e256337256385_)))
                                                       (_tl256335256390_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e256337256385_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl256335256390_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl256332256382_))
                                                           (let ((_e256340256393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl256332256382_))))
                     (let ((_hd256339256396_
                            (let ()
                              (declare (not safe))
                              (##car _e256340256393_)))
                           (_tl256338256398_
                            (let ()
                              (declare (not safe))
                              (##cdr _e256340256393_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl256338256398_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl256329256374_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl256326256366_))
                                   (let ((_e256343256401_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl256326256366_))))
                                     (let ((_hd256342256404_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e256343256401_)))
                                           (_tl256341256406_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e256343256401_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl256341256406_))
                                           ((lambda (_L256409_
                                                     _L256410_
                                                     _L256411_)
                                              (let* ((_g256434256448_
                                                      (lambda (_g256435256445_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g256435256445_))))
                                                     (_g256433256489_
                                                      (lambda (_g256435256451_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g256435256451_))
                                                            (let ((_e256440256453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g256435256451_))))
                      (let ((_hd256439256456_
                             (let ()
                               (declare (not safe))
                               (##car _e256440256453_)))
                            (_tl256438256458_
                             (let ()
                               (declare (not safe))
                               (##cdr _e256440256453_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl256438256458_))
                            (let ((_e256443256461_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl256438256458_))))
                              (let ((_hd256442256464_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e256443256461_)))
                                    (_tl256441256466_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e256443256461_))))
                                ((lambda (_L256469_ _L256470_)
                                   (let ((_self256483_
                                          (list-ref
                                           _L256470_
                                           _self-index256127_)))
                                     (for-each
                                      (lambda (_g256484256486_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g256484256486_
                                           _self256483_
                                           _method-calls253832_
                                           _slot-refs253833_
                                           _class-type-check253834_
                                           _struct-type-check253835_
                                           _struct-type-assert253836_)))
                                      _L256469_)))
                                 _tl256441256466_
                                 _hd256442256464_)))
                            (let ()
                              (declare (not safe))
                              (_g256434256448_ _g256435256451_)))))
                    (let ()
                      (declare (not safe))
                      (_g256434256448_ _g256435256451_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g256433256489_ _L256410_))
                                              (let* ((_g256492256511_
                                                      (lambda (_g256493256508_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g256493256508_))))
                                                     (_g256491256616_
                                                      (lambda (_g256493256514_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g256493256514_))
                                                            (let ((_e256497256516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g256493256514_))))
                      (let ((_hd256496256519_
                             (let ()
                               (declare (not safe))
                               (##car _e256497256516_)))
                            (_tl256495256521_
                             (let ()
                               (declare (not safe))
                               (##cdr _e256497256516_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl256495256521_))
                            (let ((_g262510_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl256495256521_
                                      '0))))
                              (begin
                                (let ((_g262511_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g262510_)
                                             (##vector-length _g262510_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g262511_ 2)))
                                      (error "Context expects 2 values"
                                             _g262511_)))
                                (let ((_target256498256524_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g262510_ 0)))
                                      (_tl256500256526_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g262510_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl256500256526_))
                                      (letrec ((_loop256501256529_
                                                (lambda (_hd256499256532_
                                                         _clause256505256534_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd256499256532_))
                                                      (let ((_e256502256537_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd256499256532_))))
                (let ((_lp-hd256503256540_
                       (let () (declare (not safe)) (##car _e256502256537_)))
                      (_lp-tl256504256542_
                       (let () (declare (not safe)) (##cdr _e256502256537_))))
                  (let ((__tmp262513
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd256503256540_ _clause256505256534_))))
                    (declare (not safe))
                    (_loop256501256529_ _lp-tl256504256542_ __tmp262513))))
              (let ((_clause256506256545_ (reverse _clause256505256534_)))
                ((lambda (_L256548_)
                   (for-each
                    (lambda (_clause256561_)
                      (let* ((_g256563256574_
                              (lambda (_g256564256571_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g256564256571_))))
                             (_g256562256606_
                              (lambda (_g256564256577_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g256564256577_))
                                    (let ((_e256569256579_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g256564256577_))))
                                      (let ((_hd256568256582_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e256569256579_)))
                                            (_tl256567256584_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e256569256579_))))
                                        ((lambda (_L256587_ _L256588_)
                                           (let ((_self256600_
                                                  (list-ref
                                                   _L256588_
                                                   _self-index256127_)))
                                             (for-each
                                              (lambda (_g256601256603_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g256601256603_
                                                   _self256600_
                                                   _method-calls253832_
                                                   _slot-refs253833_
                                                   _class-type-check253834_
                                                   _struct-type-check253835_
                                                   _struct-type-assert253836_)))
                                              _L256587_)))
                                         _tl256567256584_
                                         _hd256568256582_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g256563256574_ _g256564256577_))))))
                        (declare (not safe))
                        (_g256562256606_ _clause256561_)))
                    (let ((__tmp262512
                           (lambda (_g256608256611_ _g256609256613_)
                             (let ()
                               (declare (not safe))
                               (cons _g256608256611_ _g256609256613_)))))
                      (declare (not safe))
                      (foldr1 __tmp262512 '() _L256548_))))
                 _clause256506256545_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop256501256529_
                                           _target256498256524_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g256492256511_ _g256493256514_))))))
                            (let ()
                              (declare (not safe))
                              (_g256492256511_ _g256493256514_)))))
                    (let ()
                      (declare (not safe))
                      (_g256492256511_ _g256493256514_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g256491256616_ _L256409_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?253839_))
                                                  _stx253738_
                                                  (let* ((_specializer-id256625_
                                                          (let* ((_id256619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp262514
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L253813_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp262514 '"::specialize")))
                         (_specializer-id256622_
                          (let ((__tmp262515
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx253738_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id256619_ __tmp262515))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id256622_))
                    _specializer-id256622_))
                 (_lifted-specializer-id256632_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?253841_))
                      (let* ((_id256627_
                              (let ((__tmp262516
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L253813_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp262516
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id256629_
                              (let ((__tmp262517
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx253738_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id256627_
                                 __tmp262517))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id256629_))
                        _lifted-specializer-id256629_)
                      '#f))
                 (_$t256634_
                  (let ((__tmp262518 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp262518)))
                 (_methods256636_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls253832_)))
                 (_$methods256640_
                  (map (lambda (_id256638_)
                         (let ((__tmp262519 (gensym _id256638_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp262519)))
                       _methods256636_))
                 (_g262520_
                  (for-each
                   (lambda (_g256641256644_ _g256642256646_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls253832_
                        _g256641256644_
                        _g256642256646_)))
                   _methods256636_
                   _$methods256640_))
                 (_methods-bind256657_
                  (map (lambda (_g256649256652_ _g256650256654_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind253740_
                            _$t256634_
                            _g256649256652_
                            _g256650256654_)))
                       _methods256636_
                       _$methods256640_))
                 (_slots256659_
                  (let () (declare (not safe)) (hash-keys _slot-refs253833_)))
                 (_$slots256663_
                  (map (lambda (_id256661_)
                         (let ((__tmp262521 (gensym _id256661_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp262521)))
                       _slots256659_))
                 (_g262522_
                  (for-each
                   (lambda (_g256664256667_ _g256665256669_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs253833_
                        _g256664256667_
                        _g256665256669_)))
                   _slots256659_
                   _$slots256663_))
                 (_slots-bind256680_
                  (map (lambda (_g256672256675_ _g256673256677_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind253741_
                            _$t256634_
                            _g256672256675_
                            _g256673256677_)))
                       _slots256659_
                       _$slots256663_))
                 (_class-check256682_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check253834_)))
                 (_$class-check256685_
                  (map (lambda (_g262523_)
                         (let ((__tmp262524 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp262524)))
                       _class-check256682_))
                 (_g262525_
                  (for-each
                   (lambda (_g256686256689_ _g256687256691_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _class-type-check253834_
                        _g256686256689_
                        _g256687256691_)))
                   _class-check256682_
                   _$class-check256685_))
                 (_class-check-bind256702_
                  (map (lambda (_g256694256697_ _g256695256699_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind253742_
                            _$t256634_
                            _g256694256697_
                            _g256695256699_)))
                       _class-check256682_
                       _$class-check256685_))
                 (_struct-check-all256704_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check253835_
                     _struct-type-assert253836_)))
                 (_struct-check256706_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all256704_)))
                 (_$struct-check256709_
                  (map (lambda (_g262526_)
                         (let ((__tmp262527 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp262527)))
                       _struct-check256706_))
                 (_g262528_
                  (for-each
                   (lambda (_g256710256713_ _g256711256715_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _struct-check-all256704_
                        _g256710256713_
                        _g256711256715_)))
                   _struct-check256706_
                   _$struct-check256709_))
                 (_struct-check-bind256726_
                  (map (lambda (_g256718256721_ _g256719256723_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind253743_
                            _$t256634_
                            _g256718256721_
                            _g256719256723_)))
                       _struct-check256706_
                       _$struct-check256709_))
                 (_make-specializer-lambda-expr256812_
                  (lambda (_struct-type-check1256728_
                           _struct-type-check2256729_)
                    (let* ((_g256731256745_
                            (lambda (_g256732256742_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g256732256742_))))
                           (_g256730256809_
                            (lambda (_g256732256748_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g256732256748_))
                                  (let ((_e256737256750_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g256732256748_))))
                                    (let ((_hd256736256753_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e256737256750_)))
                                          (_tl256735256755_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e256737256750_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl256735256755_))
                                          (let ((_e256740256758_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl256735256755_))))
                                            (let ((_hd256739256761_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e256740256758_)))
                                                  (_tl256738256763_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e256740256758_))))
                                              ((lambda (_L256766_ _L256767_)
                                                 (let* ((_self256800_
                                                         (list-ref
                                                          _L256767_
                                                          _self-index256127_))
                                                        (_body256806_
                                                         (map (lambda (_g256801256803_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g256801256803_
                           _self256800_
                           _$t256634_
                           _method-calls253832_
                           _slot-refs253833_
                           _class-type-check253834_
                           _struct-type-check1256728_
                           _struct-type-check2256729_)))
                      _L256766_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp262529
                                                          (let ((__tmp262530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L256767_ _body256806_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp262530))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp262529
                                                      _L256410_))))
                                               _tl256738256763_
                                               _hd256739256761_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g256731256745_
                                             _g256732256748_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g256731256745_ _g256732256748_))))))
                      (declare (not safe))
                      (_g256730256809_ _L256410_))))
                 (_make-specializer-case-lambda-expr256951_
                  (lambda (_struct-type-check1256814_
                           _struct-type-check2256815_)
                    (let* ((_g256817256836_
                            (lambda (_g256818256833_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g256818256833_))))
                           (_g256816256948_
                            (lambda (_g256818256839_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g256818256839_))
                                  (let ((_e256822256841_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g256818256839_))))
                                    (let ((_hd256821256844_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e256822256841_)))
                                          (_tl256820256846_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e256822256841_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl256820256846_))
                                          (let ((_g262531_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl256820256846_
                                                    '0))))
                                            (begin
                                              (let ((_g262532_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g262531_)
                                                           (##vector-length
                                                            _g262531_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g262532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g262532_)))
                                              (let ((_target256823256849_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g262531_
                                                        0)))
                                                    (_tl256825256851_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g262531_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl256825256851_))
                                                    (letrec ((_loop256826256854_
                                                              (lambda (_hd256824256857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause256830256859_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd256824256857_))
                            (let ((_e256827256862_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd256824256857_))))
                              (let ((_lp-hd256828256865_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e256827256862_)))
                                    (_lp-tl256829256867_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e256827256862_))))
                                (let ((__tmp262535
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd256828256865_
                                               _clause256830256859_))))
                                  (declare (not safe))
                                  (_loop256826256854_
                                   _lp-tl256829256867_
                                   __tmp262535))))
                            (let ((_clause256831256870_
                                   (reverse _clause256830256859_)))
                              ((lambda (_L256873_)
                                 (let* ((_clauses256946_
                                         (map (lambda (_clause256888_)
                                                (let* ((_g256890256901_
                                                        (lambda (_g256891256898_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g256891256898_))))
                                                       (_g256889256936_
                                                        (lambda (_g256891256904_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g256891256904_))
                      (let ((_e256896256906_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g256891256904_))))
                        (let ((_hd256895256909_
                               (let ()
                                 (declare (not safe))
                                 (##car _e256896256906_)))
                              (_tl256894256911_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e256896256906_))))
                          ((lambda (_L256914_ _L256915_)
                             (let* ((_self256927_
                                     (list-ref _L256915_ _self-index256127_))
                                    (_body256933_
                                     (map (lambda (_g256928256930_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g256928256930_
                                               _self256927_
                                               _$t256634_
                                               _method-calls253832_
                                               _slot-refs253833_
                                               _class-type-check253834_
                                               _struct-type-check1256814_
                                               _struct-type-check2256815_)))
                                          _L256914_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L256915_ _body256933_))))
                           _tl256894256911_
                           _hd256895256909_)))
                      (let ()
                        (declare (not safe))
                        (_g256890256901_ _g256891256904_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g256889256936_
                                                   _clause256888_)))
                                              (let ((__tmp262533
                                                     (lambda (_g256938256941_
                                                              _g256939256943_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g256938256941_
                                                               _g256939256943_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp262533
                                                        '()
                                                        _L256873_))))
                                        (__tmp262534
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses256946_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp262534
                                    _L256409_)))
                               _clause256831256870_))))))
              (let ()
                (declare (not safe))
                (_loop256826256854_ _target256823256849_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g256817256836_
                                                       _g256818256839_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g256817256836_
                                             _g256818256839_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g256817256836_ _g256818256839_))))))
                      (declare (not safe))
                      (_g256816256948_ _L256409_))))
                 (_make-specializer-impl256956_
                  (lambda (_specializer-lambda-expr256953_
                           _specializer-case-lambda-expr256954_)
                    (let ((__tmp262536
                           (let ((__tmp262537
                                  (let ((__tmp262539
                                         (let ((__tmp262540
                                                (let ((__tmp262557
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L255828_ '())))
                                                      (__tmp262541
                                                       (let ((__tmp262542
                                                              (let ((__tmp262543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp262545
                                    (let ((__tmp262546
                                           (let ((__tmp262556
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L255827_ '())))
                                                 (__tmp262547
                                                  (let ((__tmp262548
                                                         (let ((__tmp262549
                                                                (let ((__tmp262550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp262552
                                      (let ((__tmp262553
                                             (let ((__tmp262555
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L256411_ '())))
                                                   (__tmp262554
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr256953_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp262555
                                                     __tmp262554))))
                                        (declare (not safe))
                                        (cons __tmp262553 '())))
                                     (__tmp262551
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr256954_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp262552 __tmp262551))))
                          (declare (not safe))
                          (cons '%#let-values __tmp262550))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp262549 _stx253738_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp262548 '()))))
                                             (declare (not safe))
                                             (cons __tmp262556 __tmp262547))))
                                      (declare (not safe))
                                      (cons __tmp262546 '())))
                                   (__tmp262544
                                    (let ()
                                      (declare (not safe))
                                      (cons _L255825_ '()))))
                               (declare (not safe))
                               (cons __tmp262545 __tmp262544))))
                        (declare (not safe))
                        (cons '%#let-values __tmp262543))))
                 (declare (not safe))
                 (cons __tmp262542 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp262557
                                                        __tmp262541))))
                                           (declare (not safe))
                                           (cons __tmp262540 '())))
                                        (__tmp262538
                                         (let ()
                                           (declare (not safe))
                                           (cons _L255824_ '()))))
                                    (declare (not safe))
                                    (cons __tmp262539 __tmp262538))))
                             (declare (not safe))
                             (cons '%#let-values __tmp262537))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp262536 _stx253738_))))
                 (_specializer-lambda-expr256958_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr256812_
                     _struct-check-all256704_
                     _empty253837_)))
                 (_specializer-case-lambda-expr256960_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr256951_
                     _struct-check-all256704_
                     _empty253837_)))
                 (_specializer-impl256962_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl256956_
                     _specializer-lambda-expr256958_
                     _specializer-case-lambda-expr256960_)))
                 (_unchecked-specializer-lambda-expr256964_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?253840_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr256812_
                         _empty253837_
                         _struct-check-all256704_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr256966_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?253840_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr256951_
                         _empty253837_
                         _struct-check-all256704_))
                      '#f))
                 (_unchecked-specializer-impl256968_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?253840_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl256956_
                         _unchecked-specializer-lambda-expr256964_
                         _unchecked-specializer-case-lambda-expr256966_))
                      '#f))
                 (_specializer-impl256970_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl253744_
                     _$t256634_
                     _methods-bind256657_
                     _slots-bind256680_
                     _class-check-bind256702_
                     _struct-check-bind256726_
                     _specializer-impl256962_
                     _lifted-specializer-id256632_
                     _unchecked-specializer-impl256968_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp262559
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L253813_)))
                                                          (__tmp262558
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id256625_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp262559
                                                       '" => "
                                                       __tmp262558))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def253745_
                                                       _L253813_
                                                       _specializer-id256625_
                                                       _specializer-impl256970_
                                                       _lifted-specializer-id256632_
                                                       _unchecked-specializer-impl256968_)))))
                                            _hd256342256404_
                                            _hd256339256396_
                                            _hd256336256388_)
                                           (let ()
                                             (declare (not safe))
                                             (_g256318256348_
                                              _g256319256351_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g256318256348_ _g256319256351_)))
                               (let ()
                                 (declare (not safe))
                                 (_g256318256348_ _g256319256351_)))
                           (let ()
                             (declare (not safe))
                             (_g256318256348_ _g256319256351_)))))
                   (let ()
                     (declare (not safe))
                     (_g256318256348_ _g256319256351_)))
               (let ()
                 (declare (not safe))
                 (_g256318256348_ _g256319256351_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g256318256348_
                                                  _g256319256351_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g256318256348_ _g256319256351_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g256318256348_ _g256319256351_)))))
                       (let ()
                         (declare (not safe))
                         (_g256318256348_ _g256319256351_)))))
               (let ()
                 (declare (not safe))
                 (_g256318256348_ _g256319256351_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g256317256973_ _L255826_))
                                         _stx253738_))))
                             _hd255923256046_
                             _kw-ref255921256067_
                             _hd255911256033_
                             _hd255902256009_
                             _hd255893255985_)
                            (let ()
                              (declare (not safe))
                              (_g255867255929_ _g255868255932_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop255916256051_
                                                   _target255913256038_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g255867255929_
                                                 _g255868255932_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g255867255929_ _g255868255932_))))))
                            (let ()
                              (declare (not safe))
                              (_g255867255929_ _g255868255932_)))
                        (let ()
                          (declare (not safe))
                          (_g255867255929_ _g255868255932_)))
                    (let ()
                      (declare (not safe))
                      (_g255867255929_ _g255868255932_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g255867255929_
                                                       _g255868255932_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g255867255929_
                                                   _g255868255932_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g255867255929_
                                               _g255868255932_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g255867255929_ _g255868255932_)))))
                            (let ()
                              (declare (not safe))
                              (_g255867255929_ _g255868255932_)))
                        (let ()
                          (declare (not safe))
                          (_g255867255929_ _g255868255932_)))))
                (let ()
                  (declare (not safe))
                  (_g255867255929_ _g255868255932_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g255867255929_
                                                       _g255868255932_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g255867255929_
                                                   _g255868255932_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g255867255929_ _g255868255932_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g255867255929_ _g255868255932_)))
                            (let ()
                              (declare (not safe))
                              (_g255867255929_ _g255868255932_)))))
                    (let ()
                      (declare (not safe))
                      (_g255867255929_ _g255868255932_)))
                (let ()
                  (declare (not safe))
                  (_g255867255929_ _g255868255932_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g255867255929_
                                                       _g255868255932_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g255867255929_
                                               _g255868255932_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g255867255929_ _g255868255932_)))
                                (let ()
                                  (declare (not safe))
                                  (_g255867255929_ _g255868255932_)))
                            (let ()
                              (declare (not safe))
                              (_g255867255929_ _g255868255932_)))))
                    (let ()
                      (declare (not safe))
                      (_g255867255929_ _g255868255932_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g255867255929_
                                                       _g255868255932_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g255867255929_
                                               _g255868255932_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g255867255929_ _g255868255932_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g255867255929_ _g255868255932_)))))
                            (let ()
                              (declare (not safe))
                              (_g255867255929_ _g255868255932_))))))
                (declare (not safe))
                (_g255866256976_ _L255825_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd255701255819_
                                                    _hd255698255811_
                                                    _hd255695255803_
                                                    _hd255692255795_
                                                    _hd255674255747_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g255654255707_
                                                      _g255655255710_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g255654255707_
                                              _g255655255710_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g255654255707_ _g255655255710_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g255654255707_ _g255655255710_)))
                               (let ()
                                 (declare (not safe))
                                 (_g255654255707_ _g255655255710_)))))
                       (let ()
                         (declare (not safe))
                         (_g255654255707_ _g255655255710_)))
                   (let ()
                     (declare (not safe))
                     (_g255654255707_ _g255655255710_)))
               (let ()
                 (declare (not safe))
                 (_g255654255707_ _g255655255710_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g255654255707_
                                                  _g255655255710_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g255654255707_
                                              _g255655255710_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g255654255707_ _g255655255710_)))))
                           (let ()
                             (declare (not safe))
                             (_g255654255707_ _g255655255710_)))))
                   (let ()
                     (declare (not safe))
                     (_g255654255707_ _g255655255710_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g255654255707_
                                                      _g255655255710_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g255654255707_
                                                  _g255655255710_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g255654255707_
                                              _g255655255710_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g255654255707_ _g255655255710_)))))
                           (let ()
                             (declare (not safe))
                             (_g255654255707_ _g255655255710_)))
                       (let ()
                         (declare (not safe))
                         (_g255654255707_ _g255655255710_)))))
               (let ()
                 (declare (not safe))
                 (_g255654255707_ _g255655255710_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g255654255707_
                                                  _g255655255710_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g255654255707_ _g255655255710_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g255654255707_ _g255655255710_)))
                           (let ()
                             (declare (not safe))
                             (_g255654255707_ _g255655255710_)))
                       (let ()
                         (declare (not safe))
                         (_g255654255707_ _g255655255710_)))))
               (let ()
                 (declare (not safe))
                 (_g255654255707_ _g255655255710_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g255653256979_ _L253812_))
                                         _stx253738_))))))))
                  (___kont261285261286_ (lambda () _stx253738_)))
              (let ((___match261314261315_
                     (lambda (_e253754253780_
                              _hd253753253783_
                              _tl253752253785_
                              _e253757253788_
                              _hd253756253791_
                              _tl253755253793_
                              _e253760253796_
                              _hd253759253799_
                              _tl253758253801_
                              _e253763253804_
                              _hd253762253807_
                              _tl253761253809_)
                       (let ((_L253812_ _hd253762253807_)
                             (_L253813_ _hd253759253799_))
                         (if (let ((__tmp262676
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L253813_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp262676))
                             (___kont261283261284_ _L253812_ _L253813_)
                             (___kont261285261286_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx261281261282_))
                    (let ((_e253754253780_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx261281261282_))))
                      (let ((_tl253752253785_
                             (let ()
                               (declare (not safe))
                               (##cdr _e253754253780_)))
                            (_hd253753253783_
                             (let ()
                               (declare (not safe))
                               (##car _e253754253780_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl253752253785_))
                            (let ((_e253757253788_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl253752253785_))))
                              (let ((_tl253755253793_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e253757253788_)))
                                    (_hd253756253791_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e253757253788_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd253756253791_))
                                    (let ((_e253760253796_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd253756253791_))))
                                      (let ((_tl253758253801_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e253760253796_)))
                                            (_hd253759253799_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e253760253796_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl253758253801_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl253755253793_))
                                                (let ((_e253763253804_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl253755253793_))))
                                                  (let ((_tl253761253809_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e253763253804_)))
                                                        (_hd253762253807_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e253763253804_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl253761253809_))
                                                        (___match261314261315_
                                                         _e253754253780_
                                                         _hd253753253783_
                                                         _tl253752253785_
                                                         _e253757253788_
                                                         _hd253756253791_
                                                         _tl253755253793_
                                                         _e253760253796_
                                                         _hd253759253799_
                                                         _tl253758253801_
                                                         _e253763253804_
                                                         _hd253762253807_
                                                         _tl253761253809_)
                                                        (___kont261285261286_))))
                                                (___kont261285261286_))
                                            (___kont261285261286_))))
                                    (___kont261285261286_))))
                            (___kont261285261286_))))
                    (___kont261285261286_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx252714_
               _self252715_
               _methods252716_
               _slots252717_
               _class-check252718_
               _struct-check252719_
               _struct-assert252720_)
        (let* ((___stx261317261318_ _stx252714_)
               (_g252728252950_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx261317261318_)))))
          (let ((___kont261319261320_
                 (lambda (_L253687_ _L253688_ _L253689_ _L253690_)
                   (let ((__tmp262677
                          (let () (declare (not safe)) (gx#stx-e _L253688_))))
                     (declare (not safe))
                     (hash-put! _methods252716_ __tmp262677 '#t))
                   (for-each
                    (lambda (_g253723253725_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g253723253725_
                         _self252715_
                         _methods252716_
                         _slots252717_
                         _class-check252718_
                         _struct-check252719_
                         _struct-assert252720_)))
                    (let ((__tmp262678
                           (lambda (_g253727253730_ _g253728253732_)
                             (let ()
                               (declare (not safe))
                               (cons _g253727253730_ _g253728253732_)))))
                      (declare (not safe))
                      (foldr1 __tmp262678 '() _L253687_)))))
                (___kont261323261324_
                 (lambda (_L253522_ _L253523_ _L253524_ _L253525_ _L253526_)
                   (let ((__tmp262679
                          (let () (declare (not safe)) (gx#stx-e _L253523_))))
                     (declare (not safe))
                     (hash-put! _methods252716_ __tmp262679 '#t))
                   (for-each
                    (lambda (_g253566253568_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g253566253568_
                         _self252715_
                         _methods252716_
                         _slots252717_
                         _class-check252718_
                         _struct-check252719_
                         _struct-assert252720_)))
                    (let ((__tmp262680
                           (lambda (_g253570253573_ _g253571253575_)
                             (let ()
                               (declare (not safe))
                               (cons _g253570253573_ _g253571253575_)))))
                      (declare (not safe))
                      (foldr1 __tmp262680 '() _L253522_)))))
                (___kont261327261328_
                 (lambda (_L253355_ _L253356_ _L253357_)
                   (let ((__tmp262681
                          (let () (declare (not safe)) (gx#stx-e _L253355_))))
                     (declare (not safe))
                     (hash-put! _slots252717_ __tmp262681 '#t))))
                (___kont261329261330_
                 (lambda (_L253232_ _L253233_ _L253234_ _L253235_)
                   (let ((__tmp262682
                          (let () (declare (not safe)) (gx#stx-e _L253233_))))
                     (declare (not safe))
                     (hash-put! _slots252717_ __tmp262682 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L253232_
                      _self252715_
                      _methods252716_
                      _slots252717_
                      _class-check252718_
                      _struct-check252719_
                      _struct-assert252720_))))
                (___kont261331261332_
                 (lambda (_L253116_ _L253117_)
                   (let ((__tmp262683
                          (##structure-ref
                           (let ((__tmp262684
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L253117_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp262684))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (hash-put! _slots252717_ __tmp262683 '#t))))
                (___kont261333261334_
                 (lambda (_L253026_ _L253027_ _L253028_)
                   (let ((__tmp262685
                          (##structure-ref
                           (let ((__tmp262686
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L253028_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp262686))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (hash-put! _slots252717_ __tmp262685 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L253026_
                      _self252715_
                      _methods252716_
                      _slots252717_
                      _class-check252718_
                      _struct-check252719_
                      _struct-assert252720_))))
                (___kont261335261336_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx252714_
                      _self252715_
                      _methods252716_
                      _slots252717_
                      _class-check252718_
                      _struct-check252719_
                      _struct-assert252720_)))))
            (let* ((___match261816261817_
                    (lambda (_e252924252962_
                             _hd252923252965_
                             _tl252922252967_
                             _e252927252970_
                             _hd252926252973_
                             _tl252925252975_
                             _e252930252978_
                             _hd252929252981_
                             _tl252928252983_
                             _e252933252986_
                             _hd252932252989_
                             _tl252931252991_
                             _e252936252994_
                             _hd252935252997_
                             _tl252934252999_
                             _e252939253002_
                             _hd252938253005_
                             _tl252937253007_
                             _e252942253010_
                             _hd252941253013_
                             _tl252940253015_
                             _e252945253018_
                             _hd252944253021_
                             _tl252943253023_)
                      (let ((_L253026_ _hd252944253021_)
                            (_L253027_ _hd252941253013_)
                            (_L253028_ _hd252932252989_))
                        (if (and (let ((__tmp262687
                                        (let ((__tmp262688
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L253028_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp262688))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp262687
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L253027_
                                    _self252715_)))
                            (___kont261333261334_
                             _L253026_
                             _L253027_
                             _L253028_)
                            (___kont261335261336_)))))
                   (___match261814261815_
                    (lambda (_e252924252962_
                             _hd252923252965_
                             _tl252922252967_
                             _e252927252970_
                             _hd252926252973_
                             _tl252925252975_
                             _e252930252978_
                             _hd252929252981_
                             _tl252928252983_
                             _e252933252986_
                             _hd252932252989_
                             _tl252931252991_
                             _e252936252994_
                             _hd252935252997_
                             _tl252934252999_
                             _e252939253002_
                             _hd252938253005_
                             _tl252937253007_
                             _e252942253010_
                             _hd252941253013_
                             _tl252940253015_
                             _e252945253018_
                             _hd252944253021_
                             _tl252943253023_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl252943253023_))
                          (___match261816261817_
                           _e252924252962_
                           _hd252923252965_
                           _tl252922252967_
                           _e252927252970_
                           _hd252926252973_
                           _tl252925252975_
                           _e252930252978_
                           _hd252929252981_
                           _tl252928252983_
                           _e252933252986_
                           _hd252932252989_
                           _tl252931252991_
                           _e252936252994_
                           _hd252935252997_
                           _tl252934252999_
                           _e252939253002_
                           _hd252938253005_
                           _tl252937253007_
                           _e252942253010_
                           _hd252941253013_
                           _tl252940253015_
                           _e252945253018_
                           _hd252944253021_
                           _tl252943253023_)
                          (___kont261335261336_))))
                   (___match261808261809_
                    (lambda (_e252924252962_
                             _hd252923252965_
                             _tl252922252967_
                             _e252927252970_
                             _hd252926252973_
                             _tl252925252975_
                             _e252930252978_
                             _hd252929252981_
                             _tl252928252983_
                             _e252933252986_
                             _hd252932252989_
                             _tl252931252991_
                             _e252936252994_
                             _hd252935252997_
                             _tl252934252999_
                             _e252939253002_
                             _hd252938253005_
                             _tl252937253007_
                             _e252942253010_
                             _hd252941253013_
                             _tl252940253015_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl252934252999_))
                          (let ((_e252945253018_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl252934252999_))))
                            (let ((_tl252943253023_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e252945253018_)))
                                  (_hd252944253021_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e252945253018_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl252943253023_))
                                  (___match261816261817_
                                   _e252924252962_
                                   _hd252923252965_
                                   _tl252922252967_
                                   _e252927252970_
                                   _hd252926252973_
                                   _tl252925252975_
                                   _e252930252978_
                                   _hd252929252981_
                                   _tl252928252983_
                                   _e252933252986_
                                   _hd252932252989_
                                   _tl252931252991_
                                   _e252936252994_
                                   _hd252935252997_
                                   _tl252934252999_
                                   _e252939253002_
                                   _hd252938253005_
                                   _tl252937253007_
                                   _e252942253010_
                                   _hd252941253013_
                                   _tl252940253015_
                                   _e252945253018_
                                   _hd252944253021_
                                   _tl252943253023_)
                                  (___kont261335261336_))))
                          (___kont261335261336_))))
                   (___match261754261755_
                    (lambda (_e252900253060_
                             _hd252899253063_
                             _tl252898253065_
                             _e252903253068_
                             _hd252902253071_
                             _tl252901253073_
                             _e252906253076_
                             _hd252905253079_
                             _tl252904253081_
                             _e252909253084_
                             _hd252908253087_
                             _tl252907253089_
                             _e252912253092_
                             _hd252911253095_
                             _tl252910253097_
                             _e252915253100_
                             _hd252914253103_
                             _tl252913253105_
                             _e252918253108_
                             _hd252917253111_
                             _tl252916253113_)
                      (let ((_L253116_ _hd252917253111_)
                            (_L253117_ _hd252908253087_))
                        (if (and (let ((__tmp262689
                                        (let ((__tmp262690
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L253117_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp262690))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp262689
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L253116_
                                    _self252715_)))
                            (___kont261331261332_ _L253116_ _L253117_)
                            (___kont261335261336_)))))
                   (___match261752261753_
                    (lambda (_e252900253060_
                             _hd252899253063_
                             _tl252898253065_
                             _e252903253068_
                             _hd252902253071_
                             _tl252901253073_
                             _e252906253076_
                             _hd252905253079_
                             _tl252904253081_
                             _e252909253084_
                             _hd252908253087_
                             _tl252907253089_
                             _e252912253092_
                             _hd252911253095_
                             _tl252910253097_
                             _e252915253100_
                             _hd252914253103_
                             _tl252913253105_
                             _e252918253108_
                             _hd252917253111_
                             _tl252916253113_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl252910253097_))
                          (___match261754261755_
                           _e252900253060_
                           _hd252899253063_
                           _tl252898253065_
                           _e252903253068_
                           _hd252902253071_
                           _tl252901253073_
                           _e252906253076_
                           _hd252905253079_
                           _tl252904253081_
                           _e252909253084_
                           _hd252908253087_
                           _tl252907253089_
                           _e252912253092_
                           _hd252911253095_
                           _tl252910253097_
                           _e252915253100_
                           _hd252914253103_
                           _tl252913253105_
                           _e252918253108_
                           _hd252917253111_
                           _tl252916253113_)
                          (___match261808261809_
                           _e252900253060_
                           _hd252899253063_
                           _tl252898253065_
                           _e252903253068_
                           _hd252902253071_
                           _tl252901253073_
                           _e252906253076_
                           _hd252905253079_
                           _tl252904253081_
                           _e252909253084_
                           _hd252908253087_
                           _tl252907253089_
                           _e252912253092_
                           _hd252911253095_
                           _tl252910253097_
                           _e252915253100_
                           _hd252914253103_
                           _tl252913253105_
                           _e252918253108_
                           _hd252917253111_
                           _tl252916253113_))))
                   (___match261698261699_
                    (lambda (_e252865253144_
                             _hd252864253147_
                             _tl252863253149_
                             _e252868253152_
                             _hd252867253155_
                             _tl252866253157_
                             _e252871253160_
                             _hd252870253163_
                             _tl252869253165_
                             _e252874253168_
                             _hd252873253171_
                             _tl252872253173_
                             _e252877253176_
                             _hd252876253179_
                             _tl252875253181_
                             _e252880253184_
                             _hd252879253187_
                             _tl252878253189_
                             _e252883253192_
                             _hd252882253195_
                             _tl252881253197_
                             _e252886253200_
                             _hd252885253203_
                             _tl252884253205_
                             _e252889253208_
                             _hd252888253211_
                             _tl252887253213_
                             _e252892253216_
                             _hd252891253219_
                             _tl252890253221_
                             _e252895253224_
                             _hd252894253227_
                             _tl252893253229_)
                      (let ((_L253232_ _hd252894253227_)
                            (_L253233_ _hd252891253219_)
                            (_L253234_ _hd252882253195_)
                            (_L253235_ _hd252873253171_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L253235_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L253235_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L253234_
                                    _self252715_)))
                            (___kont261329261330_
                             _L253232_
                             _L253233_
                             _L253234_
                             _L253235_)
                            (___kont261335261336_)))))
                   (___match261690261691_
                    (lambda (_e252865253144_
                             _hd252864253147_
                             _tl252863253149_
                             _e252868253152_
                             _hd252867253155_
                             _tl252866253157_
                             _e252871253160_
                             _hd252870253163_
                             _tl252869253165_
                             _e252874253168_
                             _hd252873253171_
                             _tl252872253173_
                             _e252877253176_
                             _hd252876253179_
                             _tl252875253181_
                             _e252880253184_
                             _hd252879253187_
                             _tl252878253189_
                             _e252883253192_
                             _hd252882253195_
                             _tl252881253197_
                             _e252886253200_
                             _hd252885253203_
                             _tl252884253205_
                             _e252889253208_
                             _hd252888253211_
                             _tl252887253213_
                             _e252892253216_
                             _hd252891253219_
                             _tl252890253221_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl252884253205_))
                          (let ((_e252895253224_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl252884253205_))))
                            (let ((_tl252893253229_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e252895253224_)))
                                  (_hd252894253227_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e252895253224_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl252893253229_))
                                  (___match261698261699_
                                   _e252865253144_
                                   _hd252864253147_
                                   _tl252863253149_
                                   _e252868253152_
                                   _hd252867253155_
                                   _tl252866253157_
                                   _e252871253160_
                                   _hd252870253163_
                                   _tl252869253165_
                                   _e252874253168_
                                   _hd252873253171_
                                   _tl252872253173_
                                   _e252877253176_
                                   _hd252876253179_
                                   _tl252875253181_
                                   _e252880253184_
                                   _hd252879253187_
                                   _tl252878253189_
                                   _e252883253192_
                                   _hd252882253195_
                                   _tl252881253197_
                                   _e252886253200_
                                   _hd252885253203_
                                   _tl252884253205_
                                   _e252889253208_
                                   _hd252888253211_
                                   _tl252887253213_
                                   _e252892253216_
                                   _hd252891253219_
                                   _tl252890253221_
                                   _e252895253224_
                                   _hd252894253227_
                                   _tl252893253229_)
                                  (___kont261335261336_))))
                          (___match261814261815_
                           _e252865253144_
                           _hd252864253147_
                           _tl252863253149_
                           _e252868253152_
                           _hd252867253155_
                           _tl252866253157_
                           _e252871253160_
                           _hd252870253163_
                           _tl252869253165_
                           _e252874253168_
                           _hd252873253171_
                           _tl252872253173_
                           _e252877253176_
                           _hd252876253179_
                           _tl252875253181_
                           _e252880253184_
                           _hd252879253187_
                           _tl252878253189_
                           _e252883253192_
                           _hd252882253195_
                           _tl252881253197_
                           _e252886253200_
                           _hd252885253203_
                           _tl252884253205_))))
                   (___match261612261613_
                    (lambda (_e252831253275_
                             _hd252830253278_
                             _tl252829253280_
                             _e252834253283_
                             _hd252833253286_
                             _tl252832253288_
                             _e252837253291_
                             _hd252836253294_
                             _tl252835253296_
                             _e252840253299_
                             _hd252839253302_
                             _tl252838253304_
                             _e252843253307_
                             _hd252842253310_
                             _tl252841253312_
                             _e252846253315_
                             _hd252845253318_
                             _tl252844253320_
                             _e252849253323_
                             _hd252848253326_
                             _tl252847253328_
                             _e252852253331_
                             _hd252851253334_
                             _tl252850253336_
                             _e252855253339_
                             _hd252854253342_
                             _tl252853253344_
                             _e252858253347_
                             _hd252857253350_
                             _tl252856253352_)
                      (let ((_L253355_ _hd252857253350_)
                            (_L253356_ _hd252848253326_)
                            (_L253357_ _hd252839253302_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L253357_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L253357_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L253356_
                                    _self252715_)))
                            (___kont261327261328_
                             _L253355_
                             _L253356_
                             _L253357_)
                            (___match261816261817_
                             _e252831253275_
                             _hd252830253278_
                             _tl252829253280_
                             _e252834253283_
                             _hd252833253286_
                             _tl252832253288_
                             _e252837253291_
                             _hd252836253294_
                             _tl252835253296_
                             _e252840253299_
                             _hd252839253302_
                             _tl252838253304_
                             _e252843253307_
                             _hd252842253310_
                             _tl252841253312_
                             _e252846253315_
                             _hd252845253318_
                             _tl252844253320_
                             _e252849253323_
                             _hd252848253326_
                             _tl252847253328_
                             _e252852253331_
                             _hd252851253334_
                             _tl252850253336_)))))
                   (___match261610261611_
                    (lambda (_e252831253275_
                             _hd252830253278_
                             _tl252829253280_
                             _e252834253283_
                             _hd252833253286_
                             _tl252832253288_
                             _e252837253291_
                             _hd252836253294_
                             _tl252835253296_
                             _e252840253299_
                             _hd252839253302_
                             _tl252838253304_
                             _e252843253307_
                             _hd252842253310_
                             _tl252841253312_
                             _e252846253315_
                             _hd252845253318_
                             _tl252844253320_
                             _e252849253323_
                             _hd252848253326_
                             _tl252847253328_
                             _e252852253331_
                             _hd252851253334_
                             _tl252850253336_
                             _e252855253339_
                             _hd252854253342_
                             _tl252853253344_
                             _e252858253347_
                             _hd252857253350_
                             _tl252856253352_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl252850253336_))
                          (___match261612261613_
                           _e252831253275_
                           _hd252830253278_
                           _tl252829253280_
                           _e252834253283_
                           _hd252833253286_
                           _tl252832253288_
                           _e252837253291_
                           _hd252836253294_
                           _tl252835253296_
                           _e252840253299_
                           _hd252839253302_
                           _tl252838253304_
                           _e252843253307_
                           _hd252842253310_
                           _tl252841253312_
                           _e252846253315_
                           _hd252845253318_
                           _tl252844253320_
                           _e252849253323_
                           _hd252848253326_
                           _tl252847253328_
                           _e252852253331_
                           _hd252851253334_
                           _tl252850253336_
                           _e252855253339_
                           _hd252854253342_
                           _tl252853253344_
                           _e252858253347_
                           _hd252857253350_
                           _tl252856253352_)
                          (___match261690261691_
                           _e252831253275_
                           _hd252830253278_
                           _tl252829253280_
                           _e252834253283_
                           _hd252833253286_
                           _tl252832253288_
                           _e252837253291_
                           _hd252836253294_
                           _tl252835253296_
                           _e252840253299_
                           _hd252839253302_
                           _tl252838253304_
                           _e252843253307_
                           _hd252842253310_
                           _tl252841253312_
                           _e252846253315_
                           _hd252845253318_
                           _tl252844253320_
                           _e252849253323_
                           _hd252848253326_
                           _tl252847253328_
                           _e252852253331_
                           _hd252851253334_
                           _tl252850253336_
                           _e252855253339_
                           _hd252854253342_
                           _tl252853253344_
                           _e252858253347_
                           _hd252857253350_
                           _tl252856253352_))))
                   (___match261600261601_
                    (lambda (_e252831253275_
                             _hd252830253278_
                             _tl252829253280_
                             _e252834253283_
                             _hd252833253286_
                             _tl252832253288_
                             _e252837253291_
                             _hd252836253294_
                             _tl252835253296_
                             _e252840253299_
                             _hd252839253302_
                             _tl252838253304_
                             _e252843253307_
                             _hd252842253310_
                             _tl252841253312_
                             _e252846253315_
                             _hd252845253318_
                             _tl252844253320_
                             _e252849253323_
                             _hd252848253326_
                             _tl252847253328_
                             _e252852253331_
                             _hd252851253334_
                             _tl252850253336_
                             _e252855253339_
                             _hd252854253342_
                             _tl252853253344_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd252854253342_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl252853253344_))
                              (let ((_e252858253347_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl252853253344_))))
                                (let ((_tl252856253352_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e252858253347_)))
                                      (_hd252857253350_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e252858253347_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl252856253352_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl252850253336_))
                                          (___match261612261613_
                                           _e252831253275_
                                           _hd252830253278_
                                           _tl252829253280_
                                           _e252834253283_
                                           _hd252833253286_
                                           _tl252832253288_
                                           _e252837253291_
                                           _hd252836253294_
                                           _tl252835253296_
                                           _e252840253299_
                                           _hd252839253302_
                                           _tl252838253304_
                                           _e252843253307_
                                           _hd252842253310_
                                           _tl252841253312_
                                           _e252846253315_
                                           _hd252845253318_
                                           _tl252844253320_
                                           _e252849253323_
                                           _hd252848253326_
                                           _tl252847253328_
                                           _e252852253331_
                                           _hd252851253334_
                                           _tl252850253336_
                                           _e252855253339_
                                           _hd252854253342_
                                           _tl252853253344_
                                           _e252858253347_
                                           _hd252857253350_
                                           _tl252856253352_)
                                          (___match261690261691_
                                           _e252831253275_
                                           _hd252830253278_
                                           _tl252829253280_
                                           _e252834253283_
                                           _hd252833253286_
                                           _tl252832253288_
                                           _e252837253291_
                                           _hd252836253294_
                                           _tl252835253296_
                                           _e252840253299_
                                           _hd252839253302_
                                           _tl252838253304_
                                           _e252843253307_
                                           _hd252842253310_
                                           _tl252841253312_
                                           _e252846253315_
                                           _hd252845253318_
                                           _tl252844253320_
                                           _e252849253323_
                                           _hd252848253326_
                                           _tl252847253328_
                                           _e252852253331_
                                           _hd252851253334_
                                           _tl252850253336_
                                           _e252855253339_
                                           _hd252854253342_
                                           _tl252853253344_
                                           _e252858253347_
                                           _hd252857253350_
                                           _tl252856253352_))
                                      (___match261814261815_
                                       _e252831253275_
                                       _hd252830253278_
                                       _tl252829253280_
                                       _e252834253283_
                                       _hd252833253286_
                                       _tl252832253288_
                                       _e252837253291_
                                       _hd252836253294_
                                       _tl252835253296_
                                       _e252840253299_
                                       _hd252839253302_
                                       _tl252838253304_
                                       _e252843253307_
                                       _hd252842253310_
                                       _tl252841253312_
                                       _e252846253315_
                                       _hd252845253318_
                                       _tl252844253320_
                                       _e252849253323_
                                       _hd252848253326_
                                       _tl252847253328_
                                       _e252852253331_
                                       _hd252851253334_
                                       _tl252850253336_))))
                              (___match261814261815_
                               _e252831253275_
                               _hd252830253278_
                               _tl252829253280_
                               _e252834253283_
                               _hd252833253286_
                               _tl252832253288_
                               _e252837253291_
                               _hd252836253294_
                               _tl252835253296_
                               _e252840253299_
                               _hd252839253302_
                               _tl252838253304_
                               _e252843253307_
                               _hd252842253310_
                               _tl252841253312_
                               _e252846253315_
                               _hd252845253318_
                               _tl252844253320_
                               _e252849253323_
                               _hd252848253326_
                               _tl252847253328_
                               _e252852253331_
                               _hd252851253334_
                               _tl252850253336_))
                          (___match261814261815_
                           _e252831253275_
                           _hd252830253278_
                           _tl252829253280_
                           _e252834253283_
                           _hd252833253286_
                           _tl252832253288_
                           _e252837253291_
                           _hd252836253294_
                           _tl252835253296_
                           _e252840253299_
                           _hd252839253302_
                           _tl252838253304_
                           _e252843253307_
                           _hd252842253310_
                           _tl252841253312_
                           _e252846253315_
                           _hd252845253318_
                           _tl252844253320_
                           _e252849253323_
                           _hd252848253326_
                           _tl252847253328_
                           _e252852253331_
                           _hd252851253334_
                           _tl252850253336_))))
                   (___match261532261533_
                    (lambda (_e252780253394_
                             _hd252779253397_
                             _tl252778253399_
                             _e252783253402_
                             _hd252782253405_
                             _tl252781253407_
                             _e252786253410_
                             _hd252785253413_
                             _tl252784253415_
                             _e252789253418_
                             _hd252788253421_
                             _tl252787253423_
                             _e252792253426_
                             _hd252791253429_
                             _tl252790253431_
                             _e252795253434_
                             _hd252794253437_
                             _tl252793253439_
                             _e252798253442_
                             _hd252797253445_
                             _tl252796253447_
                             _e252801253450_
                             _hd252800253453_
                             _tl252799253455_
                             _e252804253458_
                             _hd252803253461_
                             _tl252802253463_
                             _e252807253466_
                             _hd252806253469_
                             _tl252805253471_
                             _e252810253474_
                             _hd252809253477_
                             _tl252808253479_
                             _e252813253482_
                             _hd252812253485_
                             _tl252811253487_
                             _e252816253490_
                             _hd252815253493_
                             _tl252814253495_
                             ___splice261325261326_
                             _target252817253498_
                             _tl252819253500_)
                      (letrec ((_loop252820253503_
                                (lambda (_hd252818253506_ _args252824253508_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd252818253506_))
                                      (let ((_e252821253511_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd252818253506_))))
                                        (let ((_lp-tl252823253516_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e252821253511_)))
                                              (_lp-hd252822253514_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e252821253511_))))
                                          (let ((__tmp262691
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd252822253514_
                                                         _args252824253508_))))
                                            (declare (not safe))
                                            (_loop252820253503_
                                             _lp-tl252823253516_
                                             __tmp262691))))
                                      (let ((_args252825253519_
                                             (reverse _args252824253508_)))
                                        (let ((_L253522_ _args252825253519_)
                                              (_L253523_ _hd252815253493_)
                                              (_L253524_ _hd252806253469_)
                                              (_L253525_ _hd252797253445_)
                                              (_L253526_ _hd252788253421_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L253526_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L253525_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L253524_
                                                      _self252715_)))
                                              (___kont261323261324_
                                               _L253522_
                                               _L253523_
                                               _L253524_
                                               _L253525_
                                               _L253526_)
                                              (___kont261335261336_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop252820253503_ _target252817253498_ '())))))
                   (___match261490261491_
                    (lambda (_e252780253394_
                             _hd252779253397_
                             _tl252778253399_
                             _e252783253402_
                             _hd252782253405_
                             _tl252781253407_
                             _e252786253410_
                             _hd252785253413_
                             _tl252784253415_
                             _e252789253418_
                             _hd252788253421_
                             _tl252787253423_
                             _e252792253426_
                             _hd252791253429_
                             _tl252790253431_
                             _e252795253434_
                             _hd252794253437_
                             _tl252793253439_
                             _e252798253442_
                             _hd252797253445_
                             _tl252796253447_
                             _e252801253450_
                             _hd252800253453_
                             _tl252799253455_
                             _e252804253458_
                             _hd252803253461_
                             _tl252802253463_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd252803253461_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl252802253463_))
                              (let ((_e252807253466_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl252802253463_))))
                                (let ((_tl252805253471_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e252807253466_)))
                                      (_hd252806253469_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e252807253466_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl252805253471_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl252799253455_))
                                          (let ((_e252810253474_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl252799253455_))))
                                            (let ((_tl252808253479_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e252810253474_)))
                                                  (_hd252809253477_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e252810253474_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd252809253477_))
                                                  (let ((_e252813253482_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd252809253477_))))
                                                    (let ((_tl252811253487_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e252813253482_)))
                                                          (_hd252812253485_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e252813253482_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd252812253485_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd252812253485_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl252811253487_))
                          (let ((_e252816253490_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl252811253487_))))
                            (let ((_tl252814253495_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e252816253490_)))
                                  (_hd252815253493_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e252816253490_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl252814253495_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl252808253479_))
                                      (let ((___splice261325261326_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl252808253479_
                                                '0))))
                                        (let ((_tl252819253500_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice261325261326_
                                                  '1)))
                                              (_target252817253498_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice261325261326_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl252819253500_))
                                              (___match261532261533_
                                               _e252780253394_
                                               _hd252779253397_
                                               _tl252778253399_
                                               _e252783253402_
                                               _hd252782253405_
                                               _tl252781253407_
                                               _e252786253410_
                                               _hd252785253413_
                                               _tl252784253415_
                                               _e252789253418_
                                               _hd252788253421_
                                               _tl252787253423_
                                               _e252792253426_
                                               _hd252791253429_
                                               _tl252790253431_
                                               _e252795253434_
                                               _hd252794253437_
                                               _tl252793253439_
                                               _e252798253442_
                                               _hd252797253445_
                                               _tl252796253447_
                                               _e252801253450_
                                               _hd252800253453_
                                               _tl252799253455_
                                               _e252804253458_
                                               _hd252803253461_
                                               _tl252802253463_
                                               _e252807253466_
                                               _hd252806253469_
                                               _tl252805253471_
                                               _e252810253474_
                                               _hd252809253477_
                                               _tl252808253479_
                                               _e252813253482_
                                               _hd252812253485_
                                               _tl252811253487_
                                               _e252816253490_
                                               _hd252815253493_
                                               _tl252814253495_
                                               ___splice261325261326_
                                               _target252817253498_
                                               _tl252819253500_)
                                              (___kont261335261336_))))
                                      (___kont261335261336_))
                                  (___kont261335261336_))))
                          (___kont261335261336_))
                      (___kont261335261336_))
                  (___kont261335261336_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont261335261336_))))
                                          (___match261814261815_
                                           _e252780253394_
                                           _hd252779253397_
                                           _tl252778253399_
                                           _e252783253402_
                                           _hd252782253405_
                                           _tl252781253407_
                                           _e252786253410_
                                           _hd252785253413_
                                           _tl252784253415_
                                           _e252789253418_
                                           _hd252788253421_
                                           _tl252787253423_
                                           _e252792253426_
                                           _hd252791253429_
                                           _tl252790253431_
                                           _e252795253434_
                                           _hd252794253437_
                                           _tl252793253439_
                                           _e252798253442_
                                           _hd252797253445_
                                           _tl252796253447_
                                           _e252801253450_
                                           _hd252800253453_
                                           _tl252799253455_))
                                      (___match261814261815_
                                       _e252780253394_
                                       _hd252779253397_
                                       _tl252778253399_
                                       _e252783253402_
                                       _hd252782253405_
                                       _tl252781253407_
                                       _e252786253410_
                                       _hd252785253413_
                                       _tl252784253415_
                                       _e252789253418_
                                       _hd252788253421_
                                       _tl252787253423_
                                       _e252792253426_
                                       _hd252791253429_
                                       _tl252790253431_
                                       _e252795253434_
                                       _hd252794253437_
                                       _tl252793253439_
                                       _e252798253442_
                                       _hd252797253445_
                                       _tl252796253447_
                                       _e252801253450_
                                       _hd252800253453_
                                       _tl252799253455_))))
                              (___match261814261815_
                               _e252780253394_
                               _hd252779253397_
                               _tl252778253399_
                               _e252783253402_
                               _hd252782253405_
                               _tl252781253407_
                               _e252786253410_
                               _hd252785253413_
                               _tl252784253415_
                               _e252789253418_
                               _hd252788253421_
                               _tl252787253423_
                               _e252792253426_
                               _hd252791253429_
                               _tl252790253431_
                               _e252795253434_
                               _hd252794253437_
                               _tl252793253439_
                               _e252798253442_
                               _hd252797253445_
                               _tl252796253447_
                               _e252801253450_
                               _hd252800253453_
                               _tl252799253455_))
                          (___match261600261601_
                           _e252780253394_
                           _hd252779253397_
                           _tl252778253399_
                           _e252783253402_
                           _hd252782253405_
                           _tl252781253407_
                           _e252786253410_
                           _hd252785253413_
                           _tl252784253415_
                           _e252789253418_
                           _hd252788253421_
                           _tl252787253423_
                           _e252792253426_
                           _hd252791253429_
                           _tl252790253431_
                           _e252795253434_
                           _hd252794253437_
                           _tl252793253439_
                           _e252798253442_
                           _hd252797253445_
                           _tl252796253447_
                           _e252801253450_
                           _hd252800253453_
                           _tl252799253455_
                           _e252804253458_
                           _hd252803253461_
                           _tl252802253463_))))
                   (___match261422261423_
                    (lambda (_e252736253583_
                             _hd252735253586_
                             _tl252734253588_
                             _e252739253591_
                             _hd252738253594_
                             _tl252737253596_
                             _e252742253599_
                             _hd252741253602_
                             _tl252740253604_
                             _e252745253607_
                             _hd252744253610_
                             _tl252743253612_
                             _e252748253615_
                             _hd252747253618_
                             _tl252746253620_
                             _e252751253623_
                             _hd252750253626_
                             _tl252749253628_
                             _e252754253631_
                             _hd252753253634_
                             _tl252752253636_
                             _e252757253639_
                             _hd252756253642_
                             _tl252755253644_
                             _e252760253647_
                             _hd252759253650_
                             _tl252758253652_
                             _e252763253655_
                             _hd252762253658_
                             _tl252761253660_
                             ___splice261321261322_
                             _target252764253663_
                             _tl252766253665_)
                      (letrec ((_loop252767253668_
                                (lambda (_hd252765253671_ _args252771253673_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd252765253671_))
                                      (let ((_e252768253676_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd252765253671_))))
                                        (let ((_lp-tl252770253681_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e252768253676_)))
                                              (_lp-hd252769253679_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e252768253676_))))
                                          (let ((__tmp262692
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd252769253679_
                                                         _args252771253673_))))
                                            (declare (not safe))
                                            (_loop252767253668_
                                             _lp-tl252770253681_
                                             __tmp262692))))
                                      (let ((_args252772253684_
                                             (reverse _args252771253673_)))
                                        (let ((_L253687_ _args252772253684_)
                                              (_L253688_ _hd252762253658_)
                                              (_L253689_ _hd252753253634_)
                                              (_L253690_ _hd252744253610_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L253690_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L253689_
                                                      _self252715_)))
                                              (___kont261319261320_
                                               _L253687_
                                               _L253688_
                                               _L253689_
                                               _L253690_)
                                              (___match261610261611_
                                               _e252736253583_
                                               _hd252735253586_
                                               _tl252734253588_
                                               _e252739253591_
                                               _hd252738253594_
                                               _tl252737253596_
                                               _e252742253599_
                                               _hd252741253602_
                                               _tl252740253604_
                                               _e252745253607_
                                               _hd252744253610_
                                               _tl252743253612_
                                               _e252748253615_
                                               _hd252747253618_
                                               _tl252746253620_
                                               _e252751253623_
                                               _hd252750253626_
                                               _tl252749253628_
                                               _e252754253631_
                                               _hd252753253634_
                                               _tl252752253636_
                                               _e252757253639_
                                               _hd252756253642_
                                               _tl252755253644_
                                               _e252760253647_
                                               _hd252759253650_
                                               _tl252758253652_
                                               _e252763253655_
                                               _hd252762253658_
                                               _tl252761253660_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop252767253668_ _target252764253663_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx261317261318_))
                  (let ((_e252736253583_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx261317261318_))))
                    (let ((_tl252734253588_
                           (let ()
                             (declare (not safe))
                             (##cdr _e252736253583_)))
                          (_hd252735253586_
                           (let ()
                             (declare (not safe))
                             (##car _e252736253583_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl252734253588_))
                          (let ((_e252739253591_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl252734253588_))))
                            (let ((_tl252737253596_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e252739253591_)))
                                  (_hd252738253594_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e252739253591_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd252738253594_))
                                  (let ((_e252742253599_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd252738253594_))))
                                    (let ((_tl252740253604_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e252742253599_)))
                                          (_hd252741253602_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e252742253599_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd252741253602_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd252741253602_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl252740253604_))
                                                  (let ((_e252745253607_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl252740253604_))))
                                                    (let ((_tl252743253612_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e252745253607_)))
                                                          (_hd252744253610_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e252745253607_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl252743253612_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl252737253596_))
                      (let ((_e252748253615_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl252737253596_))))
                        (let ((_tl252746253620_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e252748253615_)))
                              (_hd252747253618_
                               (let ()
                                 (declare (not safe))
                                 (##car _e252748253615_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd252747253618_))
                              (let ((_e252751253623_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd252747253618_))))
                                (let ((_tl252749253628_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e252751253623_)))
                                      (_hd252750253626_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e252751253623_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd252750253626_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd252750253626_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl252749253628_))
                                              (let ((_e252754253631_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl252749253628_))))
                                                (let ((_tl252752253636_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e252754253631_)))
                                                      (_hd252753253634_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e252754253631_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl252752253636_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl252746253620_))
                                                          (let ((_e252757253639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl252746253620_))))
                    (let ((_tl252755253644_
                           (let ()
                             (declare (not safe))
                             (##cdr _e252757253639_)))
                          (_hd252756253642_
                           (let ()
                             (declare (not safe))
                             (##car _e252757253639_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd252756253642_))
                          (let ((_e252760253647_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd252756253642_))))
                            (let ((_tl252758253652_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e252760253647_)))
                                  (_hd252759253650_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e252760253647_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd252759253650_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd252759253650_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl252758253652_))
                                          (let ((_e252763253655_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl252758253652_))))
                                            (let ((_tl252761253660_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e252763253655_)))
                                                  (_hd252762253658_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e252763253655_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl252761253660_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl252755253644_))
                                                      (let ((___splice261321261322_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl252755253644_ '0))))
                (let ((_tl252766253665_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice261321261322_ '1)))
                      (_target252764253663_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice261321261322_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl252766253665_))
                      (___match261422261423_
                       _e252736253583_
                       _hd252735253586_
                       _tl252734253588_
                       _e252739253591_
                       _hd252738253594_
                       _tl252737253596_
                       _e252742253599_
                       _hd252741253602_
                       _tl252740253604_
                       _e252745253607_
                       _hd252744253610_
                       _tl252743253612_
                       _e252748253615_
                       _hd252747253618_
                       _tl252746253620_
                       _e252751253623_
                       _hd252750253626_
                       _tl252749253628_
                       _e252754253631_
                       _hd252753253634_
                       _tl252752253636_
                       _e252757253639_
                       _hd252756253642_
                       _tl252755253644_
                       _e252760253647_
                       _hd252759253650_
                       _tl252758253652_
                       _e252763253655_
                       _hd252762253658_
                       _tl252761253660_
                       ___splice261321261322_
                       _target252764253663_
                       _tl252766253665_)
                      (___match261610261611_
                       _e252736253583_
                       _hd252735253586_
                       _tl252734253588_
                       _e252739253591_
                       _hd252738253594_
                       _tl252737253596_
                       _e252742253599_
                       _hd252741253602_
                       _tl252740253604_
                       _e252745253607_
                       _hd252744253610_
                       _tl252743253612_
                       _e252748253615_
                       _hd252747253618_
                       _tl252746253620_
                       _e252751253623_
                       _hd252750253626_
                       _tl252749253628_
                       _e252754253631_
                       _hd252753253634_
                       _tl252752253636_
                       _e252757253639_
                       _hd252756253642_
                       _tl252755253644_
                       _e252760253647_
                       _hd252759253650_
                       _tl252758253652_
                       _e252763253655_
                       _hd252762253658_
                       _tl252761253660_))))
              (___match261610261611_
               _e252736253583_
               _hd252735253586_
               _tl252734253588_
               _e252739253591_
               _hd252738253594_
               _tl252737253596_
               _e252742253599_
               _hd252741253602_
               _tl252740253604_
               _e252745253607_
               _hd252744253610_
               _tl252743253612_
               _e252748253615_
               _hd252747253618_
               _tl252746253620_
               _e252751253623_
               _hd252750253626_
               _tl252749253628_
               _e252754253631_
               _hd252753253634_
               _tl252752253636_
               _e252757253639_
               _hd252756253642_
               _tl252755253644_
               _e252760253647_
               _hd252759253650_
               _tl252758253652_
               _e252763253655_
               _hd252762253658_
               _tl252761253660_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match261814261815_
                                                   _e252736253583_
                                                   _hd252735253586_
                                                   _tl252734253588_
                                                   _e252739253591_
                                                   _hd252738253594_
                                                   _tl252737253596_
                                                   _e252742253599_
                                                   _hd252741253602_
                                                   _tl252740253604_
                                                   _e252745253607_
                                                   _hd252744253610_
                                                   _tl252743253612_
                                                   _e252748253615_
                                                   _hd252747253618_
                                                   _tl252746253620_
                                                   _e252751253623_
                                                   _hd252750253626_
                                                   _tl252749253628_
                                                   _e252754253631_
                                                   _hd252753253634_
                                                   _tl252752253636_
                                                   _e252757253639_
                                                   _hd252756253642_
                                                   _tl252755253644_))))
                                          (___match261814261815_
                                           _e252736253583_
                                           _hd252735253586_
                                           _tl252734253588_
                                           _e252739253591_
                                           _hd252738253594_
                                           _tl252737253596_
                                           _e252742253599_
                                           _hd252741253602_
                                           _tl252740253604_
                                           _e252745253607_
                                           _hd252744253610_
                                           _tl252743253612_
                                           _e252748253615_
                                           _hd252747253618_
                                           _tl252746253620_
                                           _e252751253623_
                                           _hd252750253626_
                                           _tl252749253628_
                                           _e252754253631_
                                           _hd252753253634_
                                           _tl252752253636_
                                           _e252757253639_
                                           _hd252756253642_
                                           _tl252755253644_))
                                      (___match261490261491_
                                       _e252736253583_
                                       _hd252735253586_
                                       _tl252734253588_
                                       _e252739253591_
                                       _hd252738253594_
                                       _tl252737253596_
                                       _e252742253599_
                                       _hd252741253602_
                                       _tl252740253604_
                                       _e252745253607_
                                       _hd252744253610_
                                       _tl252743253612_
                                       _e252748253615_
                                       _hd252747253618_
                                       _tl252746253620_
                                       _e252751253623_
                                       _hd252750253626_
                                       _tl252749253628_
                                       _e252754253631_
                                       _hd252753253634_
                                       _tl252752253636_
                                       _e252757253639_
                                       _hd252756253642_
                                       _tl252755253644_
                                       _e252760253647_
                                       _hd252759253650_
                                       _tl252758253652_))
                                  (___match261814261815_
                                   _e252736253583_
                                   _hd252735253586_
                                   _tl252734253588_
                                   _e252739253591_
                                   _hd252738253594_
                                   _tl252737253596_
                                   _e252742253599_
                                   _hd252741253602_
                                   _tl252740253604_
                                   _e252745253607_
                                   _hd252744253610_
                                   _tl252743253612_
                                   _e252748253615_
                                   _hd252747253618_
                                   _tl252746253620_
                                   _e252751253623_
                                   _hd252750253626_
                                   _tl252749253628_
                                   _e252754253631_
                                   _hd252753253634_
                                   _tl252752253636_
                                   _e252757253639_
                                   _hd252756253642_
                                   _tl252755253644_))))
                          (___match261814261815_
                           _e252736253583_
                           _hd252735253586_
                           _tl252734253588_
                           _e252739253591_
                           _hd252738253594_
                           _tl252737253596_
                           _e252742253599_
                           _hd252741253602_
                           _tl252740253604_
                           _e252745253607_
                           _hd252744253610_
                           _tl252743253612_
                           _e252748253615_
                           _hd252747253618_
                           _tl252746253620_
                           _e252751253623_
                           _hd252750253626_
                           _tl252749253628_
                           _e252754253631_
                           _hd252753253634_
                           _tl252752253636_
                           _e252757253639_
                           _hd252756253642_
                           _tl252755253644_))))
                  (___match261752261753_
                   _e252736253583_
                   _hd252735253586_
                   _tl252734253588_
                   _e252739253591_
                   _hd252738253594_
                   _tl252737253596_
                   _e252742253599_
                   _hd252741253602_
                   _tl252740253604_
                   _e252745253607_
                   _hd252744253610_
                   _tl252743253612_
                   _e252748253615_
                   _hd252747253618_
                   _tl252746253620_
                   _e252751253623_
                   _hd252750253626_
                   _tl252749253628_
                   _e252754253631_
                   _hd252753253634_
                   _tl252752253636_))
              (___kont261335261336_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont261335261336_))
                                          (___kont261335261336_))
                                      (___kont261335261336_))))
                              (___kont261335261336_))))
                      (___kont261335261336_))
                  (___kont261335261336_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont261335261336_))
                                              (___kont261335261336_))
                                          (___kont261335261336_))))
                                  (___kont261335261336_))))
                          (___kont261335261336_))))
                  (___kont261335261336_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx251660_
               _self251661_
               _$t251662_
               _methods251663_
               _slots251664_
               _class-check251665_
               _struct-check251666_
               _struct-assert251667_)
        (letrec ((_force-e251669_
                  (lambda (_what252712_)
                    (let ((__tmp262693
                           (let ((__tmp262697
                                  (let ((__tmp262698
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp262698)))
                                 (__tmp262694
                                  (let ((__tmp262695
                                         (let ((__tmp262696
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what252712_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp262696))))
                                    (declare (not safe))
                                    (cons __tmp262695 '()))))
                             (declare (not safe))
                             (cons __tmp262697 __tmp262694))))
                      (declare (not safe))
                      (cons '%#call __tmp262693)))))
          (let* ((___stx261819261820_ _stx251660_)
                 (_g251677251899_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx261819261820_)))))
            (let ((___kont261821261822_
                   (lambda (_L252658_ _L252659_ _L252660_ _L252661_)
                     (let ((_$method252706_
                            (let ((__tmp262699
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L252659_))))
                              (declare (not safe))
                              (hash-ref__0 _methods251663_ __tmp262699)))
                           (_args252707_
                            (map (lambda (_g252694252696_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g252694252696_
                                      _self251661_
                                      _$t251662_
                                      _methods251663_
                                      _slots251664_
                                      _class-check251665_
                                      _struct-check251666_
                                      _struct-assert251667_)))
                                 (let ((__tmp262700
                                        (lambda (_g252698252701_
                                                 _g252699252703_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g252698252701_
                                                  _g252699252703_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp262700 '() _L252658_)))))
                       (let ((__tmp262701
                              (let ((__tmp262702
                                     (let ((__tmp262706
                                            (let ()
                                              (declare (not safe))
                                              (_force-e251669_
                                               _$method252706_)))
                                           (__tmp262703
                                            (let ((__tmp262704
                                                   (let ((__tmp262705
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self251661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp262705))))
                                              (declare (not safe))
                                              (cons __tmp262704
                                                    _args252707_))))
                                       (declare (not safe))
                                       (cons __tmp262706 __tmp262703))))
                                (declare (not safe))
                                (cons '%#call __tmp262702))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp262701 _stx251660_)))))
                  (___kont261825261826_
                   (lambda (_L252490_ _L252491_ _L252492_ _L252493_ _L252494_)
                     (let ((_$method252546_
                            (let ((__tmp262707
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L252491_))))
                              (declare (not safe))
                              (hash-ref__0 _methods251663_ __tmp262707)))
                           (_args252547_
                            (map (lambda (_g252534252536_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g252534252536_
                                      _self251661_
                                      _$t251662_
                                      _methods251663_
                                      _slots251664_
                                      _class-check251665_
                                      _struct-check251666_
                                      _struct-assert251667_)))
                                 (let ((__tmp262708
                                        (lambda (_g252538252541_
                                                 _g252539252543_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g252538252541_
                                                  _g252539252543_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp262708 '() _L252490_)))))
                       (let ((__tmp262709
                              (let ((__tmp262710
                                     (let ((__tmp262716
                                            (let ((__tmp262717
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp262717)))
                                           (__tmp262711
                                            (let ((__tmp262715
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e251669_
                                                      _$method252546_)))
                                                  (__tmp262712
                                                   (let ((__tmp262713
                                                          (let ((__tmp262714
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self251661_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp262714))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp262713
                                                           _args252547_))))
                                              (declare (not safe))
                                              (cons __tmp262715 __tmp262712))))
                                       (declare (not safe))
                                       (cons __tmp262716 __tmp262711))))
                                (declare (not safe))
                                (cons '%#call __tmp262710))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp262709 _stx251660_)))))
                  (___kont261829261830_
                   (lambda (_L252321_ _L252322_ _L252323_)
                     (let* ((_$field252355_
                             (let ((__tmp262718
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L252321_))))
                               (declare (not safe))
                               (hash-ref__0 _slots251664_ __tmp262718)))
                            (__tmp262719
                             (let ((__tmp262720
                                    (let ((__tmp262727
                                           (let ((__tmp262728
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t251662_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp262728)))
                                          (__tmp262721
                                           (let ((__tmp262725
                                                  (let ((__tmp262726
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field252355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp262726)))
                                                 (__tmp262722
                                                  (let ((__tmp262723
                                                         (let ((__tmp262724
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self251661_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp262724))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp262723 '()))))
                                             (declare (not safe))
                                             (cons __tmp262725 __tmp262722))))
                                      (declare (not safe))
                                      (cons __tmp262727 __tmp262721))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp262720))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp262719 _stx251660_))))
                  (___kont261831261832_
                   (lambda (_L252195_ _L252196_ _L252197_ _L252198_)
                     (let ((_$field252233_
                            (let ((__tmp262729
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L252196_))))
                              (declare (not safe))
                              (hash-ref__0 _slots251664_ __tmp262729)))
                           (_expr252234_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L252195_
                               _self251661_
                               _$t251662_
                               _methods251663_
                               _slots251664_
                               _class-check251665_
                               _struct-check251666_
                               _struct-assert251667_))))
                       (let ((__tmp262730
                              (let ((__tmp262731
                                     (let ((__tmp262739
                                            (let ((__tmp262740
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t251662_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp262740)))
                                           (__tmp262732
                                            (let ((__tmp262737
                                                   (let ((__tmp262738
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field252233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp262738)))
                                                  (__tmp262733
                                                   (let ((__tmp262735
                                                          (let ((__tmp262736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self251661_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp262736)))
                 (__tmp262734
                  (let () (declare (not safe)) (cons _expr252234_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp262735
                                                           __tmp262734))))
                                              (declare (not safe))
                                              (cons __tmp262737 __tmp262733))))
                                       (declare (not safe))
                                       (cons __tmp262739 __tmp262732))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp262731))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp262730 _stx251660_)))))
                  (___kont261833261834_
                   (lambda (_L252074_ _L252075_)
                     (let* ((_slot252097_
                             (##structure-ref
                              (let ((__tmp262741
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L252075_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp262741))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field252099_
                             (let ()
                               (declare (not safe))
                               (hash-ref__0 _slots251664_ _slot252097_))))
                       (let ((__tmp262742
                              (let ((__tmp262743
                                     (let ((__tmp262750
                                            (let ((__tmp262751
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t251662_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp262751)))
                                           (__tmp262744
                                            (let ((__tmp262748
                                                   (let ((__tmp262749
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field252099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp262749)))
                                                  (__tmp262745
                                                   (let ((__tmp262746
                                                          (let ((__tmp262747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self251661_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp262747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp262746 '()))))
                                              (declare (not safe))
                                              (cons __tmp262748 __tmp262745))))
                                       (declare (not safe))
                                       (cons __tmp262750 __tmp262744))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp262743))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp262742 _stx251660_)))))
                  (___kont261835261836_
                   (lambda (_L251975_ _L251976_ _L251977_)
                     (let* ((_slot252006_
                             (##structure-ref
                              (let ((__tmp262752
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L251977_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp262752))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field252008_
                             (let ()
                               (declare (not safe))
                               (hash-ref__0 _slots251664_ _slot252006_)))
                            (_expr252010_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L251975_
                                _self251661_
                                _$t251662_
                                _methods251663_
                                _slots251664_
                                _class-check251665_
                                _struct-check251666_
                                _struct-assert251667_))))
                       (let ((__tmp262753
                              (let ((__tmp262754
                                     (let ((__tmp262762
                                            (let ((__tmp262763
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t251662_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp262763)))
                                           (__tmp262755
                                            (let ((__tmp262760
                                                   (let ((__tmp262761
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field252008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp262761)))
                                                  (__tmp262756
                                                   (let ((__tmp262758
                                                          (let ((__tmp262759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self251661_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp262759)))
                 (__tmp262757
                  (let () (declare (not safe)) (cons _expr252010_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp262758
                                                           __tmp262757))))
                                              (declare (not safe))
                                              (cons __tmp262760 __tmp262756))))
                                       (declare (not safe))
                                       (cons __tmp262762 __tmp262755))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp262754))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp262753 _stx251660_)))))
                  (___kont261837261838_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx251660_
                        _self251661_
                        _$t251662_
                        _methods251663_
                        _slots251664_
                        _class-check251665_
                        _struct-check251666_
                        _struct-assert251667_)))))
              (let* ((___match262318262319_
                      (lambda (_e251873251911_
                               _hd251872251914_
                               _tl251871251916_
                               _e251876251919_
                               _hd251875251922_
                               _tl251874251924_
                               _e251879251927_
                               _hd251878251930_
                               _tl251877251932_
                               _e251882251935_
                               _hd251881251938_
                               _tl251880251940_
                               _e251885251943_
                               _hd251884251946_
                               _tl251883251948_
                               _e251888251951_
                               _hd251887251954_
                               _tl251886251956_
                               _e251891251959_
                               _hd251890251962_
                               _tl251889251964_
                               _e251894251967_
                               _hd251893251970_
                               _tl251892251972_)
                        (let ((_L251975_ _hd251893251970_)
                              (_L251976_ _hd251890251962_)
                              (_L251977_ _hd251881251938_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L251976_
                                      _self251661_))
                                   (let ((__tmp262764
                                          (let ((__tmp262765
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L251977_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp262765))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp262764
                                      'gxc#!mutator::t)))
                              (___kont261835261836_
                               _L251975_
                               _L251976_
                               _L251977_)
                              (___kont261837261838_)))))
                     (___match262316262317_
                      (lambda (_e251873251911_
                               _hd251872251914_
                               _tl251871251916_
                               _e251876251919_
                               _hd251875251922_
                               _tl251874251924_
                               _e251879251927_
                               _hd251878251930_
                               _tl251877251932_
                               _e251882251935_
                               _hd251881251938_
                               _tl251880251940_
                               _e251885251943_
                               _hd251884251946_
                               _tl251883251948_
                               _e251888251951_
                               _hd251887251954_
                               _tl251886251956_
                               _e251891251959_
                               _hd251890251962_
                               _tl251889251964_
                               _e251894251967_
                               _hd251893251970_
                               _tl251892251972_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl251892251972_))
                            (___match262318262319_
                             _e251873251911_
                             _hd251872251914_
                             _tl251871251916_
                             _e251876251919_
                             _hd251875251922_
                             _tl251874251924_
                             _e251879251927_
                             _hd251878251930_
                             _tl251877251932_
                             _e251882251935_
                             _hd251881251938_
                             _tl251880251940_
                             _e251885251943_
                             _hd251884251946_
                             _tl251883251948_
                             _e251888251951_
                             _hd251887251954_
                             _tl251886251956_
                             _e251891251959_
                             _hd251890251962_
                             _tl251889251964_
                             _e251894251967_
                             _hd251893251970_
                             _tl251892251972_)
                            (___kont261837261838_))))
                     (___match262310262311_
                      (lambda (_e251873251911_
                               _hd251872251914_
                               _tl251871251916_
                               _e251876251919_
                               _hd251875251922_
                               _tl251874251924_
                               _e251879251927_
                               _hd251878251930_
                               _tl251877251932_
                               _e251882251935_
                               _hd251881251938_
                               _tl251880251940_
                               _e251885251943_
                               _hd251884251946_
                               _tl251883251948_
                               _e251888251951_
                               _hd251887251954_
                               _tl251886251956_
                               _e251891251959_
                               _hd251890251962_
                               _tl251889251964_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl251883251948_))
                            (let ((_e251894251967_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl251883251948_))))
                              (let ((_tl251892251972_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e251894251967_)))
                                    (_hd251893251970_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e251894251967_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl251892251972_))
                                    (___match262318262319_
                                     _e251873251911_
                                     _hd251872251914_
                                     _tl251871251916_
                                     _e251876251919_
                                     _hd251875251922_
                                     _tl251874251924_
                                     _e251879251927_
                                     _hd251878251930_
                                     _tl251877251932_
                                     _e251882251935_
                                     _hd251881251938_
                                     _tl251880251940_
                                     _e251885251943_
                                     _hd251884251946_
                                     _tl251883251948_
                                     _e251888251951_
                                     _hd251887251954_
                                     _tl251886251956_
                                     _e251891251959_
                                     _hd251890251962_
                                     _tl251889251964_
                                     _e251894251967_
                                     _hd251893251970_
                                     _tl251892251972_)
                                    (___kont261837261838_))))
                            (___kont261837261838_))))
                     (___match262256262257_
                      (lambda (_e251849252018_
                               _hd251848252021_
                               _tl251847252023_
                               _e251852252026_
                               _hd251851252029_
                               _tl251850252031_
                               _e251855252034_
                               _hd251854252037_
                               _tl251853252039_
                               _e251858252042_
                               _hd251857252045_
                               _tl251856252047_
                               _e251861252050_
                               _hd251860252053_
                               _tl251859252055_
                               _e251864252058_
                               _hd251863252061_
                               _tl251862252063_
                               _e251867252066_
                               _hd251866252069_
                               _tl251865252071_)
                        (let ((_L252074_ _hd251866252069_)
                              (_L252075_ _hd251857252045_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L252074_
                                      _self251661_))
                                   (let ((__tmp262766
                                          (let ((__tmp262767
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L252075_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp262767))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp262766
                                      'gxc#!accessor::t)))
                              (___kont261833261834_ _L252074_ _L252075_)
                              (___kont261837261838_)))))
                     (___match262254262255_
                      (lambda (_e251849252018_
                               _hd251848252021_
                               _tl251847252023_
                               _e251852252026_
                               _hd251851252029_
                               _tl251850252031_
                               _e251855252034_
                               _hd251854252037_
                               _tl251853252039_
                               _e251858252042_
                               _hd251857252045_
                               _tl251856252047_
                               _e251861252050_
                               _hd251860252053_
                               _tl251859252055_
                               _e251864252058_
                               _hd251863252061_
                               _tl251862252063_
                               _e251867252066_
                               _hd251866252069_
                               _tl251865252071_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl251859252055_))
                            (___match262256262257_
                             _e251849252018_
                             _hd251848252021_
                             _tl251847252023_
                             _e251852252026_
                             _hd251851252029_
                             _tl251850252031_
                             _e251855252034_
                             _hd251854252037_
                             _tl251853252039_
                             _e251858252042_
                             _hd251857252045_
                             _tl251856252047_
                             _e251861252050_
                             _hd251860252053_
                             _tl251859252055_
                             _e251864252058_
                             _hd251863252061_
                             _tl251862252063_
                             _e251867252066_
                             _hd251866252069_
                             _tl251865252071_)
                            (___match262310262311_
                             _e251849252018_
                             _hd251848252021_
                             _tl251847252023_
                             _e251852252026_
                             _hd251851252029_
                             _tl251850252031_
                             _e251855252034_
                             _hd251854252037_
                             _tl251853252039_
                             _e251858252042_
                             _hd251857252045_
                             _tl251856252047_
                             _e251861252050_
                             _hd251860252053_
                             _tl251859252055_
                             _e251864252058_
                             _hd251863252061_
                             _tl251862252063_
                             _e251867252066_
                             _hd251866252069_
                             _tl251865252071_))))
                     (___match262200262201_
                      (lambda (_e251814252107_
                               _hd251813252110_
                               _tl251812252112_
                               _e251817252115_
                               _hd251816252118_
                               _tl251815252120_
                               _e251820252123_
                               _hd251819252126_
                               _tl251818252128_
                               _e251823252131_
                               _hd251822252134_
                               _tl251821252136_
                               _e251826252139_
                               _hd251825252142_
                               _tl251824252144_
                               _e251829252147_
                               _hd251828252150_
                               _tl251827252152_
                               _e251832252155_
                               _hd251831252158_
                               _tl251830252160_
                               _e251835252163_
                               _hd251834252166_
                               _tl251833252168_
                               _e251838252171_
                               _hd251837252174_
                               _tl251836252176_
                               _e251841252179_
                               _hd251840252182_
                               _tl251839252184_
                               _e251844252187_
                               _hd251843252190_
                               _tl251842252192_)
                        (let ((_L252195_ _hd251843252190_)
                              (_L252196_ _hd251840252182_)
                              (_L252197_ _hd251831252158_)
                              (_L252198_ _hd251822252134_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L252198_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L252198_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L252197_
                                      _self251661_)))
                              (___kont261831261832_
                               _L252195_
                               _L252196_
                               _L252197_
                               _L252198_)
                              (___kont261837261838_)))))
                     (___match262192262193_
                      (lambda (_e251814252107_
                               _hd251813252110_
                               _tl251812252112_
                               _e251817252115_
                               _hd251816252118_
                               _tl251815252120_
                               _e251820252123_
                               _hd251819252126_
                               _tl251818252128_
                               _e251823252131_
                               _hd251822252134_
                               _tl251821252136_
                               _e251826252139_
                               _hd251825252142_
                               _tl251824252144_
                               _e251829252147_
                               _hd251828252150_
                               _tl251827252152_
                               _e251832252155_
                               _hd251831252158_
                               _tl251830252160_
                               _e251835252163_
                               _hd251834252166_
                               _tl251833252168_
                               _e251838252171_
                               _hd251837252174_
                               _tl251836252176_
                               _e251841252179_
                               _hd251840252182_
                               _tl251839252184_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl251833252168_))
                            (let ((_e251844252187_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl251833252168_))))
                              (let ((_tl251842252192_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e251844252187_)))
                                    (_hd251843252190_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e251844252187_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl251842252192_))
                                    (___match262200262201_
                                     _e251814252107_
                                     _hd251813252110_
                                     _tl251812252112_
                                     _e251817252115_
                                     _hd251816252118_
                                     _tl251815252120_
                                     _e251820252123_
                                     _hd251819252126_
                                     _tl251818252128_
                                     _e251823252131_
                                     _hd251822252134_
                                     _tl251821252136_
                                     _e251826252139_
                                     _hd251825252142_
                                     _tl251824252144_
                                     _e251829252147_
                                     _hd251828252150_
                                     _tl251827252152_
                                     _e251832252155_
                                     _hd251831252158_
                                     _tl251830252160_
                                     _e251835252163_
                                     _hd251834252166_
                                     _tl251833252168_
                                     _e251838252171_
                                     _hd251837252174_
                                     _tl251836252176_
                                     _e251841252179_
                                     _hd251840252182_
                                     _tl251839252184_
                                     _e251844252187_
                                     _hd251843252190_
                                     _tl251842252192_)
                                    (___kont261837261838_))))
                            (___match262316262317_
                             _e251814252107_
                             _hd251813252110_
                             _tl251812252112_
                             _e251817252115_
                             _hd251816252118_
                             _tl251815252120_
                             _e251820252123_
                             _hd251819252126_
                             _tl251818252128_
                             _e251823252131_
                             _hd251822252134_
                             _tl251821252136_
                             _e251826252139_
                             _hd251825252142_
                             _tl251824252144_
                             _e251829252147_
                             _hd251828252150_
                             _tl251827252152_
                             _e251832252155_
                             _hd251831252158_
                             _tl251830252160_
                             _e251835252163_
                             _hd251834252166_
                             _tl251833252168_))))
                     (___match262114262115_
                      (lambda (_e251780252241_
                               _hd251779252244_
                               _tl251778252246_
                               _e251783252249_
                               _hd251782252252_
                               _tl251781252254_
                               _e251786252257_
                               _hd251785252260_
                               _tl251784252262_
                               _e251789252265_
                               _hd251788252268_
                               _tl251787252270_
                               _e251792252273_
                               _hd251791252276_
                               _tl251790252278_
                               _e251795252281_
                               _hd251794252284_
                               _tl251793252286_
                               _e251798252289_
                               _hd251797252292_
                               _tl251796252294_
                               _e251801252297_
                               _hd251800252300_
                               _tl251799252302_
                               _e251804252305_
                               _hd251803252308_
                               _tl251802252310_
                               _e251807252313_
                               _hd251806252316_
                               _tl251805252318_)
                        (let ((_L252321_ _hd251806252316_)
                              (_L252322_ _hd251797252292_)
                              (_L252323_ _hd251788252268_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L252323_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L252323_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L252322_
                                      _self251661_)))
                              (___kont261829261830_
                               _L252321_
                               _L252322_
                               _L252323_)
                              (___match262318262319_
                               _e251780252241_
                               _hd251779252244_
                               _tl251778252246_
                               _e251783252249_
                               _hd251782252252_
                               _tl251781252254_
                               _e251786252257_
                               _hd251785252260_
                               _tl251784252262_
                               _e251789252265_
                               _hd251788252268_
                               _tl251787252270_
                               _e251792252273_
                               _hd251791252276_
                               _tl251790252278_
                               _e251795252281_
                               _hd251794252284_
                               _tl251793252286_
                               _e251798252289_
                               _hd251797252292_
                               _tl251796252294_
                               _e251801252297_
                               _hd251800252300_
                               _tl251799252302_)))))
                     (___match262112262113_
                      (lambda (_e251780252241_
                               _hd251779252244_
                               _tl251778252246_
                               _e251783252249_
                               _hd251782252252_
                               _tl251781252254_
                               _e251786252257_
                               _hd251785252260_
                               _tl251784252262_
                               _e251789252265_
                               _hd251788252268_
                               _tl251787252270_
                               _e251792252273_
                               _hd251791252276_
                               _tl251790252278_
                               _e251795252281_
                               _hd251794252284_
                               _tl251793252286_
                               _e251798252289_
                               _hd251797252292_
                               _tl251796252294_
                               _e251801252297_
                               _hd251800252300_
                               _tl251799252302_
                               _e251804252305_
                               _hd251803252308_
                               _tl251802252310_
                               _e251807252313_
                               _hd251806252316_
                               _tl251805252318_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl251799252302_))
                            (___match262114262115_
                             _e251780252241_
                             _hd251779252244_
                             _tl251778252246_
                             _e251783252249_
                             _hd251782252252_
                             _tl251781252254_
                             _e251786252257_
                             _hd251785252260_
                             _tl251784252262_
                             _e251789252265_
                             _hd251788252268_
                             _tl251787252270_
                             _e251792252273_
                             _hd251791252276_
                             _tl251790252278_
                             _e251795252281_
                             _hd251794252284_
                             _tl251793252286_
                             _e251798252289_
                             _hd251797252292_
                             _tl251796252294_
                             _e251801252297_
                             _hd251800252300_
                             _tl251799252302_
                             _e251804252305_
                             _hd251803252308_
                             _tl251802252310_
                             _e251807252313_
                             _hd251806252316_
                             _tl251805252318_)
                            (___match262192262193_
                             _e251780252241_
                             _hd251779252244_
                             _tl251778252246_
                             _e251783252249_
                             _hd251782252252_
                             _tl251781252254_
                             _e251786252257_
                             _hd251785252260_
                             _tl251784252262_
                             _e251789252265_
                             _hd251788252268_
                             _tl251787252270_
                             _e251792252273_
                             _hd251791252276_
                             _tl251790252278_
                             _e251795252281_
                             _hd251794252284_
                             _tl251793252286_
                             _e251798252289_
                             _hd251797252292_
                             _tl251796252294_
                             _e251801252297_
                             _hd251800252300_
                             _tl251799252302_
                             _e251804252305_
                             _hd251803252308_
                             _tl251802252310_
                             _e251807252313_
                             _hd251806252316_
                             _tl251805252318_))))
                     (___match262102262103_
                      (lambda (_e251780252241_
                               _hd251779252244_
                               _tl251778252246_
                               _e251783252249_
                               _hd251782252252_
                               _tl251781252254_
                               _e251786252257_
                               _hd251785252260_
                               _tl251784252262_
                               _e251789252265_
                               _hd251788252268_
                               _tl251787252270_
                               _e251792252273_
                               _hd251791252276_
                               _tl251790252278_
                               _e251795252281_
                               _hd251794252284_
                               _tl251793252286_
                               _e251798252289_
                               _hd251797252292_
                               _tl251796252294_
                               _e251801252297_
                               _hd251800252300_
                               _tl251799252302_
                               _e251804252305_
                               _hd251803252308_
                               _tl251802252310_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd251803252308_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl251802252310_))
                                (let ((_e251807252313_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl251802252310_))))
                                  (let ((_tl251805252318_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e251807252313_)))
                                        (_hd251806252316_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e251807252313_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl251805252318_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl251799252302_))
                                            (___match262114262115_
                                             _e251780252241_
                                             _hd251779252244_
                                             _tl251778252246_
                                             _e251783252249_
                                             _hd251782252252_
                                             _tl251781252254_
                                             _e251786252257_
                                             _hd251785252260_
                                             _tl251784252262_
                                             _e251789252265_
                                             _hd251788252268_
                                             _tl251787252270_
                                             _e251792252273_
                                             _hd251791252276_
                                             _tl251790252278_
                                             _e251795252281_
                                             _hd251794252284_
                                             _tl251793252286_
                                             _e251798252289_
                                             _hd251797252292_
                                             _tl251796252294_
                                             _e251801252297_
                                             _hd251800252300_
                                             _tl251799252302_
                                             _e251804252305_
                                             _hd251803252308_
                                             _tl251802252310_
                                             _e251807252313_
                                             _hd251806252316_
                                             _tl251805252318_)
                                            (___match262192262193_
                                             _e251780252241_
                                             _hd251779252244_
                                             _tl251778252246_
                                             _e251783252249_
                                             _hd251782252252_
                                             _tl251781252254_
                                             _e251786252257_
                                             _hd251785252260_
                                             _tl251784252262_
                                             _e251789252265_
                                             _hd251788252268_
                                             _tl251787252270_
                                             _e251792252273_
                                             _hd251791252276_
                                             _tl251790252278_
                                             _e251795252281_
                                             _hd251794252284_
                                             _tl251793252286_
                                             _e251798252289_
                                             _hd251797252292_
                                             _tl251796252294_
                                             _e251801252297_
                                             _hd251800252300_
                                             _tl251799252302_
                                             _e251804252305_
                                             _hd251803252308_
                                             _tl251802252310_
                                             _e251807252313_
                                             _hd251806252316_
                                             _tl251805252318_))
                                        (___match262316262317_
                                         _e251780252241_
                                         _hd251779252244_
                                         _tl251778252246_
                                         _e251783252249_
                                         _hd251782252252_
                                         _tl251781252254_
                                         _e251786252257_
                                         _hd251785252260_
                                         _tl251784252262_
                                         _e251789252265_
                                         _hd251788252268_
                                         _tl251787252270_
                                         _e251792252273_
                                         _hd251791252276_
                                         _tl251790252278_
                                         _e251795252281_
                                         _hd251794252284_
                                         _tl251793252286_
                                         _e251798252289_
                                         _hd251797252292_
                                         _tl251796252294_
                                         _e251801252297_
                                         _hd251800252300_
                                         _tl251799252302_))))
                                (___match262316262317_
                                 _e251780252241_
                                 _hd251779252244_
                                 _tl251778252246_
                                 _e251783252249_
                                 _hd251782252252_
                                 _tl251781252254_
                                 _e251786252257_
                                 _hd251785252260_
                                 _tl251784252262_
                                 _e251789252265_
                                 _hd251788252268_
                                 _tl251787252270_
                                 _e251792252273_
                                 _hd251791252276_
                                 _tl251790252278_
                                 _e251795252281_
                                 _hd251794252284_
                                 _tl251793252286_
                                 _e251798252289_
                                 _hd251797252292_
                                 _tl251796252294_
                                 _e251801252297_
                                 _hd251800252300_
                                 _tl251799252302_))
                            (___match262316262317_
                             _e251780252241_
                             _hd251779252244_
                             _tl251778252246_
                             _e251783252249_
                             _hd251782252252_
                             _tl251781252254_
                             _e251786252257_
                             _hd251785252260_
                             _tl251784252262_
                             _e251789252265_
                             _hd251788252268_
                             _tl251787252270_
                             _e251792252273_
                             _hd251791252276_
                             _tl251790252278_
                             _e251795252281_
                             _hd251794252284_
                             _tl251793252286_
                             _e251798252289_
                             _hd251797252292_
                             _tl251796252294_
                             _e251801252297_
                             _hd251800252300_
                             _tl251799252302_))))
                     (___match262034262035_
                      (lambda (_e251729252362_
                               _hd251728252365_
                               _tl251727252367_
                               _e251732252370_
                               _hd251731252373_
                               _tl251730252375_
                               _e251735252378_
                               _hd251734252381_
                               _tl251733252383_
                               _e251738252386_
                               _hd251737252389_
                               _tl251736252391_
                               _e251741252394_
                               _hd251740252397_
                               _tl251739252399_
                               _e251744252402_
                               _hd251743252405_
                               _tl251742252407_
                               _e251747252410_
                               _hd251746252413_
                               _tl251745252415_
                               _e251750252418_
                               _hd251749252421_
                               _tl251748252423_
                               _e251753252426_
                               _hd251752252429_
                               _tl251751252431_
                               _e251756252434_
                               _hd251755252437_
                               _tl251754252439_
                               _e251759252442_
                               _hd251758252445_
                               _tl251757252447_
                               _e251762252450_
                               _hd251761252453_
                               _tl251760252455_
                               _e251765252458_
                               _hd251764252461_
                               _tl251763252463_
                               ___splice261827261828_
                               _target251766252466_
                               _tl251768252468_)
                        (letrec ((_loop251769252471_
                                  (lambda (_hd251767252474_ _args251773252476_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd251767252474_))
                                        (let ((_e251770252479_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd251767252474_))))
                                          (let ((_lp-tl251772252484_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e251770252479_)))
                                                (_lp-hd251771252482_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e251770252479_))))
                                            (let ((__tmp262768
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd251771252482_
                                                           _args251773252476_))))
                                              (declare (not safe))
                                              (_loop251769252471_
                                               _lp-tl251772252484_
                                               __tmp262768))))
                                        (let ((_args251774252487_
                                               (reverse _args251773252476_)))
                                          (let ((_L252490_ _args251774252487_)
                                                (_L252491_ _hd251764252461_)
                                                (_L252492_ _hd251755252437_)
                                                (_L252493_ _hd251746252413_)
                                                (_L252494_ _hd251737252389_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L252494_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L252493_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L252492_
                                                        _self251661_)))
                                                (___kont261825261826_
                                                 _L252490_
                                                 _L252491_
                                                 _L252492_
                                                 _L252493_
                                                 _L252494_)
                                                (___kont261837261838_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop251769252471_ _target251766252466_ '())))))
                     (___match261992261993_
                      (lambda (_e251729252362_
                               _hd251728252365_
                               _tl251727252367_
                               _e251732252370_
                               _hd251731252373_
                               _tl251730252375_
                               _e251735252378_
                               _hd251734252381_
                               _tl251733252383_
                               _e251738252386_
                               _hd251737252389_
                               _tl251736252391_
                               _e251741252394_
                               _hd251740252397_
                               _tl251739252399_
                               _e251744252402_
                               _hd251743252405_
                               _tl251742252407_
                               _e251747252410_
                               _hd251746252413_
                               _tl251745252415_
                               _e251750252418_
                               _hd251749252421_
                               _tl251748252423_
                               _e251753252426_
                               _hd251752252429_
                               _tl251751252431_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd251752252429_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl251751252431_))
                                (let ((_e251756252434_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl251751252431_))))
                                  (let ((_tl251754252439_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e251756252434_)))
                                        (_hd251755252437_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e251756252434_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl251754252439_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl251748252423_))
                                            (let ((_e251759252442_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl251748252423_))))
                                              (let ((_tl251757252447_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e251759252442_)))
                                                    (_hd251758252445_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e251759252442_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd251758252445_))
                                                    (let ((_e251762252450_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd251758252445_))))
                                                      (let ((_tl251760252455_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e251762252450_)))
                    (_hd251761252453_
                     (let () (declare (not safe)) (##car _e251762252450_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd251761252453_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd251761252453_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl251760252455_))
                            (let ((_e251765252458_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl251760252455_))))
                              (let ((_tl251763252463_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e251765252458_)))
                                    (_hd251764252461_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e251765252458_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl251763252463_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl251757252447_))
                                        (let ((___splice261827261828_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl251757252447_
                                                  '0))))
                                          (let ((_tl251768252468_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice261827261828_
                                                    '1)))
                                                (_target251766252466_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice261827261828_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl251768252468_))
                                                (___match262034262035_
                                                 _e251729252362_
                                                 _hd251728252365_
                                                 _tl251727252367_
                                                 _e251732252370_
                                                 _hd251731252373_
                                                 _tl251730252375_
                                                 _e251735252378_
                                                 _hd251734252381_
                                                 _tl251733252383_
                                                 _e251738252386_
                                                 _hd251737252389_
                                                 _tl251736252391_
                                                 _e251741252394_
                                                 _hd251740252397_
                                                 _tl251739252399_
                                                 _e251744252402_
                                                 _hd251743252405_
                                                 _tl251742252407_
                                                 _e251747252410_
                                                 _hd251746252413_
                                                 _tl251745252415_
                                                 _e251750252418_
                                                 _hd251749252421_
                                                 _tl251748252423_
                                                 _e251753252426_
                                                 _hd251752252429_
                                                 _tl251751252431_
                                                 _e251756252434_
                                                 _hd251755252437_
                                                 _tl251754252439_
                                                 _e251759252442_
                                                 _hd251758252445_
                                                 _tl251757252447_
                                                 _e251762252450_
                                                 _hd251761252453_
                                                 _tl251760252455_
                                                 _e251765252458_
                                                 _hd251764252461_
                                                 _tl251763252463_
                                                 ___splice261827261828_
                                                 _target251766252466_
                                                 _tl251768252468_)
                                                (___kont261837261838_))))
                                        (___kont261837261838_))
                                    (___kont261837261838_))))
                            (___kont261837261838_))
                        (___kont261837261838_))
                    (___kont261837261838_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont261837261838_))))
                                            (___match262316262317_
                                             _e251729252362_
                                             _hd251728252365_
                                             _tl251727252367_
                                             _e251732252370_
                                             _hd251731252373_
                                             _tl251730252375_
                                             _e251735252378_
                                             _hd251734252381_
                                             _tl251733252383_
                                             _e251738252386_
                                             _hd251737252389_
                                             _tl251736252391_
                                             _e251741252394_
                                             _hd251740252397_
                                             _tl251739252399_
                                             _e251744252402_
                                             _hd251743252405_
                                             _tl251742252407_
                                             _e251747252410_
                                             _hd251746252413_
                                             _tl251745252415_
                                             _e251750252418_
                                             _hd251749252421_
                                             _tl251748252423_))
                                        (___match262316262317_
                                         _e251729252362_
                                         _hd251728252365_
                                         _tl251727252367_
                                         _e251732252370_
                                         _hd251731252373_
                                         _tl251730252375_
                                         _e251735252378_
                                         _hd251734252381_
                                         _tl251733252383_
                                         _e251738252386_
                                         _hd251737252389_
                                         _tl251736252391_
                                         _e251741252394_
                                         _hd251740252397_
                                         _tl251739252399_
                                         _e251744252402_
                                         _hd251743252405_
                                         _tl251742252407_
                                         _e251747252410_
                                         _hd251746252413_
                                         _tl251745252415_
                                         _e251750252418_
                                         _hd251749252421_
                                         _tl251748252423_))))
                                (___match262316262317_
                                 _e251729252362_
                                 _hd251728252365_
                                 _tl251727252367_
                                 _e251732252370_
                                 _hd251731252373_
                                 _tl251730252375_
                                 _e251735252378_
                                 _hd251734252381_
                                 _tl251733252383_
                                 _e251738252386_
                                 _hd251737252389_
                                 _tl251736252391_
                                 _e251741252394_
                                 _hd251740252397_
                                 _tl251739252399_
                                 _e251744252402_
                                 _hd251743252405_
                                 _tl251742252407_
                                 _e251747252410_
                                 _hd251746252413_
                                 _tl251745252415_
                                 _e251750252418_
                                 _hd251749252421_
                                 _tl251748252423_))
                            (___match262102262103_
                             _e251729252362_
                             _hd251728252365_
                             _tl251727252367_
                             _e251732252370_
                             _hd251731252373_
                             _tl251730252375_
                             _e251735252378_
                             _hd251734252381_
                             _tl251733252383_
                             _e251738252386_
                             _hd251737252389_
                             _tl251736252391_
                             _e251741252394_
                             _hd251740252397_
                             _tl251739252399_
                             _e251744252402_
                             _hd251743252405_
                             _tl251742252407_
                             _e251747252410_
                             _hd251746252413_
                             _tl251745252415_
                             _e251750252418_
                             _hd251749252421_
                             _tl251748252423_
                             _e251753252426_
                             _hd251752252429_
                             _tl251751252431_))))
                     (___match261924261925_
                      (lambda (_e251685252554_
                               _hd251684252557_
                               _tl251683252559_
                               _e251688252562_
                               _hd251687252565_
                               _tl251686252567_
                               _e251691252570_
                               _hd251690252573_
                               _tl251689252575_
                               _e251694252578_
                               _hd251693252581_
                               _tl251692252583_
                               _e251697252586_
                               _hd251696252589_
                               _tl251695252591_
                               _e251700252594_
                               _hd251699252597_
                               _tl251698252599_
                               _e251703252602_
                               _hd251702252605_
                               _tl251701252607_
                               _e251706252610_
                               _hd251705252613_
                               _tl251704252615_
                               _e251709252618_
                               _hd251708252621_
                               _tl251707252623_
                               _e251712252626_
                               _hd251711252629_
                               _tl251710252631_
                               ___splice261823261824_
                               _target251713252634_
                               _tl251715252636_)
                        (letrec ((_loop251716252639_
                                  (lambda (_hd251714252642_ _args251720252644_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd251714252642_))
                                        (let ((_e251717252647_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd251714252642_))))
                                          (let ((_lp-tl251719252652_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e251717252647_)))
                                                (_lp-hd251718252650_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e251717252647_))))
                                            (let ((__tmp262769
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd251718252650_
                                                           _args251720252644_))))
                                              (declare (not safe))
                                              (_loop251716252639_
                                               _lp-tl251719252652_
                                               __tmp262769))))
                                        (let ((_args251721252655_
                                               (reverse _args251720252644_)))
                                          (let ((_L252658_ _args251721252655_)
                                                (_L252659_ _hd251711252629_)
                                                (_L252660_ _hd251702252605_)
                                                (_L252661_ _hd251693252581_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L252661_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L252660_
                                                        _self251661_)))
                                                (___kont261821261822_
                                                 _L252658_
                                                 _L252659_
                                                 _L252660_
                                                 _L252661_)
                                                (___match262112262113_
                                                 _e251685252554_
                                                 _hd251684252557_
                                                 _tl251683252559_
                                                 _e251688252562_
                                                 _hd251687252565_
                                                 _tl251686252567_
                                                 _e251691252570_
                                                 _hd251690252573_
                                                 _tl251689252575_
                                                 _e251694252578_
                                                 _hd251693252581_
                                                 _tl251692252583_
                                                 _e251697252586_
                                                 _hd251696252589_
                                                 _tl251695252591_
                                                 _e251700252594_
                                                 _hd251699252597_
                                                 _tl251698252599_
                                                 _e251703252602_
                                                 _hd251702252605_
                                                 _tl251701252607_
                                                 _e251706252610_
                                                 _hd251705252613_
                                                 _tl251704252615_
                                                 _e251709252618_
                                                 _hd251708252621_
                                                 _tl251707252623_
                                                 _e251712252626_
                                                 _hd251711252629_
                                                 _tl251710252631_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop251716252639_ _target251713252634_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx261819261820_))
                    (let ((_e251685252554_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx261819261820_))))
                      (let ((_tl251683252559_
                             (let ()
                               (declare (not safe))
                               (##cdr _e251685252554_)))
                            (_hd251684252557_
                             (let ()
                               (declare (not safe))
                               (##car _e251685252554_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl251683252559_))
                            (let ((_e251688252562_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl251683252559_))))
                              (let ((_tl251686252567_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e251688252562_)))
                                    (_hd251687252565_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e251688252562_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd251687252565_))
                                    (let ((_e251691252570_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd251687252565_))))
                                      (let ((_tl251689252575_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e251691252570_)))
                                            (_hd251690252573_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e251691252570_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd251690252573_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd251690252573_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl251689252575_))
                                                    (let ((_e251694252578_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl251689252575_))))
                                                      (let ((_tl251692252583_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e251694252578_)))
                    (_hd251693252581_
                     (let () (declare (not safe)) (##car _e251694252578_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl251692252583_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl251686252567_))
                        (let ((_e251697252586_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl251686252567_))))
                          (let ((_tl251695252591_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e251697252586_)))
                                (_hd251696252589_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e251697252586_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd251696252589_))
                                (let ((_e251700252594_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd251696252589_))))
                                  (let ((_tl251698252599_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e251700252594_)))
                                        (_hd251699252597_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e251700252594_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd251699252597_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd251699252597_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl251698252599_))
                                                (let ((_e251703252602_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl251698252599_))))
                                                  (let ((_tl251701252607_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e251703252602_)))
                                                        (_hd251702252605_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e251703252602_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl251701252607_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl251695252591_))
                                                            (let ((_e251706252610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl251695252591_))))
                      (let ((_tl251704252615_
                             (let ()
                               (declare (not safe))
                               (##cdr _e251706252610_)))
                            (_hd251705252613_
                             (let ()
                               (declare (not safe))
                               (##car _e251706252610_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd251705252613_))
                            (let ((_e251709252618_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd251705252613_))))
                              (let ((_tl251707252623_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e251709252618_)))
                                    (_hd251708252621_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e251709252618_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd251708252621_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd251708252621_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl251707252623_))
                                            (let ((_e251712252626_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl251707252623_))))
                                              (let ((_tl251710252631_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e251712252626_)))
                                                    (_hd251711252629_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e251712252626_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl251710252631_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl251704252615_))
                                                        (let ((___splice261823261824_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl251704252615_ '0))))
                  (let ((_tl251715252636_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice261823261824_ '1)))
                        (_target251713252634_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice261823261824_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl251715252636_))
                        (___match261924261925_
                         _e251685252554_
                         _hd251684252557_
                         _tl251683252559_
                         _e251688252562_
                         _hd251687252565_
                         _tl251686252567_
                         _e251691252570_
                         _hd251690252573_
                         _tl251689252575_
                         _e251694252578_
                         _hd251693252581_
                         _tl251692252583_
                         _e251697252586_
                         _hd251696252589_
                         _tl251695252591_
                         _e251700252594_
                         _hd251699252597_
                         _tl251698252599_
                         _e251703252602_
                         _hd251702252605_
                         _tl251701252607_
                         _e251706252610_
                         _hd251705252613_
                         _tl251704252615_
                         _e251709252618_
                         _hd251708252621_
                         _tl251707252623_
                         _e251712252626_
                         _hd251711252629_
                         _tl251710252631_
                         ___splice261823261824_
                         _target251713252634_
                         _tl251715252636_)
                        (___match262112262113_
                         _e251685252554_
                         _hd251684252557_
                         _tl251683252559_
                         _e251688252562_
                         _hd251687252565_
                         _tl251686252567_
                         _e251691252570_
                         _hd251690252573_
                         _tl251689252575_
                         _e251694252578_
                         _hd251693252581_
                         _tl251692252583_
                         _e251697252586_
                         _hd251696252589_
                         _tl251695252591_
                         _e251700252594_
                         _hd251699252597_
                         _tl251698252599_
                         _e251703252602_
                         _hd251702252605_
                         _tl251701252607_
                         _e251706252610_
                         _hd251705252613_
                         _tl251704252615_
                         _e251709252618_
                         _hd251708252621_
                         _tl251707252623_
                         _e251712252626_
                         _hd251711252629_
                         _tl251710252631_))))
                (___match262112262113_
                 _e251685252554_
                 _hd251684252557_
                 _tl251683252559_
                 _e251688252562_
                 _hd251687252565_
                 _tl251686252567_
                 _e251691252570_
                 _hd251690252573_
                 _tl251689252575_
                 _e251694252578_
                 _hd251693252581_
                 _tl251692252583_
                 _e251697252586_
                 _hd251696252589_
                 _tl251695252591_
                 _e251700252594_
                 _hd251699252597_
                 _tl251698252599_
                 _e251703252602_
                 _hd251702252605_
                 _tl251701252607_
                 _e251706252610_
                 _hd251705252613_
                 _tl251704252615_
                 _e251709252618_
                 _hd251708252621_
                 _tl251707252623_
                 _e251712252626_
                 _hd251711252629_
                 _tl251710252631_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match262316262317_
                                                     _e251685252554_
                                                     _hd251684252557_
                                                     _tl251683252559_
                                                     _e251688252562_
                                                     _hd251687252565_
                                                     _tl251686252567_
                                                     _e251691252570_
                                                     _hd251690252573_
                                                     _tl251689252575_
                                                     _e251694252578_
                                                     _hd251693252581_
                                                     _tl251692252583_
                                                     _e251697252586_
                                                     _hd251696252589_
                                                     _tl251695252591_
                                                     _e251700252594_
                                                     _hd251699252597_
                                                     _tl251698252599_
                                                     _e251703252602_
                                                     _hd251702252605_
                                                     _tl251701252607_
                                                     _e251706252610_
                                                     _hd251705252613_
                                                     _tl251704252615_))))
                                            (___match262316262317_
                                             _e251685252554_
                                             _hd251684252557_
                                             _tl251683252559_
                                             _e251688252562_
                                             _hd251687252565_
                                             _tl251686252567_
                                             _e251691252570_
                                             _hd251690252573_
                                             _tl251689252575_
                                             _e251694252578_
                                             _hd251693252581_
                                             _tl251692252583_
                                             _e251697252586_
                                             _hd251696252589_
                                             _tl251695252591_
                                             _e251700252594_
                                             _hd251699252597_
                                             _tl251698252599_
                                             _e251703252602_
                                             _hd251702252605_
                                             _tl251701252607_
                                             _e251706252610_
                                             _hd251705252613_
                                             _tl251704252615_))
                                        (___match261992261993_
                                         _e251685252554_
                                         _hd251684252557_
                                         _tl251683252559_
                                         _e251688252562_
                                         _hd251687252565_
                                         _tl251686252567_
                                         _e251691252570_
                                         _hd251690252573_
                                         _tl251689252575_
                                         _e251694252578_
                                         _hd251693252581_
                                         _tl251692252583_
                                         _e251697252586_
                                         _hd251696252589_
                                         _tl251695252591_
                                         _e251700252594_
                                         _hd251699252597_
                                         _tl251698252599_
                                         _e251703252602_
                                         _hd251702252605_
                                         _tl251701252607_
                                         _e251706252610_
                                         _hd251705252613_
                                         _tl251704252615_
                                         _e251709252618_
                                         _hd251708252621_
                                         _tl251707252623_))
                                    (___match262316262317_
                                     _e251685252554_
                                     _hd251684252557_
                                     _tl251683252559_
                                     _e251688252562_
                                     _hd251687252565_
                                     _tl251686252567_
                                     _e251691252570_
                                     _hd251690252573_
                                     _tl251689252575_
                                     _e251694252578_
                                     _hd251693252581_
                                     _tl251692252583_
                                     _e251697252586_
                                     _hd251696252589_
                                     _tl251695252591_
                                     _e251700252594_
                                     _hd251699252597_
                                     _tl251698252599_
                                     _e251703252602_
                                     _hd251702252605_
                                     _tl251701252607_
                                     _e251706252610_
                                     _hd251705252613_
                                     _tl251704252615_))))
                            (___match262316262317_
                             _e251685252554_
                             _hd251684252557_
                             _tl251683252559_
                             _e251688252562_
                             _hd251687252565_
                             _tl251686252567_
                             _e251691252570_
                             _hd251690252573_
                             _tl251689252575_
                             _e251694252578_
                             _hd251693252581_
                             _tl251692252583_
                             _e251697252586_
                             _hd251696252589_
                             _tl251695252591_
                             _e251700252594_
                             _hd251699252597_
                             _tl251698252599_
                             _e251703252602_
                             _hd251702252605_
                             _tl251701252607_
                             _e251706252610_
                             _hd251705252613_
                             _tl251704252615_))))
                    (___match262254262255_
                     _e251685252554_
                     _hd251684252557_
                     _tl251683252559_
                     _e251688252562_
                     _hd251687252565_
                     _tl251686252567_
                     _e251691252570_
                     _hd251690252573_
                     _tl251689252575_
                     _e251694252578_
                     _hd251693252581_
                     _tl251692252583_
                     _e251697252586_
                     _hd251696252589_
                     _tl251695252591_
                     _e251700252594_
                     _hd251699252597_
                     _tl251698252599_
                     _e251703252602_
                     _hd251702252605_
                     _tl251701252607_))
                (___kont261837261838_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont261837261838_))
                                            (___kont261837261838_))
                                        (___kont261837261838_))))
                                (___kont261837261838_))))
                        (___kont261837261838_))
                    (___kont261837261838_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont261837261838_))
                                                (___kont261837261838_))
                                            (___kont261837261838_))))
                                    (___kont261837261838_))))
                            (___kont261837261838_))))
                    (___kont261837261838_))))))))))
