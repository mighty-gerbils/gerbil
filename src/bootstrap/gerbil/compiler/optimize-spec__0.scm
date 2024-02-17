(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1708168073)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl257633_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp263329 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl257633_ __tmp263329))
           (let ()
             (declare (not safe))
             (table-set! _tbl257633_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl257633_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl257633_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl257633_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl257633_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx257616_ . _args257618_)
        (let ((__tmp263331
               (lambda ()
                 (declare (not safe))
                 (if (null? _args257618_)
                     (gxc#compile-e__0 _stx257616_)
                     (let ((_arg1257623_ (car _args257618_))
                           (_rest257625_ (cdr _args257618_)))
                       (if (null? _rest257625_)
                           (gxc#compile-e__1 _stx257616_ _arg1257623_)
                           (let ((_arg2257628_ (car _rest257625_))
                                 (_rest257630_ (cdr _rest257625_)))
                             (if (null? _rest257630_)
                                 (gxc#compile-e__2
                                  _stx257616_
                                  _arg1257623_
                                  _arg2257628_)
                                 (apply gxc#compile-e
                                        _stx257616_
                                        _arg1257623_
                                        _arg2257628_
                                        _rest257630_))))))))
              (__tmp263330 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp263331
           gxc#current-compile-methods
           __tmp263330))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl257613_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp263332 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl257613_ __tmp263332))
           (let ()
             (declare (not safe))
             (table-set! _tbl257613_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl257613_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl257613_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl257613_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl257613_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl257613_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl257613_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl257613_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl257613_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl257613_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl257613_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl257613_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl257613_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl257613_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl257613_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl257613_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl257613_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx257596_ . _args257598_)
        (let ((__tmp263334
               (lambda ()
                 (declare (not safe))
                 (if (null? _args257598_)
                     (gxc#compile-e__0 _stx257596_)
                     (let ((_arg1257603_ (car _args257598_))
                           (_rest257605_ (cdr _args257598_)))
                       (if (null? _rest257605_)
                           (gxc#compile-e__1 _stx257596_ _arg1257603_)
                           (let ((_arg2257608_ (car _rest257605_))
                                 (_rest257610_ (cdr _rest257605_)))
                             (if (null? _rest257610_)
                                 (gxc#compile-e__2
                                  _stx257596_
                                  _arg1257603_
                                  _arg2257608_)
                                 (apply gxc#compile-e
                                        _stx257596_
                                        _arg1257603_
                                        _arg2257608_
                                        _rest257610_))))))))
              (__tmp263333 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp263334
           gxc#current-compile-methods
           __tmp263333))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl257593_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp263335 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl257593_ __tmp263335))
           (let ()
             (declare (not safe))
             (table-set! _tbl257593_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl257593_ '%#call gxc#subst-object-refs-call%))
           _tbl257593_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx257576_ . _args257578_)
        (let ((__tmp263337
               (lambda ()
                 (declare (not safe))
                 (if (null? _args257578_)
                     (gxc#compile-e__0 _stx257576_)
                     (let ((_arg1257583_ (car _args257578_))
                           (_rest257585_ (cdr _args257578_)))
                       (if (null? _rest257585_)
                           (gxc#compile-e__1 _stx257576_ _arg1257583_)
                           (let ((_arg2257588_ (car _rest257585_))
                                 (_rest257590_ (cdr _rest257585_)))
                             (if (null? _rest257590_)
                                 (gxc#compile-e__2
                                  _stx257576_
                                  _arg1257583_
                                  _arg2257588_)
                                 (apply gxc#compile-e
                                        _stx257576_
                                        _arg1257583_
                                        _arg2257588_
                                        _rest257590_))))))))
              (__tmp263336 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp263337
           gxc#current-compile-methods
           __tmp263336))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx254246_)
        (letrec ((_generate-method-bind254248_
                  (lambda (_$t257570_ _id257571_ _$id257572_)
                    (let ((_$tmp257574_
                           (let ((__tmp263338 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp263338))))
                      (let ((__tmp263386
                             (let ()
                               (declare (not safe))
                               (cons _$id257572_ '())))
                            (__tmp263339
                             (let ((__tmp263340
                                    (let ((__tmp263341
                                           (let ((__tmp263384
                                                  (let ((__tmp263385
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp263385)))
                                                 (__tmp263342
                                                  (let ((__tmp263343
                                                         (let ((__tmp263344
                                                                (let ((__tmp263345
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp263346
                                      (let ((__tmp263347
                                             (let ((__tmp263367
                                                    (let ((__tmp263368
                                                           (let ((__tmp263383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp257574_ '())))
                         (__tmp263369
                          (let ((__tmp263370
                                 (let ((__tmp263371
                                        (let ((__tmp263381
                                               (let ((__tmp263382
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp263382)))
                                              (__tmp263372
                                               (let ((__tmp263379
                                                      (let ((__tmp263380
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t257570_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp263380)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp263373
                                                      (let ((__tmp263377
                                                             (let ((__tmp263378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp263378)))
                    (__tmp263374
                     (let ((__tmp263375
                            (let ((__tmp263376
                                   (let ()
                                     (declare (not safe))
                                     (cons _id257571_ '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp263376))))
                       (declare (not safe))
                       (cons __tmp263375 '()))))
                (declare (not safe))
                (cons __tmp263377 __tmp263374))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp263379
                                                       __tmp263373))))
                                          (declare (not safe))
                                          (cons __tmp263381 __tmp263372))))
                                   (declare (not safe))
                                   (cons '%#call __tmp263371))))
                            (declare (not safe))
                            (cons __tmp263370 '()))))
                     (declare (not safe))
                     (cons __tmp263383 __tmp263369))))
              (declare (not safe))
              (cons __tmp263368 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp263348
                                                    (let ((__tmp263349
                                                           (let ((__tmp263350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp263365
                                 (let ((__tmp263366
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp257574_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp263366)))
                                (__tmp263351
                                 (let ((__tmp263363
                                        (let ((__tmp263364
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp257574_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp263364)))
                                       (__tmp263352
                                        (let ((__tmp263353
                                               (let ((__tmp263354
                                                      (let ((__tmp263361
                                                             (let ((__tmp263362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp263362)))
                    (__tmp263355
                     (let ((__tmp263359
                            (let ((__tmp263360
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp263360)))
                           (__tmp263356
                            (let ((__tmp263357
                                   (let ((__tmp263358
                                          (let ()
                                            (declare (not safe))
                                            (cons _id257571_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp263358))))
                              (declare (not safe))
                              (cons __tmp263357 '()))))
                       (declare (not safe))
                       (cons __tmp263359 __tmp263356))))
                (declare (not safe))
                (cons __tmp263361 __tmp263355))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp263354))))
                                          (declare (not safe))
                                          (cons __tmp263353 '()))))
                                   (declare (not safe))
                                   (cons __tmp263363 __tmp263352))))
                            (declare (not safe))
                            (cons __tmp263365 __tmp263351))))
                     (declare (not safe))
                     (cons '%#if __tmp263350))))
              (declare (not safe))
              (cons __tmp263349 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp263367
                                                     __tmp263348))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp263347))))
                                 (declare (not safe))
                                 (cons __tmp263346 '()))))
                          (declare (not safe))
                          (cons '() __tmp263345))))
                   (declare (not safe))
                   (cons '%#lambda __tmp263344))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp263343 '()))))
                                             (declare (not safe))
                                             (cons __tmp263384 __tmp263342))))
                                      (declare (not safe))
                                      (cons '%#call __tmp263341))))
                               (declare (not safe))
                               (cons __tmp263340 '()))))
                        (declare (not safe))
                        (cons __tmp263386 __tmp263339)))))
                 (_generate-slot-bind254249_
                  (lambda (_$t257564_ _id257565_ _$id257566_)
                    (let ((_$tmp257568_
                           (let ((__tmp263387 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp263387))))
                      (let ((__tmp263424
                             (let ()
                               (declare (not safe))
                               (cons _$id257566_ '())))
                            (__tmp263388
                             (let ((__tmp263389
                                    (let ((__tmp263390
                                           (let ((__tmp263410
                                                  (let ((__tmp263411
                                                         (let ((__tmp263423
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp257568_ '())))
                       (__tmp263412
                        (let ((__tmp263413
                               (let ((__tmp263414
                                      (let ((__tmp263421
                                             (let ((__tmp263422
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp263422)))
                                            (__tmp263415
                                             (let ((__tmp263419
                                                    (let ((__tmp263420
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t257564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp263420)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp263416
                                                    (let ((__tmp263417
                                                           (let ((__tmp263418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id257565_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp263418))))
              (declare (not safe))
              (cons __tmp263417 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp263419
                                                     __tmp263416))))
                                        (declare (not safe))
                                        (cons __tmp263421 __tmp263415))))
                                 (declare (not safe))
                                 (cons '%#call __tmp263414))))
                          (declare (not safe))
                          (cons __tmp263413 '()))))
                   (declare (not safe))
                   (cons __tmp263423 __tmp263412))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp263411 '())))
                                                 (__tmp263391
                                                  (let ((__tmp263392
                                                         (let ((__tmp263393
                                                                (let ((__tmp263408
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp263409
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp257568_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp263409)))
                              (__tmp263394
                               (let ((__tmp263406
                                      (let ((__tmp263407
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp257568_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp263407)))
                                     (__tmp263395
                                      (let ((__tmp263396
                                             (let ((__tmp263397
                                                    (let ((__tmp263404
                                                           (let ((__tmp263405
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp263405)))
                  (__tmp263398
                   (let ((__tmp263402
                          (let ((__tmp263403
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp263403)))
                         (__tmp263399
                          (let ((__tmp263400
                                 (let ((__tmp263401
                                        (let ()
                                          (declare (not safe))
                                          (cons _id257565_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp263401))))
                            (declare (not safe))
                            (cons __tmp263400 '()))))
                     (declare (not safe))
                     (cons __tmp263402 __tmp263399))))
              (declare (not safe))
              (cons __tmp263404 __tmp263398))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp263397))))
                                        (declare (not safe))
                                        (cons __tmp263396 '()))))
                                 (declare (not safe))
                                 (cons __tmp263406 __tmp263395))))
                          (declare (not safe))
                          (cons __tmp263408 __tmp263394))))
                   (declare (not safe))
                   (cons '%#if __tmp263393))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp263392 '()))))
                                             (declare (not safe))
                                             (cons __tmp263410 __tmp263391))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp263390))))
                               (declare (not safe))
                               (cons __tmp263389 '()))))
                        (declare (not safe))
                        (cons __tmp263424 __tmp263388)))))
                 (_generate-class-check-bind254250_
                  (lambda (_$t257560_ _class-type257561_ _$class-type257562_)
                    (let ((__tmp263436
                           (let ()
                             (declare (not safe))
                             (cons _$class-type257562_ '())))
                          (__tmp263425
                           (let ((__tmp263426
                                  (let ((__tmp263427
                                         (let ((__tmp263434
                                                (let ((__tmp263435
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp263435)))
                                               (__tmp263428
                                                (let ((__tmp263432
                                                       (let ((__tmp263433
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t257560_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp263433)))
              (__tmp263429
               (let ((__tmp263430
                      (let ((__tmp263431
                             (let ()
                               (declare (not safe))
                               (cons _class-type257561_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp263431))))
                 (declare (not safe))
                 (cons __tmp263430 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp263432
                                                        __tmp263429))))
                                           (declare (not safe))
                                           (cons __tmp263434 __tmp263428))))
                                    (declare (not safe))
                                    (cons '%#call __tmp263427))))
                             (declare (not safe))
                             (cons __tmp263426 '()))))
                      (declare (not safe))
                      (cons __tmp263436 __tmp263425))))
                 (_generate-struct-check-bind254251_
                  (lambda (_$t257556_ _class-type257557_ _$class-type257558_)
                    (let ((__tmp263448
                           (let ()
                             (declare (not safe))
                             (cons _$class-type257558_ '())))
                          (__tmp263437
                           (let ((__tmp263438
                                  (let ((__tmp263439
                                         (let ((__tmp263446
                                                (let ((__tmp263447
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp263447)))
                                               (__tmp263440
                                                (let ((__tmp263444
                                                       (let ((__tmp263445
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t257556_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp263445)))
              (__tmp263441
               (let ((__tmp263442
                      (let ((__tmp263443
                             (let ()
                               (declare (not safe))
                               (cons _class-type257557_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp263443))))
                 (declare (not safe))
                 (cons __tmp263442 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp263444
                                                        __tmp263441))))
                                           (declare (not safe))
                                           (cons __tmp263446 __tmp263440))))
                                    (declare (not safe))
                                    (cons '%#call __tmp263439))))
                             (declare (not safe))
                             (cons __tmp263438 '()))))
                      (declare (not safe))
                      (cons __tmp263448 __tmp263437))))
                 (_generate-specializer-impl254252_
                  (lambda (_$t257505_
                           _methods-bind257506_
                           _slots-bind257507_
                           _class-check-bind257508_
                           _struct-check-bind257509_
                           _specializer-impl257510_
                           _lifted-specializer-id257511_
                           _unchecked-specializer-impl257512_)
                    (let ((__tmp263449
                           (let ((__tmp263450
                                  (let ((__tmp263476
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t257505_ '())))
                                        (__tmp263451
                                         (let ((__tmp263452
                                                (let ((__tmp263453
                                                       (let ((__tmp263473
                                                              (let ((__tmp263474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp263475
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind257509_
                                              _class-check-bind257508_))))
                               (declare (not safe))
                               (foldr1 cons __tmp263475 _slots-bind257507_))))
                        (declare (not safe))
                        (foldr1 cons __tmp263474 _methods-bind257506_)))
                     (__tmp263454
                      (let ((__tmp263455
                             (if (or _lifted-specializer-id257511_
                                     _unchecked-specializer-impl257512_)
                                 (let* ((_$specializer257517_
                                         (let ((__tmp263456
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp263456)))
                                        (__tmp263457
                                         (let ((__tmp263469
                                                (let ((__tmp263470
                                                       (let ((__tmp263472
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer257517_ '())))
                     (__tmp263471
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl257510_ '()))))
                 (declare (not safe))
                 (cons __tmp263472 __tmp263471))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp263470 '())))
                                               (__tmp263458
                                                (let ((__tmp263459
                                                       (let _recur257519_ ((_rest257521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind257509_)))
                 (let* ((_rest257522257530_ _rest257521_)
                        (_else257524257538_
                         (lambda ()
                           (if _lifted-specializer-id257511_
                               (let ((__tmp263460
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id257511_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp263460))
                               _unchecked-specializer-impl257512_)))
                        (_K257526257544_
                         (lambda (_rest257541_ _checkq257542_)
                           (let ((__tmp263461
                                  (let ((__tmp263467
                                         (let ((__tmp263468
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq257542_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp263468)))
                                        (__tmp263462
                                         (let ((__tmp263466
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur257519_
                                                   _rest257541_)))
                                               (__tmp263463
                                                (let ((__tmp263464
                                                       (let ((__tmp263465
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer257517_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp263465))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp263464 '()))))
                                           (declare (not safe))
                                           (cons __tmp263466 __tmp263463))))
                                    (declare (not safe))
                                    (cons __tmp263467 __tmp263462))))
                             (declare (not safe))
                             (cons '%#if __tmp263461)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest257522257530_))
                       (let ((_hd257527257547_
                              (let ()
                                (declare (not safe))
                                (##car _rest257522257530_)))
                             (_tl257528257549_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest257522257530_))))
                         (let* ((_checkq257552_ _hd257527257547_)
                                (_rest257554_ _tl257528257549_))
                           (declare (not safe))
                           (_K257526257544_ _rest257554_ _checkq257552_)))
                       (let () (declare (not safe)) (_else257524257538_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp263459 '()))))
                                           (declare (not safe))
                                           (cons __tmp263469 __tmp263458))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp263457))
                                 _specializer-impl257510_)))
                        (declare (not safe))
                        (cons __tmp263455 '()))))
                 (declare (not safe))
                 (cons __tmp263473 __tmp263454))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp263453))))
                                           (declare (not safe))
                                           (cons __tmp263452 '()))))
                                    (declare (not safe))
                                    (cons __tmp263476 __tmp263451))))
                             (declare (not safe))
                             (cons '%#lambda __tmp263450))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp263449 _stx254246_))))
                 (_generate-specializer-def254253_
                  (lambda (_id257499_
                           _specializer-id257500_
                           _specializer-impl257501_
                           _lifted-specializer-id257502_
                           _unchecked-specializer-impl257503_)
                    (let ((__tmp263477
                           (let ((__tmp263478
                                  (let ((__tmp263479
                                         (let ((__tmp263499
                                                (let ((__tmp263500
                                                       (let ((__tmp263501
                                                              (let ((__tmp263503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id257500_ '())))
                            (__tmp263502
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl257501_ '()))))
                        (declare (not safe))
                        (cons __tmp263503 __tmp263502))))
                 (declare (not safe))
                 (cons '%#define-values __tmp263501))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp263500
                                                   _stx254246_)))
                                               (__tmp263480
                                                (let ((__tmp263487
                                                       (let ((__tmp263488
                                                              (let ((__tmp263489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp263490
                                    (let ((__tmp263497
                                           (let ((__tmp263498
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp263498)))
                                          (__tmp263491
                                           (let ((__tmp263495
                                                  (let ((__tmp263496
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id257499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp263496)))
                                                 (__tmp263492
                                                  (let ((__tmp263493
                                                         (let ((__tmp263494
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id257500_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp263494))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp263493 '()))))
                                             (declare (not safe))
                                             (cons __tmp263495 __tmp263492))))
                                      (declare (not safe))
                                      (cons __tmp263497 __tmp263491))))
                               (declare (not safe))
                               (cons '%#call __tmp263490))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp263489 _stx254246_))))
                 (declare (not safe))
                 (cons __tmp263488 '())))
              (__tmp263481
               (if _lifted-specializer-id257502_
                   (let ((__tmp263482
                          (let ((__tmp263483
                                 (let ((__tmp263484
                                        (let ((__tmp263486
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id257502_
                                                       '())))
                                              (__tmp263485
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl257503_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp263486 __tmp263485))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp263484))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp263483 _stx254246_))))
                     (declare (not safe))
                     (cons __tmp263482 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp263487
                                                          __tmp263481))))
                                           (declare (not safe))
                                           (cons __tmp263499 __tmp263480))))
                                    (declare (not safe))
                                    (cons _stx254246_ __tmp263479))))
                             (declare (not safe))
                             (cons '%#begin __tmp263478))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp263477 _stx254246_)))))
          (let* ((___stx262290262291_ _stx254246_)
                 (_g254256254276_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx262290262291_)))))
            (let ((___kont262292262293_
                   (lambda (_L254320_ _L254321_)
                     (let ((_method-calls254340_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs254341_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check254342_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check254343_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert254344_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty254345_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?254347_
                                 (lambda ()
                                   (if (let ((__tmp263508
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls254340_))))
                                         (declare (not safe))
                                         (fxzero? __tmp263508))
                                       (if (let ((__tmp263507
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs254341_))))
                                             (declare (not safe))
                                             (fxzero? __tmp263507))
                                           (if (let ((__tmp263506
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check254342_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp263506))
                                               (if (let ((__tmp263505
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check254343_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp263505))
                                                   (let ((__tmp263504
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert254344_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp263504))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?254348_
                                 (lambda ()
                                   (let ((_$e257492_
                                          (let ((__tmp263509
                                                 (let ((__tmp263510
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check254343_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp263510))))
                                            (declare (not safe))
                                            (not __tmp263509))))
                                     (if _$e257492_
                                         _$e257492_
                                         (let ((__tmp263511
                                                (let ((__tmp263512
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert254344_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp263512))))
                                           (declare (not safe))
                                           (not __tmp263511))))))
                                (_lift-unchecked-specializer?254349_
                                 (lambda ()
                                   (if (let ((__tmp263515
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls254340_))))
                                         (declare (not safe))
                                         (fxzero? __tmp263515))
                                       (if (let ((__tmp263514
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs254341_))))
                                             (declare (not safe))
                                             (fxzero? __tmp263514))
                                           (let ((__tmp263513
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check254342_))))
                                             (declare (not safe))
                                             (fxzero? __tmp263513))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L254320_))
                             (let* ((___stx262204262205_ _L254320_)
                                    (_g254862254880_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx262204262205_)))))
                               (let ((___kont262206262207_
                                      (lambda (_L254916_ _L254917_ _L254918_)
                                        (for-each
                                         (lambda (_g254933254935_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g254933254935_
                                              _L254918_
                                              _method-calls254340_
                                              _slot-refs254341_
                                              _class-type-check254342_
                                              _struct-type-check254343_
                                              _struct-type-assert254344_)))
                                         _L254916_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?254347_))
                                            _stx254246_
                                            (let* ((_specializer-id254944_
                                                    (let* ((_id254938_
                                                            (let ((__tmp263665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L254321_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp263665 '"::specialize")))
                   (_specializer-id254941_
                    (let ((__tmp263666
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx254246_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id254938_ __tmp263666))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id254941_))
              _specializer-id254941_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id254951_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?254349_))
                                                        (let* ((_id254946_
                                                                (let ((__tmp263667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L254321_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp263667
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id254948_
                        (let ((__tmp263668
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx254246_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id254946_ __tmp263668))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id254948_))
                  _lifted-specializer-id254948_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t254953_
                                                    (let ((__tmp263669
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp263669)))
                                                   (_methods254955_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls254340_)))
                                                   (_$methods254959_
                                                    (map (lambda (_id254957_)
                                                           (let ((__tmp263670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id254957_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp263670)))
                 _methods254955_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g263671_
                                                    (for-each
                                                     (lambda (_g254960254963_
                                                              _g254961254965_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls254340_
                                                          _g254960254963_
                                                          _g254961254965_)))
                                                     _methods254955_
                                                     _$methods254959_))
                                                   (_methods-bind254976_
                                                    (map (lambda (_g254968254971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g254969254973_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind254248_
                      _$t254953_
                      _g254968254971_
                      _g254969254973_)))
                 _methods254955_
                 _$methods254959_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots254978_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs254341_)))
                                                   (_$slots254982_
                                                    (map (lambda (_id254980_)
                                                           (let ((__tmp263672
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id254980_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp263672)))
                 _slots254978_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g263673_
                                                    (for-each
                                                     (lambda (_g254983254986_
                                                              _g254984254988_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs254341_
                                                          _g254983254986_
                                                          _g254984254988_)))
                                                     _slots254978_
                                                     _$slots254982_))
                                                   (_slots-bind254999_
                                                    (map (lambda (_g254991254994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g254992254996_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind254249_
                      _$t254953_
                      _g254991254994_
                      _g254992254996_)))
                 _slots254978_
                 _$slots254982_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check255001_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check254342_)))
                                                   (_$class-check255004_
                                                    (map (lambda (_g263674_)
                                                           (let ((__tmp263675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp263675)))
                 _class-check255001_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g263676_
                                                    (for-each
                                                     (lambda (_g255005255008_
                                                              _g255006255010_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check254342_
                                                          _g255005255008_
                                                          _g255006255010_)))
                                                     _class-check255001_
                                                     _$class-check255004_))
                                                   (_class-check-bind255021_
                                                    (map (lambda (_g255013255016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g255014255018_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind254250_
                      _$t254953_
                      _g255013255016_
                      _g255014255018_)))
                 _class-check255001_
                 _$class-check255004_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all255023_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check254343_
                                                       _struct-type-assert254344_)))
                                                   (_struct-check255025_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all255023_)))
                                                   (_$struct-check255028_
                                                    (map (lambda (_g263677_)
                                                           (let ((__tmp263678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp263678)))
                 _struct-check255025_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g263679_
                                                    (for-each
                                                     (lambda (_g255029255032_
                                                              _g255030255034_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all255023_
                                                          _g255029255032_
                                                          _g255030255034_)))
                                                     _struct-check255025_
                                                     _$struct-check255028_))
                                                   (_struct-check-bind255045_
                                                    (map (lambda (_g255037255040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g255038255042_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind254251_
                      _$t254953_
                      _g255037255040_
                      _g255038255042_)))
                 _struct-check255025_
                 _$struct-check255028_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl255056_
                                                    (lambda (_struct-type-check1255047_
                                                             _struct-type-check2255048_)
                                                      (let* ((_specializer-body255054_
                                                              (map (lambda (_g255049255051_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g255049255051_
                                _L254918_
                                _$t254953_
                                _method-calls254340_
                                _slot-refs254341_
                                _class-type-check254342_
                                _struct-type-check1255047_
                                _struct-type-check2255048_)))
                           _L254916_))
                     (__tmp263680
                      (let ((__tmp263681
                             (let ((__tmp263682
                                    (let ()
                                      (declare (not safe))
                                      (cons _L254918_ _L254917_))))
                               (declare (not safe))
                               (cons __tmp263682 _specializer-body255054_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp263681))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp263680 _stx254246_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl255058_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl255056_
                                                       _struct-check-all255023_
                                                       _empty254345_)))
                                                   (_unchecked-specializer-impl255060_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?254348_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl255056_
                                                           _empty254345_
                                                           _struct-check-all255023_))
                                                        '#f))
                                                   (_specializer-impl255062_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl254252_
                                                       _$t254953_
                                                       _methods-bind254976_
                                                       _slots-bind254999_
                                                       _class-check-bind255021_
                                                       _struct-check-bind255045_
                                                       _specializer-impl255058_
                                                       _lifted-specializer-id254951_
                                                       _unchecked-specializer-impl255060_))))
                                              (let ((__tmp263684
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L254321_)))
                                                    (__tmp263683
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id254944_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp263684
                                                 '" => "
                                                 __tmp263683))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def254253_
                                                 _L254321_
                                                 _specializer-id254944_
                                                 _specializer-impl255062_
                                                 _lifted-specializer-id254951_
                                                 _unchecked-specializer-impl255060_))))))
                                     (___kont262208262209_
                                      (lambda () _stx254246_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx262204262205_))
                                     (let ((_e254869254892_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx262204262205_))))
                                       (let ((_tl254867254897_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e254869254892_)))
                                             (_hd254868254895_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e254869254892_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl254867254897_))
                                             (let ((_e254872254900_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl254867254897_))))
                                               (let ((_tl254870254905_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e254872254900_)))
                                                     (_hd254871254903_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e254872254900_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd254871254903_))
                                                     (let ((_e254875254908_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd254871254903_))))
                                                       (let ((_tl254873254913_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e254875254908_)))
                     (_hd254874254911_
                      (let () (declare (not safe)) (##car _e254875254908_))))
                 (___kont262206262207_
                  _tl254870254905_
                  _tl254873254913_
                  _hd254874254911_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont262208262209_))))
                                             (___kont262208262209_))))
                                     (___kont262208262209_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L254320_))
                                 (let* ((_g255068255087_
                                         (lambda (_g255069255084_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g255069255084_))))
                                        (_g255067255438_
                                         (lambda (_g255069255090_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g255069255090_))
                                               (let ((_e255073255092_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g255069255090_))))
                                                 (let ((_hd255072255095_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e255073255092_)))
                                                       (_tl255071255097_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e255073255092_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl255071255097_))
                                                       (let ((_g263641_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl255071255097_ '0))))
                 (begin
                   (let ((_g263642_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g263641_)
                                (##vector-length _g263641_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g263642_ 2)))
                         (error "Context expects 2 values" _g263642_)))
                   (let ((_target255074255100_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g263641_ 0)))
                         (_tl255076255102_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g263641_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl255076255102_))
                         (letrec ((_loop255077255105_
                                   (lambda (_hd255075255108_
                                            _clause255081255110_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd255075255108_))
                                         (let ((_e255078255113_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd255075255108_))))
                                           (let ((_lp-hd255079255116_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e255078255113_)))
                                                 (_lp-tl255080255118_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e255078255113_))))
                                             (let ((__tmp263664
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd255079255116_
                                                            _clause255081255110_))))
                                               (declare (not safe))
                                               (_loop255077255105_
                                                _lp-tl255080255118_
                                                __tmp263664))))
                                         (let ((_clause255082255121_
                                                (reverse _clause255081255110_)))
                                           ((lambda (_L255124_)
                                              (for-each
                                               (lambda (_clause255137_)
                                                 (let* ((___stx262230262231_
                                                         _clause255137_)
                                                        (_g255140255155_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx262230262231_)))))
                                                   (let ((___kont262232262233_
                                                          (lambda (_L255183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L255184_
                           _L255185_)
                    (for-each
                     (lambda (_g255200255202_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g255200255202_
                          _L255185_
                          _method-calls254340_
                          _slot-refs254341_
                          _class-type-check254342_
                          _struct-type-check254343_
                          _struct-type-assert254344_)))
                     _L255183_)))
                 (___kont262234262235_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx262230262231_))
                                                         (let ((_e255147255167_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx262230262231_))))
                   (let ((_tl255145255172_
                          (let ()
                            (declare (not safe))
                            (##cdr _e255147255167_)))
                         (_hd255146255170_
                          (let ()
                            (declare (not safe))
                            (##car _e255147255167_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd255146255170_))
                         (let ((_e255150255175_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd255146255170_))))
                           (let ((_tl255148255180_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e255150255175_)))
                                 (_hd255149255178_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e255150255175_))))
                             (___kont262232262233_
                              _tl255145255172_
                              _tl255148255180_
                              _hd255149255178_)))
                         (___kont262234262235_))))
                 (___kont262234262235_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp263643
                                                      (lambda (_g255207255210_
                                                               _g255208255212_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g255207255210_
                                                                _g255208255212_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp263643
                                                         '()
                                                         _L255124_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?254347_))
                                                  _stx254246_
                                                  (let* ((_specializer-id255221_
                                                          (let* ((_id255215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp263644
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L254321_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp263644 '"::specialize")))
                         (_specializer-id255218_
                          (let ((__tmp263645
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx254246_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id255215_ __tmp263645))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id255218_))
                    _specializer-id255218_))
                 (_lifted-specializer-id255228_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?254349_))
                      (let* ((_id255223_
                              (let ((__tmp263646
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L254321_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp263646
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id255225_
                              (let ((__tmp263647
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx254246_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id255223_
                                 __tmp263647))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id255225_))
                        _lifted-specializer-id255225_)
                      '#f))
                 (_$t255230_
                  (let ((__tmp263648 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp263648)))
                 (_methods255232_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls254340_)))
                 (_$methods255236_
                  (map (lambda (_id255234_)
                         (let ((__tmp263649 (gensym _id255234_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp263649)))
                       _methods255232_))
                 (_g263650_
                  (for-each
                   (lambda (_g255237255240_ _g255238255242_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls254340_
                        _g255237255240_
                        _g255238255242_)))
                   _methods255232_
                   _$methods255236_))
                 (_methods-bind255253_
                  (map (lambda (_g255245255248_ _g255246255250_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind254248_
                            _$t255230_
                            _g255245255248_
                            _g255246255250_)))
                       _methods255232_
                       _$methods255236_))
                 (_slots255255_
                  (let () (declare (not safe)) (hash-keys _slot-refs254341_)))
                 (_$slots255259_
                  (map (lambda (_id255257_)
                         (let ((__tmp263651 (gensym _id255257_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp263651)))
                       _slots255255_))
                 (_g263652_
                  (for-each
                   (lambda (_g255260255263_ _g255261255265_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs254341_
                        _g255260255263_
                        _g255261255265_)))
                   _slots255255_
                   _$slots255259_))
                 (_slots-bind255276_
                  (map (lambda (_g255268255271_ _g255269255273_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind254249_
                            _$t255230_
                            _g255268255271_
                            _g255269255273_)))
                       _slots255255_
                       _$slots255259_))
                 (_class-check255278_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check254342_)))
                 (_$class-check255281_
                  (map (lambda (_g263653_)
                         (let ((__tmp263654 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp263654)))
                       _class-check255278_))
                 (_g263655_
                  (for-each
                   (lambda (_g255282255285_ _g255283255287_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check254342_
                        _g255282255285_
                        _g255283255287_)))
                   _class-check255278_
                   _$class-check255281_))
                 (_class-check-bind255298_
                  (map (lambda (_g255290255293_ _g255291255295_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind254250_
                            _$t255230_
                            _g255290255293_
                            _g255291255295_)))
                       _class-check255278_
                       _$class-check255281_))
                 (_struct-check-all255300_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check254343_
                     _struct-type-assert254344_)))
                 (_struct-check255302_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all255300_)))
                 (_$struct-check255305_
                  (map (lambda (_g263656_)
                         (let ((__tmp263657 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp263657)))
                       _struct-check255302_))
                 (_g263658_
                  (for-each
                   (lambda (_g255306255309_ _g255307255311_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all255300_
                        _g255306255309_
                        _g255307255311_)))
                   _struct-check255302_
                   _$struct-check255305_))
                 (_struct-check-bind255322_
                  (map (lambda (_g255314255317_ _g255315255319_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind254251_
                            _$t255230_
                            _g255314255317_
                            _g255315255319_)))
                       _struct-check255302_
                       _$struct-check255305_))
                 (_make-specializer-impl255429_
                  (lambda (_struct-type-check1255324_
                           _struct-type-check2255325_)
                    (let* ((_specializer-clauses255427_
                            (map (lambda (_clause255327_)
                                   (let* ((___stx262250262251_ _clause255327_)
                                          (_g255330255345_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx262250262251_)))))
                                     (let ((___kont262252262253_
                                            (lambda (_L255373_
                                                     _L255374_
                                                     _L255375_)
                                              (let* ((_body255415_
                                                      (map (lambda (_g255410255412_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g255410255412_
                        _L255375_
                        _$t255230_
                        _method-calls254340_
                        _slot-refs254341_
                        _class-type-check254342_
                        _struct-type-check1255324_
                        _struct-type-check2255325_)))
                   _L255373_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp263659
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L255375_
                                                              _L255374_))))
                                                (declare (not safe))
                                                (cons __tmp263659
                                                      _body255415_))))
                                           (___kont262254262255_
                                            (lambda () _clause255327_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx262250262251_))
                                           (let ((_e255337255357_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx262250262251_))))
                                             (let ((_tl255335255362_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e255337255357_)))
                                                   (_hd255336255360_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e255337255357_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd255336255360_))
                                                   (let ((_e255340255365_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd255336255360_))))
                                                     (let ((_tl255338255370_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e255340255365_)))
                                                           (_hd255339255368_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e255340255365_))))
                                                       (___kont262252262253_
                                                        _tl255335255362_
                                                        _tl255338255370_
                                                        _hd255339255368_)))
                                                   (___kont262254262255_))))
                                           (___kont262254262255_)))))
                                 (let ((__tmp263660
                                        (lambda (_g255419255422_
                                                 _g255420255424_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g255419255422_
                                                  _g255420255424_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp263660 '() _L255124_))))
                           (__tmp263661
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses255427_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp263661 _stx254246_))))
                 (_specializer-impl255431_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl255429_
                     _struct-check-all255300_
                     _empty254345_)))
                 (_unchecked-specializer-impl255433_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?254348_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl255429_
                         _empty254345_
                         _struct-check-all255300_))
                      '#f))
                 (_specializer-impl255435_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl254252_
                     _$t255230_
                     _methods-bind255253_
                     _slots-bind255276_
                     _class-check-bind255298_
                     _struct-check-bind255322_
                     _specializer-impl255431_
                     _lifted-specializer-id255228_
                     _unchecked-specializer-impl255433_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp263663
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L254321_)))
                                                          (__tmp263662
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id255221_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp263663
                                                       '" => "
                                                       __tmp263662))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def254253_
                                                       _L254321_
                                                       _specializer-id255221_
                                                       _specializer-impl255435_
                                                       _lifted-specializer-id255228_
                                                       _unchecked-specializer-impl255433_)))))
                                            _clause255082255121_))))))
                           (let ()
                             (declare (not safe))
                             (_loop255077255105_ _target255074255100_ '())))
                         (let ()
                           (declare (not safe))
                           (_g255068255087_ _g255069255090_))))))
               (let ()
                 (declare (not safe))
                 (_g255068255087_ _g255069255090_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g255068255087_
                                                  _g255069255090_))))))
                                   (declare (not safe))
                                   (_g255067255438_ _L254320_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L254320_))
                                     (let* ((_g255441255471_
                                             (lambda (_g255442255468_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g255442255468_))))
                                            (_g255440256159_
                                             (lambda (_g255442255474_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g255442255474_))
                                                   (let ((_e255448255476_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g255442255474_))))
                                                     (let ((_hd255447255479_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e255448255476_)))
                                                           (_tl255446255481_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e255448255476_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl255446255481_))
                                                           (let ((_e255451255484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl255446255481_))))
                     (let ((_hd255450255487_
                            (let ()
                              (declare (not safe))
                              (##car _e255451255484_)))
                           (_tl255449255489_
                            (let ()
                              (declare (not safe))
                              (##cdr _e255451255484_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd255450255487_))
                           (let ((_e255454255492_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd255450255487_))))
                             (let ((_hd255453255495_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e255454255492_)))
                                   (_tl255452255497_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e255454255492_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd255453255495_))
                                   (let ((_e255457255500_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd255453255495_))))
                                     (let ((_hd255456255503_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e255457255500_)))
                                           (_tl255455255505_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e255457255500_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd255456255503_))
                                           (let ((_e255460255508_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd255456255503_))))
                                             (let ((_hd255459255511_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e255460255508_)))
                                                   (_tl255458255513_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e255460255508_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl255458255513_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl255455255505_))
                                                       (let ((_e255463255516_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl255455255505_))))
                 (let ((_hd255462255519_
                        (let () (declare (not safe)) (##car _e255463255516_)))
                       (_tl255461255521_
                        (let () (declare (not safe)) (##cdr _e255463255516_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl255461255521_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl255452255497_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl255449255489_))
                               (let ((_e255466255524_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl255449255489_))))
                                 (let ((_hd255465255527_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e255466255524_)))
                                       (_tl255464255529_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e255466255524_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl255464255529_))
                                       ((lambda (_L255532_ _L255533_ _L255534_)
                                          (let* ((_g255557255575_
                                                  (lambda (_g255558255572_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g255558255572_))))
                                                 (_g255556255626_
                                                  (lambda (_g255558255578_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g255558255578_))
                                                        (let ((_e255564255580_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g255558255578_))))
                  (let ((_hd255563255583_
                         (let () (declare (not safe)) (##car _e255564255580_)))
                        (_tl255562255585_
                         (let ()
                           (declare (not safe))
                           (##cdr _e255564255580_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl255562255585_))
                        (let ((_e255567255588_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl255562255585_))))
                          (let ((_hd255566255591_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e255567255588_)))
                                (_tl255565255593_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e255567255588_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd255566255591_))
                                (let ((_e255570255596_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd255566255591_))))
                                  (let ((_hd255569255599_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e255570255596_)))
                                        (_tl255568255601_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e255570255596_))))
                                    ((lambda (_L255604_ _L255605_ _L255606_)
                                       (for-each
                                        (lambda (_g255621255623_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g255621255623_
                                             _L255606_
                                             _method-calls254340_
                                             _slot-refs254341_
                                             _class-type-check254342_
                                             _struct-type-check254343_
                                             _struct-type-assert254344_)))
                                        _L255604_))
                                     _tl255565255593_
                                     _tl255568255601_
                                     _hd255569255599_)))
                                (let ()
                                  (declare (not safe))
                                  (_g255557255575_ _g255558255578_)))))
                        (let ()
                          (declare (not safe))
                          (_g255557255575_ _g255558255578_)))))
                (let ()
                  (declare (not safe))
                  (_g255557255575_ _g255558255578_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g255556255626_ _L255533_))
                                          (let* ((_g255629255648_
                                                  (lambda (_g255630255645_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g255630255645_))))
                                                 (_g255628255767_
                                                  (lambda (_g255630255651_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g255630255651_))
                                                        (let ((_e255634255653_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g255630255651_))))
                  (let ((_hd255633255656_
                         (let () (declare (not safe)) (##car _e255634255653_)))
                        (_tl255632255658_
                         (let ()
                           (declare (not safe))
                           (##cdr _e255634255653_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl255632255658_))
                        (let ((_g263604_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl255632255658_
                                  '0))))
                          (begin
                            (let ((_g263605_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g263604_)
                                         (##vector-length _g263604_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g263605_ 2)))
                                  (error "Context expects 2 values"
                                         _g263605_)))
                            (let ((_target255635255661_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g263604_ 0)))
                                  (_tl255637255663_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g263604_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl255637255663_))
                                  (letrec ((_loop255638255666_
                                            (lambda (_hd255636255669_
                                                     _clause255642255671_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd255636255669_))
                                                  (let ((_e255639255674_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd255636255669_))))
                                                    (let ((_lp-hd255640255677_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e255639255674_)))
                                                          (_lp-tl255641255679_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e255639255674_))))
                                                      (let ((__tmp263607
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd255640255677_ _clause255642255671_))))
                (declare (not safe))
                (_loop255638255666_ _lp-tl255641255679_ __tmp263607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause255643255682_
                                                         (reverse _clause255642255671_)))
                                                    ((lambda (_L255685_)
                                                       (for-each
                                                        (lambda (_clause255698_)
                                                          (let* ((_g255700255715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g255701255712_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g255701255712_))))
                         (_g255699255757_
                          (lambda (_g255701255718_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g255701255718_))
                                (let ((_e255707255720_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g255701255718_))))
                                  (let ((_hd255706255723_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e255707255720_)))
                                        (_tl255705255725_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e255707255720_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd255706255723_))
                                        (let ((_e255710255728_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd255706255723_))))
                                          (let ((_hd255709255731_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e255710255728_)))
                                                (_tl255708255733_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e255710255728_))))
                                            ((lambda (_L255736_
                                                      _L255737_
                                                      _L255738_)
                                               (for-each
                                                (lambda (_g255752255754_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g255752255754_
                                                     _L255738_
                                                     _method-calls254340_
                                                     _slot-refs254341_
                                                     _class-type-check254342_
                                                     _struct-type-check254343_
                                                     _struct-type-assert254344_)))
                                                _L255736_))
                                             _tl255705255725_
                                             _tl255708255733_
                                             _hd255709255731_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g255700255715_ _g255701255718_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g255700255715_ _g255701255718_))))))
                    (declare (not safe))
                    (_g255699255757_ _clause255698_)))
                (let ((__tmp263606
                       (lambda (_g255759255762_ _g255760255764_)
                         (let ()
                           (declare (not safe))
                           (cons _g255759255762_ _g255760255764_)))))
                  (declare (not safe))
                  (foldr1 __tmp263606 '() _L255685_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause255643255682_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop255638255666_
                                       _target255635255661_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g255629255648_ _g255630255651_))))))
                        (let ()
                          (declare (not safe))
                          (_g255629255648_ _g255630255651_)))))
                (let ()
                  (declare (not safe))
                  (_g255629255648_ _g255630255651_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g255628255767_ _L255532_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?254347_))
                                              _stx254246_
                                              (let* ((_specializer-id255776_
                                                      (let* ((_id255770_
                                                              (let ((__tmp263608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L254321_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp263608 '"::specialize")))
                     (_specializer-id255773_
                      (let ((__tmp263609
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx254246_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id255770_ __tmp263609))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id255773_))
                _specializer-id255773_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id255783_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?254349_))
                                                          (let* ((_id255778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp263610
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L254321_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp263610
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id255780_
                          (let ((__tmp263611
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx254246_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id255778_ __tmp263611))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id255780_))
                    _lifted-specializer-id255780_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t255785_
                                                      (let ((__tmp263612
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp263612)))
                                                     (_methods255787_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls254340_)))
                                                     (_$methods255791_
                                                      (map (lambda (_id255789_)
                                                             (let ((__tmp263613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id255789_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp263613)))
                   _methods255787_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g263614_
                                                      (for-each
                                                       (lambda (_g255792255795_
                                                                _g255793255797_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls254340_
                                                            _g255792255795_
                                                            _g255793255797_)))
                                                       _methods255787_
                                                       _$methods255791_))
                                                     (_methods-bind255808_
                                                      (map (lambda (_g255800255803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g255801255805_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind254248_
                        _$t255785_
                        _g255800255803_
                        _g255801255805_)))
                   _methods255787_
                   _$methods255791_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots255810_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs254341_)))
                                                     (_$slots255814_
                                                      (map (lambda (_id255812_)
                                                             (let ((__tmp263615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id255812_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp263615)))
                   _slots255810_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g263616_
                                                      (for-each
                                                       (lambda (_g255815255818_
                                                                _g255816255820_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs254341_
                                                            _g255815255818_
                                                            _g255816255820_)))
                                                       _slots255810_
                                                       _$slots255814_))
                                                     (_slots-bind255831_
                                                      (map (lambda (_g255823255826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g255824255828_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind254249_
                        _$t255785_
                        _g255823255826_
                        _g255824255828_)))
                   _slots255810_
                   _$slots255814_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check255833_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check254342_)))
                                                     (_$class-check255836_
                                                      (map (lambda (_g263617_)
                                                             (let ((__tmp263618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp263618)))
                   _class-check255833_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g263619_
                                                      (for-each
                                                       (lambda (_g255837255840_
                                                                _g255838255842_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check254342_
                                                            _g255837255840_
                                                            _g255838255842_)))
                                                       _class-check255833_
                                                       _$class-check255836_))
                                                     (_class-check-bind255853_
                                                      (map (lambda (_g255845255848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g255846255850_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind254250_
                        _$t255785_
                        _g255845255848_
                        _g255846255850_)))
                   _class-check255833_
                   _$class-check255836_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all255855_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check254343_
                                                         _struct-type-assert254344_)))
                                                     (_struct-check255857_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all255855_)))
                                                     (_$struct-check255860_
                                                      (map (lambda (_g263620_)
                                                             (let ((__tmp263621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp263621)))
                   _struct-check255857_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g263622_
                                                      (for-each
                                                       (lambda (_g255861255864_
                                                                _g255862255866_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all255855_
                                                            _g255861255864_
                                                            _g255862255866_)))
                                                       _struct-check255857_
                                                       _$struct-check255860_))
                                                     (_struct-check-bind255877_
                                                      (map (lambda (_g255869255872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g255870255874_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind254251_
                        _$t255785_
                        _g255869255872_
                        _g255870255874_)))
                   _struct-check255857_
                   _$struct-check255860_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr255976_
                                                      (lambda (_struct-type-check1255879_
                                                               _struct-type-check2255880_)
                                                        (let* ((_g255882255900_
                                                                (lambda (_g255883255897_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g255883255897_))))
                       (_g255881255973_
                        (lambda (_g255883255903_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g255883255903_))
                              (let ((_e255889255905_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g255883255903_))))
                                (let ((_hd255888255908_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e255889255905_)))
                                      (_tl255887255910_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e255889255905_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl255887255910_))
                                      (let ((_e255892255913_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl255887255910_))))
                                        (let ((_hd255891255916_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e255892255913_)))
                                              (_tl255890255918_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e255892255913_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd255891255916_))
                                              (let ((_e255895255921_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd255891255916_))))
                                                (let ((_hd255894255924_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e255895255921_)))
                                                      (_tl255893255926_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e255895255921_))))
                                                  ((lambda (_L255929_
                                                            _L255930_
                                                            _L255931_)
                                                     (let* ((_body255971_
                                                             (map (lambda (_g255966255968_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g255966255968_
                               _L255931_
                               _$t255785_
                               _method-calls254340_
                               _slot-refs254341_
                               _class-type-check254342_
                               _struct-type-check1255879_
                               _struct-type-check2255880_)))
                          _L255929_))
                    (__tmp263623
                     (let ((__tmp263624
                            (let ((__tmp263625
                                   (let ()
                                     (declare (not safe))
                                     (cons _L255931_ _L255930_))))
                              (declare (not safe))
                              (cons __tmp263625 _body255971_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp263624))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp263623 _L255533_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl255890255918_
                                                   _tl255893255926_
                                                   _hd255894255924_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g255882255900_
                                                 _g255883255903_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g255882255900_ _g255883255903_)))))
                              (let ()
                                (declare (not safe))
                                (_g255882255900_ _g255883255903_))))))
                  (declare (not safe))
                  (_g255881255973_ _L255533_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr256137_
                                                      (lambda (_struct-type-check1255978_
                                                               _struct-type-check2255979_)
                                                        (let* ((_g255981256000_
                                                                (lambda (_g255982255997_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g255982255997_))))
                       (_g255980256134_
                        (lambda (_g255982256003_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g255982256003_))
                              (let ((_e255986256005_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g255982256003_))))
                                (let ((_hd255985256008_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e255986256005_)))
                                      (_tl255984256010_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e255986256005_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl255984256010_))
                                      (let ((_g263626_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl255984256010_
                                                '0))))
                                        (begin
                                          (let ((_g263627_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g263626_)
                                                       (##vector-length
                                                        _g263626_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g263627_ 2)))
                                                (error "Context expects 2 values"
                                                       _g263627_)))
                                          (let ((_target255987256013_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g263626_ 0)))
                                                (_tl255989256015_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g263626_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl255989256015_))
                                                (letrec ((_loop255990256018_
                                                          (lambda (_hd255988256021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause255994256023_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd255988256021_))
                        (let ((_e255991256026_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd255988256021_))))
                          (let ((_lp-hd255992256029_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e255991256026_)))
                                (_lp-tl255993256031_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e255991256026_))))
                            (let ((__tmp263631
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd255992256029_
                                           _clause255994256023_))))
                              (declare (not safe))
                              (_loop255990256018_
                               _lp-tl255993256031_
                               __tmp263631))))
                        (let ((_clause255995256034_
                               (reverse _clause255994256023_)))
                          ((lambda (_L256037_)
                             (let* ((_clauses256132_
                                     (map (lambda (_clause256052_)
                                            (let* ((___stx262270262271_
                                                    _clause256052_)
                                                   (_g256055256070_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx262270262271_)))))
                                              (let ((___kont262272262273_
                                                     (lambda (_L256098_
                                                              _L256099_
                                                              _L256100_)
                                                       (let* ((_body256120_
                                                               (map (lambda (_g256115256117_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g256115256117_
                                 _L256100_
                                 _$t255785_
                                 _method-calls254340_
                                 _slot-refs254341_
                                 _class-type-check254342_
                                 _struct-type-check1255978_
                                 _struct-type-check2255979_)))
                            _L256098_))
                      (__tmp263628
                       (let ()
                         (declare (not safe))
                         (cons _L256100_ _L256099_))))
                 (declare (not safe))
                 (cons __tmp263628 _body256120_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont262274262275_
                                                     (lambda ()
                                                       _clause256052_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx262270262271_))
                                                    (let ((_e256062256082_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx262270262271_))))
                                                      (let ((_tl256060256087_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e256062256082_)))
                    (_hd256061256085_
                     (let () (declare (not safe)) (##car _e256062256082_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd256061256085_))
                    (let ((_e256065256090_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd256061256085_))))
                      (let ((_tl256063256095_
                             (let ()
                               (declare (not safe))
                               (##cdr _e256065256090_)))
                            (_hd256064256093_
                             (let ()
                               (declare (not safe))
                               (##car _e256065256090_))))
                        (___kont262272262273_
                         _tl256060256087_
                         _tl256063256095_
                         _hd256064256093_)))
                    (___kont262274262275_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont262274262275_)))))
                                          (let ((__tmp263629
                                                 (lambda (_g256124256127_
                                                          _g256125256129_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g256124256127_
                                                           _g256125256129_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp263629
                                                    '()
                                                    _L256037_))))
                                    (__tmp263630
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses256132_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp263630 _L255532_)))
                           _clause255995256034_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop255990256018_
                                                     _target255987256013_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g255981256000_
                                                   _g255982256003_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g255981256000_ _g255982256003_)))))
                              (let ()
                                (declare (not safe))
                                (_g255981256000_ _g255982256003_))))))
                  (declare (not safe))
                  (_g255980256134_ _L255532_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl256142_
                                                      (lambda (_specializer-lambda-expr256139_
                                                               _specializer-case-lambda-expr256140_)
                                                        (let ((__tmp263632
                                                               (let ((__tmp263633
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp263635
                                     (let ((__tmp263636
                                            (let ((__tmp263638
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L255534_ '())))
                                                  (__tmp263637
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr256139_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp263638 __tmp263637))))
                                       (declare (not safe))
                                       (cons __tmp263636 '())))
                                    (__tmp263634
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr256140_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp263635 __tmp263634))))
                         (declare (not safe))
                         (cons '%#let-values __tmp263633))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp263632 _stx254246_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr256144_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr255976_
                                                         _struct-check-all255855_
                                                         _empty254345_)))
                                                     (_specializer-case-lambda-expr256146_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr256137_
                                                         _struct-check-all255855_
                                                         _empty254345_)))
                                                     (_specializer-impl256148_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl256142_
                                                         _specializer-lambda-expr256144_
                                                         _specializer-case-lambda-expr256146_)))
                                                     (_unchecked-specializer-lambda-expr256150_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?254348_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr255976_
                                                             _empty254345_
                                                             _struct-check-all255855_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr256152_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?254348_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr256137_
                                                             _empty254345_
                                                             _struct-check-all255855_))
                                                          '#f))
                                                     (_unchecked-specializer-impl256154_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?254348_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl256142_
                                                             _unchecked-specializer-lambda-expr256150_
                                                             _unchecked-specializer-case-lambda-expr256152_))
                                                          '#f))
                                                     (_specializer-impl256156_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl254252_
                                                         _$t255785_
                                                         _methods-bind255808_
                                                         _slots-bind255831_
                                                         _class-check-bind255853_
                                                         _struct-check-bind255877_
                                                         _specializer-impl256148_
                                                         _lifted-specializer-id255783_
                                                         _unchecked-specializer-impl256154_))))
                                                (let ((__tmp263640
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L254321_)))
                                                      (__tmp263639
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id255776_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp263640
                                                   '" => "
                                                   __tmp263639))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def254253_
                                                   _L254321_
                                                   _specializer-id255776_
                                                   _specializer-impl256156_
                                                   _lifted-specializer-id255783_
                                                   _unchecked-specializer-impl256154_)))))
                                        _hd255465255527_
                                        _hd255462255519_
                                        _hd255459255511_)
                                       (let ()
                                         (declare (not safe))
                                         (_g255441255471_ _g255442255474_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g255441255471_ _g255442255474_)))
                           (let ()
                             (declare (not safe))
                             (_g255441255471_ _g255442255474_)))
                       (let ()
                         (declare (not safe))
                         (_g255441255471_ _g255442255474_)))))
               (let () (declare (not safe)) (_g255441255471_ _g255442255474_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g255441255471_
                                                      _g255442255474_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g255441255471_
                                              _g255442255474_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g255441255471_ _g255442255474_)))))
                           (let ()
                             (declare (not safe))
                             (_g255441255471_ _g255442255474_)))))
                   (let ()
                     (declare (not safe))
                     (_g255441255471_ _g255442255474_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g255441255471_
                                                      _g255442255474_))))))
                                       (declare (not safe))
                                       (_g255440256159_ _L254320_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L254320_))
                                         (let* ((_g256162256215_
                                                 (lambda (_g256163256212_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g256163256212_))))
                                                (_g256161257487_
                                                 (lambda (_g256163256218_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g256163256218_))
                                                       (let ((_e256171256220_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g256163256218_))))
                 (let ((_hd256170256223_
                        (let () (declare (not safe)) (##car _e256171256220_)))
                       (_tl256169256225_
                        (let () (declare (not safe)) (##cdr _e256171256220_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd256170256223_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd256170256223_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl256169256225_))
                               (let ((_e256174256228_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl256169256225_))))
                                 (let ((_hd256173256231_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e256174256228_)))
                                       (_tl256172256233_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e256174256228_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd256173256231_))
                                       (let ((_e256177256236_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd256173256231_))))
                                         (let ((_hd256176256239_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e256177256236_)))
                                               (_tl256175256241_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e256177256236_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd256176256239_))
                                               (let ((_e256180256244_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd256176256239_))))
                                                 (let ((_hd256179256247_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e256180256244_)))
                                                       (_tl256178256249_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e256180256244_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd256179256247_))
                                                       (let ((_e256183256252_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd256179256247_))))
                 (let ((_hd256182256255_
                        (let () (declare (not safe)) (##car _e256183256252_)))
                       (_tl256181256257_
                        (let () (declare (not safe)) (##cdr _e256183256252_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl256181256257_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl256178256249_))
                           (let ((_e256186256260_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl256178256249_))))
                             (let ((_hd256185256263_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e256186256260_)))
                                   (_tl256184256265_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e256186256260_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd256185256263_))
                                   (let ((_e256189256268_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd256185256263_))))
                                     (let ((_hd256188256271_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e256189256268_)))
                                           (_tl256187256273_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e256189256268_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd256188256271_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd256188256271_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl256187256273_))
                                                   (let ((_e256192256276_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl256187256273_))))
                                                     (let ((_hd256191256279_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e256192256276_)))
                                                           (_tl256190256281_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e256192256276_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd256191256279_))
                                                           (let ((_e256195256284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd256191256279_))))
                     (let ((_hd256194256287_
                            (let ()
                              (declare (not safe))
                              (##car _e256195256284_)))
                           (_tl256193256289_
                            (let ()
                              (declare (not safe))
                              (##cdr _e256195256284_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd256194256287_))
                           (let ((_e256198256292_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd256194256287_))))
                             (let ((_hd256197256295_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e256198256292_)))
                                   (_tl256196256297_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e256198256292_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd256197256295_))
                                   (let ((_e256201256300_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd256197256295_))))
                                     (let ((_hd256200256303_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e256201256300_)))
                                           (_tl256199256305_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e256201256300_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl256199256305_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl256196256297_))
                                               (let ((_e256204256308_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl256196256297_))))
                                                 (let ((_hd256203256311_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e256204256308_)))
                                                       (_tl256202256313_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e256204256308_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl256202256313_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl256193256289_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl256190256281_))
                       (let ((_e256207256316_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl256190256281_))))
                         (let ((_hd256206256319_
                                (let ()
                                  (declare (not safe))
                                  (##car _e256207256316_)))
                               (_tl256205256321_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e256207256316_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl256205256321_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl256184256265_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl256175256241_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl256172256233_))
                                           (let ((_e256210256324_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl256172256233_))))
                                             (let ((_hd256209256327_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e256210256324_)))
                                                   (_tl256208256329_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e256210256324_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl256208256329_))
                                                   ((lambda (_L256332_
                                                             _L256333_
                                                             _L256334_
                                                             _L256335_
                                                             _L256336_)
                                                      (let* ((_g256375256437_
                                                              (lambda (_g256376256434_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g256376256434_))))
                     (_g256374257484_
                      (lambda (_g256376256440_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g256376256440_))
                            (let ((_e256384256442_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g256376256440_))))
                              (let ((_hd256383256445_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e256384256442_)))
                                    (_tl256382256447_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e256384256442_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd256383256445_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd256383256445_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl256382256447_))
                                            (let ((_e256387256450_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl256382256447_))))
                                              (let ((_hd256386256453_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e256387256450_)))
                                                    (_tl256385256455_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e256387256450_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl256385256455_))
                                                    (let ((_e256390256458_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl256385256455_))))
                                                      (let ((_hd256389256461_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e256390256458_)))
                    (_tl256388256463_
                     (let () (declare (not safe)) (##cdr _e256390256458_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd256389256461_))
                    (let ((_e256393256466_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd256389256461_))))
                      (let ((_hd256392256469_
                             (let ()
                               (declare (not safe))
                               (##car _e256393256466_)))
                            (_tl256391256471_
                             (let ()
                               (declare (not safe))
                               (##cdr _e256393256466_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd256392256469_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd256392256469_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl256391256471_))
                                    (let ((_e256396256474_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl256391256471_))))
                                      (let ((_hd256395256477_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e256396256474_)))
                                            (_tl256394256479_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e256396256474_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd256395256477_))
                                            (let ((_e256399256482_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd256395256477_))))
                                              (let ((_hd256398256485_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e256399256482_)))
                                                    (_tl256397256487_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e256399256482_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd256398256485_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd256398256485_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl256397256487_))
                                                            (let ((_e256402256490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl256397256487_))))
                      (let ((_hd256401256493_
                             (let ()
                               (declare (not safe))
                               (##car _e256402256490_)))
                            (_tl256400256495_
                             (let ()
                               (declare (not safe))
                               (##cdr _e256402256490_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl256400256495_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl256394256479_))
                                (let ((_e256405256498_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl256394256479_))))
                                  (let ((_hd256404256501_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e256405256498_)))
                                        (_tl256403256503_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e256405256498_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd256404256501_))
                                        (let ((_e256408256506_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd256404256501_))))
                                          (let ((_hd256407256509_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e256408256506_)))
                                                (_tl256406256511_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e256408256506_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd256407256509_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd256407256509_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl256406256511_))
                                                        (let ((_e256411256514_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl256406256511_))))
                  (let ((_hd256410256517_
                         (let () (declare (not safe)) (##car _e256411256514_)))
                        (_tl256409256519_
                         (let ()
                           (declare (not safe))
                           (##cdr _e256411256514_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl256409256519_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl256403256503_))
                            (let ((_e256414256522_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl256403256503_))))
                              (let ((_hd256413256525_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e256414256522_)))
                                    (_tl256412256527_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e256414256522_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd256413256525_))
                                    (let ((_e256417256530_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd256413256525_))))
                                      (let ((_hd256416256533_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e256417256530_)))
                                            (_tl256415256535_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e256417256530_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd256416256533_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd256416256533_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl256415256535_))
                                                    (let ((_e256420256538_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl256415256535_))))
                                                      (let ((_hd256419256541_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e256420256538_)))
                    (_tl256418256543_
                     (let () (declare (not safe)) (##cdr _e256420256538_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl256418256543_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl256412256527_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl256412256527_))
                                  '1)
                            (let ((_g263516_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl256412256527_
                                      '1))))
                              (begin
                                (let ((_g263517_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g263516_)
                                             (##vector-length _g263516_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g263517_ 2)))
                                      (error "Context expects 2 values"
                                             _g263517_)))
                                (let ((_target256421256546_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g263516_ 0)))
                                      (_tl256423256548_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g263516_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl256423256548_))
                                      (let ((_e256432256551_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl256423256548_))))
                                        (let ((_hd256431256554_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e256432256551_)))
                                              (_tl256430256556_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e256432256551_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl256430256556_))
                                              (letrec ((_loop256424256559_
                                                        (lambda (_hd256422256562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref256428256564_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd256422256562_))
                      (let ((_e256425256567_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd256422256562_))))
                        (let ((_lp-hd256426256570_
                               (let ()
                                 (declare (not safe))
                                 (##car _e256425256567_)))
                              (_lp-tl256427256572_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e256425256567_))))
                          (let ((__tmp263603
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd256426256570_
                                         _kw-ref256428256564_))))
                            (declare (not safe))
                            (_loop256424256559_
                             _lp-tl256427256572_
                             __tmp263603))))
                      (let ((_kw-ref256429256575_
                             (reverse _kw-ref256428256564_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl256388256463_))
                            ((lambda (_L256578_
                                      _L256579_
                                      _L256580_
                                      _L256581_
                                      _L256582_)
                               (let* ((_kw-count256633_
                                       (length (let ((__tmp263518
                                                      (lambda (_g256625256628_
                                                               _g256626256630_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g256625256628_
                                                                _g256626256630_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp263518
                                                         '()
                                                         _L256579_))))
                                      (_self-index256635_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count256633_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L256334_))
                                     (let* ((_g256638256652_
                                             (lambda (_g256639256649_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g256639256649_))))
                                            (_g256637256823_
                                             (lambda (_g256639256655_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g256639256655_))
                                                   (let ((_e256644256657_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g256639256655_))))
                                                     (let ((_hd256643256660_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e256644256657_)))
                                                           (_tl256642256662_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e256644256657_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl256642256662_))
                                                           (let ((_e256647256665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl256642256662_))))
                     (let ((_hd256646256668_
                            (let ()
                              (declare (not safe))
                              (##car _e256647256665_)))
                           (_tl256645256670_
                            (let ()
                              (declare (not safe))
                              (##cdr _e256647256665_))))
                       ((lambda (_L256673_ _L256674_)
                          (let ((_self256690_
                                 (list-ref _L256674_ _self-index256635_)))
                            (for-each
                             (lambda (_g256691256693_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g256691256693_
                                  _self256690_
                                  _method-calls254340_
                                  _slot-refs254341_
                                  _class-type-check254342_
                                  _struct-type-check254343_
                                  _struct-type-assert254344_)))
                             _L256673_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?254347_))
                                _stx254246_
                                (let* ((_specializer-id256702_
                                        (let* ((_id256696_
                                                (let ((__tmp263569
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L254321_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp263569
                                                   '"::specialize")))
                                               (_specializer-id256699_
                                                (let ((__tmp263570
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx254246_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id256696_
                                                   __tmp263570))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id256699_))
                                          _specializer-id256699_))
                                       (_lifted-specializer-id256709_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?254349_))
                                            (let* ((_id256704_
                                                    (let ((__tmp263571
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L254321_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp263571
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id256706_
                                                    (let ((__tmp263572
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx254246_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id256704_
                                                       __tmp263572))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id256706_))
                                              _lifted-specializer-id256706_)
                                            '#f))
                                       (_$t256711_
                                        (let ((__tmp263573 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp263573)))
                                       (_methods256713_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls254340_)))
                                       (_$methods256717_
                                        (map (lambda (_id256715_)
                                               (let ((__tmp263574
                                                      (gensym _id256715_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp263574)))
                                             _methods256713_))
                                       (_g263575_
                                        (for-each
                                         (lambda (_g256718256721_
                                                  _g256719256723_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls254340_
                                              _g256718256721_
                                              _g256719256723_)))
                                         _methods256713_
                                         _$methods256717_))
                                       (_methods-bind256734_
                                        (map (lambda (_g256726256729_
                                                      _g256727256731_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind254248_
                                                  _$t256711_
                                                  _g256726256729_
                                                  _g256727256731_)))
                                             _methods256713_
                                             _$methods256717_))
                                       (_slots256736_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs254341_)))
                                       (_$slots256740_
                                        (map (lambda (_id256738_)
                                               (let ((__tmp263576
                                                      (gensym _id256738_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp263576)))
                                             _slots256736_))
                                       (_g263577_
                                        (for-each
                                         (lambda (_g256741256744_
                                                  _g256742256746_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs254341_
                                              _g256741256744_
                                              _g256742256746_)))
                                         _slots256736_
                                         _$slots256740_))
                                       (_slots-bind256757_
                                        (map (lambda (_g256749256752_
                                                      _g256750256754_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind254249_
                                                  _$t256711_
                                                  _g256749256752_
                                                  _g256750256754_)))
                                             _slots256736_
                                             _$slots256740_))
                                       (_class-check256759_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check254342_)))
                                       (_$class-check256762_
                                        (map (lambda (_g263578_)
                                               (let ((__tmp263579
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp263579)))
                                             _class-check256759_))
                                       (_g263580_
                                        (for-each
                                         (lambda (_g256763256766_
                                                  _g256764256768_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check254342_
                                              _g256763256766_
                                              _g256764256768_)))
                                         _class-check256759_
                                         _$class-check256762_))
                                       (_class-check-bind256779_
                                        (map (lambda (_g256771256774_
                                                      _g256772256776_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind254250_
                                                  _$t256711_
                                                  _g256771256774_
                                                  _g256772256776_)))
                                             _class-check256759_
                                             _$class-check256762_))
                                       (_struct-check-all256781_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check254343_
                                           _struct-type-assert254344_)))
                                       (_struct-check256783_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all256781_)))
                                       (_$struct-check256786_
                                        (map (lambda (_g263581_)
                                               (let ((__tmp263582
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp263582)))
                                             _struct-check256783_))
                                       (_g263583_
                                        (for-each
                                         (lambda (_g256787256790_
                                                  _g256788256792_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all256781_
                                              _g256787256790_
                                              _g256788256792_)))
                                         _struct-check256783_
                                         _$struct-check256786_))
                                       (_struct-check-bind256803_
                                        (map (lambda (_g256795256798_
                                                      _g256796256800_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind254251_
                                                  _$t256711_
                                                  _g256795256798_
                                                  _g256796256800_)))
                                             _struct-check256783_
                                             _$struct-check256786_))
                                       (_make-specializer-impl256814_
                                        (lambda (_struct-type-check1256805_
                                                 _struct-type-check2256806_)
                                          (let* ((_specializer-body256812_
                                                  (map (lambda (_g256807256809_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g256807256809_
                                                            _self256690_
                                                            _$t256711_
                                                            _method-calls254340_
                                                            _slot-refs254341_
                                                            _class-type-check254342_
                                                            _struct-type-check1256805_
                                                            _struct-type-check2256806_)))
                                                       _L256673_))
                                                 (__tmp263584
                                                  (let ((__tmp263585
                                                         (let ((__tmp263587
                                                                (let ((__tmp263588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp263600
                                      (let ()
                                        (declare (not safe))
                                        (cons _L256336_ '())))
                                     (__tmp263589
                                      (let ((__tmp263590
                                             (let ((__tmp263591
                                                    (let ((__tmp263593
                                                           (let ((__tmp263594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp263599
                                 (let ()
                                   (declare (not safe))
                                   (cons _L256335_ '())))
                                (__tmp263595
                                 (let ((__tmp263596
                                        (let ((__tmp263597
                                               (let ((__tmp263598
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L256674_
                                                              _specializer-body256812_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp263598))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp263597
                                           _L256334_))))
                                   (declare (not safe))
                                   (cons __tmp263596 '()))))
                            (declare (not safe))
                            (cons __tmp263599 __tmp263595))))
                     (declare (not safe))
                     (cons __tmp263594 '())))
                  (__tmp263592
                   (let () (declare (not safe)) (cons _L256333_ '()))))
              (declare (not safe))
              (cons __tmp263593 __tmp263592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp263591))))
                                        (declare (not safe))
                                        (cons __tmp263590 '()))))
                                 (declare (not safe))
                                 (cons __tmp263600 __tmp263589))))
                          (declare (not safe))
                          (cons __tmp263588 '())))
                       (__tmp263586
                        (let () (declare (not safe)) (cons _L256332_ '()))))
                   (declare (not safe))
                   (cons __tmp263587 __tmp263586))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp263585))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp263584
                                             _stx254246_))))
                                       (_specializer-impl256816_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl256814_
                                           _struct-check-all256781_
                                           _empty254345_)))
                                       (_unchecked-specializer-impl256818_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?254348_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl256814_
                                               _empty254345_
                                               _struct-check-all256781_))
                                            '#f))
                                       (_specializer-impl256820_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl254252_
                                           _$t256711_
                                           _methods-bind256734_
                                           _slots-bind256757_
                                           _class-check-bind256779_
                                           _struct-check-bind256803_
                                           _specializer-impl256816_
                                           _lifted-specializer-id256709_
                                           _unchecked-specializer-impl256818_))))
                                  (let ((__tmp263602
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L254321_)))
                                        (__tmp263601
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id256702_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp263602
                                     '" => "
                                     __tmp263601))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def254253_
                                     _L254321_
                                     _specializer-id256702_
                                     _specializer-impl256820_
                                     _lifted-specializer-id256709_
                                     _unchecked-specializer-impl256818_))))))
                        _tl256645256670_
                        _hd256646256668_)))
                   (let ()
                     (declare (not safe))
                     (_g256638256652_ _g256639256655_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g256638256652_
                                                      _g256639256655_))))))
                                       (declare (not safe))
                                       (_g256637256823_ _L256334_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L256334_))
                                         (let* ((_g256826256856_
                                                 (lambda (_g256827256853_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g256827256853_))))
                                                (_g256825257481_
                                                 (lambda (_g256827256859_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g256827256859_))
                                                       (let ((_e256833256861_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g256827256859_))))
                 (let ((_hd256832256864_
                        (let () (declare (not safe)) (##car _e256833256861_)))
                       (_tl256831256866_
                        (let () (declare (not safe)) (##cdr _e256833256861_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl256831256866_))
                       (let ((_e256836256869_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl256831256866_))))
                         (let ((_hd256835256872_
                                (let ()
                                  (declare (not safe))
                                  (##car _e256836256869_)))
                               (_tl256834256874_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e256836256869_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd256835256872_))
                               (let ((_e256839256877_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd256835256872_))))
                                 (let ((_hd256838256880_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e256839256877_)))
                                       (_tl256837256882_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e256839256877_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd256838256880_))
                                       (let ((_e256842256885_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd256838256880_))))
                                         (let ((_hd256841256888_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e256842256885_)))
                                               (_tl256840256890_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e256842256885_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd256841256888_))
                                               (let ((_e256845256893_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd256841256888_))))
                                                 (let ((_hd256844256896_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e256845256893_)))
                                                       (_tl256843256898_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e256845256893_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl256843256898_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl256840256890_))
                                                           (let ((_e256848256901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl256840256890_))))
                     (let ((_hd256847256904_
                            (let ()
                              (declare (not safe))
                              (##car _e256848256901_)))
                           (_tl256846256906_
                            (let ()
                              (declare (not safe))
                              (##cdr _e256848256901_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl256846256906_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl256837256882_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl256834256874_))
                                   (let ((_e256851256909_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl256834256874_))))
                                     (let ((_hd256850256912_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e256851256909_)))
                                           (_tl256849256914_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e256851256909_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl256849256914_))
                                           ((lambda (_L256917_
                                                     _L256918_
                                                     _L256919_)
                                              (let* ((_g256942256956_
                                                      (lambda (_g256943256953_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g256943256953_))))
                                                     (_g256941256997_
                                                      (lambda (_g256943256959_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g256943256959_))
                                                            (let ((_e256948256961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g256943256959_))))
                      (let ((_hd256947256964_
                             (let ()
                               (declare (not safe))
                               (##car _e256948256961_)))
                            (_tl256946256966_
                             (let ()
                               (declare (not safe))
                               (##cdr _e256948256961_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl256946256966_))
                            (let ((_e256951256969_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl256946256966_))))
                              (let ((_hd256950256972_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e256951256969_)))
                                    (_tl256949256974_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e256951256969_))))
                                ((lambda (_L256977_ _L256978_)
                                   (let ((_self256991_
                                          (list-ref
                                           _L256978_
                                           _self-index256635_)))
                                     (for-each
                                      (lambda (_g256992256994_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g256992256994_
                                           _self256991_
                                           _method-calls254340_
                                           _slot-refs254341_
                                           _class-type-check254342_
                                           _struct-type-check254343_
                                           _struct-type-assert254344_)))
                                      _L256977_)))
                                 _tl256949256974_
                                 _hd256950256972_)))
                            (let ()
                              (declare (not safe))
                              (_g256942256956_ _g256943256959_)))))
                    (let ()
                      (declare (not safe))
                      (_g256942256956_ _g256943256959_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g256941256997_ _L256918_))
                                              (let* ((_g257000257019_
                                                      (lambda (_g257001257016_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g257001257016_))))
                                                     (_g256999257124_
                                                      (lambda (_g257001257022_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g257001257022_))
                                                            (let ((_e257005257024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g257001257022_))))
                      (let ((_hd257004257027_
                             (let ()
                               (declare (not safe))
                               (##car _e257005257024_)))
                            (_tl257003257029_
                             (let ()
                               (declare (not safe))
                               (##cdr _e257005257024_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl257003257029_))
                            (let ((_g263519_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl257003257029_
                                      '0))))
                              (begin
                                (let ((_g263520_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g263519_)
                                             (##vector-length _g263519_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g263520_ 2)))
                                      (error "Context expects 2 values"
                                             _g263520_)))
                                (let ((_target257006257032_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g263519_ 0)))
                                      (_tl257008257034_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g263519_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl257008257034_))
                                      (letrec ((_loop257009257037_
                                                (lambda (_hd257007257040_
                                                         _clause257013257042_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd257007257040_))
                                                      (let ((_e257010257045_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd257007257040_))))
                (let ((_lp-hd257011257048_
                       (let () (declare (not safe)) (##car _e257010257045_)))
                      (_lp-tl257012257050_
                       (let () (declare (not safe)) (##cdr _e257010257045_))))
                  (let ((__tmp263522
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd257011257048_ _clause257013257042_))))
                    (declare (not safe))
                    (_loop257009257037_ _lp-tl257012257050_ __tmp263522))))
              (let ((_clause257014257053_ (reverse _clause257013257042_)))
                ((lambda (_L257056_)
                   (for-each
                    (lambda (_clause257069_)
                      (let* ((_g257071257082_
                              (lambda (_g257072257079_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g257072257079_))))
                             (_g257070257114_
                              (lambda (_g257072257085_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g257072257085_))
                                    (let ((_e257077257087_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g257072257085_))))
                                      (let ((_hd257076257090_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e257077257087_)))
                                            (_tl257075257092_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e257077257087_))))
                                        ((lambda (_L257095_ _L257096_)
                                           (let ((_self257108_
                                                  (list-ref
                                                   _L257096_
                                                   _self-index256635_)))
                                             (for-each
                                              (lambda (_g257109257111_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g257109257111_
                                                   _self257108_
                                                   _method-calls254340_
                                                   _slot-refs254341_
                                                   _class-type-check254342_
                                                   _struct-type-check254343_
                                                   _struct-type-assert254344_)))
                                              _L257095_)))
                                         _tl257075257092_
                                         _hd257076257090_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g257071257082_ _g257072257085_))))))
                        (declare (not safe))
                        (_g257070257114_ _clause257069_)))
                    (let ((__tmp263521
                           (lambda (_g257116257119_ _g257117257121_)
                             (let ()
                               (declare (not safe))
                               (cons _g257116257119_ _g257117257121_)))))
                      (declare (not safe))
                      (foldr1 __tmp263521 '() _L257056_))))
                 _clause257014257053_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop257009257037_
                                           _target257006257032_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g257000257019_ _g257001257022_))))))
                            (let ()
                              (declare (not safe))
                              (_g257000257019_ _g257001257022_)))))
                    (let ()
                      (declare (not safe))
                      (_g257000257019_ _g257001257022_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g256999257124_ _L256917_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?254347_))
                                                  _stx254246_
                                                  (let* ((_specializer-id257133_
                                                          (let* ((_id257127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp263523
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L254321_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp263523 '"::specialize")))
                         (_specializer-id257130_
                          (let ((__tmp263524
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx254246_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id257127_ __tmp263524))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id257130_))
                    _specializer-id257130_))
                 (_lifted-specializer-id257140_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?254349_))
                      (let* ((_id257135_
                              (let ((__tmp263525
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L254321_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp263525
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id257137_
                              (let ((__tmp263526
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx254246_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id257135_
                                 __tmp263526))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id257137_))
                        _lifted-specializer-id257137_)
                      '#f))
                 (_$t257142_
                  (let ((__tmp263527 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp263527)))
                 (_methods257144_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls254340_)))
                 (_$methods257148_
                  (map (lambda (_id257146_)
                         (let ((__tmp263528 (gensym _id257146_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp263528)))
                       _methods257144_))
                 (_g263529_
                  (for-each
                   (lambda (_g257149257152_ _g257150257154_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls254340_
                        _g257149257152_
                        _g257150257154_)))
                   _methods257144_
                   _$methods257148_))
                 (_methods-bind257165_
                  (map (lambda (_g257157257160_ _g257158257162_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind254248_
                            _$t257142_
                            _g257157257160_
                            _g257158257162_)))
                       _methods257144_
                       _$methods257148_))
                 (_slots257167_
                  (let () (declare (not safe)) (hash-keys _slot-refs254341_)))
                 (_$slots257171_
                  (map (lambda (_id257169_)
                         (let ((__tmp263530 (gensym _id257169_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp263530)))
                       _slots257167_))
                 (_g263531_
                  (for-each
                   (lambda (_g257172257175_ _g257173257177_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs254341_
                        _g257172257175_
                        _g257173257177_)))
                   _slots257167_
                   _$slots257171_))
                 (_slots-bind257188_
                  (map (lambda (_g257180257183_ _g257181257185_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind254249_
                            _$t257142_
                            _g257180257183_
                            _g257181257185_)))
                       _slots257167_
                       _$slots257171_))
                 (_class-check257190_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check254342_)))
                 (_$class-check257193_
                  (map (lambda (_g263532_)
                         (let ((__tmp263533 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp263533)))
                       _class-check257190_))
                 (_g263534_
                  (for-each
                   (lambda (_g257194257197_ _g257195257199_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check254342_
                        _g257194257197_
                        _g257195257199_)))
                   _class-check257190_
                   _$class-check257193_))
                 (_class-check-bind257210_
                  (map (lambda (_g257202257205_ _g257203257207_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind254250_
                            _$t257142_
                            _g257202257205_
                            _g257203257207_)))
                       _class-check257190_
                       _$class-check257193_))
                 (_struct-check-all257212_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check254343_
                     _struct-type-assert254344_)))
                 (_struct-check257214_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all257212_)))
                 (_$struct-check257217_
                  (map (lambda (_g263535_)
                         (let ((__tmp263536 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp263536)))
                       _struct-check257214_))
                 (_g263537_
                  (for-each
                   (lambda (_g257218257221_ _g257219257223_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all257212_
                        _g257218257221_
                        _g257219257223_)))
                   _struct-check257214_
                   _$struct-check257217_))
                 (_struct-check-bind257234_
                  (map (lambda (_g257226257229_ _g257227257231_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind254251_
                            _$t257142_
                            _g257226257229_
                            _g257227257231_)))
                       _struct-check257214_
                       _$struct-check257217_))
                 (_make-specializer-lambda-expr257320_
                  (lambda (_struct-type-check1257236_
                           _struct-type-check2257237_)
                    (let* ((_g257239257253_
                            (lambda (_g257240257250_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g257240257250_))))
                           (_g257238257317_
                            (lambda (_g257240257256_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g257240257256_))
                                  (let ((_e257245257258_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g257240257256_))))
                                    (let ((_hd257244257261_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e257245257258_)))
                                          (_tl257243257263_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e257245257258_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl257243257263_))
                                          (let ((_e257248257266_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl257243257263_))))
                                            (let ((_hd257247257269_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e257248257266_)))
                                                  (_tl257246257271_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e257248257266_))))
                                              ((lambda (_L257274_ _L257275_)
                                                 (let* ((_self257308_
                                                         (list-ref
                                                          _L257275_
                                                          _self-index256635_))
                                                        (_body257314_
                                                         (map (lambda (_g257309257311_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g257309257311_
                           _self257308_
                           _$t257142_
                           _method-calls254340_
                           _slot-refs254341_
                           _class-type-check254342_
                           _struct-type-check1257236_
                           _struct-type-check2257237_)))
                      _L257274_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp263538
                                                          (let ((__tmp263539
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L257275_ _body257314_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp263539))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp263538
                                                      _L256918_))))
                                               _tl257246257271_
                                               _hd257247257269_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g257239257253_
                                             _g257240257256_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g257239257253_ _g257240257256_))))))
                      (declare (not safe))
                      (_g257238257317_ _L256918_))))
                 (_make-specializer-case-lambda-expr257459_
                  (lambda (_struct-type-check1257322_
                           _struct-type-check2257323_)
                    (let* ((_g257325257344_
                            (lambda (_g257326257341_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g257326257341_))))
                           (_g257324257456_
                            (lambda (_g257326257347_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g257326257347_))
                                  (let ((_e257330257349_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g257326257347_))))
                                    (let ((_hd257329257352_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e257330257349_)))
                                          (_tl257328257354_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e257330257349_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl257328257354_))
                                          (let ((_g263540_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl257328257354_
                                                    '0))))
                                            (begin
                                              (let ((_g263541_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g263540_)
                                                           (##vector-length
                                                            _g263540_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g263541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g263541_)))
                                              (let ((_target257331257357_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g263540_
                                                        0)))
                                                    (_tl257333257359_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g263540_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl257333257359_))
                                                    (letrec ((_loop257334257362_
                                                              (lambda (_hd257332257365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause257338257367_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd257332257365_))
                            (let ((_e257335257370_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd257332257365_))))
                              (let ((_lp-hd257336257373_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e257335257370_)))
                                    (_lp-tl257337257375_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e257335257370_))))
                                (let ((__tmp263544
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd257336257373_
                                               _clause257338257367_))))
                                  (declare (not safe))
                                  (_loop257334257362_
                                   _lp-tl257337257375_
                                   __tmp263544))))
                            (let ((_clause257339257378_
                                   (reverse _clause257338257367_)))
                              ((lambda (_L257381_)
                                 (let* ((_clauses257454_
                                         (map (lambda (_clause257396_)
                                                (let* ((_g257398257409_
                                                        (lambda (_g257399257406_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g257399257406_))))
                                                       (_g257397257444_
                                                        (lambda (_g257399257412_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g257399257412_))
                      (let ((_e257404257414_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g257399257412_))))
                        (let ((_hd257403257417_
                               (let ()
                                 (declare (not safe))
                                 (##car _e257404257414_)))
                              (_tl257402257419_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e257404257414_))))
                          ((lambda (_L257422_ _L257423_)
                             (let* ((_self257435_
                                     (list-ref _L257423_ _self-index256635_))
                                    (_body257441_
                                     (map (lambda (_g257436257438_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g257436257438_
                                               _self257435_
                                               _$t257142_
                                               _method-calls254340_
                                               _slot-refs254341_
                                               _class-type-check254342_
                                               _struct-type-check1257322_
                                               _struct-type-check2257323_)))
                                          _L257422_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L257423_ _body257441_))))
                           _tl257402257419_
                           _hd257403257417_)))
                      (let ()
                        (declare (not safe))
                        (_g257398257409_ _g257399257412_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g257397257444_
                                                   _clause257396_)))
                                              (let ((__tmp263542
                                                     (lambda (_g257446257449_
                                                              _g257447257451_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g257446257449_
                                                               _g257447257451_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp263542
                                                        '()
                                                        _L257381_))))
                                        (__tmp263543
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses257454_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp263543
                                    _L256917_)))
                               _clause257339257378_))))))
              (let ()
                (declare (not safe))
                (_loop257334257362_ _target257331257357_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g257325257344_
                                                       _g257326257347_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g257325257344_
                                             _g257326257347_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g257325257344_ _g257326257347_))))))
                      (declare (not safe))
                      (_g257324257456_ _L256917_))))
                 (_make-specializer-impl257464_
                  (lambda (_specializer-lambda-expr257461_
                           _specializer-case-lambda-expr257462_)
                    (let ((__tmp263545
                           (let ((__tmp263546
                                  (let ((__tmp263548
                                         (let ((__tmp263549
                                                (let ((__tmp263566
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L256336_ '())))
                                                      (__tmp263550
                                                       (let ((__tmp263551
                                                              (let ((__tmp263552
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp263554
                                    (let ((__tmp263555
                                           (let ((__tmp263565
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L256335_ '())))
                                                 (__tmp263556
                                                  (let ((__tmp263557
                                                         (let ((__tmp263558
                                                                (let ((__tmp263559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp263561
                                      (let ((__tmp263562
                                             (let ((__tmp263564
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L256919_ '())))
                                                   (__tmp263563
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr257461_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp263564
                                                     __tmp263563))))
                                        (declare (not safe))
                                        (cons __tmp263562 '())))
                                     (__tmp263560
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr257462_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp263561 __tmp263560))))
                          (declare (not safe))
                          (cons '%#let-values __tmp263559))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp263558 _stx254246_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp263557 '()))))
                                             (declare (not safe))
                                             (cons __tmp263565 __tmp263556))))
                                      (declare (not safe))
                                      (cons __tmp263555 '())))
                                   (__tmp263553
                                    (let ()
                                      (declare (not safe))
                                      (cons _L256333_ '()))))
                               (declare (not safe))
                               (cons __tmp263554 __tmp263553))))
                        (declare (not safe))
                        (cons '%#let-values __tmp263552))))
                 (declare (not safe))
                 (cons __tmp263551 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp263566
                                                        __tmp263550))))
                                           (declare (not safe))
                                           (cons __tmp263549 '())))
                                        (__tmp263547
                                         (let ()
                                           (declare (not safe))
                                           (cons _L256332_ '()))))
                                    (declare (not safe))
                                    (cons __tmp263548 __tmp263547))))
                             (declare (not safe))
                             (cons '%#let-values __tmp263546))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp263545 _stx254246_))))
                 (_specializer-lambda-expr257466_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr257320_
                     _struct-check-all257212_
                     _empty254345_)))
                 (_specializer-case-lambda-expr257468_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr257459_
                     _struct-check-all257212_
                     _empty254345_)))
                 (_specializer-impl257470_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl257464_
                     _specializer-lambda-expr257466_
                     _specializer-case-lambda-expr257468_)))
                 (_unchecked-specializer-lambda-expr257472_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?254348_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr257320_
                         _empty254345_
                         _struct-check-all257212_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr257474_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?254348_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr257459_
                         _empty254345_
                         _struct-check-all257212_))
                      '#f))
                 (_unchecked-specializer-impl257476_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?254348_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl257464_
                         _unchecked-specializer-lambda-expr257472_
                         _unchecked-specializer-case-lambda-expr257474_))
                      '#f))
                 (_specializer-impl257478_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl254252_
                     _$t257142_
                     _methods-bind257165_
                     _slots-bind257188_
                     _class-check-bind257210_
                     _struct-check-bind257234_
                     _specializer-impl257470_
                     _lifted-specializer-id257140_
                     _unchecked-specializer-impl257476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp263568
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L254321_)))
                                                          (__tmp263567
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id257133_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp263568
                                                       '" => "
                                                       __tmp263567))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def254253_
                                                       _L254321_
                                                       _specializer-id257133_
                                                       _specializer-impl257478_
                                                       _lifted-specializer-id257140_
                                                       _unchecked-specializer-impl257476_)))))
                                            _hd256850256912_
                                            _hd256847256904_
                                            _hd256844256896_)
                                           (let ()
                                             (declare (not safe))
                                             (_g256826256856_
                                              _g256827256859_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g256826256856_ _g256827256859_)))
                               (let ()
                                 (declare (not safe))
                                 (_g256826256856_ _g256827256859_)))
                           (let ()
                             (declare (not safe))
                             (_g256826256856_ _g256827256859_)))))
                   (let ()
                     (declare (not safe))
                     (_g256826256856_ _g256827256859_)))
               (let ()
                 (declare (not safe))
                 (_g256826256856_ _g256827256859_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g256826256856_
                                                  _g256827256859_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g256826256856_ _g256827256859_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g256826256856_ _g256827256859_)))))
                       (let ()
                         (declare (not safe))
                         (_g256826256856_ _g256827256859_)))))
               (let ()
                 (declare (not safe))
                 (_g256826256856_ _g256827256859_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g256825257481_ _L256334_))
                                         _stx254246_))))
                             _hd256431256554_
                             _kw-ref256429256575_
                             _hd256419256541_
                             _hd256410256517_
                             _hd256401256493_)
                            (let ()
                              (declare (not safe))
                              (_g256375256437_ _g256376256440_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop256424256559_
                                                   _target256421256546_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g256375256437_
                                                 _g256376256440_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g256375256437_ _g256376256440_))))))
                            (let ()
                              (declare (not safe))
                              (_g256375256437_ _g256376256440_)))
                        (let ()
                          (declare (not safe))
                          (_g256375256437_ _g256376256440_)))
                    (let ()
                      (declare (not safe))
                      (_g256375256437_ _g256376256440_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g256375256437_
                                                       _g256376256440_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g256375256437_
                                                   _g256376256440_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g256375256437_
                                               _g256376256440_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g256375256437_ _g256376256440_)))))
                            (let ()
                              (declare (not safe))
                              (_g256375256437_ _g256376256440_)))
                        (let ()
                          (declare (not safe))
                          (_g256375256437_ _g256376256440_)))))
                (let ()
                  (declare (not safe))
                  (_g256375256437_ _g256376256440_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g256375256437_
                                                       _g256376256440_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g256375256437_
                                                   _g256376256440_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g256375256437_ _g256376256440_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g256375256437_ _g256376256440_)))
                            (let ()
                              (declare (not safe))
                              (_g256375256437_ _g256376256440_)))))
                    (let ()
                      (declare (not safe))
                      (_g256375256437_ _g256376256440_)))
                (let ()
                  (declare (not safe))
                  (_g256375256437_ _g256376256440_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g256375256437_
                                                       _g256376256440_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g256375256437_
                                               _g256376256440_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g256375256437_ _g256376256440_)))
                                (let ()
                                  (declare (not safe))
                                  (_g256375256437_ _g256376256440_)))
                            (let ()
                              (declare (not safe))
                              (_g256375256437_ _g256376256440_)))))
                    (let ()
                      (declare (not safe))
                      (_g256375256437_ _g256376256440_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g256375256437_
                                                       _g256376256440_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g256375256437_
                                               _g256376256440_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g256375256437_ _g256376256440_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g256375256437_ _g256376256440_)))))
                            (let ()
                              (declare (not safe))
                              (_g256375256437_ _g256376256440_))))))
                (declare (not safe))
                (_g256374257484_ _L256333_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd256209256327_
                                                    _hd256206256319_
                                                    _hd256203256311_
                                                    _hd256200256303_
                                                    _hd256182256255_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g256162256215_
                                                      _g256163256218_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g256162256215_
                                              _g256163256218_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g256162256215_ _g256163256218_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g256162256215_ _g256163256218_)))
                               (let ()
                                 (declare (not safe))
                                 (_g256162256215_ _g256163256218_)))))
                       (let ()
                         (declare (not safe))
                         (_g256162256215_ _g256163256218_)))
                   (let ()
                     (declare (not safe))
                     (_g256162256215_ _g256163256218_)))
               (let ()
                 (declare (not safe))
                 (_g256162256215_ _g256163256218_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g256162256215_
                                                  _g256163256218_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g256162256215_
                                              _g256163256218_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g256162256215_ _g256163256218_)))))
                           (let ()
                             (declare (not safe))
                             (_g256162256215_ _g256163256218_)))))
                   (let ()
                     (declare (not safe))
                     (_g256162256215_ _g256163256218_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g256162256215_
                                                      _g256163256218_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g256162256215_
                                                  _g256163256218_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g256162256215_
                                              _g256163256218_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g256162256215_ _g256163256218_)))))
                           (let ()
                             (declare (not safe))
                             (_g256162256215_ _g256163256218_)))
                       (let ()
                         (declare (not safe))
                         (_g256162256215_ _g256163256218_)))))
               (let ()
                 (declare (not safe))
                 (_g256162256215_ _g256163256218_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g256162256215_
                                                  _g256163256218_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g256162256215_ _g256163256218_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g256162256215_ _g256163256218_)))
                           (let ()
                             (declare (not safe))
                             (_g256162256215_ _g256163256218_)))
                       (let ()
                         (declare (not safe))
                         (_g256162256215_ _g256163256218_)))))
               (let ()
                 (declare (not safe))
                 (_g256162256215_ _g256163256218_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g256161257487_ _L254320_))
                                         _stx254246_))))))))
                  (___kont262294262295_ (lambda () _stx254246_)))
              (let ((___match262323262324_
                     (lambda (_e254262254288_
                              _hd254261254291_
                              _tl254260254293_
                              _e254265254296_
                              _hd254264254299_
                              _tl254263254301_
                              _e254268254304_
                              _hd254267254307_
                              _tl254266254309_
                              _e254271254312_
                              _hd254270254315_
                              _tl254269254317_)
                       (let ((_L254320_ _hd254270254315_)
                             (_L254321_ _hd254267254307_))
                         (if (let ((__tmp263685
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L254321_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp263685))
                             (___kont262292262293_ _L254320_ _L254321_)
                             (___kont262294262295_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx262290262291_))
                    (let ((_e254262254288_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx262290262291_))))
                      (let ((_tl254260254293_
                             (let ()
                               (declare (not safe))
                               (##cdr _e254262254288_)))
                            (_hd254261254291_
                             (let ()
                               (declare (not safe))
                               (##car _e254262254288_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl254260254293_))
                            (let ((_e254265254296_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl254260254293_))))
                              (let ((_tl254263254301_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e254265254296_)))
                                    (_hd254264254299_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e254265254296_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd254264254299_))
                                    (let ((_e254268254304_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd254264254299_))))
                                      (let ((_tl254266254309_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e254268254304_)))
                                            (_hd254267254307_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e254268254304_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl254266254309_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl254263254301_))
                                                (let ((_e254271254312_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl254263254301_))))
                                                  (let ((_tl254269254317_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e254271254312_)))
                                                        (_hd254270254315_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e254271254312_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl254269254317_))
                                                        (___match262323262324_
                                                         _e254262254288_
                                                         _hd254261254291_
                                                         _tl254260254293_
                                                         _e254265254296_
                                                         _hd254264254299_
                                                         _tl254263254301_
                                                         _e254268254304_
                                                         _hd254267254307_
                                                         _tl254266254309_
                                                         _e254271254312_
                                                         _hd254270254315_
                                                         _tl254269254317_)
                                                        (___kont262294262295_))))
                                                (___kont262294262295_))
                                            (___kont262294262295_))))
                                    (___kont262294262295_))))
                            (___kont262294262295_))))
                    (___kont262294262295_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx253222_
               _self253223_
               _methods253224_
               _slots253225_
               _class-check253226_
               _struct-check253227_
               _struct-assert253228_)
        (let* ((___stx262326262327_ _stx253222_)
               (_g253236253458_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx262326262327_)))))
          (let ((___kont262328262329_
                 (lambda (_L254195_ _L254196_ _L254197_ _L254198_)
                   (let ((__tmp263686
                          (let () (declare (not safe)) (gx#stx-e _L254196_))))
                     (declare (not safe))
                     (table-set! _methods253224_ __tmp263686 '#t))
                   (for-each
                    (lambda (_g254231254233_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g254231254233_
                         _self253223_
                         _methods253224_
                         _slots253225_
                         _class-check253226_
                         _struct-check253227_
                         _struct-assert253228_)))
                    (let ((__tmp263687
                           (lambda (_g254235254238_ _g254236254240_)
                             (let ()
                               (declare (not safe))
                               (cons _g254235254238_ _g254236254240_)))))
                      (declare (not safe))
                      (foldr1 __tmp263687 '() _L254195_)))))
                (___kont262332262333_
                 (lambda (_L254030_ _L254031_ _L254032_ _L254033_ _L254034_)
                   (let ((__tmp263688
                          (let () (declare (not safe)) (gx#stx-e _L254031_))))
                     (declare (not safe))
                     (table-set! _methods253224_ __tmp263688 '#t))
                   (for-each
                    (lambda (_g254074254076_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g254074254076_
                         _self253223_
                         _methods253224_
                         _slots253225_
                         _class-check253226_
                         _struct-check253227_
                         _struct-assert253228_)))
                    (let ((__tmp263689
                           (lambda (_g254078254081_ _g254079254083_)
                             (let ()
                               (declare (not safe))
                               (cons _g254078254081_ _g254079254083_)))))
                      (declare (not safe))
                      (foldr1 __tmp263689 '() _L254030_)))))
                (___kont262336262337_
                 (lambda (_L253863_ _L253864_ _L253865_)
                   (let ((__tmp263690
                          (let () (declare (not safe)) (gx#stx-e _L253863_))))
                     (declare (not safe))
                     (table-set! _slots253225_ __tmp263690 '#t))))
                (___kont262338262339_
                 (lambda (_L253740_ _L253741_ _L253742_ _L253743_)
                   (let ((__tmp263691
                          (let () (declare (not safe)) (gx#stx-e _L253741_))))
                     (declare (not safe))
                     (table-set! _slots253225_ __tmp263691 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L253740_
                      _self253223_
                      _methods253224_
                      _slots253225_
                      _class-check253226_
                      _struct-check253227_
                      _struct-assert253228_))))
                (___kont262340262341_
                 (lambda (_L253624_ _L253625_)
                   (let ((__tmp263692
                          (##structure-ref
                           (let ((__tmp263693
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L253625_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp263693))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots253225_ __tmp263692 '#t))))
                (___kont262342262343_
                 (lambda (_L253534_ _L253535_ _L253536_)
                   (let ((__tmp263694
                          (##structure-ref
                           (let ((__tmp263695
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L253536_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp263695))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots253225_ __tmp263694 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L253534_
                      _self253223_
                      _methods253224_
                      _slots253225_
                      _class-check253226_
                      _struct-check253227_
                      _struct-assert253228_))))
                (___kont262344262345_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx253222_
                      _self253223_
                      _methods253224_
                      _slots253225_
                      _class-check253226_
                      _struct-check253227_
                      _struct-assert253228_)))))
            (let* ((___match262825262826_
                    (lambda (_e253432253470_
                             _hd253431253473_
                             _tl253430253475_
                             _e253435253478_
                             _hd253434253481_
                             _tl253433253483_
                             _e253438253486_
                             _hd253437253489_
                             _tl253436253491_
                             _e253441253494_
                             _hd253440253497_
                             _tl253439253499_
                             _e253444253502_
                             _hd253443253505_
                             _tl253442253507_
                             _e253447253510_
                             _hd253446253513_
                             _tl253445253515_
                             _e253450253518_
                             _hd253449253521_
                             _tl253448253523_
                             _e253453253526_
                             _hd253452253529_
                             _tl253451253531_)
                      (let ((_L253534_ _hd253452253529_)
                            (_L253535_ _hd253449253521_)
                            (_L253536_ _hd253440253497_))
                        (if (and (let ((__tmp263696
                                        (let ((__tmp263697
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L253536_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp263697))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp263696
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L253535_
                                    _self253223_)))
                            (___kont262342262343_
                             _L253534_
                             _L253535_
                             _L253536_)
                            (___kont262344262345_)))))
                   (___match262823262824_
                    (lambda (_e253432253470_
                             _hd253431253473_
                             _tl253430253475_
                             _e253435253478_
                             _hd253434253481_
                             _tl253433253483_
                             _e253438253486_
                             _hd253437253489_
                             _tl253436253491_
                             _e253441253494_
                             _hd253440253497_
                             _tl253439253499_
                             _e253444253502_
                             _hd253443253505_
                             _tl253442253507_
                             _e253447253510_
                             _hd253446253513_
                             _tl253445253515_
                             _e253450253518_
                             _hd253449253521_
                             _tl253448253523_
                             _e253453253526_
                             _hd253452253529_
                             _tl253451253531_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl253451253531_))
                          (___match262825262826_
                           _e253432253470_
                           _hd253431253473_
                           _tl253430253475_
                           _e253435253478_
                           _hd253434253481_
                           _tl253433253483_
                           _e253438253486_
                           _hd253437253489_
                           _tl253436253491_
                           _e253441253494_
                           _hd253440253497_
                           _tl253439253499_
                           _e253444253502_
                           _hd253443253505_
                           _tl253442253507_
                           _e253447253510_
                           _hd253446253513_
                           _tl253445253515_
                           _e253450253518_
                           _hd253449253521_
                           _tl253448253523_
                           _e253453253526_
                           _hd253452253529_
                           _tl253451253531_)
                          (___kont262344262345_))))
                   (___match262817262818_
                    (lambda (_e253432253470_
                             _hd253431253473_
                             _tl253430253475_
                             _e253435253478_
                             _hd253434253481_
                             _tl253433253483_
                             _e253438253486_
                             _hd253437253489_
                             _tl253436253491_
                             _e253441253494_
                             _hd253440253497_
                             _tl253439253499_
                             _e253444253502_
                             _hd253443253505_
                             _tl253442253507_
                             _e253447253510_
                             _hd253446253513_
                             _tl253445253515_
                             _e253450253518_
                             _hd253449253521_
                             _tl253448253523_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl253442253507_))
                          (let ((_e253453253526_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl253442253507_))))
                            (let ((_tl253451253531_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e253453253526_)))
                                  (_hd253452253529_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e253453253526_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl253451253531_))
                                  (___match262825262826_
                                   _e253432253470_
                                   _hd253431253473_
                                   _tl253430253475_
                                   _e253435253478_
                                   _hd253434253481_
                                   _tl253433253483_
                                   _e253438253486_
                                   _hd253437253489_
                                   _tl253436253491_
                                   _e253441253494_
                                   _hd253440253497_
                                   _tl253439253499_
                                   _e253444253502_
                                   _hd253443253505_
                                   _tl253442253507_
                                   _e253447253510_
                                   _hd253446253513_
                                   _tl253445253515_
                                   _e253450253518_
                                   _hd253449253521_
                                   _tl253448253523_
                                   _e253453253526_
                                   _hd253452253529_
                                   _tl253451253531_)
                                  (___kont262344262345_))))
                          (___kont262344262345_))))
                   (___match262763262764_
                    (lambda (_e253408253568_
                             _hd253407253571_
                             _tl253406253573_
                             _e253411253576_
                             _hd253410253579_
                             _tl253409253581_
                             _e253414253584_
                             _hd253413253587_
                             _tl253412253589_
                             _e253417253592_
                             _hd253416253595_
                             _tl253415253597_
                             _e253420253600_
                             _hd253419253603_
                             _tl253418253605_
                             _e253423253608_
                             _hd253422253611_
                             _tl253421253613_
                             _e253426253616_
                             _hd253425253619_
                             _tl253424253621_)
                      (let ((_L253624_ _hd253425253619_)
                            (_L253625_ _hd253416253595_))
                        (if (and (let ((__tmp263698
                                        (let ((__tmp263699
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L253625_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp263699))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp263698
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L253624_
                                    _self253223_)))
                            (___kont262340262341_ _L253624_ _L253625_)
                            (___kont262344262345_)))))
                   (___match262761262762_
                    (lambda (_e253408253568_
                             _hd253407253571_
                             _tl253406253573_
                             _e253411253576_
                             _hd253410253579_
                             _tl253409253581_
                             _e253414253584_
                             _hd253413253587_
                             _tl253412253589_
                             _e253417253592_
                             _hd253416253595_
                             _tl253415253597_
                             _e253420253600_
                             _hd253419253603_
                             _tl253418253605_
                             _e253423253608_
                             _hd253422253611_
                             _tl253421253613_
                             _e253426253616_
                             _hd253425253619_
                             _tl253424253621_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl253418253605_))
                          (___match262763262764_
                           _e253408253568_
                           _hd253407253571_
                           _tl253406253573_
                           _e253411253576_
                           _hd253410253579_
                           _tl253409253581_
                           _e253414253584_
                           _hd253413253587_
                           _tl253412253589_
                           _e253417253592_
                           _hd253416253595_
                           _tl253415253597_
                           _e253420253600_
                           _hd253419253603_
                           _tl253418253605_
                           _e253423253608_
                           _hd253422253611_
                           _tl253421253613_
                           _e253426253616_
                           _hd253425253619_
                           _tl253424253621_)
                          (___match262817262818_
                           _e253408253568_
                           _hd253407253571_
                           _tl253406253573_
                           _e253411253576_
                           _hd253410253579_
                           _tl253409253581_
                           _e253414253584_
                           _hd253413253587_
                           _tl253412253589_
                           _e253417253592_
                           _hd253416253595_
                           _tl253415253597_
                           _e253420253600_
                           _hd253419253603_
                           _tl253418253605_
                           _e253423253608_
                           _hd253422253611_
                           _tl253421253613_
                           _e253426253616_
                           _hd253425253619_
                           _tl253424253621_))))
                   (___match262707262708_
                    (lambda (_e253373253652_
                             _hd253372253655_
                             _tl253371253657_
                             _e253376253660_
                             _hd253375253663_
                             _tl253374253665_
                             _e253379253668_
                             _hd253378253671_
                             _tl253377253673_
                             _e253382253676_
                             _hd253381253679_
                             _tl253380253681_
                             _e253385253684_
                             _hd253384253687_
                             _tl253383253689_
                             _e253388253692_
                             _hd253387253695_
                             _tl253386253697_
                             _e253391253700_
                             _hd253390253703_
                             _tl253389253705_
                             _e253394253708_
                             _hd253393253711_
                             _tl253392253713_
                             _e253397253716_
                             _hd253396253719_
                             _tl253395253721_
                             _e253400253724_
                             _hd253399253727_
                             _tl253398253729_
                             _e253403253732_
                             _hd253402253735_
                             _tl253401253737_)
                      (let ((_L253740_ _hd253402253735_)
                            (_L253741_ _hd253399253727_)
                            (_L253742_ _hd253390253703_)
                            (_L253743_ _hd253381253679_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L253743_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L253743_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L253742_
                                    _self253223_)))
                            (___kont262338262339_
                             _L253740_
                             _L253741_
                             _L253742_
                             _L253743_)
                            (___kont262344262345_)))))
                   (___match262699262700_
                    (lambda (_e253373253652_
                             _hd253372253655_
                             _tl253371253657_
                             _e253376253660_
                             _hd253375253663_
                             _tl253374253665_
                             _e253379253668_
                             _hd253378253671_
                             _tl253377253673_
                             _e253382253676_
                             _hd253381253679_
                             _tl253380253681_
                             _e253385253684_
                             _hd253384253687_
                             _tl253383253689_
                             _e253388253692_
                             _hd253387253695_
                             _tl253386253697_
                             _e253391253700_
                             _hd253390253703_
                             _tl253389253705_
                             _e253394253708_
                             _hd253393253711_
                             _tl253392253713_
                             _e253397253716_
                             _hd253396253719_
                             _tl253395253721_
                             _e253400253724_
                             _hd253399253727_
                             _tl253398253729_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl253392253713_))
                          (let ((_e253403253732_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl253392253713_))))
                            (let ((_tl253401253737_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e253403253732_)))
                                  (_hd253402253735_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e253403253732_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl253401253737_))
                                  (___match262707262708_
                                   _e253373253652_
                                   _hd253372253655_
                                   _tl253371253657_
                                   _e253376253660_
                                   _hd253375253663_
                                   _tl253374253665_
                                   _e253379253668_
                                   _hd253378253671_
                                   _tl253377253673_
                                   _e253382253676_
                                   _hd253381253679_
                                   _tl253380253681_
                                   _e253385253684_
                                   _hd253384253687_
                                   _tl253383253689_
                                   _e253388253692_
                                   _hd253387253695_
                                   _tl253386253697_
                                   _e253391253700_
                                   _hd253390253703_
                                   _tl253389253705_
                                   _e253394253708_
                                   _hd253393253711_
                                   _tl253392253713_
                                   _e253397253716_
                                   _hd253396253719_
                                   _tl253395253721_
                                   _e253400253724_
                                   _hd253399253727_
                                   _tl253398253729_
                                   _e253403253732_
                                   _hd253402253735_
                                   _tl253401253737_)
                                  (___kont262344262345_))))
                          (___match262823262824_
                           _e253373253652_
                           _hd253372253655_
                           _tl253371253657_
                           _e253376253660_
                           _hd253375253663_
                           _tl253374253665_
                           _e253379253668_
                           _hd253378253671_
                           _tl253377253673_
                           _e253382253676_
                           _hd253381253679_
                           _tl253380253681_
                           _e253385253684_
                           _hd253384253687_
                           _tl253383253689_
                           _e253388253692_
                           _hd253387253695_
                           _tl253386253697_
                           _e253391253700_
                           _hd253390253703_
                           _tl253389253705_
                           _e253394253708_
                           _hd253393253711_
                           _tl253392253713_))))
                   (___match262621262622_
                    (lambda (_e253339253783_
                             _hd253338253786_
                             _tl253337253788_
                             _e253342253791_
                             _hd253341253794_
                             _tl253340253796_
                             _e253345253799_
                             _hd253344253802_
                             _tl253343253804_
                             _e253348253807_
                             _hd253347253810_
                             _tl253346253812_
                             _e253351253815_
                             _hd253350253818_
                             _tl253349253820_
                             _e253354253823_
                             _hd253353253826_
                             _tl253352253828_
                             _e253357253831_
                             _hd253356253834_
                             _tl253355253836_
                             _e253360253839_
                             _hd253359253842_
                             _tl253358253844_
                             _e253363253847_
                             _hd253362253850_
                             _tl253361253852_
                             _e253366253855_
                             _hd253365253858_
                             _tl253364253860_)
                      (let ((_L253863_ _hd253365253858_)
                            (_L253864_ _hd253356253834_)
                            (_L253865_ _hd253347253810_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L253865_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L253865_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L253864_
                                    _self253223_)))
                            (___kont262336262337_
                             _L253863_
                             _L253864_
                             _L253865_)
                            (___match262825262826_
                             _e253339253783_
                             _hd253338253786_
                             _tl253337253788_
                             _e253342253791_
                             _hd253341253794_
                             _tl253340253796_
                             _e253345253799_
                             _hd253344253802_
                             _tl253343253804_
                             _e253348253807_
                             _hd253347253810_
                             _tl253346253812_
                             _e253351253815_
                             _hd253350253818_
                             _tl253349253820_
                             _e253354253823_
                             _hd253353253826_
                             _tl253352253828_
                             _e253357253831_
                             _hd253356253834_
                             _tl253355253836_
                             _e253360253839_
                             _hd253359253842_
                             _tl253358253844_)))))
                   (___match262619262620_
                    (lambda (_e253339253783_
                             _hd253338253786_
                             _tl253337253788_
                             _e253342253791_
                             _hd253341253794_
                             _tl253340253796_
                             _e253345253799_
                             _hd253344253802_
                             _tl253343253804_
                             _e253348253807_
                             _hd253347253810_
                             _tl253346253812_
                             _e253351253815_
                             _hd253350253818_
                             _tl253349253820_
                             _e253354253823_
                             _hd253353253826_
                             _tl253352253828_
                             _e253357253831_
                             _hd253356253834_
                             _tl253355253836_
                             _e253360253839_
                             _hd253359253842_
                             _tl253358253844_
                             _e253363253847_
                             _hd253362253850_
                             _tl253361253852_
                             _e253366253855_
                             _hd253365253858_
                             _tl253364253860_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl253358253844_))
                          (___match262621262622_
                           _e253339253783_
                           _hd253338253786_
                           _tl253337253788_
                           _e253342253791_
                           _hd253341253794_
                           _tl253340253796_
                           _e253345253799_
                           _hd253344253802_
                           _tl253343253804_
                           _e253348253807_
                           _hd253347253810_
                           _tl253346253812_
                           _e253351253815_
                           _hd253350253818_
                           _tl253349253820_
                           _e253354253823_
                           _hd253353253826_
                           _tl253352253828_
                           _e253357253831_
                           _hd253356253834_
                           _tl253355253836_
                           _e253360253839_
                           _hd253359253842_
                           _tl253358253844_
                           _e253363253847_
                           _hd253362253850_
                           _tl253361253852_
                           _e253366253855_
                           _hd253365253858_
                           _tl253364253860_)
                          (___match262699262700_
                           _e253339253783_
                           _hd253338253786_
                           _tl253337253788_
                           _e253342253791_
                           _hd253341253794_
                           _tl253340253796_
                           _e253345253799_
                           _hd253344253802_
                           _tl253343253804_
                           _e253348253807_
                           _hd253347253810_
                           _tl253346253812_
                           _e253351253815_
                           _hd253350253818_
                           _tl253349253820_
                           _e253354253823_
                           _hd253353253826_
                           _tl253352253828_
                           _e253357253831_
                           _hd253356253834_
                           _tl253355253836_
                           _e253360253839_
                           _hd253359253842_
                           _tl253358253844_
                           _e253363253847_
                           _hd253362253850_
                           _tl253361253852_
                           _e253366253855_
                           _hd253365253858_
                           _tl253364253860_))))
                   (___match262609262610_
                    (lambda (_e253339253783_
                             _hd253338253786_
                             _tl253337253788_
                             _e253342253791_
                             _hd253341253794_
                             _tl253340253796_
                             _e253345253799_
                             _hd253344253802_
                             _tl253343253804_
                             _e253348253807_
                             _hd253347253810_
                             _tl253346253812_
                             _e253351253815_
                             _hd253350253818_
                             _tl253349253820_
                             _e253354253823_
                             _hd253353253826_
                             _tl253352253828_
                             _e253357253831_
                             _hd253356253834_
                             _tl253355253836_
                             _e253360253839_
                             _hd253359253842_
                             _tl253358253844_
                             _e253363253847_
                             _hd253362253850_
                             _tl253361253852_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd253362253850_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl253361253852_))
                              (let ((_e253366253855_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl253361253852_))))
                                (let ((_tl253364253860_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e253366253855_)))
                                      (_hd253365253858_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e253366253855_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl253364253860_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl253358253844_))
                                          (___match262621262622_
                                           _e253339253783_
                                           _hd253338253786_
                                           _tl253337253788_
                                           _e253342253791_
                                           _hd253341253794_
                                           _tl253340253796_
                                           _e253345253799_
                                           _hd253344253802_
                                           _tl253343253804_
                                           _e253348253807_
                                           _hd253347253810_
                                           _tl253346253812_
                                           _e253351253815_
                                           _hd253350253818_
                                           _tl253349253820_
                                           _e253354253823_
                                           _hd253353253826_
                                           _tl253352253828_
                                           _e253357253831_
                                           _hd253356253834_
                                           _tl253355253836_
                                           _e253360253839_
                                           _hd253359253842_
                                           _tl253358253844_
                                           _e253363253847_
                                           _hd253362253850_
                                           _tl253361253852_
                                           _e253366253855_
                                           _hd253365253858_
                                           _tl253364253860_)
                                          (___match262699262700_
                                           _e253339253783_
                                           _hd253338253786_
                                           _tl253337253788_
                                           _e253342253791_
                                           _hd253341253794_
                                           _tl253340253796_
                                           _e253345253799_
                                           _hd253344253802_
                                           _tl253343253804_
                                           _e253348253807_
                                           _hd253347253810_
                                           _tl253346253812_
                                           _e253351253815_
                                           _hd253350253818_
                                           _tl253349253820_
                                           _e253354253823_
                                           _hd253353253826_
                                           _tl253352253828_
                                           _e253357253831_
                                           _hd253356253834_
                                           _tl253355253836_
                                           _e253360253839_
                                           _hd253359253842_
                                           _tl253358253844_
                                           _e253363253847_
                                           _hd253362253850_
                                           _tl253361253852_
                                           _e253366253855_
                                           _hd253365253858_
                                           _tl253364253860_))
                                      (___match262823262824_
                                       _e253339253783_
                                       _hd253338253786_
                                       _tl253337253788_
                                       _e253342253791_
                                       _hd253341253794_
                                       _tl253340253796_
                                       _e253345253799_
                                       _hd253344253802_
                                       _tl253343253804_
                                       _e253348253807_
                                       _hd253347253810_
                                       _tl253346253812_
                                       _e253351253815_
                                       _hd253350253818_
                                       _tl253349253820_
                                       _e253354253823_
                                       _hd253353253826_
                                       _tl253352253828_
                                       _e253357253831_
                                       _hd253356253834_
                                       _tl253355253836_
                                       _e253360253839_
                                       _hd253359253842_
                                       _tl253358253844_))))
                              (___match262823262824_
                               _e253339253783_
                               _hd253338253786_
                               _tl253337253788_
                               _e253342253791_
                               _hd253341253794_
                               _tl253340253796_
                               _e253345253799_
                               _hd253344253802_
                               _tl253343253804_
                               _e253348253807_
                               _hd253347253810_
                               _tl253346253812_
                               _e253351253815_
                               _hd253350253818_
                               _tl253349253820_
                               _e253354253823_
                               _hd253353253826_
                               _tl253352253828_
                               _e253357253831_
                               _hd253356253834_
                               _tl253355253836_
                               _e253360253839_
                               _hd253359253842_
                               _tl253358253844_))
                          (___match262823262824_
                           _e253339253783_
                           _hd253338253786_
                           _tl253337253788_
                           _e253342253791_
                           _hd253341253794_
                           _tl253340253796_
                           _e253345253799_
                           _hd253344253802_
                           _tl253343253804_
                           _e253348253807_
                           _hd253347253810_
                           _tl253346253812_
                           _e253351253815_
                           _hd253350253818_
                           _tl253349253820_
                           _e253354253823_
                           _hd253353253826_
                           _tl253352253828_
                           _e253357253831_
                           _hd253356253834_
                           _tl253355253836_
                           _e253360253839_
                           _hd253359253842_
                           _tl253358253844_))))
                   (___match262541262542_
                    (lambda (_e253288253902_
                             _hd253287253905_
                             _tl253286253907_
                             _e253291253910_
                             _hd253290253913_
                             _tl253289253915_
                             _e253294253918_
                             _hd253293253921_
                             _tl253292253923_
                             _e253297253926_
                             _hd253296253929_
                             _tl253295253931_
                             _e253300253934_
                             _hd253299253937_
                             _tl253298253939_
                             _e253303253942_
                             _hd253302253945_
                             _tl253301253947_
                             _e253306253950_
                             _hd253305253953_
                             _tl253304253955_
                             _e253309253958_
                             _hd253308253961_
                             _tl253307253963_
                             _e253312253966_
                             _hd253311253969_
                             _tl253310253971_
                             _e253315253974_
                             _hd253314253977_
                             _tl253313253979_
                             _e253318253982_
                             _hd253317253985_
                             _tl253316253987_
                             _e253321253990_
                             _hd253320253993_
                             _tl253319253995_
                             _e253324253998_
                             _hd253323254001_
                             _tl253322254003_
                             ___splice262334262335_
                             _target253325254006_
                             _tl253327254008_)
                      (letrec ((_loop253328254011_
                                (lambda (_hd253326254014_ _args253332254016_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd253326254014_))
                                      (let ((_e253329254019_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd253326254014_))))
                                        (let ((_lp-tl253331254024_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e253329254019_)))
                                              (_lp-hd253330254022_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e253329254019_))))
                                          (let ((__tmp263700
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd253330254022_
                                                         _args253332254016_))))
                                            (declare (not safe))
                                            (_loop253328254011_
                                             _lp-tl253331254024_
                                             __tmp263700))))
                                      (let ((_args253333254027_
                                             (reverse _args253332254016_)))
                                        (let ((_L254030_ _args253333254027_)
                                              (_L254031_ _hd253323254001_)
                                              (_L254032_ _hd253314253977_)
                                              (_L254033_ _hd253305253953_)
                                              (_L254034_ _hd253296253929_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L254034_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L254033_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L254032_
                                                      _self253223_)))
                                              (___kont262332262333_
                                               _L254030_
                                               _L254031_
                                               _L254032_
                                               _L254033_
                                               _L254034_)
                                              (___kont262344262345_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop253328254011_ _target253325254006_ '())))))
                   (___match262499262500_
                    (lambda (_e253288253902_
                             _hd253287253905_
                             _tl253286253907_
                             _e253291253910_
                             _hd253290253913_
                             _tl253289253915_
                             _e253294253918_
                             _hd253293253921_
                             _tl253292253923_
                             _e253297253926_
                             _hd253296253929_
                             _tl253295253931_
                             _e253300253934_
                             _hd253299253937_
                             _tl253298253939_
                             _e253303253942_
                             _hd253302253945_
                             _tl253301253947_
                             _e253306253950_
                             _hd253305253953_
                             _tl253304253955_
                             _e253309253958_
                             _hd253308253961_
                             _tl253307253963_
                             _e253312253966_
                             _hd253311253969_
                             _tl253310253971_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd253311253969_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl253310253971_))
                              (let ((_e253315253974_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl253310253971_))))
                                (let ((_tl253313253979_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e253315253974_)))
                                      (_hd253314253977_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e253315253974_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl253313253979_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl253307253963_))
                                          (let ((_e253318253982_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl253307253963_))))
                                            (let ((_tl253316253987_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e253318253982_)))
                                                  (_hd253317253985_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e253318253982_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd253317253985_))
                                                  (let ((_e253321253990_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd253317253985_))))
                                                    (let ((_tl253319253995_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e253321253990_)))
                                                          (_hd253320253993_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e253321253990_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd253320253993_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd253320253993_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl253319253995_))
                          (let ((_e253324253998_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl253319253995_))))
                            (let ((_tl253322254003_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e253324253998_)))
                                  (_hd253323254001_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e253324253998_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl253322254003_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl253316253987_))
                                      (let ((___splice262334262335_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl253316253987_
                                                '0))))
                                        (let ((_tl253327254008_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice262334262335_
                                                  '1)))
                                              (_target253325254006_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice262334262335_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl253327254008_))
                                              (___match262541262542_
                                               _e253288253902_
                                               _hd253287253905_
                                               _tl253286253907_
                                               _e253291253910_
                                               _hd253290253913_
                                               _tl253289253915_
                                               _e253294253918_
                                               _hd253293253921_
                                               _tl253292253923_
                                               _e253297253926_
                                               _hd253296253929_
                                               _tl253295253931_
                                               _e253300253934_
                                               _hd253299253937_
                                               _tl253298253939_
                                               _e253303253942_
                                               _hd253302253945_
                                               _tl253301253947_
                                               _e253306253950_
                                               _hd253305253953_
                                               _tl253304253955_
                                               _e253309253958_
                                               _hd253308253961_
                                               _tl253307253963_
                                               _e253312253966_
                                               _hd253311253969_
                                               _tl253310253971_
                                               _e253315253974_
                                               _hd253314253977_
                                               _tl253313253979_
                                               _e253318253982_
                                               _hd253317253985_
                                               _tl253316253987_
                                               _e253321253990_
                                               _hd253320253993_
                                               _tl253319253995_
                                               _e253324253998_
                                               _hd253323254001_
                                               _tl253322254003_
                                               ___splice262334262335_
                                               _target253325254006_
                                               _tl253327254008_)
                                              (___kont262344262345_))))
                                      (___kont262344262345_))
                                  (___kont262344262345_))))
                          (___kont262344262345_))
                      (___kont262344262345_))
                  (___kont262344262345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont262344262345_))))
                                          (___match262823262824_
                                           _e253288253902_
                                           _hd253287253905_
                                           _tl253286253907_
                                           _e253291253910_
                                           _hd253290253913_
                                           _tl253289253915_
                                           _e253294253918_
                                           _hd253293253921_
                                           _tl253292253923_
                                           _e253297253926_
                                           _hd253296253929_
                                           _tl253295253931_
                                           _e253300253934_
                                           _hd253299253937_
                                           _tl253298253939_
                                           _e253303253942_
                                           _hd253302253945_
                                           _tl253301253947_
                                           _e253306253950_
                                           _hd253305253953_
                                           _tl253304253955_
                                           _e253309253958_
                                           _hd253308253961_
                                           _tl253307253963_))
                                      (___match262823262824_
                                       _e253288253902_
                                       _hd253287253905_
                                       _tl253286253907_
                                       _e253291253910_
                                       _hd253290253913_
                                       _tl253289253915_
                                       _e253294253918_
                                       _hd253293253921_
                                       _tl253292253923_
                                       _e253297253926_
                                       _hd253296253929_
                                       _tl253295253931_
                                       _e253300253934_
                                       _hd253299253937_
                                       _tl253298253939_
                                       _e253303253942_
                                       _hd253302253945_
                                       _tl253301253947_
                                       _e253306253950_
                                       _hd253305253953_
                                       _tl253304253955_
                                       _e253309253958_
                                       _hd253308253961_
                                       _tl253307253963_))))
                              (___match262823262824_
                               _e253288253902_
                               _hd253287253905_
                               _tl253286253907_
                               _e253291253910_
                               _hd253290253913_
                               _tl253289253915_
                               _e253294253918_
                               _hd253293253921_
                               _tl253292253923_
                               _e253297253926_
                               _hd253296253929_
                               _tl253295253931_
                               _e253300253934_
                               _hd253299253937_
                               _tl253298253939_
                               _e253303253942_
                               _hd253302253945_
                               _tl253301253947_
                               _e253306253950_
                               _hd253305253953_
                               _tl253304253955_
                               _e253309253958_
                               _hd253308253961_
                               _tl253307253963_))
                          (___match262609262610_
                           _e253288253902_
                           _hd253287253905_
                           _tl253286253907_
                           _e253291253910_
                           _hd253290253913_
                           _tl253289253915_
                           _e253294253918_
                           _hd253293253921_
                           _tl253292253923_
                           _e253297253926_
                           _hd253296253929_
                           _tl253295253931_
                           _e253300253934_
                           _hd253299253937_
                           _tl253298253939_
                           _e253303253942_
                           _hd253302253945_
                           _tl253301253947_
                           _e253306253950_
                           _hd253305253953_
                           _tl253304253955_
                           _e253309253958_
                           _hd253308253961_
                           _tl253307253963_
                           _e253312253966_
                           _hd253311253969_
                           _tl253310253971_))))
                   (___match262431262432_
                    (lambda (_e253244254091_
                             _hd253243254094_
                             _tl253242254096_
                             _e253247254099_
                             _hd253246254102_
                             _tl253245254104_
                             _e253250254107_
                             _hd253249254110_
                             _tl253248254112_
                             _e253253254115_
                             _hd253252254118_
                             _tl253251254120_
                             _e253256254123_
                             _hd253255254126_
                             _tl253254254128_
                             _e253259254131_
                             _hd253258254134_
                             _tl253257254136_
                             _e253262254139_
                             _hd253261254142_
                             _tl253260254144_
                             _e253265254147_
                             _hd253264254150_
                             _tl253263254152_
                             _e253268254155_
                             _hd253267254158_
                             _tl253266254160_
                             _e253271254163_
                             _hd253270254166_
                             _tl253269254168_
                             ___splice262330262331_
                             _target253272254171_
                             _tl253274254173_)
                      (letrec ((_loop253275254176_
                                (lambda (_hd253273254179_ _args253279254181_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd253273254179_))
                                      (let ((_e253276254184_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd253273254179_))))
                                        (let ((_lp-tl253278254189_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e253276254184_)))
                                              (_lp-hd253277254187_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e253276254184_))))
                                          (let ((__tmp263701
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd253277254187_
                                                         _args253279254181_))))
                                            (declare (not safe))
                                            (_loop253275254176_
                                             _lp-tl253278254189_
                                             __tmp263701))))
                                      (let ((_args253280254192_
                                             (reverse _args253279254181_)))
                                        (let ((_L254195_ _args253280254192_)
                                              (_L254196_ _hd253270254166_)
                                              (_L254197_ _hd253261254142_)
                                              (_L254198_ _hd253252254118_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L254198_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L254197_
                                                      _self253223_)))
                                              (___kont262328262329_
                                               _L254195_
                                               _L254196_
                                               _L254197_
                                               _L254198_)
                                              (___match262619262620_
                                               _e253244254091_
                                               _hd253243254094_
                                               _tl253242254096_
                                               _e253247254099_
                                               _hd253246254102_
                                               _tl253245254104_
                                               _e253250254107_
                                               _hd253249254110_
                                               _tl253248254112_
                                               _e253253254115_
                                               _hd253252254118_
                                               _tl253251254120_
                                               _e253256254123_
                                               _hd253255254126_
                                               _tl253254254128_
                                               _e253259254131_
                                               _hd253258254134_
                                               _tl253257254136_
                                               _e253262254139_
                                               _hd253261254142_
                                               _tl253260254144_
                                               _e253265254147_
                                               _hd253264254150_
                                               _tl253263254152_
                                               _e253268254155_
                                               _hd253267254158_
                                               _tl253266254160_
                                               _e253271254163_
                                               _hd253270254166_
                                               _tl253269254168_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop253275254176_ _target253272254171_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx262326262327_))
                  (let ((_e253244254091_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx262326262327_))))
                    (let ((_tl253242254096_
                           (let ()
                             (declare (not safe))
                             (##cdr _e253244254091_)))
                          (_hd253243254094_
                           (let ()
                             (declare (not safe))
                             (##car _e253244254091_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl253242254096_))
                          (let ((_e253247254099_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl253242254096_))))
                            (let ((_tl253245254104_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e253247254099_)))
                                  (_hd253246254102_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e253247254099_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd253246254102_))
                                  (let ((_e253250254107_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd253246254102_))))
                                    (let ((_tl253248254112_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e253250254107_)))
                                          (_hd253249254110_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e253250254107_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd253249254110_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd253249254110_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl253248254112_))
                                                  (let ((_e253253254115_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl253248254112_))))
                                                    (let ((_tl253251254120_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e253253254115_)))
                                                          (_hd253252254118_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e253253254115_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl253251254120_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl253245254104_))
                      (let ((_e253256254123_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl253245254104_))))
                        (let ((_tl253254254128_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e253256254123_)))
                              (_hd253255254126_
                               (let ()
                                 (declare (not safe))
                                 (##car _e253256254123_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd253255254126_))
                              (let ((_e253259254131_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd253255254126_))))
                                (let ((_tl253257254136_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e253259254131_)))
                                      (_hd253258254134_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e253259254131_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd253258254134_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd253258254134_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl253257254136_))
                                              (let ((_e253262254139_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl253257254136_))))
                                                (let ((_tl253260254144_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e253262254139_)))
                                                      (_hd253261254142_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e253262254139_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl253260254144_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl253254254128_))
                                                          (let ((_e253265254147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl253254254128_))))
                    (let ((_tl253263254152_
                           (let ()
                             (declare (not safe))
                             (##cdr _e253265254147_)))
                          (_hd253264254150_
                           (let ()
                             (declare (not safe))
                             (##car _e253265254147_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd253264254150_))
                          (let ((_e253268254155_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd253264254150_))))
                            (let ((_tl253266254160_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e253268254155_)))
                                  (_hd253267254158_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e253268254155_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd253267254158_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd253267254158_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl253266254160_))
                                          (let ((_e253271254163_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl253266254160_))))
                                            (let ((_tl253269254168_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e253271254163_)))
                                                  (_hd253270254166_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e253271254163_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl253269254168_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl253263254152_))
                                                      (let ((___splice262330262331_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl253263254152_ '0))))
                (let ((_tl253274254173_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice262330262331_ '1)))
                      (_target253272254171_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice262330262331_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl253274254173_))
                      (___match262431262432_
                       _e253244254091_
                       _hd253243254094_
                       _tl253242254096_
                       _e253247254099_
                       _hd253246254102_
                       _tl253245254104_
                       _e253250254107_
                       _hd253249254110_
                       _tl253248254112_
                       _e253253254115_
                       _hd253252254118_
                       _tl253251254120_
                       _e253256254123_
                       _hd253255254126_
                       _tl253254254128_
                       _e253259254131_
                       _hd253258254134_
                       _tl253257254136_
                       _e253262254139_
                       _hd253261254142_
                       _tl253260254144_
                       _e253265254147_
                       _hd253264254150_
                       _tl253263254152_
                       _e253268254155_
                       _hd253267254158_
                       _tl253266254160_
                       _e253271254163_
                       _hd253270254166_
                       _tl253269254168_
                       ___splice262330262331_
                       _target253272254171_
                       _tl253274254173_)
                      (___match262619262620_
                       _e253244254091_
                       _hd253243254094_
                       _tl253242254096_
                       _e253247254099_
                       _hd253246254102_
                       _tl253245254104_
                       _e253250254107_
                       _hd253249254110_
                       _tl253248254112_
                       _e253253254115_
                       _hd253252254118_
                       _tl253251254120_
                       _e253256254123_
                       _hd253255254126_
                       _tl253254254128_
                       _e253259254131_
                       _hd253258254134_
                       _tl253257254136_
                       _e253262254139_
                       _hd253261254142_
                       _tl253260254144_
                       _e253265254147_
                       _hd253264254150_
                       _tl253263254152_
                       _e253268254155_
                       _hd253267254158_
                       _tl253266254160_
                       _e253271254163_
                       _hd253270254166_
                       _tl253269254168_))))
              (___match262619262620_
               _e253244254091_
               _hd253243254094_
               _tl253242254096_
               _e253247254099_
               _hd253246254102_
               _tl253245254104_
               _e253250254107_
               _hd253249254110_
               _tl253248254112_
               _e253253254115_
               _hd253252254118_
               _tl253251254120_
               _e253256254123_
               _hd253255254126_
               _tl253254254128_
               _e253259254131_
               _hd253258254134_
               _tl253257254136_
               _e253262254139_
               _hd253261254142_
               _tl253260254144_
               _e253265254147_
               _hd253264254150_
               _tl253263254152_
               _e253268254155_
               _hd253267254158_
               _tl253266254160_
               _e253271254163_
               _hd253270254166_
               _tl253269254168_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match262823262824_
                                                   _e253244254091_
                                                   _hd253243254094_
                                                   _tl253242254096_
                                                   _e253247254099_
                                                   _hd253246254102_
                                                   _tl253245254104_
                                                   _e253250254107_
                                                   _hd253249254110_
                                                   _tl253248254112_
                                                   _e253253254115_
                                                   _hd253252254118_
                                                   _tl253251254120_
                                                   _e253256254123_
                                                   _hd253255254126_
                                                   _tl253254254128_
                                                   _e253259254131_
                                                   _hd253258254134_
                                                   _tl253257254136_
                                                   _e253262254139_
                                                   _hd253261254142_
                                                   _tl253260254144_
                                                   _e253265254147_
                                                   _hd253264254150_
                                                   _tl253263254152_))))
                                          (___match262823262824_
                                           _e253244254091_
                                           _hd253243254094_
                                           _tl253242254096_
                                           _e253247254099_
                                           _hd253246254102_
                                           _tl253245254104_
                                           _e253250254107_
                                           _hd253249254110_
                                           _tl253248254112_
                                           _e253253254115_
                                           _hd253252254118_
                                           _tl253251254120_
                                           _e253256254123_
                                           _hd253255254126_
                                           _tl253254254128_
                                           _e253259254131_
                                           _hd253258254134_
                                           _tl253257254136_
                                           _e253262254139_
                                           _hd253261254142_
                                           _tl253260254144_
                                           _e253265254147_
                                           _hd253264254150_
                                           _tl253263254152_))
                                      (___match262499262500_
                                       _e253244254091_
                                       _hd253243254094_
                                       _tl253242254096_
                                       _e253247254099_
                                       _hd253246254102_
                                       _tl253245254104_
                                       _e253250254107_
                                       _hd253249254110_
                                       _tl253248254112_
                                       _e253253254115_
                                       _hd253252254118_
                                       _tl253251254120_
                                       _e253256254123_
                                       _hd253255254126_
                                       _tl253254254128_
                                       _e253259254131_
                                       _hd253258254134_
                                       _tl253257254136_
                                       _e253262254139_
                                       _hd253261254142_
                                       _tl253260254144_
                                       _e253265254147_
                                       _hd253264254150_
                                       _tl253263254152_
                                       _e253268254155_
                                       _hd253267254158_
                                       _tl253266254160_))
                                  (___match262823262824_
                                   _e253244254091_
                                   _hd253243254094_
                                   _tl253242254096_
                                   _e253247254099_
                                   _hd253246254102_
                                   _tl253245254104_
                                   _e253250254107_
                                   _hd253249254110_
                                   _tl253248254112_
                                   _e253253254115_
                                   _hd253252254118_
                                   _tl253251254120_
                                   _e253256254123_
                                   _hd253255254126_
                                   _tl253254254128_
                                   _e253259254131_
                                   _hd253258254134_
                                   _tl253257254136_
                                   _e253262254139_
                                   _hd253261254142_
                                   _tl253260254144_
                                   _e253265254147_
                                   _hd253264254150_
                                   _tl253263254152_))))
                          (___match262823262824_
                           _e253244254091_
                           _hd253243254094_
                           _tl253242254096_
                           _e253247254099_
                           _hd253246254102_
                           _tl253245254104_
                           _e253250254107_
                           _hd253249254110_
                           _tl253248254112_
                           _e253253254115_
                           _hd253252254118_
                           _tl253251254120_
                           _e253256254123_
                           _hd253255254126_
                           _tl253254254128_
                           _e253259254131_
                           _hd253258254134_
                           _tl253257254136_
                           _e253262254139_
                           _hd253261254142_
                           _tl253260254144_
                           _e253265254147_
                           _hd253264254150_
                           _tl253263254152_))))
                  (___match262761262762_
                   _e253244254091_
                   _hd253243254094_
                   _tl253242254096_
                   _e253247254099_
                   _hd253246254102_
                   _tl253245254104_
                   _e253250254107_
                   _hd253249254110_
                   _tl253248254112_
                   _e253253254115_
                   _hd253252254118_
                   _tl253251254120_
                   _e253256254123_
                   _hd253255254126_
                   _tl253254254128_
                   _e253259254131_
                   _hd253258254134_
                   _tl253257254136_
                   _e253262254139_
                   _hd253261254142_
                   _tl253260254144_))
              (___kont262344262345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont262344262345_))
                                          (___kont262344262345_))
                                      (___kont262344262345_))))
                              (___kont262344262345_))))
                      (___kont262344262345_))
                  (___kont262344262345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont262344262345_))
                                              (___kont262344262345_))
                                          (___kont262344262345_))))
                                  (___kont262344262345_))))
                          (___kont262344262345_))))
                  (___kont262344262345_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx252168_
               _self252169_
               _$t252170_
               _methods252171_
               _slots252172_
               _class-check252173_
               _struct-check252174_
               _struct-assert252175_)
        (letrec ((_force-e252177_
                  (lambda (_what253220_)
                    (let ((__tmp263702
                           (let ((__tmp263706
                                  (let ((__tmp263707
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp263707)))
                                 (__tmp263703
                                  (let ((__tmp263704
                                         (let ((__tmp263705
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what253220_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp263705))))
                                    (declare (not safe))
                                    (cons __tmp263704 '()))))
                             (declare (not safe))
                             (cons __tmp263706 __tmp263703))))
                      (declare (not safe))
                      (cons '%#call __tmp263702)))))
          (let* ((___stx262828262829_ _stx252168_)
                 (_g252185252407_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx262828262829_)))))
            (let ((___kont262830262831_
                   (lambda (_L253166_ _L253167_ _L253168_ _L253169_)
                     (let ((_$method253214_
                            (let ((__tmp263708
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L253167_))))
                              (declare (not safe))
                              (table-ref _methods252171_ __tmp263708)))
                           (_args253215_
                            (map (lambda (_g253202253204_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g253202253204_
                                      _self252169_
                                      _$t252170_
                                      _methods252171_
                                      _slots252172_
                                      _class-check252173_
                                      _struct-check252174_
                                      _struct-assert252175_)))
                                 (let ((__tmp263709
                                        (lambda (_g253206253209_
                                                 _g253207253211_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g253206253209_
                                                  _g253207253211_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp263709 '() _L253166_)))))
                       (let ((__tmp263710
                              (let ((__tmp263711
                                     (let ((__tmp263715
                                            (let ()
                                              (declare (not safe))
                                              (_force-e252177_
                                               _$method253214_)))
                                           (__tmp263712
                                            (let ((__tmp263713
                                                   (let ((__tmp263714
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self252169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp263714))))
                                              (declare (not safe))
                                              (cons __tmp263713
                                                    _args253215_))))
                                       (declare (not safe))
                                       (cons __tmp263715 __tmp263712))))
                                (declare (not safe))
                                (cons '%#call __tmp263711))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp263710 _stx252168_)))))
                  (___kont262834262835_
                   (lambda (_L252998_ _L252999_ _L253000_ _L253001_ _L253002_)
                     (let ((_$method253054_
                            (let ((__tmp263716
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L252999_))))
                              (declare (not safe))
                              (table-ref _methods252171_ __tmp263716)))
                           (_args253055_
                            (map (lambda (_g253042253044_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g253042253044_
                                      _self252169_
                                      _$t252170_
                                      _methods252171_
                                      _slots252172_
                                      _class-check252173_
                                      _struct-check252174_
                                      _struct-assert252175_)))
                                 (let ((__tmp263717
                                        (lambda (_g253046253049_
                                                 _g253047253051_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g253046253049_
                                                  _g253047253051_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp263717 '() _L252998_)))))
                       (let ((__tmp263718
                              (let ((__tmp263719
                                     (let ((__tmp263725
                                            (let ((__tmp263726
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp263726)))
                                           (__tmp263720
                                            (let ((__tmp263724
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e252177_
                                                      _$method253054_)))
                                                  (__tmp263721
                                                   (let ((__tmp263722
                                                          (let ((__tmp263723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self252169_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp263723))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp263722
                                                           _args253055_))))
                                              (declare (not safe))
                                              (cons __tmp263724 __tmp263721))))
                                       (declare (not safe))
                                       (cons __tmp263725 __tmp263720))))
                                (declare (not safe))
                                (cons '%#call __tmp263719))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp263718 _stx252168_)))))
                  (___kont262838262839_
                   (lambda (_L252829_ _L252830_ _L252831_)
                     (let* ((_$field252863_
                             (let ((__tmp263727
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L252829_))))
                               (declare (not safe))
                               (table-ref _slots252172_ __tmp263727)))
                            (__tmp263728
                             (let ((__tmp263729
                                    (let ((__tmp263736
                                           (let ((__tmp263737
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t252170_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp263737)))
                                          (__tmp263730
                                           (let ((__tmp263734
                                                  (let ((__tmp263735
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field252863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp263735)))
                                                 (__tmp263731
                                                  (let ((__tmp263732
                                                         (let ((__tmp263733
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self252169_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp263733))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp263732 '()))))
                                             (declare (not safe))
                                             (cons __tmp263734 __tmp263731))))
                                      (declare (not safe))
                                      (cons __tmp263736 __tmp263730))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp263729))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp263728 _stx252168_))))
                  (___kont262840262841_
                   (lambda (_L252703_ _L252704_ _L252705_ _L252706_)
                     (let ((_$field252741_
                            (let ((__tmp263738
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L252704_))))
                              (declare (not safe))
                              (table-ref _slots252172_ __tmp263738)))
                           (_expr252742_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L252703_
                               _self252169_
                               _$t252170_
                               _methods252171_
                               _slots252172_
                               _class-check252173_
                               _struct-check252174_
                               _struct-assert252175_))))
                       (let ((__tmp263739
                              (let ((__tmp263740
                                     (let ((__tmp263748
                                            (let ((__tmp263749
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t252170_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp263749)))
                                           (__tmp263741
                                            (let ((__tmp263746
                                                   (let ((__tmp263747
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field252741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp263747)))
                                                  (__tmp263742
                                                   (let ((__tmp263744
                                                          (let ((__tmp263745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self252169_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp263745)))
                 (__tmp263743
                  (let () (declare (not safe)) (cons _expr252742_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp263744
                                                           __tmp263743))))
                                              (declare (not safe))
                                              (cons __tmp263746 __tmp263742))))
                                       (declare (not safe))
                                       (cons __tmp263748 __tmp263741))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp263740))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp263739 _stx252168_)))))
                  (___kont262842262843_
                   (lambda (_L252582_ _L252583_)
                     (let* ((_slot252605_
                             (##structure-ref
                              (let ((__tmp263750
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L252583_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp263750))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field252607_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots252172_ _slot252605_))))
                       (let ((__tmp263751
                              (let ((__tmp263752
                                     (let ((__tmp263759
                                            (let ((__tmp263760
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t252170_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp263760)))
                                           (__tmp263753
                                            (let ((__tmp263757
                                                   (let ((__tmp263758
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field252607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp263758)))
                                                  (__tmp263754
                                                   (let ((__tmp263755
                                                          (let ((__tmp263756
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self252169_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp263756))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp263755 '()))))
                                              (declare (not safe))
                                              (cons __tmp263757 __tmp263754))))
                                       (declare (not safe))
                                       (cons __tmp263759 __tmp263753))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp263752))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp263751 _stx252168_)))))
                  (___kont262844262845_
                   (lambda (_L252483_ _L252484_ _L252485_)
                     (let* ((_slot252514_
                             (##structure-ref
                              (let ((__tmp263761
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L252485_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp263761))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field252516_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots252172_ _slot252514_)))
                            (_expr252518_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L252483_
                                _self252169_
                                _$t252170_
                                _methods252171_
                                _slots252172_
                                _class-check252173_
                                _struct-check252174_
                                _struct-assert252175_))))
                       (let ((__tmp263762
                              (let ((__tmp263763
                                     (let ((__tmp263771
                                            (let ((__tmp263772
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t252170_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp263772)))
                                           (__tmp263764
                                            (let ((__tmp263769
                                                   (let ((__tmp263770
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field252516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp263770)))
                                                  (__tmp263765
                                                   (let ((__tmp263767
                                                          (let ((__tmp263768
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self252169_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp263768)))
                 (__tmp263766
                  (let () (declare (not safe)) (cons _expr252518_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp263767
                                                           __tmp263766))))
                                              (declare (not safe))
                                              (cons __tmp263769 __tmp263765))))
                                       (declare (not safe))
                                       (cons __tmp263771 __tmp263764))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp263763))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp263762 _stx252168_)))))
                  (___kont262846262847_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx252168_
                        _self252169_
                        _$t252170_
                        _methods252171_
                        _slots252172_
                        _class-check252173_
                        _struct-check252174_
                        _struct-assert252175_)))))
              (let* ((___match263327263328_
                      (lambda (_e252381252419_
                               _hd252380252422_
                               _tl252379252424_
                               _e252384252427_
                               _hd252383252430_
                               _tl252382252432_
                               _e252387252435_
                               _hd252386252438_
                               _tl252385252440_
                               _e252390252443_
                               _hd252389252446_
                               _tl252388252448_
                               _e252393252451_
                               _hd252392252454_
                               _tl252391252456_
                               _e252396252459_
                               _hd252395252462_
                               _tl252394252464_
                               _e252399252467_
                               _hd252398252470_
                               _tl252397252472_
                               _e252402252475_
                               _hd252401252478_
                               _tl252400252480_)
                        (let ((_L252483_ _hd252401252478_)
                              (_L252484_ _hd252398252470_)
                              (_L252485_ _hd252389252446_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L252484_
                                      _self252169_))
                                   (let ((__tmp263773
                                          (let ((__tmp263774
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L252485_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp263774))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp263773
                                      'gxc#!mutator::t)))
                              (___kont262844262845_
                               _L252483_
                               _L252484_
                               _L252485_)
                              (___kont262846262847_)))))
                     (___match263325263326_
                      (lambda (_e252381252419_
                               _hd252380252422_
                               _tl252379252424_
                               _e252384252427_
                               _hd252383252430_
                               _tl252382252432_
                               _e252387252435_
                               _hd252386252438_
                               _tl252385252440_
                               _e252390252443_
                               _hd252389252446_
                               _tl252388252448_
                               _e252393252451_
                               _hd252392252454_
                               _tl252391252456_
                               _e252396252459_
                               _hd252395252462_
                               _tl252394252464_
                               _e252399252467_
                               _hd252398252470_
                               _tl252397252472_
                               _e252402252475_
                               _hd252401252478_
                               _tl252400252480_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl252400252480_))
                            (___match263327263328_
                             _e252381252419_
                             _hd252380252422_
                             _tl252379252424_
                             _e252384252427_
                             _hd252383252430_
                             _tl252382252432_
                             _e252387252435_
                             _hd252386252438_
                             _tl252385252440_
                             _e252390252443_
                             _hd252389252446_
                             _tl252388252448_
                             _e252393252451_
                             _hd252392252454_
                             _tl252391252456_
                             _e252396252459_
                             _hd252395252462_
                             _tl252394252464_
                             _e252399252467_
                             _hd252398252470_
                             _tl252397252472_
                             _e252402252475_
                             _hd252401252478_
                             _tl252400252480_)
                            (___kont262846262847_))))
                     (___match263319263320_
                      (lambda (_e252381252419_
                               _hd252380252422_
                               _tl252379252424_
                               _e252384252427_
                               _hd252383252430_
                               _tl252382252432_
                               _e252387252435_
                               _hd252386252438_
                               _tl252385252440_
                               _e252390252443_
                               _hd252389252446_
                               _tl252388252448_
                               _e252393252451_
                               _hd252392252454_
                               _tl252391252456_
                               _e252396252459_
                               _hd252395252462_
                               _tl252394252464_
                               _e252399252467_
                               _hd252398252470_
                               _tl252397252472_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl252391252456_))
                            (let ((_e252402252475_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl252391252456_))))
                              (let ((_tl252400252480_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e252402252475_)))
                                    (_hd252401252478_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e252402252475_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl252400252480_))
                                    (___match263327263328_
                                     _e252381252419_
                                     _hd252380252422_
                                     _tl252379252424_
                                     _e252384252427_
                                     _hd252383252430_
                                     _tl252382252432_
                                     _e252387252435_
                                     _hd252386252438_
                                     _tl252385252440_
                                     _e252390252443_
                                     _hd252389252446_
                                     _tl252388252448_
                                     _e252393252451_
                                     _hd252392252454_
                                     _tl252391252456_
                                     _e252396252459_
                                     _hd252395252462_
                                     _tl252394252464_
                                     _e252399252467_
                                     _hd252398252470_
                                     _tl252397252472_
                                     _e252402252475_
                                     _hd252401252478_
                                     _tl252400252480_)
                                    (___kont262846262847_))))
                            (___kont262846262847_))))
                     (___match263265263266_
                      (lambda (_e252357252526_
                               _hd252356252529_
                               _tl252355252531_
                               _e252360252534_
                               _hd252359252537_
                               _tl252358252539_
                               _e252363252542_
                               _hd252362252545_
                               _tl252361252547_
                               _e252366252550_
                               _hd252365252553_
                               _tl252364252555_
                               _e252369252558_
                               _hd252368252561_
                               _tl252367252563_
                               _e252372252566_
                               _hd252371252569_
                               _tl252370252571_
                               _e252375252574_
                               _hd252374252577_
                               _tl252373252579_)
                        (let ((_L252582_ _hd252374252577_)
                              (_L252583_ _hd252365252553_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L252582_
                                      _self252169_))
                                   (let ((__tmp263775
                                          (let ((__tmp263776
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L252583_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp263776))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp263775
                                      'gxc#!accessor::t)))
                              (___kont262842262843_ _L252582_ _L252583_)
                              (___kont262846262847_)))))
                     (___match263263263264_
                      (lambda (_e252357252526_
                               _hd252356252529_
                               _tl252355252531_
                               _e252360252534_
                               _hd252359252537_
                               _tl252358252539_
                               _e252363252542_
                               _hd252362252545_
                               _tl252361252547_
                               _e252366252550_
                               _hd252365252553_
                               _tl252364252555_
                               _e252369252558_
                               _hd252368252561_
                               _tl252367252563_
                               _e252372252566_
                               _hd252371252569_
                               _tl252370252571_
                               _e252375252574_
                               _hd252374252577_
                               _tl252373252579_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl252367252563_))
                            (___match263265263266_
                             _e252357252526_
                             _hd252356252529_
                             _tl252355252531_
                             _e252360252534_
                             _hd252359252537_
                             _tl252358252539_
                             _e252363252542_
                             _hd252362252545_
                             _tl252361252547_
                             _e252366252550_
                             _hd252365252553_
                             _tl252364252555_
                             _e252369252558_
                             _hd252368252561_
                             _tl252367252563_
                             _e252372252566_
                             _hd252371252569_
                             _tl252370252571_
                             _e252375252574_
                             _hd252374252577_
                             _tl252373252579_)
                            (___match263319263320_
                             _e252357252526_
                             _hd252356252529_
                             _tl252355252531_
                             _e252360252534_
                             _hd252359252537_
                             _tl252358252539_
                             _e252363252542_
                             _hd252362252545_
                             _tl252361252547_
                             _e252366252550_
                             _hd252365252553_
                             _tl252364252555_
                             _e252369252558_
                             _hd252368252561_
                             _tl252367252563_
                             _e252372252566_
                             _hd252371252569_
                             _tl252370252571_
                             _e252375252574_
                             _hd252374252577_
                             _tl252373252579_))))
                     (___match263209263210_
                      (lambda (_e252322252615_
                               _hd252321252618_
                               _tl252320252620_
                               _e252325252623_
                               _hd252324252626_
                               _tl252323252628_
                               _e252328252631_
                               _hd252327252634_
                               _tl252326252636_
                               _e252331252639_
                               _hd252330252642_
                               _tl252329252644_
                               _e252334252647_
                               _hd252333252650_
                               _tl252332252652_
                               _e252337252655_
                               _hd252336252658_
                               _tl252335252660_
                               _e252340252663_
                               _hd252339252666_
                               _tl252338252668_
                               _e252343252671_
                               _hd252342252674_
                               _tl252341252676_
                               _e252346252679_
                               _hd252345252682_
                               _tl252344252684_
                               _e252349252687_
                               _hd252348252690_
                               _tl252347252692_
                               _e252352252695_
                               _hd252351252698_
                               _tl252350252700_)
                        (let ((_L252703_ _hd252351252698_)
                              (_L252704_ _hd252348252690_)
                              (_L252705_ _hd252339252666_)
                              (_L252706_ _hd252330252642_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L252706_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L252706_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L252705_
                                      _self252169_)))
                              (___kont262840262841_
                               _L252703_
                               _L252704_
                               _L252705_
                               _L252706_)
                              (___kont262846262847_)))))
                     (___match263201263202_
                      (lambda (_e252322252615_
                               _hd252321252618_
                               _tl252320252620_
                               _e252325252623_
                               _hd252324252626_
                               _tl252323252628_
                               _e252328252631_
                               _hd252327252634_
                               _tl252326252636_
                               _e252331252639_
                               _hd252330252642_
                               _tl252329252644_
                               _e252334252647_
                               _hd252333252650_
                               _tl252332252652_
                               _e252337252655_
                               _hd252336252658_
                               _tl252335252660_
                               _e252340252663_
                               _hd252339252666_
                               _tl252338252668_
                               _e252343252671_
                               _hd252342252674_
                               _tl252341252676_
                               _e252346252679_
                               _hd252345252682_
                               _tl252344252684_
                               _e252349252687_
                               _hd252348252690_
                               _tl252347252692_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl252341252676_))
                            (let ((_e252352252695_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl252341252676_))))
                              (let ((_tl252350252700_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e252352252695_)))
                                    (_hd252351252698_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e252352252695_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl252350252700_))
                                    (___match263209263210_
                                     _e252322252615_
                                     _hd252321252618_
                                     _tl252320252620_
                                     _e252325252623_
                                     _hd252324252626_
                                     _tl252323252628_
                                     _e252328252631_
                                     _hd252327252634_
                                     _tl252326252636_
                                     _e252331252639_
                                     _hd252330252642_
                                     _tl252329252644_
                                     _e252334252647_
                                     _hd252333252650_
                                     _tl252332252652_
                                     _e252337252655_
                                     _hd252336252658_
                                     _tl252335252660_
                                     _e252340252663_
                                     _hd252339252666_
                                     _tl252338252668_
                                     _e252343252671_
                                     _hd252342252674_
                                     _tl252341252676_
                                     _e252346252679_
                                     _hd252345252682_
                                     _tl252344252684_
                                     _e252349252687_
                                     _hd252348252690_
                                     _tl252347252692_
                                     _e252352252695_
                                     _hd252351252698_
                                     _tl252350252700_)
                                    (___kont262846262847_))))
                            (___match263325263326_
                             _e252322252615_
                             _hd252321252618_
                             _tl252320252620_
                             _e252325252623_
                             _hd252324252626_
                             _tl252323252628_
                             _e252328252631_
                             _hd252327252634_
                             _tl252326252636_
                             _e252331252639_
                             _hd252330252642_
                             _tl252329252644_
                             _e252334252647_
                             _hd252333252650_
                             _tl252332252652_
                             _e252337252655_
                             _hd252336252658_
                             _tl252335252660_
                             _e252340252663_
                             _hd252339252666_
                             _tl252338252668_
                             _e252343252671_
                             _hd252342252674_
                             _tl252341252676_))))
                     (___match263123263124_
                      (lambda (_e252288252749_
                               _hd252287252752_
                               _tl252286252754_
                               _e252291252757_
                               _hd252290252760_
                               _tl252289252762_
                               _e252294252765_
                               _hd252293252768_
                               _tl252292252770_
                               _e252297252773_
                               _hd252296252776_
                               _tl252295252778_
                               _e252300252781_
                               _hd252299252784_
                               _tl252298252786_
                               _e252303252789_
                               _hd252302252792_
                               _tl252301252794_
                               _e252306252797_
                               _hd252305252800_
                               _tl252304252802_
                               _e252309252805_
                               _hd252308252808_
                               _tl252307252810_
                               _e252312252813_
                               _hd252311252816_
                               _tl252310252818_
                               _e252315252821_
                               _hd252314252824_
                               _tl252313252826_)
                        (let ((_L252829_ _hd252314252824_)
                              (_L252830_ _hd252305252800_)
                              (_L252831_ _hd252296252776_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L252831_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L252831_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L252830_
                                      _self252169_)))
                              (___kont262838262839_
                               _L252829_
                               _L252830_
                               _L252831_)
                              (___match263327263328_
                               _e252288252749_
                               _hd252287252752_
                               _tl252286252754_
                               _e252291252757_
                               _hd252290252760_
                               _tl252289252762_
                               _e252294252765_
                               _hd252293252768_
                               _tl252292252770_
                               _e252297252773_
                               _hd252296252776_
                               _tl252295252778_
                               _e252300252781_
                               _hd252299252784_
                               _tl252298252786_
                               _e252303252789_
                               _hd252302252792_
                               _tl252301252794_
                               _e252306252797_
                               _hd252305252800_
                               _tl252304252802_
                               _e252309252805_
                               _hd252308252808_
                               _tl252307252810_)))))
                     (___match263121263122_
                      (lambda (_e252288252749_
                               _hd252287252752_
                               _tl252286252754_
                               _e252291252757_
                               _hd252290252760_
                               _tl252289252762_
                               _e252294252765_
                               _hd252293252768_
                               _tl252292252770_
                               _e252297252773_
                               _hd252296252776_
                               _tl252295252778_
                               _e252300252781_
                               _hd252299252784_
                               _tl252298252786_
                               _e252303252789_
                               _hd252302252792_
                               _tl252301252794_
                               _e252306252797_
                               _hd252305252800_
                               _tl252304252802_
                               _e252309252805_
                               _hd252308252808_
                               _tl252307252810_
                               _e252312252813_
                               _hd252311252816_
                               _tl252310252818_
                               _e252315252821_
                               _hd252314252824_
                               _tl252313252826_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl252307252810_))
                            (___match263123263124_
                             _e252288252749_
                             _hd252287252752_
                             _tl252286252754_
                             _e252291252757_
                             _hd252290252760_
                             _tl252289252762_
                             _e252294252765_
                             _hd252293252768_
                             _tl252292252770_
                             _e252297252773_
                             _hd252296252776_
                             _tl252295252778_
                             _e252300252781_
                             _hd252299252784_
                             _tl252298252786_
                             _e252303252789_
                             _hd252302252792_
                             _tl252301252794_
                             _e252306252797_
                             _hd252305252800_
                             _tl252304252802_
                             _e252309252805_
                             _hd252308252808_
                             _tl252307252810_
                             _e252312252813_
                             _hd252311252816_
                             _tl252310252818_
                             _e252315252821_
                             _hd252314252824_
                             _tl252313252826_)
                            (___match263201263202_
                             _e252288252749_
                             _hd252287252752_
                             _tl252286252754_
                             _e252291252757_
                             _hd252290252760_
                             _tl252289252762_
                             _e252294252765_
                             _hd252293252768_
                             _tl252292252770_
                             _e252297252773_
                             _hd252296252776_
                             _tl252295252778_
                             _e252300252781_
                             _hd252299252784_
                             _tl252298252786_
                             _e252303252789_
                             _hd252302252792_
                             _tl252301252794_
                             _e252306252797_
                             _hd252305252800_
                             _tl252304252802_
                             _e252309252805_
                             _hd252308252808_
                             _tl252307252810_
                             _e252312252813_
                             _hd252311252816_
                             _tl252310252818_
                             _e252315252821_
                             _hd252314252824_
                             _tl252313252826_))))
                     (___match263111263112_
                      (lambda (_e252288252749_
                               _hd252287252752_
                               _tl252286252754_
                               _e252291252757_
                               _hd252290252760_
                               _tl252289252762_
                               _e252294252765_
                               _hd252293252768_
                               _tl252292252770_
                               _e252297252773_
                               _hd252296252776_
                               _tl252295252778_
                               _e252300252781_
                               _hd252299252784_
                               _tl252298252786_
                               _e252303252789_
                               _hd252302252792_
                               _tl252301252794_
                               _e252306252797_
                               _hd252305252800_
                               _tl252304252802_
                               _e252309252805_
                               _hd252308252808_
                               _tl252307252810_
                               _e252312252813_
                               _hd252311252816_
                               _tl252310252818_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd252311252816_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl252310252818_))
                                (let ((_e252315252821_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl252310252818_))))
                                  (let ((_tl252313252826_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e252315252821_)))
                                        (_hd252314252824_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e252315252821_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl252313252826_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl252307252810_))
                                            (___match263123263124_
                                             _e252288252749_
                                             _hd252287252752_
                                             _tl252286252754_
                                             _e252291252757_
                                             _hd252290252760_
                                             _tl252289252762_
                                             _e252294252765_
                                             _hd252293252768_
                                             _tl252292252770_
                                             _e252297252773_
                                             _hd252296252776_
                                             _tl252295252778_
                                             _e252300252781_
                                             _hd252299252784_
                                             _tl252298252786_
                                             _e252303252789_
                                             _hd252302252792_
                                             _tl252301252794_
                                             _e252306252797_
                                             _hd252305252800_
                                             _tl252304252802_
                                             _e252309252805_
                                             _hd252308252808_
                                             _tl252307252810_
                                             _e252312252813_
                                             _hd252311252816_
                                             _tl252310252818_
                                             _e252315252821_
                                             _hd252314252824_
                                             _tl252313252826_)
                                            (___match263201263202_
                                             _e252288252749_
                                             _hd252287252752_
                                             _tl252286252754_
                                             _e252291252757_
                                             _hd252290252760_
                                             _tl252289252762_
                                             _e252294252765_
                                             _hd252293252768_
                                             _tl252292252770_
                                             _e252297252773_
                                             _hd252296252776_
                                             _tl252295252778_
                                             _e252300252781_
                                             _hd252299252784_
                                             _tl252298252786_
                                             _e252303252789_
                                             _hd252302252792_
                                             _tl252301252794_
                                             _e252306252797_
                                             _hd252305252800_
                                             _tl252304252802_
                                             _e252309252805_
                                             _hd252308252808_
                                             _tl252307252810_
                                             _e252312252813_
                                             _hd252311252816_
                                             _tl252310252818_
                                             _e252315252821_
                                             _hd252314252824_
                                             _tl252313252826_))
                                        (___match263325263326_
                                         _e252288252749_
                                         _hd252287252752_
                                         _tl252286252754_
                                         _e252291252757_
                                         _hd252290252760_
                                         _tl252289252762_
                                         _e252294252765_
                                         _hd252293252768_
                                         _tl252292252770_
                                         _e252297252773_
                                         _hd252296252776_
                                         _tl252295252778_
                                         _e252300252781_
                                         _hd252299252784_
                                         _tl252298252786_
                                         _e252303252789_
                                         _hd252302252792_
                                         _tl252301252794_
                                         _e252306252797_
                                         _hd252305252800_
                                         _tl252304252802_
                                         _e252309252805_
                                         _hd252308252808_
                                         _tl252307252810_))))
                                (___match263325263326_
                                 _e252288252749_
                                 _hd252287252752_
                                 _tl252286252754_
                                 _e252291252757_
                                 _hd252290252760_
                                 _tl252289252762_
                                 _e252294252765_
                                 _hd252293252768_
                                 _tl252292252770_
                                 _e252297252773_
                                 _hd252296252776_
                                 _tl252295252778_
                                 _e252300252781_
                                 _hd252299252784_
                                 _tl252298252786_
                                 _e252303252789_
                                 _hd252302252792_
                                 _tl252301252794_
                                 _e252306252797_
                                 _hd252305252800_
                                 _tl252304252802_
                                 _e252309252805_
                                 _hd252308252808_
                                 _tl252307252810_))
                            (___match263325263326_
                             _e252288252749_
                             _hd252287252752_
                             _tl252286252754_
                             _e252291252757_
                             _hd252290252760_
                             _tl252289252762_
                             _e252294252765_
                             _hd252293252768_
                             _tl252292252770_
                             _e252297252773_
                             _hd252296252776_
                             _tl252295252778_
                             _e252300252781_
                             _hd252299252784_
                             _tl252298252786_
                             _e252303252789_
                             _hd252302252792_
                             _tl252301252794_
                             _e252306252797_
                             _hd252305252800_
                             _tl252304252802_
                             _e252309252805_
                             _hd252308252808_
                             _tl252307252810_))))
                     (___match263043263044_
                      (lambda (_e252237252870_
                               _hd252236252873_
                               _tl252235252875_
                               _e252240252878_
                               _hd252239252881_
                               _tl252238252883_
                               _e252243252886_
                               _hd252242252889_
                               _tl252241252891_
                               _e252246252894_
                               _hd252245252897_
                               _tl252244252899_
                               _e252249252902_
                               _hd252248252905_
                               _tl252247252907_
                               _e252252252910_
                               _hd252251252913_
                               _tl252250252915_
                               _e252255252918_
                               _hd252254252921_
                               _tl252253252923_
                               _e252258252926_
                               _hd252257252929_
                               _tl252256252931_
                               _e252261252934_
                               _hd252260252937_
                               _tl252259252939_
                               _e252264252942_
                               _hd252263252945_
                               _tl252262252947_
                               _e252267252950_
                               _hd252266252953_
                               _tl252265252955_
                               _e252270252958_
                               _hd252269252961_
                               _tl252268252963_
                               _e252273252966_
                               _hd252272252969_
                               _tl252271252971_
                               ___splice262836262837_
                               _target252274252974_
                               _tl252276252976_)
                        (letrec ((_loop252277252979_
                                  (lambda (_hd252275252982_ _args252281252984_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd252275252982_))
                                        (let ((_e252278252987_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd252275252982_))))
                                          (let ((_lp-tl252280252992_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e252278252987_)))
                                                (_lp-hd252279252990_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e252278252987_))))
                                            (let ((__tmp263777
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd252279252990_
                                                           _args252281252984_))))
                                              (declare (not safe))
                                              (_loop252277252979_
                                               _lp-tl252280252992_
                                               __tmp263777))))
                                        (let ((_args252282252995_
                                               (reverse _args252281252984_)))
                                          (let ((_L252998_ _args252282252995_)
                                                (_L252999_ _hd252272252969_)
                                                (_L253000_ _hd252263252945_)
                                                (_L253001_ _hd252254252921_)
                                                (_L253002_ _hd252245252897_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L253002_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L253001_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L253000_
                                                        _self252169_)))
                                                (___kont262834262835_
                                                 _L252998_
                                                 _L252999_
                                                 _L253000_
                                                 _L253001_
                                                 _L253002_)
                                                (___kont262846262847_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop252277252979_ _target252274252974_ '())))))
                     (___match263001263002_
                      (lambda (_e252237252870_
                               _hd252236252873_
                               _tl252235252875_
                               _e252240252878_
                               _hd252239252881_
                               _tl252238252883_
                               _e252243252886_
                               _hd252242252889_
                               _tl252241252891_
                               _e252246252894_
                               _hd252245252897_
                               _tl252244252899_
                               _e252249252902_
                               _hd252248252905_
                               _tl252247252907_
                               _e252252252910_
                               _hd252251252913_
                               _tl252250252915_
                               _e252255252918_
                               _hd252254252921_
                               _tl252253252923_
                               _e252258252926_
                               _hd252257252929_
                               _tl252256252931_
                               _e252261252934_
                               _hd252260252937_
                               _tl252259252939_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd252260252937_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl252259252939_))
                                (let ((_e252264252942_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl252259252939_))))
                                  (let ((_tl252262252947_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e252264252942_)))
                                        (_hd252263252945_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e252264252942_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl252262252947_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl252256252931_))
                                            (let ((_e252267252950_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl252256252931_))))
                                              (let ((_tl252265252955_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e252267252950_)))
                                                    (_hd252266252953_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e252267252950_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd252266252953_))
                                                    (let ((_e252270252958_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd252266252953_))))
                                                      (let ((_tl252268252963_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e252270252958_)))
                    (_hd252269252961_
                     (let () (declare (not safe)) (##car _e252270252958_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd252269252961_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd252269252961_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl252268252963_))
                            (let ((_e252273252966_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl252268252963_))))
                              (let ((_tl252271252971_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e252273252966_)))
                                    (_hd252272252969_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e252273252966_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl252271252971_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl252265252955_))
                                        (let ((___splice262836262837_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl252265252955_
                                                  '0))))
                                          (let ((_tl252276252976_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice262836262837_
                                                    '1)))
                                                (_target252274252974_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice262836262837_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl252276252976_))
                                                (___match263043263044_
                                                 _e252237252870_
                                                 _hd252236252873_
                                                 _tl252235252875_
                                                 _e252240252878_
                                                 _hd252239252881_
                                                 _tl252238252883_
                                                 _e252243252886_
                                                 _hd252242252889_
                                                 _tl252241252891_
                                                 _e252246252894_
                                                 _hd252245252897_
                                                 _tl252244252899_
                                                 _e252249252902_
                                                 _hd252248252905_
                                                 _tl252247252907_
                                                 _e252252252910_
                                                 _hd252251252913_
                                                 _tl252250252915_
                                                 _e252255252918_
                                                 _hd252254252921_
                                                 _tl252253252923_
                                                 _e252258252926_
                                                 _hd252257252929_
                                                 _tl252256252931_
                                                 _e252261252934_
                                                 _hd252260252937_
                                                 _tl252259252939_
                                                 _e252264252942_
                                                 _hd252263252945_
                                                 _tl252262252947_
                                                 _e252267252950_
                                                 _hd252266252953_
                                                 _tl252265252955_
                                                 _e252270252958_
                                                 _hd252269252961_
                                                 _tl252268252963_
                                                 _e252273252966_
                                                 _hd252272252969_
                                                 _tl252271252971_
                                                 ___splice262836262837_
                                                 _target252274252974_
                                                 _tl252276252976_)
                                                (___kont262846262847_))))
                                        (___kont262846262847_))
                                    (___kont262846262847_))))
                            (___kont262846262847_))
                        (___kont262846262847_))
                    (___kont262846262847_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont262846262847_))))
                                            (___match263325263326_
                                             _e252237252870_
                                             _hd252236252873_
                                             _tl252235252875_
                                             _e252240252878_
                                             _hd252239252881_
                                             _tl252238252883_
                                             _e252243252886_
                                             _hd252242252889_
                                             _tl252241252891_
                                             _e252246252894_
                                             _hd252245252897_
                                             _tl252244252899_
                                             _e252249252902_
                                             _hd252248252905_
                                             _tl252247252907_
                                             _e252252252910_
                                             _hd252251252913_
                                             _tl252250252915_
                                             _e252255252918_
                                             _hd252254252921_
                                             _tl252253252923_
                                             _e252258252926_
                                             _hd252257252929_
                                             _tl252256252931_))
                                        (___match263325263326_
                                         _e252237252870_
                                         _hd252236252873_
                                         _tl252235252875_
                                         _e252240252878_
                                         _hd252239252881_
                                         _tl252238252883_
                                         _e252243252886_
                                         _hd252242252889_
                                         _tl252241252891_
                                         _e252246252894_
                                         _hd252245252897_
                                         _tl252244252899_
                                         _e252249252902_
                                         _hd252248252905_
                                         _tl252247252907_
                                         _e252252252910_
                                         _hd252251252913_
                                         _tl252250252915_
                                         _e252255252918_
                                         _hd252254252921_
                                         _tl252253252923_
                                         _e252258252926_
                                         _hd252257252929_
                                         _tl252256252931_))))
                                (___match263325263326_
                                 _e252237252870_
                                 _hd252236252873_
                                 _tl252235252875_
                                 _e252240252878_
                                 _hd252239252881_
                                 _tl252238252883_
                                 _e252243252886_
                                 _hd252242252889_
                                 _tl252241252891_
                                 _e252246252894_
                                 _hd252245252897_
                                 _tl252244252899_
                                 _e252249252902_
                                 _hd252248252905_
                                 _tl252247252907_
                                 _e252252252910_
                                 _hd252251252913_
                                 _tl252250252915_
                                 _e252255252918_
                                 _hd252254252921_
                                 _tl252253252923_
                                 _e252258252926_
                                 _hd252257252929_
                                 _tl252256252931_))
                            (___match263111263112_
                             _e252237252870_
                             _hd252236252873_
                             _tl252235252875_
                             _e252240252878_
                             _hd252239252881_
                             _tl252238252883_
                             _e252243252886_
                             _hd252242252889_
                             _tl252241252891_
                             _e252246252894_
                             _hd252245252897_
                             _tl252244252899_
                             _e252249252902_
                             _hd252248252905_
                             _tl252247252907_
                             _e252252252910_
                             _hd252251252913_
                             _tl252250252915_
                             _e252255252918_
                             _hd252254252921_
                             _tl252253252923_
                             _e252258252926_
                             _hd252257252929_
                             _tl252256252931_
                             _e252261252934_
                             _hd252260252937_
                             _tl252259252939_))))
                     (___match262933262934_
                      (lambda (_e252193253062_
                               _hd252192253065_
                               _tl252191253067_
                               _e252196253070_
                               _hd252195253073_
                               _tl252194253075_
                               _e252199253078_
                               _hd252198253081_
                               _tl252197253083_
                               _e252202253086_
                               _hd252201253089_
                               _tl252200253091_
                               _e252205253094_
                               _hd252204253097_
                               _tl252203253099_
                               _e252208253102_
                               _hd252207253105_
                               _tl252206253107_
                               _e252211253110_
                               _hd252210253113_
                               _tl252209253115_
                               _e252214253118_
                               _hd252213253121_
                               _tl252212253123_
                               _e252217253126_
                               _hd252216253129_
                               _tl252215253131_
                               _e252220253134_
                               _hd252219253137_
                               _tl252218253139_
                               ___splice262832262833_
                               _target252221253142_
                               _tl252223253144_)
                        (letrec ((_loop252224253147_
                                  (lambda (_hd252222253150_ _args252228253152_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd252222253150_))
                                        (let ((_e252225253155_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd252222253150_))))
                                          (let ((_lp-tl252227253160_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e252225253155_)))
                                                (_lp-hd252226253158_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e252225253155_))))
                                            (let ((__tmp263778
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd252226253158_
                                                           _args252228253152_))))
                                              (declare (not safe))
                                              (_loop252224253147_
                                               _lp-tl252227253160_
                                               __tmp263778))))
                                        (let ((_args252229253163_
                                               (reverse _args252228253152_)))
                                          (let ((_L253166_ _args252229253163_)
                                                (_L253167_ _hd252219253137_)
                                                (_L253168_ _hd252210253113_)
                                                (_L253169_ _hd252201253089_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L253169_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L253168_
                                                        _self252169_)))
                                                (___kont262830262831_
                                                 _L253166_
                                                 _L253167_
                                                 _L253168_
                                                 _L253169_)
                                                (___match263121263122_
                                                 _e252193253062_
                                                 _hd252192253065_
                                                 _tl252191253067_
                                                 _e252196253070_
                                                 _hd252195253073_
                                                 _tl252194253075_
                                                 _e252199253078_
                                                 _hd252198253081_
                                                 _tl252197253083_
                                                 _e252202253086_
                                                 _hd252201253089_
                                                 _tl252200253091_
                                                 _e252205253094_
                                                 _hd252204253097_
                                                 _tl252203253099_
                                                 _e252208253102_
                                                 _hd252207253105_
                                                 _tl252206253107_
                                                 _e252211253110_
                                                 _hd252210253113_
                                                 _tl252209253115_
                                                 _e252214253118_
                                                 _hd252213253121_
                                                 _tl252212253123_
                                                 _e252217253126_
                                                 _hd252216253129_
                                                 _tl252215253131_
                                                 _e252220253134_
                                                 _hd252219253137_
                                                 _tl252218253139_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop252224253147_ _target252221253142_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx262828262829_))
                    (let ((_e252193253062_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx262828262829_))))
                      (let ((_tl252191253067_
                             (let ()
                               (declare (not safe))
                               (##cdr _e252193253062_)))
                            (_hd252192253065_
                             (let ()
                               (declare (not safe))
                               (##car _e252193253062_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl252191253067_))
                            (let ((_e252196253070_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl252191253067_))))
                              (let ((_tl252194253075_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e252196253070_)))
                                    (_hd252195253073_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e252196253070_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd252195253073_))
                                    (let ((_e252199253078_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd252195253073_))))
                                      (let ((_tl252197253083_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e252199253078_)))
                                            (_hd252198253081_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e252199253078_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd252198253081_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd252198253081_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl252197253083_))
                                                    (let ((_e252202253086_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl252197253083_))))
                                                      (let ((_tl252200253091_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e252202253086_)))
                    (_hd252201253089_
                     (let () (declare (not safe)) (##car _e252202253086_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl252200253091_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl252194253075_))
                        (let ((_e252205253094_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl252194253075_))))
                          (let ((_tl252203253099_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e252205253094_)))
                                (_hd252204253097_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e252205253094_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd252204253097_))
                                (let ((_e252208253102_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd252204253097_))))
                                  (let ((_tl252206253107_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e252208253102_)))
                                        (_hd252207253105_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e252208253102_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd252207253105_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd252207253105_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl252206253107_))
                                                (let ((_e252211253110_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl252206253107_))))
                                                  (let ((_tl252209253115_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e252211253110_)))
                                                        (_hd252210253113_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e252211253110_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl252209253115_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl252203253099_))
                                                            (let ((_e252214253118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl252203253099_))))
                      (let ((_tl252212253123_
                             (let ()
                               (declare (not safe))
                               (##cdr _e252214253118_)))
                            (_hd252213253121_
                             (let ()
                               (declare (not safe))
                               (##car _e252214253118_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd252213253121_))
                            (let ((_e252217253126_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd252213253121_))))
                              (let ((_tl252215253131_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e252217253126_)))
                                    (_hd252216253129_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e252217253126_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd252216253129_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd252216253129_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl252215253131_))
                                            (let ((_e252220253134_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl252215253131_))))
                                              (let ((_tl252218253139_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e252220253134_)))
                                                    (_hd252219253137_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e252220253134_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl252218253139_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl252212253123_))
                                                        (let ((___splice262832262833_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl252212253123_ '0))))
                  (let ((_tl252223253144_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice262832262833_ '1)))
                        (_target252221253142_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice262832262833_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl252223253144_))
                        (___match262933262934_
                         _e252193253062_
                         _hd252192253065_
                         _tl252191253067_
                         _e252196253070_
                         _hd252195253073_
                         _tl252194253075_
                         _e252199253078_
                         _hd252198253081_
                         _tl252197253083_
                         _e252202253086_
                         _hd252201253089_
                         _tl252200253091_
                         _e252205253094_
                         _hd252204253097_
                         _tl252203253099_
                         _e252208253102_
                         _hd252207253105_
                         _tl252206253107_
                         _e252211253110_
                         _hd252210253113_
                         _tl252209253115_
                         _e252214253118_
                         _hd252213253121_
                         _tl252212253123_
                         _e252217253126_
                         _hd252216253129_
                         _tl252215253131_
                         _e252220253134_
                         _hd252219253137_
                         _tl252218253139_
                         ___splice262832262833_
                         _target252221253142_
                         _tl252223253144_)
                        (___match263121263122_
                         _e252193253062_
                         _hd252192253065_
                         _tl252191253067_
                         _e252196253070_
                         _hd252195253073_
                         _tl252194253075_
                         _e252199253078_
                         _hd252198253081_
                         _tl252197253083_
                         _e252202253086_
                         _hd252201253089_
                         _tl252200253091_
                         _e252205253094_
                         _hd252204253097_
                         _tl252203253099_
                         _e252208253102_
                         _hd252207253105_
                         _tl252206253107_
                         _e252211253110_
                         _hd252210253113_
                         _tl252209253115_
                         _e252214253118_
                         _hd252213253121_
                         _tl252212253123_
                         _e252217253126_
                         _hd252216253129_
                         _tl252215253131_
                         _e252220253134_
                         _hd252219253137_
                         _tl252218253139_))))
                (___match263121263122_
                 _e252193253062_
                 _hd252192253065_
                 _tl252191253067_
                 _e252196253070_
                 _hd252195253073_
                 _tl252194253075_
                 _e252199253078_
                 _hd252198253081_
                 _tl252197253083_
                 _e252202253086_
                 _hd252201253089_
                 _tl252200253091_
                 _e252205253094_
                 _hd252204253097_
                 _tl252203253099_
                 _e252208253102_
                 _hd252207253105_
                 _tl252206253107_
                 _e252211253110_
                 _hd252210253113_
                 _tl252209253115_
                 _e252214253118_
                 _hd252213253121_
                 _tl252212253123_
                 _e252217253126_
                 _hd252216253129_
                 _tl252215253131_
                 _e252220253134_
                 _hd252219253137_
                 _tl252218253139_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match263325263326_
                                                     _e252193253062_
                                                     _hd252192253065_
                                                     _tl252191253067_
                                                     _e252196253070_
                                                     _hd252195253073_
                                                     _tl252194253075_
                                                     _e252199253078_
                                                     _hd252198253081_
                                                     _tl252197253083_
                                                     _e252202253086_
                                                     _hd252201253089_
                                                     _tl252200253091_
                                                     _e252205253094_
                                                     _hd252204253097_
                                                     _tl252203253099_
                                                     _e252208253102_
                                                     _hd252207253105_
                                                     _tl252206253107_
                                                     _e252211253110_
                                                     _hd252210253113_
                                                     _tl252209253115_
                                                     _e252214253118_
                                                     _hd252213253121_
                                                     _tl252212253123_))))
                                            (___match263325263326_
                                             _e252193253062_
                                             _hd252192253065_
                                             _tl252191253067_
                                             _e252196253070_
                                             _hd252195253073_
                                             _tl252194253075_
                                             _e252199253078_
                                             _hd252198253081_
                                             _tl252197253083_
                                             _e252202253086_
                                             _hd252201253089_
                                             _tl252200253091_
                                             _e252205253094_
                                             _hd252204253097_
                                             _tl252203253099_
                                             _e252208253102_
                                             _hd252207253105_
                                             _tl252206253107_
                                             _e252211253110_
                                             _hd252210253113_
                                             _tl252209253115_
                                             _e252214253118_
                                             _hd252213253121_
                                             _tl252212253123_))
                                        (___match263001263002_
                                         _e252193253062_
                                         _hd252192253065_
                                         _tl252191253067_
                                         _e252196253070_
                                         _hd252195253073_
                                         _tl252194253075_
                                         _e252199253078_
                                         _hd252198253081_
                                         _tl252197253083_
                                         _e252202253086_
                                         _hd252201253089_
                                         _tl252200253091_
                                         _e252205253094_
                                         _hd252204253097_
                                         _tl252203253099_
                                         _e252208253102_
                                         _hd252207253105_
                                         _tl252206253107_
                                         _e252211253110_
                                         _hd252210253113_
                                         _tl252209253115_
                                         _e252214253118_
                                         _hd252213253121_
                                         _tl252212253123_
                                         _e252217253126_
                                         _hd252216253129_
                                         _tl252215253131_))
                                    (___match263325263326_
                                     _e252193253062_
                                     _hd252192253065_
                                     _tl252191253067_
                                     _e252196253070_
                                     _hd252195253073_
                                     _tl252194253075_
                                     _e252199253078_
                                     _hd252198253081_
                                     _tl252197253083_
                                     _e252202253086_
                                     _hd252201253089_
                                     _tl252200253091_
                                     _e252205253094_
                                     _hd252204253097_
                                     _tl252203253099_
                                     _e252208253102_
                                     _hd252207253105_
                                     _tl252206253107_
                                     _e252211253110_
                                     _hd252210253113_
                                     _tl252209253115_
                                     _e252214253118_
                                     _hd252213253121_
                                     _tl252212253123_))))
                            (___match263325263326_
                             _e252193253062_
                             _hd252192253065_
                             _tl252191253067_
                             _e252196253070_
                             _hd252195253073_
                             _tl252194253075_
                             _e252199253078_
                             _hd252198253081_
                             _tl252197253083_
                             _e252202253086_
                             _hd252201253089_
                             _tl252200253091_
                             _e252205253094_
                             _hd252204253097_
                             _tl252203253099_
                             _e252208253102_
                             _hd252207253105_
                             _tl252206253107_
                             _e252211253110_
                             _hd252210253113_
                             _tl252209253115_
                             _e252214253118_
                             _hd252213253121_
                             _tl252212253123_))))
                    (___match263263263264_
                     _e252193253062_
                     _hd252192253065_
                     _tl252191253067_
                     _e252196253070_
                     _hd252195253073_
                     _tl252194253075_
                     _e252199253078_
                     _hd252198253081_
                     _tl252197253083_
                     _e252202253086_
                     _hd252201253089_
                     _tl252200253091_
                     _e252205253094_
                     _hd252204253097_
                     _tl252203253099_
                     _e252208253102_
                     _hd252207253105_
                     _tl252206253107_
                     _e252211253110_
                     _hd252210253113_
                     _tl252209253115_))
                (___kont262846262847_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont262846262847_))
                                            (___kont262846262847_))
                                        (___kont262846262847_))))
                                (___kont262846262847_))))
                        (___kont262846262847_))
                    (___kont262846262847_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont262846262847_))
                                                (___kont262846262847_))
                                            (___kont262846262847_))))
                                    (___kont262846262847_))))
                            (___kont262846262847_))))
                    (___kont262846262847_))))))))))
