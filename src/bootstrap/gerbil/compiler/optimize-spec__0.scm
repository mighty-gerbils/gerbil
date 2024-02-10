(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1707565663)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl238960_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp244282 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl238960_ __tmp244282))
           (let ()
             (declare (not safe))
             (table-set! _tbl238960_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238960_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238960_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238960_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl238960_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx238943_ . _args238945_)
        (let ((__tmp244284
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238945_)
                     (gxc#compile-e__0 _stx238943_)
                     (let ((_arg1238950_ (car _args238945_))
                           (_rest238952_ (cdr _args238945_)))
                       (if (null? _rest238952_)
                           (gxc#compile-e__1 _stx238943_ _arg1238950_)
                           (let ((_arg2238955_ (car _rest238952_))
                                 (_rest238957_ (cdr _rest238952_)))
                             (if (null? _rest238957_)
                                 (gxc#compile-e__2
                                  _stx238943_
                                  _arg1238950_
                                  _arg2238955_)
                                 (apply gxc#compile-e
                                        _stx238943_
                                        _arg1238950_
                                        _arg2238955_
                                        _rest238957_))))))))
              (__tmp244283 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp244284
           gxc#current-compile-methods
           __tmp244283))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl238940_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp244285 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl238940_ __tmp244285))
           (let ()
             (declare (not safe))
             (table-set! _tbl238940_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238940_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238940_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238940_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238940_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238940_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238940_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238940_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238940_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl238940_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238940_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl238940_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238940_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238940_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238940_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238940_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl238940_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx238923_ . _args238925_)
        (let ((__tmp244287
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238925_)
                     (gxc#compile-e__0 _stx238923_)
                     (let ((_arg1238930_ (car _args238925_))
                           (_rest238932_ (cdr _args238925_)))
                       (if (null? _rest238932_)
                           (gxc#compile-e__1 _stx238923_ _arg1238930_)
                           (let ((_arg2238935_ (car _rest238932_))
                                 (_rest238937_ (cdr _rest238932_)))
                             (if (null? _rest238937_)
                                 (gxc#compile-e__2
                                  _stx238923_
                                  _arg1238930_
                                  _arg2238935_)
                                 (apply gxc#compile-e
                                        _stx238923_
                                        _arg1238930_
                                        _arg2238935_
                                        _rest238937_))))))))
              (__tmp244286 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp244287
           gxc#current-compile-methods
           __tmp244286))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl238920_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp244288 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl238920_ __tmp244288))
           (let ()
             (declare (not safe))
             (table-set! _tbl238920_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238920_ '%#call gxc#subst-object-refs-call%))
           _tbl238920_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx238903_ . _args238905_)
        (let ((__tmp244290
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238905_)
                     (gxc#compile-e__0 _stx238903_)
                     (let ((_arg1238910_ (car _args238905_))
                           (_rest238912_ (cdr _args238905_)))
                       (if (null? _rest238912_)
                           (gxc#compile-e__1 _stx238903_ _arg1238910_)
                           (let ((_arg2238915_ (car _rest238912_))
                                 (_rest238917_ (cdr _rest238912_)))
                             (if (null? _rest238917_)
                                 (gxc#compile-e__2
                                  _stx238903_
                                  _arg1238910_
                                  _arg2238915_)
                                 (apply gxc#compile-e
                                        _stx238903_
                                        _arg1238910_
                                        _arg2238915_
                                        _rest238917_))))))))
              (__tmp244289 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp244290
           gxc#current-compile-methods
           __tmp244289))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx235573_)
        (letrec ((_generate-method-bind235575_
                  (lambda (_$t238897_ _id238898_ _$id238899_)
                    (let ((_$tmp238901_
                           (let ((__tmp244291 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp244291))))
                      (let ((__tmp244336
                             (let ()
                               (declare (not safe))
                               (cons _$id238899_ '())))
                            (__tmp244292
                             (let ((__tmp244293
                                    (let ((__tmp244294
                                           (let ((__tmp244334
                                                  (let ((__tmp244335
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp244335)))
                                                 (__tmp244295
                                                  (let ((__tmp244296
                                                         (let ((__tmp244297
                                                                (let ((__tmp244298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp244299
                                      (let ((__tmp244300
                                             (let ((__tmp244320
                                                    (let ((__tmp244321
                                                           (let ((__tmp244333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp238901_ '())))
                         (__tmp244322
                          (let ((__tmp244323
                                 (let ((__tmp244324
                                        (let ((__tmp244331
                                               (let ((__tmp244332
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp244332)))
                                              (__tmp244325
                                               (let ((__tmp244329
                                                      (let ((__tmp244330
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t238897_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp244330)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp244326
                                                      (let ((__tmp244327
                                                             (let ((__tmp244328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id238898_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp244328))))
                (declare (not safe))
                (cons __tmp244327 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp244329
                                                       __tmp244326))))
                                          (declare (not safe))
                                          (cons __tmp244331 __tmp244325))))
                                   (declare (not safe))
                                   (cons '%#call __tmp244324))))
                            (declare (not safe))
                            (cons __tmp244323 '()))))
                     (declare (not safe))
                     (cons __tmp244333 __tmp244322))))
              (declare (not safe))
              (cons __tmp244321 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp244301
                                                    (let ((__tmp244302
                                                           (let ((__tmp244303
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244318
                                 (let ((__tmp244319
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp238901_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp244319)))
                                (__tmp244304
                                 (let ((__tmp244316
                                        (let ((__tmp244317
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp238901_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp244317)))
                                       (__tmp244305
                                        (let ((__tmp244306
                                               (let ((__tmp244307
                                                      (let ((__tmp244314
                                                             (let ((__tmp244315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp244315)))
                    (__tmp244308
                     (let ((__tmp244312
                            (let ((__tmp244313
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp244313)))
                           (__tmp244309
                            (let ((__tmp244310
                                   (let ((__tmp244311
                                          (let ()
                                            (declare (not safe))
                                            (cons _id238898_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp244311))))
                              (declare (not safe))
                              (cons __tmp244310 '()))))
                       (declare (not safe))
                       (cons __tmp244312 __tmp244309))))
                (declare (not safe))
                (cons __tmp244314 __tmp244308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp244307))))
                                          (declare (not safe))
                                          (cons __tmp244306 '()))))
                                   (declare (not safe))
                                   (cons __tmp244316 __tmp244305))))
                            (declare (not safe))
                            (cons __tmp244318 __tmp244304))))
                     (declare (not safe))
                     (cons '%#if __tmp244303))))
              (declare (not safe))
              (cons __tmp244302 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp244320
                                                     __tmp244301))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp244300))))
                                 (declare (not safe))
                                 (cons __tmp244299 '()))))
                          (declare (not safe))
                          (cons '() __tmp244298))))
                   (declare (not safe))
                   (cons '%#lambda __tmp244297))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244296 '()))))
                                             (declare (not safe))
                                             (cons __tmp244334 __tmp244295))))
                                      (declare (not safe))
                                      (cons '%#call __tmp244294))))
                               (declare (not safe))
                               (cons __tmp244293 '()))))
                        (declare (not safe))
                        (cons __tmp244336 __tmp244292)))))
                 (_generate-slot-bind235576_
                  (lambda (_$t238891_ _id238892_ _$id238893_)
                    (let ((_$tmp238895_
                           (let ((__tmp244337 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp244337))))
                      (let ((__tmp244374
                             (let ()
                               (declare (not safe))
                               (cons _$id238893_ '())))
                            (__tmp244338
                             (let ((__tmp244339
                                    (let ((__tmp244340
                                           (let ((__tmp244360
                                                  (let ((__tmp244361
                                                         (let ((__tmp244373
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp238895_ '())))
                       (__tmp244362
                        (let ((__tmp244363
                               (let ((__tmp244364
                                      (let ((__tmp244371
                                             (let ((__tmp244372
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp244372)))
                                            (__tmp244365
                                             (let ((__tmp244369
                                                    (let ((__tmp244370
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t238891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp244370)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp244366
                                                    (let ((__tmp244367
                                                           (let ((__tmp244368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id238892_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp244368))))
              (declare (not safe))
              (cons __tmp244367 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp244369
                                                     __tmp244366))))
                                        (declare (not safe))
                                        (cons __tmp244371 __tmp244365))))
                                 (declare (not safe))
                                 (cons '%#call __tmp244364))))
                          (declare (not safe))
                          (cons __tmp244363 '()))))
                   (declare (not safe))
                   (cons __tmp244373 __tmp244362))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244361 '())))
                                                 (__tmp244341
                                                  (let ((__tmp244342
                                                         (let ((__tmp244343
                                                                (let ((__tmp244358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp244359
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp238895_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp244359)))
                              (__tmp244344
                               (let ((__tmp244356
                                      (let ((__tmp244357
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp238895_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp244357)))
                                     (__tmp244345
                                      (let ((__tmp244346
                                             (let ((__tmp244347
                                                    (let ((__tmp244354
                                                           (let ((__tmp244355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp244355)))
                  (__tmp244348
                   (let ((__tmp244352
                          (let ((__tmp244353
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp244353)))
                         (__tmp244349
                          (let ((__tmp244350
                                 (let ((__tmp244351
                                        (let ()
                                          (declare (not safe))
                                          (cons _id238892_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp244351))))
                            (declare (not safe))
                            (cons __tmp244350 '()))))
                     (declare (not safe))
                     (cons __tmp244352 __tmp244349))))
              (declare (not safe))
              (cons __tmp244354 __tmp244348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp244347))))
                                        (declare (not safe))
                                        (cons __tmp244346 '()))))
                                 (declare (not safe))
                                 (cons __tmp244356 __tmp244345))))
                          (declare (not safe))
                          (cons __tmp244358 __tmp244344))))
                   (declare (not safe))
                   (cons '%#if __tmp244343))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244342 '()))))
                                             (declare (not safe))
                                             (cons __tmp244360 __tmp244341))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp244340))))
                               (declare (not safe))
                               (cons __tmp244339 '()))))
                        (declare (not safe))
                        (cons __tmp244374 __tmp244338)))))
                 (_generate-class-check-bind235577_
                  (lambda (_$t238887_ _class-type238888_ _$class-type238889_)
                    (let ((__tmp244386
                           (let ()
                             (declare (not safe))
                             (cons _$class-type238889_ '())))
                          (__tmp244375
                           (let ((__tmp244376
                                  (let ((__tmp244377
                                         (let ((__tmp244384
                                                (let ((__tmp244385
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp244385)))
                                               (__tmp244378
                                                (let ((__tmp244382
                                                       (let ((__tmp244383
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t238887_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp244383)))
              (__tmp244379
               (let ((__tmp244380
                      (let ((__tmp244381
                             (let ()
                               (declare (not safe))
                               (cons _class-type238888_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp244381))))
                 (declare (not safe))
                 (cons __tmp244380 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp244382
                                                        __tmp244379))))
                                           (declare (not safe))
                                           (cons __tmp244384 __tmp244378))))
                                    (declare (not safe))
                                    (cons '%#call __tmp244377))))
                             (declare (not safe))
                             (cons __tmp244376 '()))))
                      (declare (not safe))
                      (cons __tmp244386 __tmp244375))))
                 (_generate-struct-check-bind235578_
                  (lambda (_$t238883_ _class-type238884_ _$class-type238885_)
                    (let ((__tmp244398
                           (let ()
                             (declare (not safe))
                             (cons _$class-type238885_ '())))
                          (__tmp244387
                           (let ((__tmp244388
                                  (let ((__tmp244389
                                         (let ((__tmp244396
                                                (let ((__tmp244397
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp244397)))
                                               (__tmp244390
                                                (let ((__tmp244394
                                                       (let ((__tmp244395
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t238883_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp244395)))
              (__tmp244391
               (let ((__tmp244392
                      (let ((__tmp244393
                             (let ()
                               (declare (not safe))
                               (cons _class-type238884_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp244393))))
                 (declare (not safe))
                 (cons __tmp244392 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp244394
                                                        __tmp244391))))
                                           (declare (not safe))
                                           (cons __tmp244396 __tmp244390))))
                                    (declare (not safe))
                                    (cons '%#call __tmp244389))))
                             (declare (not safe))
                             (cons __tmp244388 '()))))
                      (declare (not safe))
                      (cons __tmp244398 __tmp244387))))
                 (_generate-specializer-impl235579_
                  (lambda (_$t238832_
                           _methods-bind238833_
                           _slots-bind238834_
                           _class-check-bind238835_
                           _struct-check-bind238836_
                           _specializer-impl238837_
                           _lifted-specializer-id238838_
                           _unchecked-specializer-impl238839_)
                    (let ((__tmp244399
                           (let ((__tmp244400
                                  (let ((__tmp244426
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t238832_ '())))
                                        (__tmp244401
                                         (let ((__tmp244402
                                                (let ((__tmp244403
                                                       (let ((__tmp244423
                                                              (let ((__tmp244424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp244425
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind238836_
                                              _class-check-bind238835_))))
                               (declare (not safe))
                               (foldr1 cons __tmp244425 _slots-bind238834_))))
                        (declare (not safe))
                        (foldr1 cons __tmp244424 _methods-bind238833_)))
                     (__tmp244404
                      (let ((__tmp244405
                             (if (or _lifted-specializer-id238838_
                                     _unchecked-specializer-impl238839_)
                                 (let* ((_$specializer238844_
                                         (let ((__tmp244406
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp244406)))
                                        (__tmp244407
                                         (let ((__tmp244419
                                                (let ((__tmp244420
                                                       (let ((__tmp244422
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer238844_ '())))
                     (__tmp244421
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl238837_ '()))))
                 (declare (not safe))
                 (cons __tmp244422 __tmp244421))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp244420 '())))
                                               (__tmp244408
                                                (let ((__tmp244409
                                                       (let _recur238846_ ((_rest238848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind238836_)))
                 (let* ((_rest238849238857_ _rest238848_)
                        (_else238851238865_
                         (lambda ()
                           (if _lifted-specializer-id238838_
                               (let ((__tmp244410
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id238838_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp244410))
                               _unchecked-specializer-impl238839_)))
                        (_K238853238871_
                         (lambda (_rest238868_ _checkq238869_)
                           (let ((__tmp244411
                                  (let ((__tmp244417
                                         (let ((__tmp244418
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq238869_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp244418)))
                                        (__tmp244412
                                         (let ((__tmp244416
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur238846_
                                                   _rest238868_)))
                                               (__tmp244413
                                                (let ((__tmp244414
                                                       (let ((__tmp244415
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer238844_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp244415))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp244414 '()))))
                                           (declare (not safe))
                                           (cons __tmp244416 __tmp244413))))
                                    (declare (not safe))
                                    (cons __tmp244417 __tmp244412))))
                             (declare (not safe))
                             (cons '%#if __tmp244411)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest238849238857_))
                       (let ((_hd238854238874_
                              (let ()
                                (declare (not safe))
                                (##car _rest238849238857_)))
                             (_tl238855238876_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest238849238857_))))
                         (let* ((_checkq238879_ _hd238854238874_)
                                (_rest238881_ _tl238855238876_))
                           (declare (not safe))
                           (_K238853238871_ _rest238881_ _checkq238879_)))
                       (let () (declare (not safe)) (_else238851238865_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp244409 '()))))
                                           (declare (not safe))
                                           (cons __tmp244419 __tmp244408))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp244407))
                                 _specializer-impl238837_)))
                        (declare (not safe))
                        (cons __tmp244405 '()))))
                 (declare (not safe))
                 (cons __tmp244423 __tmp244404))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp244403))))
                                           (declare (not safe))
                                           (cons __tmp244402 '()))))
                                    (declare (not safe))
                                    (cons __tmp244426 __tmp244401))))
                             (declare (not safe))
                             (cons '%#lambda __tmp244400))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244399 _stx235573_))))
                 (_generate-specializer-def235580_
                  (lambda (_id238826_
                           _specializer-id238827_
                           _specializer-impl238828_
                           _lifted-specializer-id238829_
                           _unchecked-specializer-impl238830_)
                    (let ((__tmp244427
                           (let ((__tmp244428
                                  (let ((__tmp244429
                                         (let ((__tmp244449
                                                (let ((__tmp244450
                                                       (let ((__tmp244451
                                                              (let ((__tmp244453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id238827_ '())))
                            (__tmp244452
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl238828_ '()))))
                        (declare (not safe))
                        (cons __tmp244453 __tmp244452))))
                 (declare (not safe))
                 (cons '%#define-values __tmp244451))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp244450
                                                   _stx235573_)))
                                               (__tmp244430
                                                (let ((__tmp244437
                                                       (let ((__tmp244438
                                                              (let ((__tmp244439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp244440
                                    (let ((__tmp244447
                                           (let ((__tmp244448
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp244448)))
                                          (__tmp244441
                                           (let ((__tmp244445
                                                  (let ((__tmp244446
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id238826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp244446)))
                                                 (__tmp244442
                                                  (let ((__tmp244443
                                                         (let ((__tmp244444
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id238827_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp244444))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244443 '()))))
                                             (declare (not safe))
                                             (cons __tmp244445 __tmp244442))))
                                      (declare (not safe))
                                      (cons __tmp244447 __tmp244441))))
                               (declare (not safe))
                               (cons '%#call __tmp244440))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp244439 _stx235573_))))
                 (declare (not safe))
                 (cons __tmp244438 '())))
              (__tmp244431
               (if _lifted-specializer-id238829_
                   (let ((__tmp244432
                          (let ((__tmp244433
                                 (let ((__tmp244434
                                        (let ((__tmp244436
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id238829_
                                                       '())))
                                              (__tmp244435
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl238830_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp244436 __tmp244435))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp244434))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp244433 _stx235573_))))
                     (declare (not safe))
                     (cons __tmp244432 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp244437
                                                          __tmp244431))))
                                           (declare (not safe))
                                           (cons __tmp244449 __tmp244430))))
                                    (declare (not safe))
                                    (cons _stx235573_ __tmp244429))))
                             (declare (not safe))
                             (cons '%#begin __tmp244428))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244427 _stx235573_)))))
          (let* ((___stx243243243244_ _stx235573_)
                 (_g235583235603_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx243243243244_)))))
            (let ((___kont243245243246_
                   (lambda (_L235647_ _L235648_)
                     (let ((_method-calls235667_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs235668_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check235669_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check235670_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert235671_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty235672_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?235674_
                                 (lambda ()
                                   (if (let ((__tmp244458
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls235667_))))
                                         (declare (not safe))
                                         (fxzero? __tmp244458))
                                       (if (let ((__tmp244457
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs235668_))))
                                             (declare (not safe))
                                             (fxzero? __tmp244457))
                                           (if (let ((__tmp244456
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check235669_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp244456))
                                               (if (let ((__tmp244455
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check235670_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp244455))
                                                   (let ((__tmp244454
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert235671_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp244454))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?235675_
                                 (lambda ()
                                   (let ((_$e238819_
                                          (let ((__tmp244459
                                                 (let ((__tmp244460
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check235670_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp244460))))
                                            (declare (not safe))
                                            (not __tmp244459))))
                                     (if _$e238819_
                                         _$e238819_
                                         (let ((__tmp244461
                                                (let ((__tmp244462
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert235671_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp244462))))
                                           (declare (not safe))
                                           (not __tmp244461))))))
                                (_lift-unchecked-specializer?235676_
                                 (lambda ()
                                   (if (let ((__tmp244465
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls235667_))))
                                         (declare (not safe))
                                         (fxzero? __tmp244465))
                                       (if (let ((__tmp244464
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs235668_))))
                                             (declare (not safe))
                                             (fxzero? __tmp244464))
                                           (let ((__tmp244463
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check235669_))))
                                             (declare (not safe))
                                             (fxzero? __tmp244463))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L235647_))
                             (let* ((___stx243157243158_ _L235647_)
                                    (_g236189236207_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx243157243158_)))))
                               (let ((___kont243159243160_
                                      (lambda (_L236243_ _L236244_ _L236245_)
                                        (for-each
                                         (lambda (_g236260236262_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g236260236262_
                                              _L236245_
                                              _method-calls235667_
                                              _slot-refs235668_
                                              _class-type-check235669_
                                              _struct-type-check235670_
                                              _struct-type-assert235671_)))
                                         _L236243_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?235674_))
                                            _stx235573_
                                            (let* ((_specializer-id236271_
                                                    (let* ((_id236265_
                                                            (let ((__tmp244615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L235648_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp244615 '"::specialize")))
                   (_specializer-id236268_
                    (let ((__tmp244616
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx235573_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id236265_ __tmp244616))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id236268_))
              _specializer-id236268_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id236278_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?235676_))
                                                        (let* ((_id236273_
                                                                (let ((__tmp244617
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L235648_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp244617
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id236275_
                        (let ((__tmp244618
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx235573_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id236273_ __tmp244618))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id236275_))
                  _lifted-specializer-id236275_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t236280_
                                                    (let ((__tmp244619
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp244619)))
                                                   (_methods236282_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls235667_)))
                                                   (_$methods236286_
                                                    (map (lambda (_id236284_)
                                                           (let ((__tmp244620
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id236284_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp244620)))
                 _methods236282_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g244621_
                                                    (for-each
                                                     (lambda (_g236287236290_
                                                              _g236288236292_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls235667_
                                                          _g236287236290_
                                                          _g236288236292_)))
                                                     _methods236282_
                                                     _$methods236286_))
                                                   (_methods-bind236303_
                                                    (map (lambda (_g236295236298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g236296236300_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind235575_
                      _$t236280_
                      _g236295236298_
                      _g236296236300_)))
                 _methods236282_
                 _$methods236286_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots236305_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs235668_)))
                                                   (_$slots236309_
                                                    (map (lambda (_id236307_)
                                                           (let ((__tmp244622
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id236307_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp244622)))
                 _slots236305_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g244623_
                                                    (for-each
                                                     (lambda (_g236310236313_
                                                              _g236311236315_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs235668_
                                                          _g236310236313_
                                                          _g236311236315_)))
                                                     _slots236305_
                                                     _$slots236309_))
                                                   (_slots-bind236326_
                                                    (map (lambda (_g236318236321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g236319236323_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind235576_
                      _$t236280_
                      _g236318236321_
                      _g236319236323_)))
                 _slots236305_
                 _$slots236309_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check236328_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check235669_)))
                                                   (_$class-check236331_
                                                    (map (lambda (_g244624_)
                                                           (let ((__tmp244625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp244625)))
                 _class-check236328_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g244626_
                                                    (for-each
                                                     (lambda (_g236332236335_
                                                              _g236333236337_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check235669_
                                                          _g236332236335_
                                                          _g236333236337_)))
                                                     _class-check236328_
                                                     _$class-check236331_))
                                                   (_class-check-bind236348_
                                                    (map (lambda (_g236340236343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g236341236345_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind235577_
                      _$t236280_
                      _g236340236343_
                      _g236341236345_)))
                 _class-check236328_
                 _$class-check236331_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all236350_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check235670_
                                                       _struct-type-assert235671_)))
                                                   (_struct-check236352_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all236350_)))
                                                   (_$struct-check236355_
                                                    (map (lambda (_g244627_)
                                                           (let ((__tmp244628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp244628)))
                 _struct-check236352_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g244629_
                                                    (for-each
                                                     (lambda (_g236356236359_
                                                              _g236357236361_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all236350_
                                                          _g236356236359_
                                                          _g236357236361_)))
                                                     _struct-check236352_
                                                     _$struct-check236355_))
                                                   (_struct-check-bind236372_
                                                    (map (lambda (_g236364236367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g236365236369_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind235578_
                      _$t236280_
                      _g236364236367_
                      _g236365236369_)))
                 _struct-check236352_
                 _$struct-check236355_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl236383_
                                                    (lambda (_struct-type-check1236374_
                                                             _struct-type-check2236375_)
                                                      (let* ((_specializer-body236381_
                                                              (map (lambda (_g236376236378_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g236376236378_
                                _L236245_
                                _$t236280_
                                _method-calls235667_
                                _slot-refs235668_
                                _class-type-check235669_
                                _struct-type-check1236374_
                                _struct-type-check2236375_)))
                           _L236243_))
                     (__tmp244630
                      (let ((__tmp244631
                             (let ((__tmp244632
                                    (let ()
                                      (declare (not safe))
                                      (cons _L236245_ _L236244_))))
                               (declare (not safe))
                               (cons __tmp244632 _specializer-body236381_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp244631))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp244630 _stx235573_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl236385_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl236383_
                                                       _struct-check-all236350_
                                                       _empty235672_)))
                                                   (_unchecked-specializer-impl236387_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?235675_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl236383_
                                                           _empty235672_
                                                           _struct-check-all236350_))
                                                        '#f))
                                                   (_specializer-impl236389_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl235579_
                                                       _$t236280_
                                                       _methods-bind236303_
                                                       _slots-bind236326_
                                                       _class-check-bind236348_
                                                       _struct-check-bind236372_
                                                       _specializer-impl236385_
                                                       _lifted-specializer-id236278_
                                                       _unchecked-specializer-impl236387_))))
                                              (let ((__tmp244634
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L235648_)))
                                                    (__tmp244633
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id236271_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp244634
                                                 '" => "
                                                 __tmp244633))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def235580_
                                                 _L235648_
                                                 _specializer-id236271_
                                                 _specializer-impl236389_
                                                 _lifted-specializer-id236278_
                                                 _unchecked-specializer-impl236387_))))))
                                     (___kont243161243162_
                                      (lambda () _stx235573_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx243157243158_))
                                     (let ((_e236196236219_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx243157243158_))))
                                       (let ((_tl236194236224_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e236196236219_)))
                                             (_hd236195236222_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e236196236219_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl236194236224_))
                                             (let ((_e236199236227_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl236194236224_))))
                                               (let ((_tl236197236232_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e236199236227_)))
                                                     (_hd236198236230_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e236199236227_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd236198236230_))
                                                     (let ((_e236202236235_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd236198236230_))))
                                                       (let ((_tl236200236240_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e236202236235_)))
                     (_hd236201236238_
                      (let () (declare (not safe)) (##car _e236202236235_))))
                 (___kont243159243160_
                  _tl236197236232_
                  _tl236200236240_
                  _hd236201236238_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont243161243162_))))
                                             (___kont243161243162_))))
                                     (___kont243161243162_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L235647_))
                                 (let* ((_g236395236414_
                                         (lambda (_g236396236411_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g236396236411_))))
                                        (_g236394236765_
                                         (lambda (_g236396236417_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g236396236417_))
                                               (let ((_e236400236419_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g236396236417_))))
                                                 (let ((_hd236399236422_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e236400236419_)))
                                                       (_tl236398236424_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e236400236419_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl236398236424_))
                                                       (let ((_g244591_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl236398236424_ '0))))
                 (begin
                   (let ((_g244592_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g244591_)
                                (##vector-length _g244591_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g244592_ 2)))
                         (error "Context expects 2 values" _g244592_)))
                   (let ((_target236401236427_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g244591_ 0)))
                         (_tl236403236429_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g244591_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl236403236429_))
                         (letrec ((_loop236404236432_
                                   (lambda (_hd236402236435_
                                            _clause236408236437_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd236402236435_))
                                         (let ((_e236405236440_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd236402236435_))))
                                           (let ((_lp-hd236406236443_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e236405236440_)))
                                                 (_lp-tl236407236445_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e236405236440_))))
                                             (let ((__tmp244614
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd236406236443_
                                                            _clause236408236437_))))
                                               (declare (not safe))
                                               (_loop236404236432_
                                                _lp-tl236407236445_
                                                __tmp244614))))
                                         (let ((_clause236409236448_
                                                (reverse _clause236408236437_)))
                                           ((lambda (_L236451_)
                                              (for-each
                                               (lambda (_clause236464_)
                                                 (let* ((___stx243183243184_
                                                         _clause236464_)
                                                        (_g236467236482_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx243183243184_)))))
                                                   (let ((___kont243185243186_
                                                          (lambda (_L236510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L236511_
                           _L236512_)
                    (for-each
                     (lambda (_g236527236529_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g236527236529_
                          _L236512_
                          _method-calls235667_
                          _slot-refs235668_
                          _class-type-check235669_
                          _struct-type-check235670_
                          _struct-type-assert235671_)))
                     _L236510_)))
                 (___kont243187243188_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx243183243184_))
                                                         (let ((_e236474236494_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx243183243184_))))
                   (let ((_tl236472236499_
                          (let ()
                            (declare (not safe))
                            (##cdr _e236474236494_)))
                         (_hd236473236497_
                          (let ()
                            (declare (not safe))
                            (##car _e236474236494_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd236473236497_))
                         (let ((_e236477236502_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd236473236497_))))
                           (let ((_tl236475236507_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e236477236502_)))
                                 (_hd236476236505_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e236477236502_))))
                             (___kont243185243186_
                              _tl236472236499_
                              _tl236475236507_
                              _hd236476236505_)))
                         (___kont243187243188_))))
                 (___kont243187243188_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp244593
                                                      (lambda (_g236534236537_
                                                               _g236535236539_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g236534236537_
                                                                _g236535236539_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp244593
                                                         '()
                                                         _L236451_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?235674_))
                                                  _stx235573_
                                                  (let* ((_specializer-id236548_
                                                          (let* ((_id236542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244594
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L235648_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp244594 '"::specialize")))
                         (_specializer-id236545_
                          (let ((__tmp244595
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx235573_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id236542_ __tmp244595))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id236545_))
                    _specializer-id236545_))
                 (_lifted-specializer-id236555_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?235676_))
                      (let* ((_id236550_
                              (let ((__tmp244596
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L235648_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp244596
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id236552_
                              (let ((__tmp244597
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx235573_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id236550_
                                 __tmp244597))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id236552_))
                        _lifted-specializer-id236552_)
                      '#f))
                 (_$t236557_
                  (let ((__tmp244598 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp244598)))
                 (_methods236559_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls235667_)))
                 (_$methods236563_
                  (map (lambda (_id236561_)
                         (let ((__tmp244599 (gensym _id236561_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp244599)))
                       _methods236559_))
                 (_g244600_
                  (for-each
                   (lambda (_g236564236567_ _g236565236569_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls235667_
                        _g236564236567_
                        _g236565236569_)))
                   _methods236559_
                   _$methods236563_))
                 (_methods-bind236580_
                  (map (lambda (_g236572236575_ _g236573236577_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind235575_
                            _$t236557_
                            _g236572236575_
                            _g236573236577_)))
                       _methods236559_
                       _$methods236563_))
                 (_slots236582_
                  (let () (declare (not safe)) (hash-keys _slot-refs235668_)))
                 (_$slots236586_
                  (map (lambda (_id236584_)
                         (let ((__tmp244601 (gensym _id236584_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp244601)))
                       _slots236582_))
                 (_g244602_
                  (for-each
                   (lambda (_g236587236590_ _g236588236592_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs235668_
                        _g236587236590_
                        _g236588236592_)))
                   _slots236582_
                   _$slots236586_))
                 (_slots-bind236603_
                  (map (lambda (_g236595236598_ _g236596236600_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind235576_
                            _$t236557_
                            _g236595236598_
                            _g236596236600_)))
                       _slots236582_
                       _$slots236586_))
                 (_class-check236605_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check235669_)))
                 (_$class-check236608_
                  (map (lambda (_g244603_)
                         (let ((__tmp244604 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp244604)))
                       _class-check236605_))
                 (_g244605_
                  (for-each
                   (lambda (_g236609236612_ _g236610236614_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check235669_
                        _g236609236612_
                        _g236610236614_)))
                   _class-check236605_
                   _$class-check236608_))
                 (_class-check-bind236625_
                  (map (lambda (_g236617236620_ _g236618236622_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind235577_
                            _$t236557_
                            _g236617236620_
                            _g236618236622_)))
                       _class-check236605_
                       _$class-check236608_))
                 (_struct-check-all236627_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check235670_
                     _struct-type-assert235671_)))
                 (_struct-check236629_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all236627_)))
                 (_$struct-check236632_
                  (map (lambda (_g244606_)
                         (let ((__tmp244607 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp244607)))
                       _struct-check236629_))
                 (_g244608_
                  (for-each
                   (lambda (_g236633236636_ _g236634236638_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all236627_
                        _g236633236636_
                        _g236634236638_)))
                   _struct-check236629_
                   _$struct-check236632_))
                 (_struct-check-bind236649_
                  (map (lambda (_g236641236644_ _g236642236646_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind235578_
                            _$t236557_
                            _g236641236644_
                            _g236642236646_)))
                       _struct-check236629_
                       _$struct-check236632_))
                 (_make-specializer-impl236756_
                  (lambda (_struct-type-check1236651_
                           _struct-type-check2236652_)
                    (let* ((_specializer-clauses236754_
                            (map (lambda (_clause236654_)
                                   (let* ((___stx243203243204_ _clause236654_)
                                          (_g236657236672_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx243203243204_)))))
                                     (let ((___kont243205243206_
                                            (lambda (_L236700_
                                                     _L236701_
                                                     _L236702_)
                                              (let* ((_body236742_
                                                      (map (lambda (_g236737236739_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g236737236739_
                        _L236702_
                        _$t236557_
                        _method-calls235667_
                        _slot-refs235668_
                        _class-type-check235669_
                        _struct-type-check1236651_
                        _struct-type-check2236652_)))
                   _L236700_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp244609
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L236702_
                                                              _L236701_))))
                                                (declare (not safe))
                                                (cons __tmp244609
                                                      _body236742_))))
                                           (___kont243207243208_
                                            (lambda () _clause236654_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx243203243204_))
                                           (let ((_e236664236684_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx243203243204_))))
                                             (let ((_tl236662236689_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e236664236684_)))
                                                   (_hd236663236687_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e236664236684_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd236663236687_))
                                                   (let ((_e236667236692_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd236663236687_))))
                                                     (let ((_tl236665236697_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e236667236692_)))
                                                           (_hd236666236695_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e236667236692_))))
                                                       (___kont243205243206_
                                                        _tl236662236689_
                                                        _tl236665236697_
                                                        _hd236666236695_)))
                                                   (___kont243207243208_))))
                                           (___kont243207243208_)))))
                                 (let ((__tmp244610
                                        (lambda (_g236746236749_
                                                 _g236747236751_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g236746236749_
                                                  _g236747236751_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp244610 '() _L236451_))))
                           (__tmp244611
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses236754_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244611 _stx235573_))))
                 (_specializer-impl236758_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl236756_
                     _struct-check-all236627_
                     _empty235672_)))
                 (_unchecked-specializer-impl236760_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?235675_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl236756_
                         _empty235672_
                         _struct-check-all236627_))
                      '#f))
                 (_specializer-impl236762_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl235579_
                     _$t236557_
                     _methods-bind236580_
                     _slots-bind236603_
                     _class-check-bind236625_
                     _struct-check-bind236649_
                     _specializer-impl236758_
                     _lifted-specializer-id236555_
                     _unchecked-specializer-impl236760_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp244613
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L235648_)))
                                                          (__tmp244612
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id236548_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp244613
                                                       '" => "
                                                       __tmp244612))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def235580_
                                                       _L235648_
                                                       _specializer-id236548_
                                                       _specializer-impl236762_
                                                       _lifted-specializer-id236555_
                                                       _unchecked-specializer-impl236760_)))))
                                            _clause236409236448_))))))
                           (let ()
                             (declare (not safe))
                             (_loop236404236432_ _target236401236427_ '())))
                         (let ()
                           (declare (not safe))
                           (_g236395236414_ _g236396236417_))))))
               (let ()
                 (declare (not safe))
                 (_g236395236414_ _g236396236417_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g236395236414_
                                                  _g236396236417_))))))
                                   (declare (not safe))
                                   (_g236394236765_ _L235647_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L235647_))
                                     (let* ((_g236768236798_
                                             (lambda (_g236769236795_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g236769236795_))))
                                            (_g236767237486_
                                             (lambda (_g236769236801_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g236769236801_))
                                                   (let ((_e236775236803_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g236769236801_))))
                                                     (let ((_hd236774236806_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e236775236803_)))
                                                           (_tl236773236808_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e236775236803_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl236773236808_))
                                                           (let ((_e236778236811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl236773236808_))))
                     (let ((_hd236777236814_
                            (let ()
                              (declare (not safe))
                              (##car _e236778236811_)))
                           (_tl236776236816_
                            (let ()
                              (declare (not safe))
                              (##cdr _e236778236811_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd236777236814_))
                           (let ((_e236781236819_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd236777236814_))))
                             (let ((_hd236780236822_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e236781236819_)))
                                   (_tl236779236824_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e236781236819_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd236780236822_))
                                   (let ((_e236784236827_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd236780236822_))))
                                     (let ((_hd236783236830_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e236784236827_)))
                                           (_tl236782236832_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e236784236827_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd236783236830_))
                                           (let ((_e236787236835_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd236783236830_))))
                                             (let ((_hd236786236838_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e236787236835_)))
                                                   (_tl236785236840_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e236787236835_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl236785236840_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl236782236832_))
                                                       (let ((_e236790236843_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl236782236832_))))
                 (let ((_hd236789236846_
                        (let () (declare (not safe)) (##car _e236790236843_)))
                       (_tl236788236848_
                        (let () (declare (not safe)) (##cdr _e236790236843_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl236788236848_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl236779236824_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl236776236816_))
                               (let ((_e236793236851_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl236776236816_))))
                                 (let ((_hd236792236854_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e236793236851_)))
                                       (_tl236791236856_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e236793236851_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl236791236856_))
                                       ((lambda (_L236859_ _L236860_ _L236861_)
                                          (let* ((_g236884236902_
                                                  (lambda (_g236885236899_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g236885236899_))))
                                                 (_g236883236953_
                                                  (lambda (_g236885236905_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g236885236905_))
                                                        (let ((_e236891236907_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g236885236905_))))
                  (let ((_hd236890236910_
                         (let () (declare (not safe)) (##car _e236891236907_)))
                        (_tl236889236912_
                         (let ()
                           (declare (not safe))
                           (##cdr _e236891236907_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl236889236912_))
                        (let ((_e236894236915_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl236889236912_))))
                          (let ((_hd236893236918_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e236894236915_)))
                                (_tl236892236920_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e236894236915_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd236893236918_))
                                (let ((_e236897236923_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd236893236918_))))
                                  (let ((_hd236896236926_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e236897236923_)))
                                        (_tl236895236928_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e236897236923_))))
                                    ((lambda (_L236931_ _L236932_ _L236933_)
                                       (for-each
                                        (lambda (_g236948236950_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g236948236950_
                                             _L236933_
                                             _method-calls235667_
                                             _slot-refs235668_
                                             _class-type-check235669_
                                             _struct-type-check235670_
                                             _struct-type-assert235671_)))
                                        _L236931_))
                                     _tl236892236920_
                                     _tl236895236928_
                                     _hd236896236926_)))
                                (let ()
                                  (declare (not safe))
                                  (_g236884236902_ _g236885236905_)))))
                        (let ()
                          (declare (not safe))
                          (_g236884236902_ _g236885236905_)))))
                (let ()
                  (declare (not safe))
                  (_g236884236902_ _g236885236905_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g236883236953_ _L236860_))
                                          (let* ((_g236956236975_
                                                  (lambda (_g236957236972_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g236957236972_))))
                                                 (_g236955237094_
                                                  (lambda (_g236957236978_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g236957236978_))
                                                        (let ((_e236961236980_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g236957236978_))))
                  (let ((_hd236960236983_
                         (let () (declare (not safe)) (##car _e236961236980_)))
                        (_tl236959236985_
                         (let ()
                           (declare (not safe))
                           (##cdr _e236961236980_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl236959236985_))
                        (let ((_g244554_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl236959236985_
                                  '0))))
                          (begin
                            (let ((_g244555_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g244554_)
                                         (##vector-length _g244554_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g244555_ 2)))
                                  (error "Context expects 2 values"
                                         _g244555_)))
                            (let ((_target236962236988_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g244554_ 0)))
                                  (_tl236964236990_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g244554_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl236964236990_))
                                  (letrec ((_loop236965236993_
                                            (lambda (_hd236963236996_
                                                     _clause236969236998_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd236963236996_))
                                                  (let ((_e236966237001_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd236963236996_))))
                                                    (let ((_lp-hd236967237004_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e236966237001_)))
                                                          (_lp-tl236968237006_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e236966237001_))))
                                                      (let ((__tmp244557
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd236967237004_ _clause236969236998_))))
                (declare (not safe))
                (_loop236965236993_ _lp-tl236968237006_ __tmp244557))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause236970237009_
                                                         (reverse _clause236969236998_)))
                                                    ((lambda (_L237012_)
                                                       (for-each
                                                        (lambda (_clause237025_)
                                                          (let* ((_g237027237042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g237028237039_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g237028237039_))))
                         (_g237026237084_
                          (lambda (_g237028237045_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g237028237045_))
                                (let ((_e237034237047_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g237028237045_))))
                                  (let ((_hd237033237050_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237034237047_)))
                                        (_tl237032237052_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237034237047_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd237033237050_))
                                        (let ((_e237037237055_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd237033237050_))))
                                          (let ((_hd237036237058_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e237037237055_)))
                                                (_tl237035237060_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e237037237055_))))
                                            ((lambda (_L237063_
                                                      _L237064_
                                                      _L237065_)
                                               (for-each
                                                (lambda (_g237079237081_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g237079237081_
                                                     _L237065_
                                                     _method-calls235667_
                                                     _slot-refs235668_
                                                     _class-type-check235669_
                                                     _struct-type-check235670_
                                                     _struct-type-assert235671_)))
                                                _L237063_))
                                             _tl237032237052_
                                             _tl237035237060_
                                             _hd237036237058_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g237027237042_ _g237028237045_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g237027237042_ _g237028237045_))))))
                    (declare (not safe))
                    (_g237026237084_ _clause237025_)))
                (let ((__tmp244556
                       (lambda (_g237086237089_ _g237087237091_)
                         (let ()
                           (declare (not safe))
                           (cons _g237086237089_ _g237087237091_)))))
                  (declare (not safe))
                  (foldr1 __tmp244556 '() _L237012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause236970237009_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop236965236993_
                                       _target236962236988_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g236956236975_ _g236957236978_))))))
                        (let ()
                          (declare (not safe))
                          (_g236956236975_ _g236957236978_)))))
                (let ()
                  (declare (not safe))
                  (_g236956236975_ _g236957236978_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g236955237094_ _L236859_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?235674_))
                                              _stx235573_
                                              (let* ((_specializer-id237103_
                                                      (let* ((_id237097_
                                                              (let ((__tmp244558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L235648_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp244558 '"::specialize")))
                     (_specializer-id237100_
                      (let ((__tmp244559
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx235573_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id237097_ __tmp244559))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id237100_))
                _specializer-id237100_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id237110_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?235676_))
                                                          (let* ((_id237105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244560
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L235648_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp244560
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id237107_
                          (let ((__tmp244561
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx235573_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id237105_ __tmp244561))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id237107_))
                    _lifted-specializer-id237107_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t237112_
                                                      (let ((__tmp244562
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp244562)))
                                                     (_methods237114_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls235667_)))
                                                     (_$methods237118_
                                                      (map (lambda (_id237116_)
                                                             (let ((__tmp244563
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id237116_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp244563)))
                   _methods237114_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g244564_
                                                      (for-each
                                                       (lambda (_g237119237122_
                                                                _g237120237124_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls235667_
                                                            _g237119237122_
                                                            _g237120237124_)))
                                                       _methods237114_
                                                       _$methods237118_))
                                                     (_methods-bind237135_
                                                      (map (lambda (_g237127237130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g237128237132_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind235575_
                        _$t237112_
                        _g237127237130_
                        _g237128237132_)))
                   _methods237114_
                   _$methods237118_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots237137_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs235668_)))
                                                     (_$slots237141_
                                                      (map (lambda (_id237139_)
                                                             (let ((__tmp244565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id237139_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp244565)))
                   _slots237137_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g244566_
                                                      (for-each
                                                       (lambda (_g237142237145_
                                                                _g237143237147_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs235668_
                                                            _g237142237145_
                                                            _g237143237147_)))
                                                       _slots237137_
                                                       _$slots237141_))
                                                     (_slots-bind237158_
                                                      (map (lambda (_g237150237153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g237151237155_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind235576_
                        _$t237112_
                        _g237150237153_
                        _g237151237155_)))
                   _slots237137_
                   _$slots237141_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check237160_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check235669_)))
                                                     (_$class-check237163_
                                                      (map (lambda (_g244567_)
                                                             (let ((__tmp244568
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp244568)))
                   _class-check237160_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g244569_
                                                      (for-each
                                                       (lambda (_g237164237167_
                                                                _g237165237169_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check235669_
                                                            _g237164237167_
                                                            _g237165237169_)))
                                                       _class-check237160_
                                                       _$class-check237163_))
                                                     (_class-check-bind237180_
                                                      (map (lambda (_g237172237175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g237173237177_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind235577_
                        _$t237112_
                        _g237172237175_
                        _g237173237177_)))
                   _class-check237160_
                   _$class-check237163_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all237182_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check235670_
                                                         _struct-type-assert235671_)))
                                                     (_struct-check237184_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all237182_)))
                                                     (_$struct-check237187_
                                                      (map (lambda (_g244570_)
                                                             (let ((__tmp244571
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp244571)))
                   _struct-check237184_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g244572_
                                                      (for-each
                                                       (lambda (_g237188237191_
                                                                _g237189237193_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all237182_
                                                            _g237188237191_
                                                            _g237189237193_)))
                                                       _struct-check237184_
                                                       _$struct-check237187_))
                                                     (_struct-check-bind237204_
                                                      (map (lambda (_g237196237199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g237197237201_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind235578_
                        _$t237112_
                        _g237196237199_
                        _g237197237201_)))
                   _struct-check237184_
                   _$struct-check237187_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr237303_
                                                      (lambda (_struct-type-check1237206_
                                                               _struct-type-check2237207_)
                                                        (let* ((_g237209237227_
                                                                (lambda (_g237210237224_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g237210237224_))))
                       (_g237208237300_
                        (lambda (_g237210237230_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g237210237230_))
                              (let ((_e237216237232_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g237210237230_))))
                                (let ((_hd237215237235_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237216237232_)))
                                      (_tl237214237237_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237216237232_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237214237237_))
                                      (let ((_e237219237240_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237214237237_))))
                                        (let ((_hd237218237243_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237219237240_)))
                                              (_tl237217237245_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237219237240_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd237218237243_))
                                              (let ((_e237222237248_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd237218237243_))))
                                                (let ((_hd237221237251_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e237222237248_)))
                                                      (_tl237220237253_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e237222237248_))))
                                                  ((lambda (_L237256_
                                                            _L237257_
                                                            _L237258_)
                                                     (let* ((_body237298_
                                                             (map (lambda (_g237293237295_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g237293237295_
                               _L237258_
                               _$t237112_
                               _method-calls235667_
                               _slot-refs235668_
                               _class-type-check235669_
                               _struct-type-check1237206_
                               _struct-type-check2237207_)))
                          _L237256_))
                    (__tmp244573
                     (let ((__tmp244574
                            (let ((__tmp244575
                                   (let ()
                                     (declare (not safe))
                                     (cons _L237258_ _L237257_))))
                              (declare (not safe))
                              (cons __tmp244575 _body237298_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp244574))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp244573 _L236860_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl237217237245_
                                                   _tl237220237253_
                                                   _hd237221237251_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g237209237227_
                                                 _g237210237230_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237209237227_ _g237210237230_)))))
                              (let ()
                                (declare (not safe))
                                (_g237209237227_ _g237210237230_))))))
                  (declare (not safe))
                  (_g237208237300_ _L236860_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr237464_
                                                      (lambda (_struct-type-check1237305_
                                                               _struct-type-check2237306_)
                                                        (let* ((_g237308237327_
                                                                (lambda (_g237309237324_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g237309237324_))))
                       (_g237307237461_
                        (lambda (_g237309237330_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g237309237330_))
                              (let ((_e237313237332_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g237309237330_))))
                                (let ((_hd237312237335_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237313237332_)))
                                      (_tl237311237337_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237313237332_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl237311237337_))
                                      (let ((_g244576_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl237311237337_
                                                '0))))
                                        (begin
                                          (let ((_g244577_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g244576_)
                                                       (##vector-length
                                                        _g244576_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g244577_ 2)))
                                                (error "Context expects 2 values"
                                                       _g244577_)))
                                          (let ((_target237314237340_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g244576_ 0)))
                                                (_tl237316237342_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g244576_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl237316237342_))
                                                (letrec ((_loop237317237345_
                                                          (lambda (_hd237315237348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause237321237350_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd237315237348_))
                        (let ((_e237318237353_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd237315237348_))))
                          (let ((_lp-hd237319237356_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e237318237353_)))
                                (_lp-tl237320237358_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e237318237353_))))
                            (let ((__tmp244581
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd237319237356_
                                           _clause237321237350_))))
                              (declare (not safe))
                              (_loop237317237345_
                               _lp-tl237320237358_
                               __tmp244581))))
                        (let ((_clause237322237361_
                               (reverse _clause237321237350_)))
                          ((lambda (_L237364_)
                             (let* ((_clauses237459_
                                     (map (lambda (_clause237379_)
                                            (let* ((___stx243223243224_
                                                    _clause237379_)
                                                   (_g237382237397_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx243223243224_)))))
                                              (let ((___kont243225243226_
                                                     (lambda (_L237425_
                                                              _L237426_
                                                              _L237427_)
                                                       (let* ((_body237447_
                                                               (map (lambda (_g237442237444_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g237442237444_
                                 _L237427_
                                 _$t237112_
                                 _method-calls235667_
                                 _slot-refs235668_
                                 _class-type-check235669_
                                 _struct-type-check1237305_
                                 _struct-type-check2237306_)))
                            _L237425_))
                      (__tmp244578
                       (let ()
                         (declare (not safe))
                         (cons _L237427_ _L237426_))))
                 (declare (not safe))
                 (cons __tmp244578 _body237447_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243227243228_
                                                     (lambda ()
                                                       _clause237379_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx243223243224_))
                                                    (let ((_e237389237409_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx243223243224_))))
                                                      (let ((_tl237387237414_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e237389237409_)))
                    (_hd237388237412_
                     (let () (declare (not safe)) (##car _e237389237409_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd237388237412_))
                    (let ((_e237392237417_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd237388237412_))))
                      (let ((_tl237390237422_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237392237417_)))
                            (_hd237391237420_
                             (let ()
                               (declare (not safe))
                               (##car _e237392237417_))))
                        (___kont243225243226_
                         _tl237387237414_
                         _tl237390237422_
                         _hd237391237420_)))
                    (___kont243227243228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243227243228_)))))
                                          (let ((__tmp244579
                                                 (lambda (_g237451237454_
                                                          _g237452237456_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g237451237454_
                                                           _g237452237456_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp244579
                                                    '()
                                                    _L237364_))))
                                    (__tmp244580
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses237459_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp244580 _L236859_)))
                           _clause237322237361_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop237317237345_
                                                     _target237314237340_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g237308237327_
                                                   _g237309237330_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237308237327_ _g237309237330_)))))
                              (let ()
                                (declare (not safe))
                                (_g237308237327_ _g237309237330_))))))
                  (declare (not safe))
                  (_g237307237461_ _L236859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl237469_
                                                      (lambda (_specializer-lambda-expr237466_
                                                               _specializer-case-lambda-expr237467_)
                                                        (let ((__tmp244582
                                                               (let ((__tmp244583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp244585
                                     (let ((__tmp244586
                                            (let ((__tmp244588
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L236861_ '())))
                                                  (__tmp244587
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr237466_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp244588 __tmp244587))))
                                       (declare (not safe))
                                       (cons __tmp244586 '())))
                                    (__tmp244584
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr237467_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp244585 __tmp244584))))
                         (declare (not safe))
                         (cons '%#let-values __tmp244583))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp244582 _stx235573_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr237471_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr237303_
                                                         _struct-check-all237182_
                                                         _empty235672_)))
                                                     (_specializer-case-lambda-expr237473_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr237464_
                                                         _struct-check-all237182_
                                                         _empty235672_)))
                                                     (_specializer-impl237475_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl237469_
                                                         _specializer-lambda-expr237471_
                                                         _specializer-case-lambda-expr237473_)))
                                                     (_unchecked-specializer-lambda-expr237477_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?235675_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr237303_
                                                             _empty235672_
                                                             _struct-check-all237182_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr237479_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?235675_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr237464_
                                                             _empty235672_
                                                             _struct-check-all237182_))
                                                          '#f))
                                                     (_unchecked-specializer-impl237481_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?235675_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl237469_
                                                             _unchecked-specializer-lambda-expr237477_
                                                             _unchecked-specializer-case-lambda-expr237479_))
                                                          '#f))
                                                     (_specializer-impl237483_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl235579_
                                                         _$t237112_
                                                         _methods-bind237135_
                                                         _slots-bind237158_
                                                         _class-check-bind237180_
                                                         _struct-check-bind237204_
                                                         _specializer-impl237475_
                                                         _lifted-specializer-id237110_
                                                         _unchecked-specializer-impl237481_))))
                                                (let ((__tmp244590
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L235648_)))
                                                      (__tmp244589
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id237103_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp244590
                                                   '" => "
                                                   __tmp244589))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def235580_
                                                   _L235648_
                                                   _specializer-id237103_
                                                   _specializer-impl237483_
                                                   _lifted-specializer-id237110_
                                                   _unchecked-specializer-impl237481_)))))
                                        _hd236792236854_
                                        _hd236789236846_
                                        _hd236786236838_)
                                       (let ()
                                         (declare (not safe))
                                         (_g236768236798_ _g236769236801_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g236768236798_ _g236769236801_)))
                           (let ()
                             (declare (not safe))
                             (_g236768236798_ _g236769236801_)))
                       (let ()
                         (declare (not safe))
                         (_g236768236798_ _g236769236801_)))))
               (let () (declare (not safe)) (_g236768236798_ _g236769236801_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g236768236798_
                                                      _g236769236801_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g236768236798_
                                              _g236769236801_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g236768236798_ _g236769236801_)))))
                           (let ()
                             (declare (not safe))
                             (_g236768236798_ _g236769236801_)))))
                   (let ()
                     (declare (not safe))
                     (_g236768236798_ _g236769236801_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g236768236798_
                                                      _g236769236801_))))))
                                       (declare (not safe))
                                       (_g236767237486_ _L235647_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L235647_))
                                         (let* ((_g237489237542_
                                                 (lambda (_g237490237539_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g237490237539_))))
                                                (_g237488238814_
                                                 (lambda (_g237490237545_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g237490237545_))
                                                       (let ((_e237498237547_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g237490237545_))))
                 (let ((_hd237497237550_
                        (let () (declare (not safe)) (##car _e237498237547_)))
                       (_tl237496237552_
                        (let () (declare (not safe)) (##cdr _e237498237547_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd237497237550_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd237497237550_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl237496237552_))
                               (let ((_e237501237555_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl237496237552_))))
                                 (let ((_hd237500237558_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e237501237555_)))
                                       (_tl237499237560_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e237501237555_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd237500237558_))
                                       (let ((_e237504237563_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd237500237558_))))
                                         (let ((_hd237503237566_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e237504237563_)))
                                               (_tl237502237568_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e237504237563_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd237503237566_))
                                               (let ((_e237507237571_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd237503237566_))))
                                                 (let ((_hd237506237574_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e237507237571_)))
                                                       (_tl237505237576_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e237507237571_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd237506237574_))
                                                       (let ((_e237510237579_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd237506237574_))))
                 (let ((_hd237509237582_
                        (let () (declare (not safe)) (##car _e237510237579_)))
                       (_tl237508237584_
                        (let () (declare (not safe)) (##cdr _e237510237579_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl237508237584_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl237505237576_))
                           (let ((_e237513237587_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl237505237576_))))
                             (let ((_hd237512237590_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e237513237587_)))
                                   (_tl237511237592_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e237513237587_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd237512237590_))
                                   (let ((_e237516237595_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd237512237590_))))
                                     (let ((_hd237515237598_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e237516237595_)))
                                           (_tl237514237600_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e237516237595_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd237515237598_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd237515237598_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl237514237600_))
                                                   (let ((_e237519237603_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl237514237600_))))
                                                     (let ((_hd237518237606_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e237519237603_)))
                                                           (_tl237517237608_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e237519237603_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd237518237606_))
                                                           (let ((_e237522237611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd237518237606_))))
                     (let ((_hd237521237614_
                            (let ()
                              (declare (not safe))
                              (##car _e237522237611_)))
                           (_tl237520237616_
                            (let ()
                              (declare (not safe))
                              (##cdr _e237522237611_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd237521237614_))
                           (let ((_e237525237619_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd237521237614_))))
                             (let ((_hd237524237622_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e237525237619_)))
                                   (_tl237523237624_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e237525237619_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd237524237622_))
                                   (let ((_e237528237627_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd237524237622_))))
                                     (let ((_hd237527237630_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e237528237627_)))
                                           (_tl237526237632_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e237528237627_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl237526237632_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl237523237624_))
                                               (let ((_e237531237635_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl237523237624_))))
                                                 (let ((_hd237530237638_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e237531237635_)))
                                                       (_tl237529237640_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e237531237635_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl237529237640_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl237520237616_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl237517237608_))
                       (let ((_e237534237643_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl237517237608_))))
                         (let ((_hd237533237646_
                                (let ()
                                  (declare (not safe))
                                  (##car _e237534237643_)))
                               (_tl237532237648_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e237534237643_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl237532237648_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl237511237592_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl237502237568_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl237499237560_))
                                           (let ((_e237537237651_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl237499237560_))))
                                             (let ((_hd237536237654_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e237537237651_)))
                                                   (_tl237535237656_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e237537237651_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl237535237656_))
                                                   ((lambda (_L237659_
                                                             _L237660_
                                                             _L237661_
                                                             _L237662_
                                                             _L237663_)
                                                      (let* ((_g237702237764_
                                                              (lambda (_g237703237761_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g237703237761_))))
                     (_g237701238811_
                      (lambda (_g237703237767_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g237703237767_))
                            (let ((_e237711237769_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g237703237767_))))
                              (let ((_hd237710237772_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237711237769_)))
                                    (_tl237709237774_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237711237769_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd237710237772_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd237710237772_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl237709237774_))
                                            (let ((_e237714237777_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl237709237774_))))
                                              (let ((_hd237713237780_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e237714237777_)))
                                                    (_tl237712237782_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e237714237777_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl237712237782_))
                                                    (let ((_e237717237785_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl237712237782_))))
                                                      (let ((_hd237716237788_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e237717237785_)))
                    (_tl237715237790_
                     (let () (declare (not safe)) (##cdr _e237717237785_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd237716237788_))
                    (let ((_e237720237793_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd237716237788_))))
                      (let ((_hd237719237796_
                             (let ()
                               (declare (not safe))
                               (##car _e237720237793_)))
                            (_tl237718237798_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237720237793_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd237719237796_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd237719237796_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl237718237798_))
                                    (let ((_e237723237801_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl237718237798_))))
                                      (let ((_hd237722237804_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e237723237801_)))
                                            (_tl237721237806_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e237723237801_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd237722237804_))
                                            (let ((_e237726237809_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd237722237804_))))
                                              (let ((_hd237725237812_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e237726237809_)))
                                                    (_tl237724237814_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e237726237809_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd237725237812_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd237725237812_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl237724237814_))
                                                            (let ((_e237729237817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl237724237814_))))
                      (let ((_hd237728237820_
                             (let ()
                               (declare (not safe))
                               (##car _e237729237817_)))
                            (_tl237727237822_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237729237817_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl237727237822_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl237721237806_))
                                (let ((_e237732237825_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl237721237806_))))
                                  (let ((_hd237731237828_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237732237825_)))
                                        (_tl237730237830_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237732237825_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd237731237828_))
                                        (let ((_e237735237833_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd237731237828_))))
                                          (let ((_hd237734237836_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e237735237833_)))
                                                (_tl237733237838_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e237735237833_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd237734237836_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd237734237836_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl237733237838_))
                                                        (let ((_e237738237841_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl237733237838_))))
                  (let ((_hd237737237844_
                         (let () (declare (not safe)) (##car _e237738237841_)))
                        (_tl237736237846_
                         (let ()
                           (declare (not safe))
                           (##cdr _e237738237841_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl237736237846_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237730237830_))
                            (let ((_e237741237849_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237730237830_))))
                              (let ((_hd237740237852_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237741237849_)))
                                    (_tl237739237854_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237741237849_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd237740237852_))
                                    (let ((_e237744237857_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd237740237852_))))
                                      (let ((_hd237743237860_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e237744237857_)))
                                            (_tl237742237862_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e237744237857_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd237743237860_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd237743237860_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl237742237862_))
                                                    (let ((_e237747237865_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl237742237862_))))
                                                      (let ((_hd237746237868_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e237747237865_)))
                    (_tl237745237870_
                     (let () (declare (not safe)) (##cdr _e237747237865_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl237745237870_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl237739237854_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl237739237854_))
                                  '1)
                            (let ((_g244466_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl237739237854_
                                      '1))))
                              (begin
                                (let ((_g244467_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g244466_)
                                             (##vector-length _g244466_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g244467_ 2)))
                                      (error "Context expects 2 values"
                                             _g244467_)))
                                (let ((_target237748237873_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244466_ 0)))
                                      (_tl237750237875_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244466_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237750237875_))
                                      (let ((_e237759237878_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237750237875_))))
                                        (let ((_hd237758237881_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237759237878_)))
                                              (_tl237757237883_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237759237878_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237757237883_))
                                              (letrec ((_loop237751237886_
                                                        (lambda (_hd237749237889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref237755237891_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd237749237889_))
                      (let ((_e237752237894_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd237749237889_))))
                        (let ((_lp-hd237753237897_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237752237894_)))
                              (_lp-tl237754237899_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237752237894_))))
                          (let ((__tmp244553
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd237753237897_
                                         _kw-ref237755237891_))))
                            (declare (not safe))
                            (_loop237751237886_
                             _lp-tl237754237899_
                             __tmp244553))))
                      (let ((_kw-ref237756237902_
                             (reverse _kw-ref237755237891_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl237715237790_))
                            ((lambda (_L237905_
                                      _L237906_
                                      _L237907_
                                      _L237908_
                                      _L237909_)
                               (let* ((_kw-count237960_
                                       (length (let ((__tmp244468
                                                      (lambda (_g237952237955_
                                                               _g237953237957_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g237952237955_
                                                                _g237953237957_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp244468
                                                         '()
                                                         _L237906_))))
                                      (_self-index237962_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count237960_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L237661_))
                                     (let* ((_g237965237979_
                                             (lambda (_g237966237976_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g237966237976_))))
                                            (_g237964238150_
                                             (lambda (_g237966237982_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g237966237982_))
                                                   (let ((_e237971237984_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g237966237982_))))
                                                     (let ((_hd237970237987_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e237971237984_)))
                                                           (_tl237969237989_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e237971237984_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl237969237989_))
                                                           (let ((_e237974237992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl237969237989_))))
                     (let ((_hd237973237995_
                            (let ()
                              (declare (not safe))
                              (##car _e237974237992_)))
                           (_tl237972237997_
                            (let ()
                              (declare (not safe))
                              (##cdr _e237974237992_))))
                       ((lambda (_L238000_ _L238001_)
                          (let ((_self238017_
                                 (list-ref _L238001_ _self-index237962_)))
                            (for-each
                             (lambda (_g238018238020_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g238018238020_
                                  _self238017_
                                  _method-calls235667_
                                  _slot-refs235668_
                                  _class-type-check235669_
                                  _struct-type-check235670_
                                  _struct-type-assert235671_)))
                             _L238000_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?235674_))
                                _stx235573_
                                (let* ((_specializer-id238029_
                                        (let* ((_id238023_
                                                (let ((__tmp244519
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L235648_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp244519
                                                   '"::specialize")))
                                               (_specializer-id238026_
                                                (let ((__tmp244520
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx235573_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id238023_
                                                   __tmp244520))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id238026_))
                                          _specializer-id238026_))
                                       (_lifted-specializer-id238036_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?235676_))
                                            (let* ((_id238031_
                                                    (let ((__tmp244521
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L235648_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp244521
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id238033_
                                                    (let ((__tmp244522
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx235573_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id238031_
                                                       __tmp244522))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id238033_))
                                              _lifted-specializer-id238033_)
                                            '#f))
                                       (_$t238038_
                                        (let ((__tmp244523 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp244523)))
                                       (_methods238040_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls235667_)))
                                       (_$methods238044_
                                        (map (lambda (_id238042_)
                                               (let ((__tmp244524
                                                      (gensym _id238042_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp244524)))
                                             _methods238040_))
                                       (_g244525_
                                        (for-each
                                         (lambda (_g238045238048_
                                                  _g238046238050_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls235667_
                                              _g238045238048_
                                              _g238046238050_)))
                                         _methods238040_
                                         _$methods238044_))
                                       (_methods-bind238061_
                                        (map (lambda (_g238053238056_
                                                      _g238054238058_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind235575_
                                                  _$t238038_
                                                  _g238053238056_
                                                  _g238054238058_)))
                                             _methods238040_
                                             _$methods238044_))
                                       (_slots238063_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs235668_)))
                                       (_$slots238067_
                                        (map (lambda (_id238065_)
                                               (let ((__tmp244526
                                                      (gensym _id238065_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp244526)))
                                             _slots238063_))
                                       (_g244527_
                                        (for-each
                                         (lambda (_g238068238071_
                                                  _g238069238073_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs235668_
                                              _g238068238071_
                                              _g238069238073_)))
                                         _slots238063_
                                         _$slots238067_))
                                       (_slots-bind238084_
                                        (map (lambda (_g238076238079_
                                                      _g238077238081_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind235576_
                                                  _$t238038_
                                                  _g238076238079_
                                                  _g238077238081_)))
                                             _slots238063_
                                             _$slots238067_))
                                       (_class-check238086_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check235669_)))
                                       (_$class-check238089_
                                        (map (lambda (_g244528_)
                                               (let ((__tmp244529
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp244529)))
                                             _class-check238086_))
                                       (_g244530_
                                        (for-each
                                         (lambda (_g238090238093_
                                                  _g238091238095_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check235669_
                                              _g238090238093_
                                              _g238091238095_)))
                                         _class-check238086_
                                         _$class-check238089_))
                                       (_class-check-bind238106_
                                        (map (lambda (_g238098238101_
                                                      _g238099238103_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind235577_
                                                  _$t238038_
                                                  _g238098238101_
                                                  _g238099238103_)))
                                             _class-check238086_
                                             _$class-check238089_))
                                       (_struct-check-all238108_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check235670_
                                           _struct-type-assert235671_)))
                                       (_struct-check238110_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all238108_)))
                                       (_$struct-check238113_
                                        (map (lambda (_g244531_)
                                               (let ((__tmp244532
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp244532)))
                                             _struct-check238110_))
                                       (_g244533_
                                        (for-each
                                         (lambda (_g238114238117_
                                                  _g238115238119_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all238108_
                                              _g238114238117_
                                              _g238115238119_)))
                                         _struct-check238110_
                                         _$struct-check238113_))
                                       (_struct-check-bind238130_
                                        (map (lambda (_g238122238125_
                                                      _g238123238127_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind235578_
                                                  _$t238038_
                                                  _g238122238125_
                                                  _g238123238127_)))
                                             _struct-check238110_
                                             _$struct-check238113_))
                                       (_make-specializer-impl238141_
                                        (lambda (_struct-type-check1238132_
                                                 _struct-type-check2238133_)
                                          (let* ((_specializer-body238139_
                                                  (map (lambda (_g238134238136_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g238134238136_
                                                            _self238017_
                                                            _$t238038_
                                                            _method-calls235667_
                                                            _slot-refs235668_
                                                            _class-type-check235669_
                                                            _struct-type-check1238132_
                                                            _struct-type-check2238133_)))
                                                       _L238000_))
                                                 (__tmp244534
                                                  (let ((__tmp244535
                                                         (let ((__tmp244537
                                                                (let ((__tmp244538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp244550
                                      (let ()
                                        (declare (not safe))
                                        (cons _L237663_ '())))
                                     (__tmp244539
                                      (let ((__tmp244540
                                             (let ((__tmp244541
                                                    (let ((__tmp244543
                                                           (let ((__tmp244544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244549
                                 (let ()
                                   (declare (not safe))
                                   (cons _L237662_ '())))
                                (__tmp244545
                                 (let ((__tmp244546
                                        (let ((__tmp244547
                                               (let ((__tmp244548
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L238001_
                                                              _specializer-body238139_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp244548))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp244547
                                           _L237661_))))
                                   (declare (not safe))
                                   (cons __tmp244546 '()))))
                            (declare (not safe))
                            (cons __tmp244549 __tmp244545))))
                     (declare (not safe))
                     (cons __tmp244544 '())))
                  (__tmp244542
                   (let () (declare (not safe)) (cons _L237660_ '()))))
              (declare (not safe))
              (cons __tmp244543 __tmp244542))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp244541))))
                                        (declare (not safe))
                                        (cons __tmp244540 '()))))
                                 (declare (not safe))
                                 (cons __tmp244550 __tmp244539))))
                          (declare (not safe))
                          (cons __tmp244538 '())))
                       (__tmp244536
                        (let () (declare (not safe)) (cons _L237659_ '()))))
                   (declare (not safe))
                   (cons __tmp244537 __tmp244536))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp244535))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp244534
                                             _stx235573_))))
                                       (_specializer-impl238143_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl238141_
                                           _struct-check-all238108_
                                           _empty235672_)))
                                       (_unchecked-specializer-impl238145_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?235675_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl238141_
                                               _empty235672_
                                               _struct-check-all238108_))
                                            '#f))
                                       (_specializer-impl238147_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl235579_
                                           _$t238038_
                                           _methods-bind238061_
                                           _slots-bind238084_
                                           _class-check-bind238106_
                                           _struct-check-bind238130_
                                           _specializer-impl238143_
                                           _lifted-specializer-id238036_
                                           _unchecked-specializer-impl238145_))))
                                  (let ((__tmp244552
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L235648_)))
                                        (__tmp244551
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id238029_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp244552
                                     '" => "
                                     __tmp244551))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def235580_
                                     _L235648_
                                     _specializer-id238029_
                                     _specializer-impl238147_
                                     _lifted-specializer-id238036_
                                     _unchecked-specializer-impl238145_))))))
                        _tl237972237997_
                        _hd237973237995_)))
                   (let ()
                     (declare (not safe))
                     (_g237965237979_ _g237966237982_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g237965237979_
                                                      _g237966237982_))))))
                                       (declare (not safe))
                                       (_g237964238150_ _L237661_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L237661_))
                                         (let* ((_g238153238183_
                                                 (lambda (_g238154238180_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g238154238180_))))
                                                (_g238152238808_
                                                 (lambda (_g238154238186_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g238154238186_))
                                                       (let ((_e238160238188_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g238154238186_))))
                 (let ((_hd238159238191_
                        (let () (declare (not safe)) (##car _e238160238188_)))
                       (_tl238158238193_
                        (let () (declare (not safe)) (##cdr _e238160238188_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl238158238193_))
                       (let ((_e238163238196_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl238158238193_))))
                         (let ((_hd238162238199_
                                (let ()
                                  (declare (not safe))
                                  (##car _e238163238196_)))
                               (_tl238161238201_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e238163238196_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd238162238199_))
                               (let ((_e238166238204_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd238162238199_))))
                                 (let ((_hd238165238207_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e238166238204_)))
                                       (_tl238164238209_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e238166238204_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd238165238207_))
                                       (let ((_e238169238212_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd238165238207_))))
                                         (let ((_hd238168238215_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e238169238212_)))
                                               (_tl238167238217_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e238169238212_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd238168238215_))
                                               (let ((_e238172238220_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd238168238215_))))
                                                 (let ((_hd238171238223_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e238172238220_)))
                                                       (_tl238170238225_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e238172238220_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl238170238225_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl238167238217_))
                                                           (let ((_e238175238228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl238167238217_))))
                     (let ((_hd238174238231_
                            (let ()
                              (declare (not safe))
                              (##car _e238175238228_)))
                           (_tl238173238233_
                            (let ()
                              (declare (not safe))
                              (##cdr _e238175238228_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl238173238233_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl238164238209_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl238161238201_))
                                   (let ((_e238178238236_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl238161238201_))))
                                     (let ((_hd238177238239_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e238178238236_)))
                                           (_tl238176238241_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e238178238236_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl238176238241_))
                                           ((lambda (_L238244_
                                                     _L238245_
                                                     _L238246_)
                                              (let* ((_g238269238283_
                                                      (lambda (_g238270238280_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g238270238280_))))
                                                     (_g238268238324_
                                                      (lambda (_g238270238286_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g238270238286_))
                                                            (let ((_e238275238288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g238270238286_))))
                      (let ((_hd238274238291_
                             (let ()
                               (declare (not safe))
                               (##car _e238275238288_)))
                            (_tl238273238293_
                             (let ()
                               (declare (not safe))
                               (##cdr _e238275238288_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl238273238293_))
                            (let ((_e238278238296_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl238273238293_))))
                              (let ((_hd238277238299_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238278238296_)))
                                    (_tl238276238301_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238278238296_))))
                                ((lambda (_L238304_ _L238305_)
                                   (let ((_self238318_
                                          (list-ref
                                           _L238305_
                                           _self-index237962_)))
                                     (for-each
                                      (lambda (_g238319238321_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g238319238321_
                                           _self238318_
                                           _method-calls235667_
                                           _slot-refs235668_
                                           _class-type-check235669_
                                           _struct-type-check235670_
                                           _struct-type-assert235671_)))
                                      _L238304_)))
                                 _tl238276238301_
                                 _hd238277238299_)))
                            (let ()
                              (declare (not safe))
                              (_g238269238283_ _g238270238286_)))))
                    (let ()
                      (declare (not safe))
                      (_g238269238283_ _g238270238286_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g238268238324_ _L238245_))
                                              (let* ((_g238327238346_
                                                      (lambda (_g238328238343_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g238328238343_))))
                                                     (_g238326238451_
                                                      (lambda (_g238328238349_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g238328238349_))
                                                            (let ((_e238332238351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g238328238349_))))
                      (let ((_hd238331238354_
                             (let ()
                               (declare (not safe))
                               (##car _e238332238351_)))
                            (_tl238330238356_
                             (let ()
                               (declare (not safe))
                               (##cdr _e238332238351_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl238330238356_))
                            (let ((_g244469_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl238330238356_
                                      '0))))
                              (begin
                                (let ((_g244470_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g244469_)
                                             (##vector-length _g244469_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g244470_ 2)))
                                      (error "Context expects 2 values"
                                             _g244470_)))
                                (let ((_target238333238359_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244469_ 0)))
                                      (_tl238335238361_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244469_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl238335238361_))
                                      (letrec ((_loop238336238364_
                                                (lambda (_hd238334238367_
                                                         _clause238340238369_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd238334238367_))
                                                      (let ((_e238337238372_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd238334238367_))))
                (let ((_lp-hd238338238375_
                       (let () (declare (not safe)) (##car _e238337238372_)))
                      (_lp-tl238339238377_
                       (let () (declare (not safe)) (##cdr _e238337238372_))))
                  (let ((__tmp244472
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd238338238375_ _clause238340238369_))))
                    (declare (not safe))
                    (_loop238336238364_ _lp-tl238339238377_ __tmp244472))))
              (let ((_clause238341238380_ (reverse _clause238340238369_)))
                ((lambda (_L238383_)
                   (for-each
                    (lambda (_clause238396_)
                      (let* ((_g238398238409_
                              (lambda (_g238399238406_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g238399238406_))))
                             (_g238397238441_
                              (lambda (_g238399238412_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g238399238412_))
                                    (let ((_e238404238414_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g238399238412_))))
                                      (let ((_hd238403238417_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e238404238414_)))
                                            (_tl238402238419_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e238404238414_))))
                                        ((lambda (_L238422_ _L238423_)
                                           (let ((_self238435_
                                                  (list-ref
                                                   _L238423_
                                                   _self-index237962_)))
                                             (for-each
                                              (lambda (_g238436238438_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g238436238438_
                                                   _self238435_
                                                   _method-calls235667_
                                                   _slot-refs235668_
                                                   _class-type-check235669_
                                                   _struct-type-check235670_
                                                   _struct-type-assert235671_)))
                                              _L238422_)))
                                         _tl238402238419_
                                         _hd238403238417_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g238398238409_ _g238399238412_))))))
                        (declare (not safe))
                        (_g238397238441_ _clause238396_)))
                    (let ((__tmp244471
                           (lambda (_g238443238446_ _g238444238448_)
                             (let ()
                               (declare (not safe))
                               (cons _g238443238446_ _g238444238448_)))))
                      (declare (not safe))
                      (foldr1 __tmp244471 '() _L238383_))))
                 _clause238341238380_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop238336238364_
                                           _target238333238359_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g238327238346_ _g238328238349_))))))
                            (let ()
                              (declare (not safe))
                              (_g238327238346_ _g238328238349_)))))
                    (let ()
                      (declare (not safe))
                      (_g238327238346_ _g238328238349_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g238326238451_ _L238244_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?235674_))
                                                  _stx235573_
                                                  (let* ((_specializer-id238460_
                                                          (let* ((_id238454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244473
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L235648_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp244473 '"::specialize")))
                         (_specializer-id238457_
                          (let ((__tmp244474
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx235573_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id238454_ __tmp244474))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id238457_))
                    _specializer-id238457_))
                 (_lifted-specializer-id238467_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?235676_))
                      (let* ((_id238462_
                              (let ((__tmp244475
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L235648_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp244475
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id238464_
                              (let ((__tmp244476
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx235573_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id238462_
                                 __tmp244476))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id238464_))
                        _lifted-specializer-id238464_)
                      '#f))
                 (_$t238469_
                  (let ((__tmp244477 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp244477)))
                 (_methods238471_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls235667_)))
                 (_$methods238475_
                  (map (lambda (_id238473_)
                         (let ((__tmp244478 (gensym _id238473_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp244478)))
                       _methods238471_))
                 (_g244479_
                  (for-each
                   (lambda (_g238476238479_ _g238477238481_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls235667_
                        _g238476238479_
                        _g238477238481_)))
                   _methods238471_
                   _$methods238475_))
                 (_methods-bind238492_
                  (map (lambda (_g238484238487_ _g238485238489_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind235575_
                            _$t238469_
                            _g238484238487_
                            _g238485238489_)))
                       _methods238471_
                       _$methods238475_))
                 (_slots238494_
                  (let () (declare (not safe)) (hash-keys _slot-refs235668_)))
                 (_$slots238498_
                  (map (lambda (_id238496_)
                         (let ((__tmp244480 (gensym _id238496_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp244480)))
                       _slots238494_))
                 (_g244481_
                  (for-each
                   (lambda (_g238499238502_ _g238500238504_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs235668_
                        _g238499238502_
                        _g238500238504_)))
                   _slots238494_
                   _$slots238498_))
                 (_slots-bind238515_
                  (map (lambda (_g238507238510_ _g238508238512_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind235576_
                            _$t238469_
                            _g238507238510_
                            _g238508238512_)))
                       _slots238494_
                       _$slots238498_))
                 (_class-check238517_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check235669_)))
                 (_$class-check238520_
                  (map (lambda (_g244482_)
                         (let ((__tmp244483 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp244483)))
                       _class-check238517_))
                 (_g244484_
                  (for-each
                   (lambda (_g238521238524_ _g238522238526_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check235669_
                        _g238521238524_
                        _g238522238526_)))
                   _class-check238517_
                   _$class-check238520_))
                 (_class-check-bind238537_
                  (map (lambda (_g238529238532_ _g238530238534_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind235577_
                            _$t238469_
                            _g238529238532_
                            _g238530238534_)))
                       _class-check238517_
                       _$class-check238520_))
                 (_struct-check-all238539_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check235670_
                     _struct-type-assert235671_)))
                 (_struct-check238541_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all238539_)))
                 (_$struct-check238544_
                  (map (lambda (_g244485_)
                         (let ((__tmp244486 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp244486)))
                       _struct-check238541_))
                 (_g244487_
                  (for-each
                   (lambda (_g238545238548_ _g238546238550_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all238539_
                        _g238545238548_
                        _g238546238550_)))
                   _struct-check238541_
                   _$struct-check238544_))
                 (_struct-check-bind238561_
                  (map (lambda (_g238553238556_ _g238554238558_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind235578_
                            _$t238469_
                            _g238553238556_
                            _g238554238558_)))
                       _struct-check238541_
                       _$struct-check238544_))
                 (_make-specializer-lambda-expr238647_
                  (lambda (_struct-type-check1238563_
                           _struct-type-check2238564_)
                    (let* ((_g238566238580_
                            (lambda (_g238567238577_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g238567238577_))))
                           (_g238565238644_
                            (lambda (_g238567238583_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g238567238583_))
                                  (let ((_e238572238585_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g238567238583_))))
                                    (let ((_hd238571238588_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238572238585_)))
                                          (_tl238570238590_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238572238585_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl238570238590_))
                                          (let ((_e238575238593_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl238570238590_))))
                                            (let ((_hd238574238596_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e238575238593_)))
                                                  (_tl238573238598_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e238575238593_))))
                                              ((lambda (_L238601_ _L238602_)
                                                 (let* ((_self238635_
                                                         (list-ref
                                                          _L238602_
                                                          _self-index237962_))
                                                        (_body238641_
                                                         (map (lambda (_g238636238638_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g238636238638_
                           _self238635_
                           _$t238469_
                           _method-calls235667_
                           _slot-refs235668_
                           _class-type-check235669_
                           _struct-type-check1238563_
                           _struct-type-check2238564_)))
                      _L238601_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp244488
                                                          (let ((__tmp244489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L238602_ _body238641_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp244489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp244488
                                                      _L238245_))))
                                               _tl238573238598_
                                               _hd238574238596_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g238566238580_
                                             _g238567238583_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g238566238580_ _g238567238583_))))))
                      (declare (not safe))
                      (_g238565238644_ _L238245_))))
                 (_make-specializer-case-lambda-expr238786_
                  (lambda (_struct-type-check1238649_
                           _struct-type-check2238650_)
                    (let* ((_g238652238671_
                            (lambda (_g238653238668_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g238653238668_))))
                           (_g238651238783_
                            (lambda (_g238653238674_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g238653238674_))
                                  (let ((_e238657238676_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g238653238674_))))
                                    (let ((_hd238656238679_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238657238676_)))
                                          (_tl238655238681_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238657238676_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl238655238681_))
                                          (let ((_g244490_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl238655238681_
                                                    '0))))
                                            (begin
                                              (let ((_g244491_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g244490_)
                                                           (##vector-length
                                                            _g244490_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g244491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g244491_)))
                                              (let ((_target238658238684_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g244490_
                                                        0)))
                                                    (_tl238660238686_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g244490_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl238660238686_))
                                                    (letrec ((_loop238661238689_
                                                              (lambda (_hd238659238692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause238665238694_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd238659238692_))
                            (let ((_e238662238697_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd238659238692_))))
                              (let ((_lp-hd238663238700_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238662238697_)))
                                    (_lp-tl238664238702_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238662238697_))))
                                (let ((__tmp244494
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd238663238700_
                                               _clause238665238694_))))
                                  (declare (not safe))
                                  (_loop238661238689_
                                   _lp-tl238664238702_
                                   __tmp244494))))
                            (let ((_clause238666238705_
                                   (reverse _clause238665238694_)))
                              ((lambda (_L238708_)
                                 (let* ((_clauses238781_
                                         (map (lambda (_clause238723_)
                                                (let* ((_g238725238736_
                                                        (lambda (_g238726238733_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g238726238733_))))
                                                       (_g238724238771_
                                                        (lambda (_g238726238739_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g238726238739_))
                      (let ((_e238731238741_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g238726238739_))))
                        (let ((_hd238730238744_
                               (let ()
                                 (declare (not safe))
                                 (##car _e238731238741_)))
                              (_tl238729238746_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e238731238741_))))
                          ((lambda (_L238749_ _L238750_)
                             (let* ((_self238762_
                                     (list-ref _L238750_ _self-index237962_))
                                    (_body238768_
                                     (map (lambda (_g238763238765_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g238763238765_
                                               _self238762_
                                               _$t238469_
                                               _method-calls235667_
                                               _slot-refs235668_
                                               _class-type-check235669_
                                               _struct-type-check1238649_
                                               _struct-type-check2238650_)))
                                          _L238749_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L238750_ _body238768_))))
                           _tl238729238746_
                           _hd238730238744_)))
                      (let ()
                        (declare (not safe))
                        (_g238725238736_ _g238726238739_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g238724238771_
                                                   _clause238723_)))
                                              (let ((__tmp244492
                                                     (lambda (_g238773238776_
                                                              _g238774238778_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g238773238776_
                                                               _g238774238778_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp244492
                                                        '()
                                                        _L238708_))))
                                        (__tmp244493
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses238781_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp244493
                                    _L238244_)))
                               _clause238666238705_))))))
              (let ()
                (declare (not safe))
                (_loop238661238689_ _target238658238684_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g238652238671_
                                                       _g238653238674_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g238652238671_
                                             _g238653238674_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g238652238671_ _g238653238674_))))))
                      (declare (not safe))
                      (_g238651238783_ _L238244_))))
                 (_make-specializer-impl238791_
                  (lambda (_specializer-lambda-expr238788_
                           _specializer-case-lambda-expr238789_)
                    (let ((__tmp244495
                           (let ((__tmp244496
                                  (let ((__tmp244498
                                         (let ((__tmp244499
                                                (let ((__tmp244516
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L237663_ '())))
                                                      (__tmp244500
                                                       (let ((__tmp244501
                                                              (let ((__tmp244502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp244504
                                    (let ((__tmp244505
                                           (let ((__tmp244515
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L237662_ '())))
                                                 (__tmp244506
                                                  (let ((__tmp244507
                                                         (let ((__tmp244508
                                                                (let ((__tmp244509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp244511
                                      (let ((__tmp244512
                                             (let ((__tmp244514
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L238246_ '())))
                                                   (__tmp244513
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr238788_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp244514
                                                     __tmp244513))))
                                        (declare (not safe))
                                        (cons __tmp244512 '())))
                                     (__tmp244510
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr238789_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp244511 __tmp244510))))
                          (declare (not safe))
                          (cons '%#let-values __tmp244509))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp244508 _stx235573_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244507 '()))))
                                             (declare (not safe))
                                             (cons __tmp244515 __tmp244506))))
                                      (declare (not safe))
                                      (cons __tmp244505 '())))
                                   (__tmp244503
                                    (let ()
                                      (declare (not safe))
                                      (cons _L237660_ '()))))
                               (declare (not safe))
                               (cons __tmp244504 __tmp244503))))
                        (declare (not safe))
                        (cons '%#let-values __tmp244502))))
                 (declare (not safe))
                 (cons __tmp244501 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp244516
                                                        __tmp244500))))
                                           (declare (not safe))
                                           (cons __tmp244499 '())))
                                        (__tmp244497
                                         (let ()
                                           (declare (not safe))
                                           (cons _L237659_ '()))))
                                    (declare (not safe))
                                    (cons __tmp244498 __tmp244497))))
                             (declare (not safe))
                             (cons '%#let-values __tmp244496))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244495 _stx235573_))))
                 (_specializer-lambda-expr238793_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr238647_
                     _struct-check-all238539_
                     _empty235672_)))
                 (_specializer-case-lambda-expr238795_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr238786_
                     _struct-check-all238539_
                     _empty235672_)))
                 (_specializer-impl238797_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl238791_
                     _specializer-lambda-expr238793_
                     _specializer-case-lambda-expr238795_)))
                 (_unchecked-specializer-lambda-expr238799_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?235675_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr238647_
                         _empty235672_
                         _struct-check-all238539_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr238801_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?235675_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr238786_
                         _empty235672_
                         _struct-check-all238539_))
                      '#f))
                 (_unchecked-specializer-impl238803_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?235675_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl238791_
                         _unchecked-specializer-lambda-expr238799_
                         _unchecked-specializer-case-lambda-expr238801_))
                      '#f))
                 (_specializer-impl238805_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl235579_
                     _$t238469_
                     _methods-bind238492_
                     _slots-bind238515_
                     _class-check-bind238537_
                     _struct-check-bind238561_
                     _specializer-impl238797_
                     _lifted-specializer-id238467_
                     _unchecked-specializer-impl238803_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp244518
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L235648_)))
                                                          (__tmp244517
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id238460_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp244518
                                                       '" => "
                                                       __tmp244517))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def235580_
                                                       _L235648_
                                                       _specializer-id238460_
                                                       _specializer-impl238805_
                                                       _lifted-specializer-id238467_
                                                       _unchecked-specializer-impl238803_)))))
                                            _hd238177238239_
                                            _hd238174238231_
                                            _hd238171238223_)
                                           (let ()
                                             (declare (not safe))
                                             (_g238153238183_
                                              _g238154238186_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g238153238183_ _g238154238186_)))
                               (let ()
                                 (declare (not safe))
                                 (_g238153238183_ _g238154238186_)))
                           (let ()
                             (declare (not safe))
                             (_g238153238183_ _g238154238186_)))))
                   (let ()
                     (declare (not safe))
                     (_g238153238183_ _g238154238186_)))
               (let ()
                 (declare (not safe))
                 (_g238153238183_ _g238154238186_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g238153238183_
                                                  _g238154238186_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g238153238183_ _g238154238186_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g238153238183_ _g238154238186_)))))
                       (let ()
                         (declare (not safe))
                         (_g238153238183_ _g238154238186_)))))
               (let ()
                 (declare (not safe))
                 (_g238153238183_ _g238154238186_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g238152238808_ _L237661_))
                                         _stx235573_))))
                             _hd237758237881_
                             _kw-ref237756237902_
                             _hd237746237868_
                             _hd237737237844_
                             _hd237728237820_)
                            (let ()
                              (declare (not safe))
                              (_g237702237764_ _g237703237767_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop237751237886_
                                                   _target237748237873_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g237702237764_
                                                 _g237703237767_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237702237764_ _g237703237767_))))))
                            (let ()
                              (declare (not safe))
                              (_g237702237764_ _g237703237767_)))
                        (let ()
                          (declare (not safe))
                          (_g237702237764_ _g237703237767_)))
                    (let ()
                      (declare (not safe))
                      (_g237702237764_ _g237703237767_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g237702237764_
                                                       _g237703237767_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g237702237764_
                                                   _g237703237767_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g237702237764_
                                               _g237703237767_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g237702237764_ _g237703237767_)))))
                            (let ()
                              (declare (not safe))
                              (_g237702237764_ _g237703237767_)))
                        (let ()
                          (declare (not safe))
                          (_g237702237764_ _g237703237767_)))))
                (let ()
                  (declare (not safe))
                  (_g237702237764_ _g237703237767_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g237702237764_
                                                       _g237703237767_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g237702237764_
                                                   _g237703237767_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g237702237764_ _g237703237767_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g237702237764_ _g237703237767_)))
                            (let ()
                              (declare (not safe))
                              (_g237702237764_ _g237703237767_)))))
                    (let ()
                      (declare (not safe))
                      (_g237702237764_ _g237703237767_)))
                (let ()
                  (declare (not safe))
                  (_g237702237764_ _g237703237767_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g237702237764_
                                                       _g237703237767_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g237702237764_
                                               _g237703237767_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g237702237764_ _g237703237767_)))
                                (let ()
                                  (declare (not safe))
                                  (_g237702237764_ _g237703237767_)))
                            (let ()
                              (declare (not safe))
                              (_g237702237764_ _g237703237767_)))))
                    (let ()
                      (declare (not safe))
                      (_g237702237764_ _g237703237767_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g237702237764_
                                                       _g237703237767_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g237702237764_
                                               _g237703237767_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g237702237764_ _g237703237767_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g237702237764_ _g237703237767_)))))
                            (let ()
                              (declare (not safe))
                              (_g237702237764_ _g237703237767_))))))
                (declare (not safe))
                (_g237701238811_ _L237660_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd237536237654_
                                                    _hd237533237646_
                                                    _hd237530237638_
                                                    _hd237527237630_
                                                    _hd237509237582_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g237489237542_
                                                      _g237490237545_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g237489237542_
                                              _g237490237545_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g237489237542_ _g237490237545_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g237489237542_ _g237490237545_)))
                               (let ()
                                 (declare (not safe))
                                 (_g237489237542_ _g237490237545_)))))
                       (let ()
                         (declare (not safe))
                         (_g237489237542_ _g237490237545_)))
                   (let ()
                     (declare (not safe))
                     (_g237489237542_ _g237490237545_)))
               (let ()
                 (declare (not safe))
                 (_g237489237542_ _g237490237545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g237489237542_
                                                  _g237490237545_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g237489237542_
                                              _g237490237545_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g237489237542_ _g237490237545_)))))
                           (let ()
                             (declare (not safe))
                             (_g237489237542_ _g237490237545_)))))
                   (let ()
                     (declare (not safe))
                     (_g237489237542_ _g237490237545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g237489237542_
                                                      _g237490237545_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g237489237542_
                                                  _g237490237545_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g237489237542_
                                              _g237490237545_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g237489237542_ _g237490237545_)))))
                           (let ()
                             (declare (not safe))
                             (_g237489237542_ _g237490237545_)))
                       (let ()
                         (declare (not safe))
                         (_g237489237542_ _g237490237545_)))))
               (let ()
                 (declare (not safe))
                 (_g237489237542_ _g237490237545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g237489237542_
                                                  _g237490237545_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g237489237542_ _g237490237545_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g237489237542_ _g237490237545_)))
                           (let ()
                             (declare (not safe))
                             (_g237489237542_ _g237490237545_)))
                       (let ()
                         (declare (not safe))
                         (_g237489237542_ _g237490237545_)))))
               (let ()
                 (declare (not safe))
                 (_g237489237542_ _g237490237545_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g237488238814_ _L235647_))
                                         _stx235573_))))))))
                  (___kont243247243248_ (lambda () _stx235573_)))
              (let ((___match243276243277_
                     (lambda (_e235589235615_
                              _hd235588235618_
                              _tl235587235620_
                              _e235592235623_
                              _hd235591235626_
                              _tl235590235628_
                              _e235595235631_
                              _hd235594235634_
                              _tl235593235636_
                              _e235598235639_
                              _hd235597235642_
                              _tl235596235644_)
                       (let ((_L235647_ _hd235597235642_)
                             (_L235648_ _hd235594235634_))
                         (if (let ((__tmp244635
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L235648_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp244635))
                             (___kont243245243246_ _L235647_ _L235648_)
                             (___kont243247243248_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx243243243244_))
                    (let ((_e235589235615_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx243243243244_))))
                      (let ((_tl235587235620_
                             (let ()
                               (declare (not safe))
                               (##cdr _e235589235615_)))
                            (_hd235588235618_
                             (let ()
                               (declare (not safe))
                               (##car _e235589235615_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl235587235620_))
                            (let ((_e235592235623_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl235587235620_))))
                              (let ((_tl235590235628_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e235592235623_)))
                                    (_hd235591235626_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e235592235623_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd235591235626_))
                                    (let ((_e235595235631_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd235591235626_))))
                                      (let ((_tl235593235636_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e235595235631_)))
                                            (_hd235594235634_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e235595235631_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl235593235636_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl235590235628_))
                                                (let ((_e235598235639_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl235590235628_))))
                                                  (let ((_tl235596235644_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e235598235639_)))
                                                        (_hd235597235642_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e235598235639_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl235596235644_))
                                                        (___match243276243277_
                                                         _e235589235615_
                                                         _hd235588235618_
                                                         _tl235587235620_
                                                         _e235592235623_
                                                         _hd235591235626_
                                                         _tl235590235628_
                                                         _e235595235631_
                                                         _hd235594235634_
                                                         _tl235593235636_
                                                         _e235598235639_
                                                         _hd235597235642_
                                                         _tl235596235644_)
                                                        (___kont243247243248_))))
                                                (___kont243247243248_))
                                            (___kont243247243248_))))
                                    (___kont243247243248_))))
                            (___kont243247243248_))))
                    (___kont243247243248_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx234549_
               _self234550_
               _methods234551_
               _slots234552_
               _class-check234553_
               _struct-check234554_
               _struct-assert234555_)
        (let* ((___stx243279243280_ _stx234549_)
               (_g234563234785_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243279243280_)))))
          (let ((___kont243281243282_
                 (lambda (_L235522_ _L235523_ _L235524_ _L235525_)
                   (let ((__tmp244636
                          (let () (declare (not safe)) (gx#stx-e _L235523_))))
                     (declare (not safe))
                     (table-set! _methods234551_ __tmp244636 '#t))
                   (for-each
                    (lambda (_g235558235560_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g235558235560_
                         _self234550_
                         _methods234551_
                         _slots234552_
                         _class-check234553_
                         _struct-check234554_
                         _struct-assert234555_)))
                    (let ((__tmp244637
                           (lambda (_g235562235565_ _g235563235567_)
                             (let ()
                               (declare (not safe))
                               (cons _g235562235565_ _g235563235567_)))))
                      (declare (not safe))
                      (foldr1 __tmp244637 '() _L235522_)))))
                (___kont243285243286_
                 (lambda (_L235357_ _L235358_ _L235359_ _L235360_ _L235361_)
                   (let ((__tmp244638
                          (let () (declare (not safe)) (gx#stx-e _L235358_))))
                     (declare (not safe))
                     (table-set! _methods234551_ __tmp244638 '#t))
                   (for-each
                    (lambda (_g235401235403_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g235401235403_
                         _self234550_
                         _methods234551_
                         _slots234552_
                         _class-check234553_
                         _struct-check234554_
                         _struct-assert234555_)))
                    (let ((__tmp244639
                           (lambda (_g235405235408_ _g235406235410_)
                             (let ()
                               (declare (not safe))
                               (cons _g235405235408_ _g235406235410_)))))
                      (declare (not safe))
                      (foldr1 __tmp244639 '() _L235357_)))))
                (___kont243289243290_
                 (lambda (_L235190_ _L235191_ _L235192_)
                   (let ((__tmp244640
                          (let () (declare (not safe)) (gx#stx-e _L235190_))))
                     (declare (not safe))
                     (table-set! _slots234552_ __tmp244640 '#t))))
                (___kont243291243292_
                 (lambda (_L235067_ _L235068_ _L235069_ _L235070_)
                   (let ((__tmp244641
                          (let () (declare (not safe)) (gx#stx-e _L235068_))))
                     (declare (not safe))
                     (table-set! _slots234552_ __tmp244641 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L235067_
                      _self234550_
                      _methods234551_
                      _slots234552_
                      _class-check234553_
                      _struct-check234554_
                      _struct-assert234555_))))
                (___kont243293243294_
                 (lambda (_L234951_ _L234952_)
                   (let ((__tmp244642
                          (##structure-ref
                           (let ((__tmp244643
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L234952_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp244643))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots234552_ __tmp244642 '#t))))
                (___kont243295243296_
                 (lambda (_L234861_ _L234862_ _L234863_)
                   (let ((__tmp244644
                          (##structure-ref
                           (let ((__tmp244645
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L234863_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp244645))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots234552_ __tmp244644 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L234861_
                      _self234550_
                      _methods234551_
                      _slots234552_
                      _class-check234553_
                      _struct-check234554_
                      _struct-assert234555_))))
                (___kont243297243298_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx234549_
                      _self234550_
                      _methods234551_
                      _slots234552_
                      _class-check234553_
                      _struct-check234554_
                      _struct-assert234555_)))))
            (let* ((___match243778243779_
                    (lambda (_e234759234797_
                             _hd234758234800_
                             _tl234757234802_
                             _e234762234805_
                             _hd234761234808_
                             _tl234760234810_
                             _e234765234813_
                             _hd234764234816_
                             _tl234763234818_
                             _e234768234821_
                             _hd234767234824_
                             _tl234766234826_
                             _e234771234829_
                             _hd234770234832_
                             _tl234769234834_
                             _e234774234837_
                             _hd234773234840_
                             _tl234772234842_
                             _e234777234845_
                             _hd234776234848_
                             _tl234775234850_
                             _e234780234853_
                             _hd234779234856_
                             _tl234778234858_)
                      (let ((_L234861_ _hd234779234856_)
                            (_L234862_ _hd234776234848_)
                            (_L234863_ _hd234767234824_))
                        (if (and (let ((__tmp244646
                                        (let ((__tmp244647
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L234863_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp244647))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp244646
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L234862_
                                    _self234550_)))
                            (___kont243295243296_
                             _L234861_
                             _L234862_
                             _L234863_)
                            (___kont243297243298_)))))
                   (___match243776243777_
                    (lambda (_e234759234797_
                             _hd234758234800_
                             _tl234757234802_
                             _e234762234805_
                             _hd234761234808_
                             _tl234760234810_
                             _e234765234813_
                             _hd234764234816_
                             _tl234763234818_
                             _e234768234821_
                             _hd234767234824_
                             _tl234766234826_
                             _e234771234829_
                             _hd234770234832_
                             _tl234769234834_
                             _e234774234837_
                             _hd234773234840_
                             _tl234772234842_
                             _e234777234845_
                             _hd234776234848_
                             _tl234775234850_
                             _e234780234853_
                             _hd234779234856_
                             _tl234778234858_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl234778234858_))
                          (___match243778243779_
                           _e234759234797_
                           _hd234758234800_
                           _tl234757234802_
                           _e234762234805_
                           _hd234761234808_
                           _tl234760234810_
                           _e234765234813_
                           _hd234764234816_
                           _tl234763234818_
                           _e234768234821_
                           _hd234767234824_
                           _tl234766234826_
                           _e234771234829_
                           _hd234770234832_
                           _tl234769234834_
                           _e234774234837_
                           _hd234773234840_
                           _tl234772234842_
                           _e234777234845_
                           _hd234776234848_
                           _tl234775234850_
                           _e234780234853_
                           _hd234779234856_
                           _tl234778234858_)
                          (___kont243297243298_))))
                   (___match243770243771_
                    (lambda (_e234759234797_
                             _hd234758234800_
                             _tl234757234802_
                             _e234762234805_
                             _hd234761234808_
                             _tl234760234810_
                             _e234765234813_
                             _hd234764234816_
                             _tl234763234818_
                             _e234768234821_
                             _hd234767234824_
                             _tl234766234826_
                             _e234771234829_
                             _hd234770234832_
                             _tl234769234834_
                             _e234774234837_
                             _hd234773234840_
                             _tl234772234842_
                             _e234777234845_
                             _hd234776234848_
                             _tl234775234850_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234769234834_))
                          (let ((_e234780234853_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234769234834_))))
                            (let ((_tl234778234858_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234780234853_)))
                                  (_hd234779234856_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234780234853_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234778234858_))
                                  (___match243778243779_
                                   _e234759234797_
                                   _hd234758234800_
                                   _tl234757234802_
                                   _e234762234805_
                                   _hd234761234808_
                                   _tl234760234810_
                                   _e234765234813_
                                   _hd234764234816_
                                   _tl234763234818_
                                   _e234768234821_
                                   _hd234767234824_
                                   _tl234766234826_
                                   _e234771234829_
                                   _hd234770234832_
                                   _tl234769234834_
                                   _e234774234837_
                                   _hd234773234840_
                                   _tl234772234842_
                                   _e234777234845_
                                   _hd234776234848_
                                   _tl234775234850_
                                   _e234780234853_
                                   _hd234779234856_
                                   _tl234778234858_)
                                  (___kont243297243298_))))
                          (___kont243297243298_))))
                   (___match243716243717_
                    (lambda (_e234735234895_
                             _hd234734234898_
                             _tl234733234900_
                             _e234738234903_
                             _hd234737234906_
                             _tl234736234908_
                             _e234741234911_
                             _hd234740234914_
                             _tl234739234916_
                             _e234744234919_
                             _hd234743234922_
                             _tl234742234924_
                             _e234747234927_
                             _hd234746234930_
                             _tl234745234932_
                             _e234750234935_
                             _hd234749234938_
                             _tl234748234940_
                             _e234753234943_
                             _hd234752234946_
                             _tl234751234948_)
                      (let ((_L234951_ _hd234752234946_)
                            (_L234952_ _hd234743234922_))
                        (if (and (let ((__tmp244648
                                        (let ((__tmp244649
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L234952_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp244649))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp244648
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L234951_
                                    _self234550_)))
                            (___kont243293243294_ _L234951_ _L234952_)
                            (___kont243297243298_)))))
                   (___match243714243715_
                    (lambda (_e234735234895_
                             _hd234734234898_
                             _tl234733234900_
                             _e234738234903_
                             _hd234737234906_
                             _tl234736234908_
                             _e234741234911_
                             _hd234740234914_
                             _tl234739234916_
                             _e234744234919_
                             _hd234743234922_
                             _tl234742234924_
                             _e234747234927_
                             _hd234746234930_
                             _tl234745234932_
                             _e234750234935_
                             _hd234749234938_
                             _tl234748234940_
                             _e234753234943_
                             _hd234752234946_
                             _tl234751234948_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl234745234932_))
                          (___match243716243717_
                           _e234735234895_
                           _hd234734234898_
                           _tl234733234900_
                           _e234738234903_
                           _hd234737234906_
                           _tl234736234908_
                           _e234741234911_
                           _hd234740234914_
                           _tl234739234916_
                           _e234744234919_
                           _hd234743234922_
                           _tl234742234924_
                           _e234747234927_
                           _hd234746234930_
                           _tl234745234932_
                           _e234750234935_
                           _hd234749234938_
                           _tl234748234940_
                           _e234753234943_
                           _hd234752234946_
                           _tl234751234948_)
                          (___match243770243771_
                           _e234735234895_
                           _hd234734234898_
                           _tl234733234900_
                           _e234738234903_
                           _hd234737234906_
                           _tl234736234908_
                           _e234741234911_
                           _hd234740234914_
                           _tl234739234916_
                           _e234744234919_
                           _hd234743234922_
                           _tl234742234924_
                           _e234747234927_
                           _hd234746234930_
                           _tl234745234932_
                           _e234750234935_
                           _hd234749234938_
                           _tl234748234940_
                           _e234753234943_
                           _hd234752234946_
                           _tl234751234948_))))
                   (___match243660243661_
                    (lambda (_e234700234979_
                             _hd234699234982_
                             _tl234698234984_
                             _e234703234987_
                             _hd234702234990_
                             _tl234701234992_
                             _e234706234995_
                             _hd234705234998_
                             _tl234704235000_
                             _e234709235003_
                             _hd234708235006_
                             _tl234707235008_
                             _e234712235011_
                             _hd234711235014_
                             _tl234710235016_
                             _e234715235019_
                             _hd234714235022_
                             _tl234713235024_
                             _e234718235027_
                             _hd234717235030_
                             _tl234716235032_
                             _e234721235035_
                             _hd234720235038_
                             _tl234719235040_
                             _e234724235043_
                             _hd234723235046_
                             _tl234722235048_
                             _e234727235051_
                             _hd234726235054_
                             _tl234725235056_
                             _e234730235059_
                             _hd234729235062_
                             _tl234728235064_)
                      (let ((_L235067_ _hd234729235062_)
                            (_L235068_ _hd234726235054_)
                            (_L235069_ _hd234717235030_)
                            (_L235070_ _hd234708235006_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L235070_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L235070_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L235069_
                                    _self234550_)))
                            (___kont243291243292_
                             _L235067_
                             _L235068_
                             _L235069_
                             _L235070_)
                            (___kont243297243298_)))))
                   (___match243652243653_
                    (lambda (_e234700234979_
                             _hd234699234982_
                             _tl234698234984_
                             _e234703234987_
                             _hd234702234990_
                             _tl234701234992_
                             _e234706234995_
                             _hd234705234998_
                             _tl234704235000_
                             _e234709235003_
                             _hd234708235006_
                             _tl234707235008_
                             _e234712235011_
                             _hd234711235014_
                             _tl234710235016_
                             _e234715235019_
                             _hd234714235022_
                             _tl234713235024_
                             _e234718235027_
                             _hd234717235030_
                             _tl234716235032_
                             _e234721235035_
                             _hd234720235038_
                             _tl234719235040_
                             _e234724235043_
                             _hd234723235046_
                             _tl234722235048_
                             _e234727235051_
                             _hd234726235054_
                             _tl234725235056_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234719235040_))
                          (let ((_e234730235059_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234719235040_))))
                            (let ((_tl234728235064_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234730235059_)))
                                  (_hd234729235062_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234730235059_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234728235064_))
                                  (___match243660243661_
                                   _e234700234979_
                                   _hd234699234982_
                                   _tl234698234984_
                                   _e234703234987_
                                   _hd234702234990_
                                   _tl234701234992_
                                   _e234706234995_
                                   _hd234705234998_
                                   _tl234704235000_
                                   _e234709235003_
                                   _hd234708235006_
                                   _tl234707235008_
                                   _e234712235011_
                                   _hd234711235014_
                                   _tl234710235016_
                                   _e234715235019_
                                   _hd234714235022_
                                   _tl234713235024_
                                   _e234718235027_
                                   _hd234717235030_
                                   _tl234716235032_
                                   _e234721235035_
                                   _hd234720235038_
                                   _tl234719235040_
                                   _e234724235043_
                                   _hd234723235046_
                                   _tl234722235048_
                                   _e234727235051_
                                   _hd234726235054_
                                   _tl234725235056_
                                   _e234730235059_
                                   _hd234729235062_
                                   _tl234728235064_)
                                  (___kont243297243298_))))
                          (___match243776243777_
                           _e234700234979_
                           _hd234699234982_
                           _tl234698234984_
                           _e234703234987_
                           _hd234702234990_
                           _tl234701234992_
                           _e234706234995_
                           _hd234705234998_
                           _tl234704235000_
                           _e234709235003_
                           _hd234708235006_
                           _tl234707235008_
                           _e234712235011_
                           _hd234711235014_
                           _tl234710235016_
                           _e234715235019_
                           _hd234714235022_
                           _tl234713235024_
                           _e234718235027_
                           _hd234717235030_
                           _tl234716235032_
                           _e234721235035_
                           _hd234720235038_
                           _tl234719235040_))))
                   (___match243574243575_
                    (lambda (_e234666235110_
                             _hd234665235113_
                             _tl234664235115_
                             _e234669235118_
                             _hd234668235121_
                             _tl234667235123_
                             _e234672235126_
                             _hd234671235129_
                             _tl234670235131_
                             _e234675235134_
                             _hd234674235137_
                             _tl234673235139_
                             _e234678235142_
                             _hd234677235145_
                             _tl234676235147_
                             _e234681235150_
                             _hd234680235153_
                             _tl234679235155_
                             _e234684235158_
                             _hd234683235161_
                             _tl234682235163_
                             _e234687235166_
                             _hd234686235169_
                             _tl234685235171_
                             _e234690235174_
                             _hd234689235177_
                             _tl234688235179_
                             _e234693235182_
                             _hd234692235185_
                             _tl234691235187_)
                      (let ((_L235190_ _hd234692235185_)
                            (_L235191_ _hd234683235161_)
                            (_L235192_ _hd234674235137_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L235192_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L235192_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L235191_
                                    _self234550_)))
                            (___kont243289243290_
                             _L235190_
                             _L235191_
                             _L235192_)
                            (___match243778243779_
                             _e234666235110_
                             _hd234665235113_
                             _tl234664235115_
                             _e234669235118_
                             _hd234668235121_
                             _tl234667235123_
                             _e234672235126_
                             _hd234671235129_
                             _tl234670235131_
                             _e234675235134_
                             _hd234674235137_
                             _tl234673235139_
                             _e234678235142_
                             _hd234677235145_
                             _tl234676235147_
                             _e234681235150_
                             _hd234680235153_
                             _tl234679235155_
                             _e234684235158_
                             _hd234683235161_
                             _tl234682235163_
                             _e234687235166_
                             _hd234686235169_
                             _tl234685235171_)))))
                   (___match243572243573_
                    (lambda (_e234666235110_
                             _hd234665235113_
                             _tl234664235115_
                             _e234669235118_
                             _hd234668235121_
                             _tl234667235123_
                             _e234672235126_
                             _hd234671235129_
                             _tl234670235131_
                             _e234675235134_
                             _hd234674235137_
                             _tl234673235139_
                             _e234678235142_
                             _hd234677235145_
                             _tl234676235147_
                             _e234681235150_
                             _hd234680235153_
                             _tl234679235155_
                             _e234684235158_
                             _hd234683235161_
                             _tl234682235163_
                             _e234687235166_
                             _hd234686235169_
                             _tl234685235171_
                             _e234690235174_
                             _hd234689235177_
                             _tl234688235179_
                             _e234693235182_
                             _hd234692235185_
                             _tl234691235187_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl234685235171_))
                          (___match243574243575_
                           _e234666235110_
                           _hd234665235113_
                           _tl234664235115_
                           _e234669235118_
                           _hd234668235121_
                           _tl234667235123_
                           _e234672235126_
                           _hd234671235129_
                           _tl234670235131_
                           _e234675235134_
                           _hd234674235137_
                           _tl234673235139_
                           _e234678235142_
                           _hd234677235145_
                           _tl234676235147_
                           _e234681235150_
                           _hd234680235153_
                           _tl234679235155_
                           _e234684235158_
                           _hd234683235161_
                           _tl234682235163_
                           _e234687235166_
                           _hd234686235169_
                           _tl234685235171_
                           _e234690235174_
                           _hd234689235177_
                           _tl234688235179_
                           _e234693235182_
                           _hd234692235185_
                           _tl234691235187_)
                          (___match243652243653_
                           _e234666235110_
                           _hd234665235113_
                           _tl234664235115_
                           _e234669235118_
                           _hd234668235121_
                           _tl234667235123_
                           _e234672235126_
                           _hd234671235129_
                           _tl234670235131_
                           _e234675235134_
                           _hd234674235137_
                           _tl234673235139_
                           _e234678235142_
                           _hd234677235145_
                           _tl234676235147_
                           _e234681235150_
                           _hd234680235153_
                           _tl234679235155_
                           _e234684235158_
                           _hd234683235161_
                           _tl234682235163_
                           _e234687235166_
                           _hd234686235169_
                           _tl234685235171_
                           _e234690235174_
                           _hd234689235177_
                           _tl234688235179_
                           _e234693235182_
                           _hd234692235185_
                           _tl234691235187_))))
                   (___match243562243563_
                    (lambda (_e234666235110_
                             _hd234665235113_
                             _tl234664235115_
                             _e234669235118_
                             _hd234668235121_
                             _tl234667235123_
                             _e234672235126_
                             _hd234671235129_
                             _tl234670235131_
                             _e234675235134_
                             _hd234674235137_
                             _tl234673235139_
                             _e234678235142_
                             _hd234677235145_
                             _tl234676235147_
                             _e234681235150_
                             _hd234680235153_
                             _tl234679235155_
                             _e234684235158_
                             _hd234683235161_
                             _tl234682235163_
                             _e234687235166_
                             _hd234686235169_
                             _tl234685235171_
                             _e234690235174_
                             _hd234689235177_
                             _tl234688235179_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd234689235177_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234688235179_))
                              (let ((_e234693235182_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234688235179_))))
                                (let ((_tl234691235187_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234693235182_)))
                                      (_hd234692235185_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234693235182_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234691235187_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234685235171_))
                                          (___match243574243575_
                                           _e234666235110_
                                           _hd234665235113_
                                           _tl234664235115_
                                           _e234669235118_
                                           _hd234668235121_
                                           _tl234667235123_
                                           _e234672235126_
                                           _hd234671235129_
                                           _tl234670235131_
                                           _e234675235134_
                                           _hd234674235137_
                                           _tl234673235139_
                                           _e234678235142_
                                           _hd234677235145_
                                           _tl234676235147_
                                           _e234681235150_
                                           _hd234680235153_
                                           _tl234679235155_
                                           _e234684235158_
                                           _hd234683235161_
                                           _tl234682235163_
                                           _e234687235166_
                                           _hd234686235169_
                                           _tl234685235171_
                                           _e234690235174_
                                           _hd234689235177_
                                           _tl234688235179_
                                           _e234693235182_
                                           _hd234692235185_
                                           _tl234691235187_)
                                          (___match243652243653_
                                           _e234666235110_
                                           _hd234665235113_
                                           _tl234664235115_
                                           _e234669235118_
                                           _hd234668235121_
                                           _tl234667235123_
                                           _e234672235126_
                                           _hd234671235129_
                                           _tl234670235131_
                                           _e234675235134_
                                           _hd234674235137_
                                           _tl234673235139_
                                           _e234678235142_
                                           _hd234677235145_
                                           _tl234676235147_
                                           _e234681235150_
                                           _hd234680235153_
                                           _tl234679235155_
                                           _e234684235158_
                                           _hd234683235161_
                                           _tl234682235163_
                                           _e234687235166_
                                           _hd234686235169_
                                           _tl234685235171_
                                           _e234690235174_
                                           _hd234689235177_
                                           _tl234688235179_
                                           _e234693235182_
                                           _hd234692235185_
                                           _tl234691235187_))
                                      (___match243776243777_
                                       _e234666235110_
                                       _hd234665235113_
                                       _tl234664235115_
                                       _e234669235118_
                                       _hd234668235121_
                                       _tl234667235123_
                                       _e234672235126_
                                       _hd234671235129_
                                       _tl234670235131_
                                       _e234675235134_
                                       _hd234674235137_
                                       _tl234673235139_
                                       _e234678235142_
                                       _hd234677235145_
                                       _tl234676235147_
                                       _e234681235150_
                                       _hd234680235153_
                                       _tl234679235155_
                                       _e234684235158_
                                       _hd234683235161_
                                       _tl234682235163_
                                       _e234687235166_
                                       _hd234686235169_
                                       _tl234685235171_))))
                              (___match243776243777_
                               _e234666235110_
                               _hd234665235113_
                               _tl234664235115_
                               _e234669235118_
                               _hd234668235121_
                               _tl234667235123_
                               _e234672235126_
                               _hd234671235129_
                               _tl234670235131_
                               _e234675235134_
                               _hd234674235137_
                               _tl234673235139_
                               _e234678235142_
                               _hd234677235145_
                               _tl234676235147_
                               _e234681235150_
                               _hd234680235153_
                               _tl234679235155_
                               _e234684235158_
                               _hd234683235161_
                               _tl234682235163_
                               _e234687235166_
                               _hd234686235169_
                               _tl234685235171_))
                          (___match243776243777_
                           _e234666235110_
                           _hd234665235113_
                           _tl234664235115_
                           _e234669235118_
                           _hd234668235121_
                           _tl234667235123_
                           _e234672235126_
                           _hd234671235129_
                           _tl234670235131_
                           _e234675235134_
                           _hd234674235137_
                           _tl234673235139_
                           _e234678235142_
                           _hd234677235145_
                           _tl234676235147_
                           _e234681235150_
                           _hd234680235153_
                           _tl234679235155_
                           _e234684235158_
                           _hd234683235161_
                           _tl234682235163_
                           _e234687235166_
                           _hd234686235169_
                           _tl234685235171_))))
                   (___match243494243495_
                    (lambda (_e234615235229_
                             _hd234614235232_
                             _tl234613235234_
                             _e234618235237_
                             _hd234617235240_
                             _tl234616235242_
                             _e234621235245_
                             _hd234620235248_
                             _tl234619235250_
                             _e234624235253_
                             _hd234623235256_
                             _tl234622235258_
                             _e234627235261_
                             _hd234626235264_
                             _tl234625235266_
                             _e234630235269_
                             _hd234629235272_
                             _tl234628235274_
                             _e234633235277_
                             _hd234632235280_
                             _tl234631235282_
                             _e234636235285_
                             _hd234635235288_
                             _tl234634235290_
                             _e234639235293_
                             _hd234638235296_
                             _tl234637235298_
                             _e234642235301_
                             _hd234641235304_
                             _tl234640235306_
                             _e234645235309_
                             _hd234644235312_
                             _tl234643235314_
                             _e234648235317_
                             _hd234647235320_
                             _tl234646235322_
                             _e234651235325_
                             _hd234650235328_
                             _tl234649235330_
                             ___splice243287243288_
                             _target234652235333_
                             _tl234654235335_)
                      (letrec ((_loop234655235338_
                                (lambda (_hd234653235341_ _args234659235343_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234653235341_))
                                      (let ((_e234656235346_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234653235341_))))
                                        (let ((_lp-tl234658235351_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234656235346_)))
                                              (_lp-hd234657235349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234656235346_))))
                                          (let ((__tmp244650
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234657235349_
                                                         _args234659235343_))))
                                            (declare (not safe))
                                            (_loop234655235338_
                                             _lp-tl234658235351_
                                             __tmp244650))))
                                      (let ((_args234660235354_
                                             (reverse _args234659235343_)))
                                        (let ((_L235357_ _args234660235354_)
                                              (_L235358_ _hd234650235328_)
                                              (_L235359_ _hd234641235304_)
                                              (_L235360_ _hd234632235280_)
                                              (_L235361_ _hd234623235256_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L235361_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L235360_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L235359_
                                                      _self234550_)))
                                              (___kont243285243286_
                                               _L235357_
                                               _L235358_
                                               _L235359_
                                               _L235360_
                                               _L235361_)
                                              (___kont243297243298_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop234655235338_ _target234652235333_ '())))))
                   (___match243452243453_
                    (lambda (_e234615235229_
                             _hd234614235232_
                             _tl234613235234_
                             _e234618235237_
                             _hd234617235240_
                             _tl234616235242_
                             _e234621235245_
                             _hd234620235248_
                             _tl234619235250_
                             _e234624235253_
                             _hd234623235256_
                             _tl234622235258_
                             _e234627235261_
                             _hd234626235264_
                             _tl234625235266_
                             _e234630235269_
                             _hd234629235272_
                             _tl234628235274_
                             _e234633235277_
                             _hd234632235280_
                             _tl234631235282_
                             _e234636235285_
                             _hd234635235288_
                             _tl234634235290_
                             _e234639235293_
                             _hd234638235296_
                             _tl234637235298_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd234638235296_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234637235298_))
                              (let ((_e234642235301_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234637235298_))))
                                (let ((_tl234640235306_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234642235301_)))
                                      (_hd234641235304_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234642235301_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234640235306_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234634235290_))
                                          (let ((_e234645235309_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234634235290_))))
                                            (let ((_tl234643235314_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234645235309_)))
                                                  (_hd234644235312_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234645235309_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd234644235312_))
                                                  (let ((_e234648235317_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd234644235312_))))
                                                    (let ((_tl234646235322_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234648235317_)))
                                                          (_hd234647235320_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234648235317_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd234647235320_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd234647235320_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234646235322_))
                          (let ((_e234651235325_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234646235322_))))
                            (let ((_tl234649235330_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234651235325_)))
                                  (_hd234650235328_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234651235325_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234649235330_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl234643235314_))
                                      (let ((___splice243287243288_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl234643235314_
                                                '0))))
                                        (let ((_tl234654235335_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243287243288_
                                                  '1)))
                                              (_target234652235333_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243287243288_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234654235335_))
                                              (___match243494243495_
                                               _e234615235229_
                                               _hd234614235232_
                                               _tl234613235234_
                                               _e234618235237_
                                               _hd234617235240_
                                               _tl234616235242_
                                               _e234621235245_
                                               _hd234620235248_
                                               _tl234619235250_
                                               _e234624235253_
                                               _hd234623235256_
                                               _tl234622235258_
                                               _e234627235261_
                                               _hd234626235264_
                                               _tl234625235266_
                                               _e234630235269_
                                               _hd234629235272_
                                               _tl234628235274_
                                               _e234633235277_
                                               _hd234632235280_
                                               _tl234631235282_
                                               _e234636235285_
                                               _hd234635235288_
                                               _tl234634235290_
                                               _e234639235293_
                                               _hd234638235296_
                                               _tl234637235298_
                                               _e234642235301_
                                               _hd234641235304_
                                               _tl234640235306_
                                               _e234645235309_
                                               _hd234644235312_
                                               _tl234643235314_
                                               _e234648235317_
                                               _hd234647235320_
                                               _tl234646235322_
                                               _e234651235325_
                                               _hd234650235328_
                                               _tl234649235330_
                                               ___splice243287243288_
                                               _target234652235333_
                                               _tl234654235335_)
                                              (___kont243297243298_))))
                                      (___kont243297243298_))
                                  (___kont243297243298_))))
                          (___kont243297243298_))
                      (___kont243297243298_))
                  (___kont243297243298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243297243298_))))
                                          (___match243776243777_
                                           _e234615235229_
                                           _hd234614235232_
                                           _tl234613235234_
                                           _e234618235237_
                                           _hd234617235240_
                                           _tl234616235242_
                                           _e234621235245_
                                           _hd234620235248_
                                           _tl234619235250_
                                           _e234624235253_
                                           _hd234623235256_
                                           _tl234622235258_
                                           _e234627235261_
                                           _hd234626235264_
                                           _tl234625235266_
                                           _e234630235269_
                                           _hd234629235272_
                                           _tl234628235274_
                                           _e234633235277_
                                           _hd234632235280_
                                           _tl234631235282_
                                           _e234636235285_
                                           _hd234635235288_
                                           _tl234634235290_))
                                      (___match243776243777_
                                       _e234615235229_
                                       _hd234614235232_
                                       _tl234613235234_
                                       _e234618235237_
                                       _hd234617235240_
                                       _tl234616235242_
                                       _e234621235245_
                                       _hd234620235248_
                                       _tl234619235250_
                                       _e234624235253_
                                       _hd234623235256_
                                       _tl234622235258_
                                       _e234627235261_
                                       _hd234626235264_
                                       _tl234625235266_
                                       _e234630235269_
                                       _hd234629235272_
                                       _tl234628235274_
                                       _e234633235277_
                                       _hd234632235280_
                                       _tl234631235282_
                                       _e234636235285_
                                       _hd234635235288_
                                       _tl234634235290_))))
                              (___match243776243777_
                               _e234615235229_
                               _hd234614235232_
                               _tl234613235234_
                               _e234618235237_
                               _hd234617235240_
                               _tl234616235242_
                               _e234621235245_
                               _hd234620235248_
                               _tl234619235250_
                               _e234624235253_
                               _hd234623235256_
                               _tl234622235258_
                               _e234627235261_
                               _hd234626235264_
                               _tl234625235266_
                               _e234630235269_
                               _hd234629235272_
                               _tl234628235274_
                               _e234633235277_
                               _hd234632235280_
                               _tl234631235282_
                               _e234636235285_
                               _hd234635235288_
                               _tl234634235290_))
                          (___match243562243563_
                           _e234615235229_
                           _hd234614235232_
                           _tl234613235234_
                           _e234618235237_
                           _hd234617235240_
                           _tl234616235242_
                           _e234621235245_
                           _hd234620235248_
                           _tl234619235250_
                           _e234624235253_
                           _hd234623235256_
                           _tl234622235258_
                           _e234627235261_
                           _hd234626235264_
                           _tl234625235266_
                           _e234630235269_
                           _hd234629235272_
                           _tl234628235274_
                           _e234633235277_
                           _hd234632235280_
                           _tl234631235282_
                           _e234636235285_
                           _hd234635235288_
                           _tl234634235290_
                           _e234639235293_
                           _hd234638235296_
                           _tl234637235298_))))
                   (___match243384243385_
                    (lambda (_e234571235418_
                             _hd234570235421_
                             _tl234569235423_
                             _e234574235426_
                             _hd234573235429_
                             _tl234572235431_
                             _e234577235434_
                             _hd234576235437_
                             _tl234575235439_
                             _e234580235442_
                             _hd234579235445_
                             _tl234578235447_
                             _e234583235450_
                             _hd234582235453_
                             _tl234581235455_
                             _e234586235458_
                             _hd234585235461_
                             _tl234584235463_
                             _e234589235466_
                             _hd234588235469_
                             _tl234587235471_
                             _e234592235474_
                             _hd234591235477_
                             _tl234590235479_
                             _e234595235482_
                             _hd234594235485_
                             _tl234593235487_
                             _e234598235490_
                             _hd234597235493_
                             _tl234596235495_
                             ___splice243283243284_
                             _target234599235498_
                             _tl234601235500_)
                      (letrec ((_loop234602235503_
                                (lambda (_hd234600235506_ _args234606235508_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234600235506_))
                                      (let ((_e234603235511_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234600235506_))))
                                        (let ((_lp-tl234605235516_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234603235511_)))
                                              (_lp-hd234604235514_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234603235511_))))
                                          (let ((__tmp244651
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234604235514_
                                                         _args234606235508_))))
                                            (declare (not safe))
                                            (_loop234602235503_
                                             _lp-tl234605235516_
                                             __tmp244651))))
                                      (let ((_args234607235519_
                                             (reverse _args234606235508_)))
                                        (let ((_L235522_ _args234607235519_)
                                              (_L235523_ _hd234597235493_)
                                              (_L235524_ _hd234588235469_)
                                              (_L235525_ _hd234579235445_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L235525_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L235524_
                                                      _self234550_)))
                                              (___kont243281243282_
                                               _L235522_
                                               _L235523_
                                               _L235524_
                                               _L235525_)
                                              (___match243572243573_
                                               _e234571235418_
                                               _hd234570235421_
                                               _tl234569235423_
                                               _e234574235426_
                                               _hd234573235429_
                                               _tl234572235431_
                                               _e234577235434_
                                               _hd234576235437_
                                               _tl234575235439_
                                               _e234580235442_
                                               _hd234579235445_
                                               _tl234578235447_
                                               _e234583235450_
                                               _hd234582235453_
                                               _tl234581235455_
                                               _e234586235458_
                                               _hd234585235461_
                                               _tl234584235463_
                                               _e234589235466_
                                               _hd234588235469_
                                               _tl234587235471_
                                               _e234592235474_
                                               _hd234591235477_
                                               _tl234590235479_
                                               _e234595235482_
                                               _hd234594235485_
                                               _tl234593235487_
                                               _e234598235490_
                                               _hd234597235493_
                                               _tl234596235495_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop234602235503_ _target234599235498_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243279243280_))
                  (let ((_e234571235418_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243279243280_))))
                    (let ((_tl234569235423_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234571235418_)))
                          (_hd234570235421_
                           (let ()
                             (declare (not safe))
                             (##car _e234571235418_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234569235423_))
                          (let ((_e234574235426_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234569235423_))))
                            (let ((_tl234572235431_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234574235426_)))
                                  (_hd234573235429_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234574235426_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd234573235429_))
                                  (let ((_e234577235434_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd234573235429_))))
                                    (let ((_tl234575235439_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234577235434_)))
                                          (_hd234576235437_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234577235434_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd234576235437_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd234576235437_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234575235439_))
                                                  (let ((_e234580235442_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234575235439_))))
                                                    (let ((_tl234578235447_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234580235442_)))
                                                          (_hd234579235445_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234580235442_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl234578235447_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl234572235431_))
                      (let ((_e234583235450_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl234572235431_))))
                        (let ((_tl234581235455_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234583235450_)))
                              (_hd234582235453_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234583235450_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd234582235453_))
                              (let ((_e234586235458_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd234582235453_))))
                                (let ((_tl234584235463_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234586235458_)))
                                      (_hd234585235461_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234586235458_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd234585235461_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd234585235461_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234584235463_))
                                              (let ((_e234589235466_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234584235463_))))
                                                (let ((_tl234587235471_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234589235466_)))
                                                      (_hd234588235469_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234589235466_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234587235471_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234581235455_))
                                                          (let ((_e234592235474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234581235455_))))
                    (let ((_tl234590235479_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234592235474_)))
                          (_hd234591235477_
                           (let ()
                             (declare (not safe))
                             (##car _e234592235474_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234591235477_))
                          (let ((_e234595235482_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234591235477_))))
                            (let ((_tl234593235487_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234595235482_)))
                                  (_hd234594235485_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234595235482_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234594235485_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd234594235485_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234593235487_))
                                          (let ((_e234598235490_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234593235487_))))
                                            (let ((_tl234596235495_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234598235490_)))
                                                  (_hd234597235493_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234598235490_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234596235495_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl234590235479_))
                                                      (let ((___splice243283243284_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl234590235479_ '0))))
                (let ((_tl234601235500_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice243283243284_ '1)))
                      (_target234599235498_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice243283243284_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl234601235500_))
                      (___match243384243385_
                       _e234571235418_
                       _hd234570235421_
                       _tl234569235423_
                       _e234574235426_
                       _hd234573235429_
                       _tl234572235431_
                       _e234577235434_
                       _hd234576235437_
                       _tl234575235439_
                       _e234580235442_
                       _hd234579235445_
                       _tl234578235447_
                       _e234583235450_
                       _hd234582235453_
                       _tl234581235455_
                       _e234586235458_
                       _hd234585235461_
                       _tl234584235463_
                       _e234589235466_
                       _hd234588235469_
                       _tl234587235471_
                       _e234592235474_
                       _hd234591235477_
                       _tl234590235479_
                       _e234595235482_
                       _hd234594235485_
                       _tl234593235487_
                       _e234598235490_
                       _hd234597235493_
                       _tl234596235495_
                       ___splice243283243284_
                       _target234599235498_
                       _tl234601235500_)
                      (___match243572243573_
                       _e234571235418_
                       _hd234570235421_
                       _tl234569235423_
                       _e234574235426_
                       _hd234573235429_
                       _tl234572235431_
                       _e234577235434_
                       _hd234576235437_
                       _tl234575235439_
                       _e234580235442_
                       _hd234579235445_
                       _tl234578235447_
                       _e234583235450_
                       _hd234582235453_
                       _tl234581235455_
                       _e234586235458_
                       _hd234585235461_
                       _tl234584235463_
                       _e234589235466_
                       _hd234588235469_
                       _tl234587235471_
                       _e234592235474_
                       _hd234591235477_
                       _tl234590235479_
                       _e234595235482_
                       _hd234594235485_
                       _tl234593235487_
                       _e234598235490_
                       _hd234597235493_
                       _tl234596235495_))))
              (___match243572243573_
               _e234571235418_
               _hd234570235421_
               _tl234569235423_
               _e234574235426_
               _hd234573235429_
               _tl234572235431_
               _e234577235434_
               _hd234576235437_
               _tl234575235439_
               _e234580235442_
               _hd234579235445_
               _tl234578235447_
               _e234583235450_
               _hd234582235453_
               _tl234581235455_
               _e234586235458_
               _hd234585235461_
               _tl234584235463_
               _e234589235466_
               _hd234588235469_
               _tl234587235471_
               _e234592235474_
               _hd234591235477_
               _tl234590235479_
               _e234595235482_
               _hd234594235485_
               _tl234593235487_
               _e234598235490_
               _hd234597235493_
               _tl234596235495_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243776243777_
                                                   _e234571235418_
                                                   _hd234570235421_
                                                   _tl234569235423_
                                                   _e234574235426_
                                                   _hd234573235429_
                                                   _tl234572235431_
                                                   _e234577235434_
                                                   _hd234576235437_
                                                   _tl234575235439_
                                                   _e234580235442_
                                                   _hd234579235445_
                                                   _tl234578235447_
                                                   _e234583235450_
                                                   _hd234582235453_
                                                   _tl234581235455_
                                                   _e234586235458_
                                                   _hd234585235461_
                                                   _tl234584235463_
                                                   _e234589235466_
                                                   _hd234588235469_
                                                   _tl234587235471_
                                                   _e234592235474_
                                                   _hd234591235477_
                                                   _tl234590235479_))))
                                          (___match243776243777_
                                           _e234571235418_
                                           _hd234570235421_
                                           _tl234569235423_
                                           _e234574235426_
                                           _hd234573235429_
                                           _tl234572235431_
                                           _e234577235434_
                                           _hd234576235437_
                                           _tl234575235439_
                                           _e234580235442_
                                           _hd234579235445_
                                           _tl234578235447_
                                           _e234583235450_
                                           _hd234582235453_
                                           _tl234581235455_
                                           _e234586235458_
                                           _hd234585235461_
                                           _tl234584235463_
                                           _e234589235466_
                                           _hd234588235469_
                                           _tl234587235471_
                                           _e234592235474_
                                           _hd234591235477_
                                           _tl234590235479_))
                                      (___match243452243453_
                                       _e234571235418_
                                       _hd234570235421_
                                       _tl234569235423_
                                       _e234574235426_
                                       _hd234573235429_
                                       _tl234572235431_
                                       _e234577235434_
                                       _hd234576235437_
                                       _tl234575235439_
                                       _e234580235442_
                                       _hd234579235445_
                                       _tl234578235447_
                                       _e234583235450_
                                       _hd234582235453_
                                       _tl234581235455_
                                       _e234586235458_
                                       _hd234585235461_
                                       _tl234584235463_
                                       _e234589235466_
                                       _hd234588235469_
                                       _tl234587235471_
                                       _e234592235474_
                                       _hd234591235477_
                                       _tl234590235479_
                                       _e234595235482_
                                       _hd234594235485_
                                       _tl234593235487_))
                                  (___match243776243777_
                                   _e234571235418_
                                   _hd234570235421_
                                   _tl234569235423_
                                   _e234574235426_
                                   _hd234573235429_
                                   _tl234572235431_
                                   _e234577235434_
                                   _hd234576235437_
                                   _tl234575235439_
                                   _e234580235442_
                                   _hd234579235445_
                                   _tl234578235447_
                                   _e234583235450_
                                   _hd234582235453_
                                   _tl234581235455_
                                   _e234586235458_
                                   _hd234585235461_
                                   _tl234584235463_
                                   _e234589235466_
                                   _hd234588235469_
                                   _tl234587235471_
                                   _e234592235474_
                                   _hd234591235477_
                                   _tl234590235479_))))
                          (___match243776243777_
                           _e234571235418_
                           _hd234570235421_
                           _tl234569235423_
                           _e234574235426_
                           _hd234573235429_
                           _tl234572235431_
                           _e234577235434_
                           _hd234576235437_
                           _tl234575235439_
                           _e234580235442_
                           _hd234579235445_
                           _tl234578235447_
                           _e234583235450_
                           _hd234582235453_
                           _tl234581235455_
                           _e234586235458_
                           _hd234585235461_
                           _tl234584235463_
                           _e234589235466_
                           _hd234588235469_
                           _tl234587235471_
                           _e234592235474_
                           _hd234591235477_
                           _tl234590235479_))))
                  (___match243714243715_
                   _e234571235418_
                   _hd234570235421_
                   _tl234569235423_
                   _e234574235426_
                   _hd234573235429_
                   _tl234572235431_
                   _e234577235434_
                   _hd234576235437_
                   _tl234575235439_
                   _e234580235442_
                   _hd234579235445_
                   _tl234578235447_
                   _e234583235450_
                   _hd234582235453_
                   _tl234581235455_
                   _e234586235458_
                   _hd234585235461_
                   _tl234584235463_
                   _e234589235466_
                   _hd234588235469_
                   _tl234587235471_))
              (___kont243297243298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont243297243298_))
                                          (___kont243297243298_))
                                      (___kont243297243298_))))
                              (___kont243297243298_))))
                      (___kont243297243298_))
                  (___kont243297243298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243297243298_))
                                              (___kont243297243298_))
                                          (___kont243297243298_))))
                                  (___kont243297243298_))))
                          (___kont243297243298_))))
                  (___kont243297243298_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx233495_
               _self233496_
               _$t233497_
               _methods233498_
               _slots233499_
               _class-check233500_
               _struct-check233501_
               _struct-assert233502_)
        (letrec ((_force-e233504_
                  (lambda (_what234547_)
                    (let ((__tmp244652
                           (let ((__tmp244656
                                  (let ((__tmp244657
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp244657)))
                                 (__tmp244653
                                  (let ((__tmp244654
                                         (let ((__tmp244655
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what234547_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp244655))))
                                    (declare (not safe))
                                    (cons __tmp244654 '()))))
                             (declare (not safe))
                             (cons __tmp244656 __tmp244653))))
                      (declare (not safe))
                      (cons '%#call __tmp244652)))))
          (let* ((___stx243781243782_ _stx233495_)
                 (_g233512233734_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx243781243782_)))))
            (let ((___kont243783243784_
                   (lambda (_L234493_ _L234494_ _L234495_ _L234496_)
                     (let ((_$method234541_
                            (let ((__tmp244658
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L234494_))))
                              (declare (not safe))
                              (table-ref _methods233498_ __tmp244658)))
                           (_args234542_
                            (map (lambda (_g234529234531_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g234529234531_
                                      _self233496_
                                      _$t233497_
                                      _methods233498_
                                      _slots233499_
                                      _class-check233500_
                                      _struct-check233501_
                                      _struct-assert233502_)))
                                 (let ((__tmp244659
                                        (lambda (_g234533234536_
                                                 _g234534234538_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g234533234536_
                                                  _g234534234538_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp244659 '() _L234493_)))))
                       (let ((__tmp244660
                              (let ((__tmp244661
                                     (let ((__tmp244665
                                            (let ()
                                              (declare (not safe))
                                              (_force-e233504_
                                               _$method234541_)))
                                           (__tmp244662
                                            (let ((__tmp244663
                                                   (let ((__tmp244664
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self233496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp244664))))
                                              (declare (not safe))
                                              (cons __tmp244663
                                                    _args234542_))))
                                       (declare (not safe))
                                       (cons __tmp244665 __tmp244662))))
                                (declare (not safe))
                                (cons '%#call __tmp244661))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244660 _stx233495_)))))
                  (___kont243787243788_
                   (lambda (_L234325_ _L234326_ _L234327_ _L234328_ _L234329_)
                     (let ((_$method234381_
                            (let ((__tmp244666
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L234326_))))
                              (declare (not safe))
                              (table-ref _methods233498_ __tmp244666)))
                           (_args234382_
                            (map (lambda (_g234369234371_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g234369234371_
                                      _self233496_
                                      _$t233497_
                                      _methods233498_
                                      _slots233499_
                                      _class-check233500_
                                      _struct-check233501_
                                      _struct-assert233502_)))
                                 (let ((__tmp244667
                                        (lambda (_g234373234376_
                                                 _g234374234378_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g234373234376_
                                                  _g234374234378_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp244667 '() _L234325_)))))
                       (let ((__tmp244668
                              (let ((__tmp244669
                                     (let ((__tmp244675
                                            (let ((__tmp244676
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp244676)))
                                           (__tmp244670
                                            (let ((__tmp244674
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e233504_
                                                      _$method234381_)))
                                                  (__tmp244671
                                                   (let ((__tmp244672
                                                          (let ((__tmp244673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self233496_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp244673))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244672
                                                           _args234382_))))
                                              (declare (not safe))
                                              (cons __tmp244674 __tmp244671))))
                                       (declare (not safe))
                                       (cons __tmp244675 __tmp244670))))
                                (declare (not safe))
                                (cons '%#call __tmp244669))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244668 _stx233495_)))))
                  (___kont243791243792_
                   (lambda (_L234156_ _L234157_ _L234158_)
                     (let* ((_$field234190_
                             (let ((__tmp244677
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L234156_))))
                               (declare (not safe))
                               (table-ref _slots233499_ __tmp244677)))
                            (__tmp244678
                             (let ((__tmp244679
                                    (let ((__tmp244686
                                           (let ((__tmp244687
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t233497_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp244687)))
                                          (__tmp244680
                                           (let ((__tmp244684
                                                  (let ((__tmp244685
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field234190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp244685)))
                                                 (__tmp244681
                                                  (let ((__tmp244682
                                                         (let ((__tmp244683
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self233496_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp244683))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244682 '()))))
                                             (declare (not safe))
                                             (cons __tmp244684 __tmp244681))))
                                      (declare (not safe))
                                      (cons __tmp244686 __tmp244680))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp244679))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp244678 _stx233495_))))
                  (___kont243793243794_
                   (lambda (_L234030_ _L234031_ _L234032_ _L234033_)
                     (let ((_$field234068_
                            (let ((__tmp244688
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L234031_))))
                              (declare (not safe))
                              (table-ref _slots233499_ __tmp244688)))
                           (_expr234069_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L234030_
                               _self233496_
                               _$t233497_
                               _methods233498_
                               _slots233499_
                               _class-check233500_
                               _struct-check233501_
                               _struct-assert233502_))))
                       (let ((__tmp244689
                              (let ((__tmp244690
                                     (let ((__tmp244698
                                            (let ((__tmp244699
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t233497_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp244699)))
                                           (__tmp244691
                                            (let ((__tmp244696
                                                   (let ((__tmp244697
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field234068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp244697)))
                                                  (__tmp244692
                                                   (let ((__tmp244694
                                                          (let ((__tmp244695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self233496_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp244695)))
                 (__tmp244693
                  (let () (declare (not safe)) (cons _expr234069_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244694
                                                           __tmp244693))))
                                              (declare (not safe))
                                              (cons __tmp244696 __tmp244692))))
                                       (declare (not safe))
                                       (cons __tmp244698 __tmp244691))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp244690))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244689 _stx233495_)))))
                  (___kont243795243796_
                   (lambda (_L233909_ _L233910_)
                     (let* ((_slot233932_
                             (##structure-ref
                              (let ((__tmp244700
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L233910_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp244700))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field233934_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots233499_ _slot233932_))))
                       (let ((__tmp244701
                              (let ((__tmp244702
                                     (let ((__tmp244709
                                            (let ((__tmp244710
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t233497_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp244710)))
                                           (__tmp244703
                                            (let ((__tmp244707
                                                   (let ((__tmp244708
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field233934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp244708)))
                                                  (__tmp244704
                                                   (let ((__tmp244705
                                                          (let ((__tmp244706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self233496_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp244706))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244705 '()))))
                                              (declare (not safe))
                                              (cons __tmp244707 __tmp244704))))
                                       (declare (not safe))
                                       (cons __tmp244709 __tmp244703))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp244702))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244701 _stx233495_)))))
                  (___kont243797243798_
                   (lambda (_L233810_ _L233811_ _L233812_)
                     (let* ((_slot233841_
                             (##structure-ref
                              (let ((__tmp244711
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L233812_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp244711))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field233843_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots233499_ _slot233841_)))
                            (_expr233845_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L233810_
                                _self233496_
                                _$t233497_
                                _methods233498_
                                _slots233499_
                                _class-check233500_
                                _struct-check233501_
                                _struct-assert233502_))))
                       (let ((__tmp244712
                              (let ((__tmp244713
                                     (let ((__tmp244721
                                            (let ((__tmp244722
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t233497_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp244722)))
                                           (__tmp244714
                                            (let ((__tmp244719
                                                   (let ((__tmp244720
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field233843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp244720)))
                                                  (__tmp244715
                                                   (let ((__tmp244717
                                                          (let ((__tmp244718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self233496_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp244718)))
                 (__tmp244716
                  (let () (declare (not safe)) (cons _expr233845_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244717
                                                           __tmp244716))))
                                              (declare (not safe))
                                              (cons __tmp244719 __tmp244715))))
                                       (declare (not safe))
                                       (cons __tmp244721 __tmp244714))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp244713))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244712 _stx233495_)))))
                  (___kont243799243800_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx233495_
                        _self233496_
                        _$t233497_
                        _methods233498_
                        _slots233499_
                        _class-check233500_
                        _struct-check233501_
                        _struct-assert233502_)))))
              (let* ((___match244280244281_
                      (lambda (_e233708233746_
                               _hd233707233749_
                               _tl233706233751_
                               _e233711233754_
                               _hd233710233757_
                               _tl233709233759_
                               _e233714233762_
                               _hd233713233765_
                               _tl233712233767_
                               _e233717233770_
                               _hd233716233773_
                               _tl233715233775_
                               _e233720233778_
                               _hd233719233781_
                               _tl233718233783_
                               _e233723233786_
                               _hd233722233789_
                               _tl233721233791_
                               _e233726233794_
                               _hd233725233797_
                               _tl233724233799_
                               _e233729233802_
                               _hd233728233805_
                               _tl233727233807_)
                        (let ((_L233810_ _hd233728233805_)
                              (_L233811_ _hd233725233797_)
                              (_L233812_ _hd233716233773_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L233811_
                                      _self233496_))
                                   (let ((__tmp244723
                                          (let ((__tmp244724
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L233812_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp244724))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp244723
                                      'gxc#!mutator::t)))
                              (___kont243797243798_
                               _L233810_
                               _L233811_
                               _L233812_)
                              (___kont243799243800_)))))
                     (___match244278244279_
                      (lambda (_e233708233746_
                               _hd233707233749_
                               _tl233706233751_
                               _e233711233754_
                               _hd233710233757_
                               _tl233709233759_
                               _e233714233762_
                               _hd233713233765_
                               _tl233712233767_
                               _e233717233770_
                               _hd233716233773_
                               _tl233715233775_
                               _e233720233778_
                               _hd233719233781_
                               _tl233718233783_
                               _e233723233786_
                               _hd233722233789_
                               _tl233721233791_
                               _e233726233794_
                               _hd233725233797_
                               _tl233724233799_
                               _e233729233802_
                               _hd233728233805_
                               _tl233727233807_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl233727233807_))
                            (___match244280244281_
                             _e233708233746_
                             _hd233707233749_
                             _tl233706233751_
                             _e233711233754_
                             _hd233710233757_
                             _tl233709233759_
                             _e233714233762_
                             _hd233713233765_
                             _tl233712233767_
                             _e233717233770_
                             _hd233716233773_
                             _tl233715233775_
                             _e233720233778_
                             _hd233719233781_
                             _tl233718233783_
                             _e233723233786_
                             _hd233722233789_
                             _tl233721233791_
                             _e233726233794_
                             _hd233725233797_
                             _tl233724233799_
                             _e233729233802_
                             _hd233728233805_
                             _tl233727233807_)
                            (___kont243799243800_))))
                     (___match244272244273_
                      (lambda (_e233708233746_
                               _hd233707233749_
                               _tl233706233751_
                               _e233711233754_
                               _hd233710233757_
                               _tl233709233759_
                               _e233714233762_
                               _hd233713233765_
                               _tl233712233767_
                               _e233717233770_
                               _hd233716233773_
                               _tl233715233775_
                               _e233720233778_
                               _hd233719233781_
                               _tl233718233783_
                               _e233723233786_
                               _hd233722233789_
                               _tl233721233791_
                               _e233726233794_
                               _hd233725233797_
                               _tl233724233799_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233718233783_))
                            (let ((_e233729233802_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233718233783_))))
                              (let ((_tl233727233807_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233729233802_)))
                                    (_hd233728233805_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233729233802_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233727233807_))
                                    (___match244280244281_
                                     _e233708233746_
                                     _hd233707233749_
                                     _tl233706233751_
                                     _e233711233754_
                                     _hd233710233757_
                                     _tl233709233759_
                                     _e233714233762_
                                     _hd233713233765_
                                     _tl233712233767_
                                     _e233717233770_
                                     _hd233716233773_
                                     _tl233715233775_
                                     _e233720233778_
                                     _hd233719233781_
                                     _tl233718233783_
                                     _e233723233786_
                                     _hd233722233789_
                                     _tl233721233791_
                                     _e233726233794_
                                     _hd233725233797_
                                     _tl233724233799_
                                     _e233729233802_
                                     _hd233728233805_
                                     _tl233727233807_)
                                    (___kont243799243800_))))
                            (___kont243799243800_))))
                     (___match244218244219_
                      (lambda (_e233684233853_
                               _hd233683233856_
                               _tl233682233858_
                               _e233687233861_
                               _hd233686233864_
                               _tl233685233866_
                               _e233690233869_
                               _hd233689233872_
                               _tl233688233874_
                               _e233693233877_
                               _hd233692233880_
                               _tl233691233882_
                               _e233696233885_
                               _hd233695233888_
                               _tl233694233890_
                               _e233699233893_
                               _hd233698233896_
                               _tl233697233898_
                               _e233702233901_
                               _hd233701233904_
                               _tl233700233906_)
                        (let ((_L233909_ _hd233701233904_)
                              (_L233910_ _hd233692233880_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L233909_
                                      _self233496_))
                                   (let ((__tmp244725
                                          (let ((__tmp244726
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L233910_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp244726))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp244725
                                      'gxc#!accessor::t)))
                              (___kont243795243796_ _L233909_ _L233910_)
                              (___kont243799243800_)))))
                     (___match244216244217_
                      (lambda (_e233684233853_
                               _hd233683233856_
                               _tl233682233858_
                               _e233687233861_
                               _hd233686233864_
                               _tl233685233866_
                               _e233690233869_
                               _hd233689233872_
                               _tl233688233874_
                               _e233693233877_
                               _hd233692233880_
                               _tl233691233882_
                               _e233696233885_
                               _hd233695233888_
                               _tl233694233890_
                               _e233699233893_
                               _hd233698233896_
                               _tl233697233898_
                               _e233702233901_
                               _hd233701233904_
                               _tl233700233906_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl233694233890_))
                            (___match244218244219_
                             _e233684233853_
                             _hd233683233856_
                             _tl233682233858_
                             _e233687233861_
                             _hd233686233864_
                             _tl233685233866_
                             _e233690233869_
                             _hd233689233872_
                             _tl233688233874_
                             _e233693233877_
                             _hd233692233880_
                             _tl233691233882_
                             _e233696233885_
                             _hd233695233888_
                             _tl233694233890_
                             _e233699233893_
                             _hd233698233896_
                             _tl233697233898_
                             _e233702233901_
                             _hd233701233904_
                             _tl233700233906_)
                            (___match244272244273_
                             _e233684233853_
                             _hd233683233856_
                             _tl233682233858_
                             _e233687233861_
                             _hd233686233864_
                             _tl233685233866_
                             _e233690233869_
                             _hd233689233872_
                             _tl233688233874_
                             _e233693233877_
                             _hd233692233880_
                             _tl233691233882_
                             _e233696233885_
                             _hd233695233888_
                             _tl233694233890_
                             _e233699233893_
                             _hd233698233896_
                             _tl233697233898_
                             _e233702233901_
                             _hd233701233904_
                             _tl233700233906_))))
                     (___match244162244163_
                      (lambda (_e233649233942_
                               _hd233648233945_
                               _tl233647233947_
                               _e233652233950_
                               _hd233651233953_
                               _tl233650233955_
                               _e233655233958_
                               _hd233654233961_
                               _tl233653233963_
                               _e233658233966_
                               _hd233657233969_
                               _tl233656233971_
                               _e233661233974_
                               _hd233660233977_
                               _tl233659233979_
                               _e233664233982_
                               _hd233663233985_
                               _tl233662233987_
                               _e233667233990_
                               _hd233666233993_
                               _tl233665233995_
                               _e233670233998_
                               _hd233669234001_
                               _tl233668234003_
                               _e233673234006_
                               _hd233672234009_
                               _tl233671234011_
                               _e233676234014_
                               _hd233675234017_
                               _tl233674234019_
                               _e233679234022_
                               _hd233678234025_
                               _tl233677234027_)
                        (let ((_L234030_ _hd233678234025_)
                              (_L234031_ _hd233675234017_)
                              (_L234032_ _hd233666233993_)
                              (_L234033_ _hd233657233969_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L234033_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L234033_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L234032_
                                      _self233496_)))
                              (___kont243793243794_
                               _L234030_
                               _L234031_
                               _L234032_
                               _L234033_)
                              (___kont243799243800_)))))
                     (___match244154244155_
                      (lambda (_e233649233942_
                               _hd233648233945_
                               _tl233647233947_
                               _e233652233950_
                               _hd233651233953_
                               _tl233650233955_
                               _e233655233958_
                               _hd233654233961_
                               _tl233653233963_
                               _e233658233966_
                               _hd233657233969_
                               _tl233656233971_
                               _e233661233974_
                               _hd233660233977_
                               _tl233659233979_
                               _e233664233982_
                               _hd233663233985_
                               _tl233662233987_
                               _e233667233990_
                               _hd233666233993_
                               _tl233665233995_
                               _e233670233998_
                               _hd233669234001_
                               _tl233668234003_
                               _e233673234006_
                               _hd233672234009_
                               _tl233671234011_
                               _e233676234014_
                               _hd233675234017_
                               _tl233674234019_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233668234003_))
                            (let ((_e233679234022_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233668234003_))))
                              (let ((_tl233677234027_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233679234022_)))
                                    (_hd233678234025_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233679234022_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233677234027_))
                                    (___match244162244163_
                                     _e233649233942_
                                     _hd233648233945_
                                     _tl233647233947_
                                     _e233652233950_
                                     _hd233651233953_
                                     _tl233650233955_
                                     _e233655233958_
                                     _hd233654233961_
                                     _tl233653233963_
                                     _e233658233966_
                                     _hd233657233969_
                                     _tl233656233971_
                                     _e233661233974_
                                     _hd233660233977_
                                     _tl233659233979_
                                     _e233664233982_
                                     _hd233663233985_
                                     _tl233662233987_
                                     _e233667233990_
                                     _hd233666233993_
                                     _tl233665233995_
                                     _e233670233998_
                                     _hd233669234001_
                                     _tl233668234003_
                                     _e233673234006_
                                     _hd233672234009_
                                     _tl233671234011_
                                     _e233676234014_
                                     _hd233675234017_
                                     _tl233674234019_
                                     _e233679234022_
                                     _hd233678234025_
                                     _tl233677234027_)
                                    (___kont243799243800_))))
                            (___match244278244279_
                             _e233649233942_
                             _hd233648233945_
                             _tl233647233947_
                             _e233652233950_
                             _hd233651233953_
                             _tl233650233955_
                             _e233655233958_
                             _hd233654233961_
                             _tl233653233963_
                             _e233658233966_
                             _hd233657233969_
                             _tl233656233971_
                             _e233661233974_
                             _hd233660233977_
                             _tl233659233979_
                             _e233664233982_
                             _hd233663233985_
                             _tl233662233987_
                             _e233667233990_
                             _hd233666233993_
                             _tl233665233995_
                             _e233670233998_
                             _hd233669234001_
                             _tl233668234003_))))
                     (___match244076244077_
                      (lambda (_e233615234076_
                               _hd233614234079_
                               _tl233613234081_
                               _e233618234084_
                               _hd233617234087_
                               _tl233616234089_
                               _e233621234092_
                               _hd233620234095_
                               _tl233619234097_
                               _e233624234100_
                               _hd233623234103_
                               _tl233622234105_
                               _e233627234108_
                               _hd233626234111_
                               _tl233625234113_
                               _e233630234116_
                               _hd233629234119_
                               _tl233628234121_
                               _e233633234124_
                               _hd233632234127_
                               _tl233631234129_
                               _e233636234132_
                               _hd233635234135_
                               _tl233634234137_
                               _e233639234140_
                               _hd233638234143_
                               _tl233637234145_
                               _e233642234148_
                               _hd233641234151_
                               _tl233640234153_)
                        (let ((_L234156_ _hd233641234151_)
                              (_L234157_ _hd233632234127_)
                              (_L234158_ _hd233623234103_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L234158_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L234158_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L234157_
                                      _self233496_)))
                              (___kont243791243792_
                               _L234156_
                               _L234157_
                               _L234158_)
                              (___match244280244281_
                               _e233615234076_
                               _hd233614234079_
                               _tl233613234081_
                               _e233618234084_
                               _hd233617234087_
                               _tl233616234089_
                               _e233621234092_
                               _hd233620234095_
                               _tl233619234097_
                               _e233624234100_
                               _hd233623234103_
                               _tl233622234105_
                               _e233627234108_
                               _hd233626234111_
                               _tl233625234113_
                               _e233630234116_
                               _hd233629234119_
                               _tl233628234121_
                               _e233633234124_
                               _hd233632234127_
                               _tl233631234129_
                               _e233636234132_
                               _hd233635234135_
                               _tl233634234137_)))))
                     (___match244074244075_
                      (lambda (_e233615234076_
                               _hd233614234079_
                               _tl233613234081_
                               _e233618234084_
                               _hd233617234087_
                               _tl233616234089_
                               _e233621234092_
                               _hd233620234095_
                               _tl233619234097_
                               _e233624234100_
                               _hd233623234103_
                               _tl233622234105_
                               _e233627234108_
                               _hd233626234111_
                               _tl233625234113_
                               _e233630234116_
                               _hd233629234119_
                               _tl233628234121_
                               _e233633234124_
                               _hd233632234127_
                               _tl233631234129_
                               _e233636234132_
                               _hd233635234135_
                               _tl233634234137_
                               _e233639234140_
                               _hd233638234143_
                               _tl233637234145_
                               _e233642234148_
                               _hd233641234151_
                               _tl233640234153_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl233634234137_))
                            (___match244076244077_
                             _e233615234076_
                             _hd233614234079_
                             _tl233613234081_
                             _e233618234084_
                             _hd233617234087_
                             _tl233616234089_
                             _e233621234092_
                             _hd233620234095_
                             _tl233619234097_
                             _e233624234100_
                             _hd233623234103_
                             _tl233622234105_
                             _e233627234108_
                             _hd233626234111_
                             _tl233625234113_
                             _e233630234116_
                             _hd233629234119_
                             _tl233628234121_
                             _e233633234124_
                             _hd233632234127_
                             _tl233631234129_
                             _e233636234132_
                             _hd233635234135_
                             _tl233634234137_
                             _e233639234140_
                             _hd233638234143_
                             _tl233637234145_
                             _e233642234148_
                             _hd233641234151_
                             _tl233640234153_)
                            (___match244154244155_
                             _e233615234076_
                             _hd233614234079_
                             _tl233613234081_
                             _e233618234084_
                             _hd233617234087_
                             _tl233616234089_
                             _e233621234092_
                             _hd233620234095_
                             _tl233619234097_
                             _e233624234100_
                             _hd233623234103_
                             _tl233622234105_
                             _e233627234108_
                             _hd233626234111_
                             _tl233625234113_
                             _e233630234116_
                             _hd233629234119_
                             _tl233628234121_
                             _e233633234124_
                             _hd233632234127_
                             _tl233631234129_
                             _e233636234132_
                             _hd233635234135_
                             _tl233634234137_
                             _e233639234140_
                             _hd233638234143_
                             _tl233637234145_
                             _e233642234148_
                             _hd233641234151_
                             _tl233640234153_))))
                     (___match244064244065_
                      (lambda (_e233615234076_
                               _hd233614234079_
                               _tl233613234081_
                               _e233618234084_
                               _hd233617234087_
                               _tl233616234089_
                               _e233621234092_
                               _hd233620234095_
                               _tl233619234097_
                               _e233624234100_
                               _hd233623234103_
                               _tl233622234105_
                               _e233627234108_
                               _hd233626234111_
                               _tl233625234113_
                               _e233630234116_
                               _hd233629234119_
                               _tl233628234121_
                               _e233633234124_
                               _hd233632234127_
                               _tl233631234129_
                               _e233636234132_
                               _hd233635234135_
                               _tl233634234137_
                               _e233639234140_
                               _hd233638234143_
                               _tl233637234145_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd233638234143_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233637234145_))
                                (let ((_e233642234148_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233637234145_))))
                                  (let ((_tl233640234153_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233642234148_)))
                                        (_hd233641234151_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233642234148_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233640234153_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl233634234137_))
                                            (___match244076244077_
                                             _e233615234076_
                                             _hd233614234079_
                                             _tl233613234081_
                                             _e233618234084_
                                             _hd233617234087_
                                             _tl233616234089_
                                             _e233621234092_
                                             _hd233620234095_
                                             _tl233619234097_
                                             _e233624234100_
                                             _hd233623234103_
                                             _tl233622234105_
                                             _e233627234108_
                                             _hd233626234111_
                                             _tl233625234113_
                                             _e233630234116_
                                             _hd233629234119_
                                             _tl233628234121_
                                             _e233633234124_
                                             _hd233632234127_
                                             _tl233631234129_
                                             _e233636234132_
                                             _hd233635234135_
                                             _tl233634234137_
                                             _e233639234140_
                                             _hd233638234143_
                                             _tl233637234145_
                                             _e233642234148_
                                             _hd233641234151_
                                             _tl233640234153_)
                                            (___match244154244155_
                                             _e233615234076_
                                             _hd233614234079_
                                             _tl233613234081_
                                             _e233618234084_
                                             _hd233617234087_
                                             _tl233616234089_
                                             _e233621234092_
                                             _hd233620234095_
                                             _tl233619234097_
                                             _e233624234100_
                                             _hd233623234103_
                                             _tl233622234105_
                                             _e233627234108_
                                             _hd233626234111_
                                             _tl233625234113_
                                             _e233630234116_
                                             _hd233629234119_
                                             _tl233628234121_
                                             _e233633234124_
                                             _hd233632234127_
                                             _tl233631234129_
                                             _e233636234132_
                                             _hd233635234135_
                                             _tl233634234137_
                                             _e233639234140_
                                             _hd233638234143_
                                             _tl233637234145_
                                             _e233642234148_
                                             _hd233641234151_
                                             _tl233640234153_))
                                        (___match244278244279_
                                         _e233615234076_
                                         _hd233614234079_
                                         _tl233613234081_
                                         _e233618234084_
                                         _hd233617234087_
                                         _tl233616234089_
                                         _e233621234092_
                                         _hd233620234095_
                                         _tl233619234097_
                                         _e233624234100_
                                         _hd233623234103_
                                         _tl233622234105_
                                         _e233627234108_
                                         _hd233626234111_
                                         _tl233625234113_
                                         _e233630234116_
                                         _hd233629234119_
                                         _tl233628234121_
                                         _e233633234124_
                                         _hd233632234127_
                                         _tl233631234129_
                                         _e233636234132_
                                         _hd233635234135_
                                         _tl233634234137_))))
                                (___match244278244279_
                                 _e233615234076_
                                 _hd233614234079_
                                 _tl233613234081_
                                 _e233618234084_
                                 _hd233617234087_
                                 _tl233616234089_
                                 _e233621234092_
                                 _hd233620234095_
                                 _tl233619234097_
                                 _e233624234100_
                                 _hd233623234103_
                                 _tl233622234105_
                                 _e233627234108_
                                 _hd233626234111_
                                 _tl233625234113_
                                 _e233630234116_
                                 _hd233629234119_
                                 _tl233628234121_
                                 _e233633234124_
                                 _hd233632234127_
                                 _tl233631234129_
                                 _e233636234132_
                                 _hd233635234135_
                                 _tl233634234137_))
                            (___match244278244279_
                             _e233615234076_
                             _hd233614234079_
                             _tl233613234081_
                             _e233618234084_
                             _hd233617234087_
                             _tl233616234089_
                             _e233621234092_
                             _hd233620234095_
                             _tl233619234097_
                             _e233624234100_
                             _hd233623234103_
                             _tl233622234105_
                             _e233627234108_
                             _hd233626234111_
                             _tl233625234113_
                             _e233630234116_
                             _hd233629234119_
                             _tl233628234121_
                             _e233633234124_
                             _hd233632234127_
                             _tl233631234129_
                             _e233636234132_
                             _hd233635234135_
                             _tl233634234137_))))
                     (___match243996243997_
                      (lambda (_e233564234197_
                               _hd233563234200_
                               _tl233562234202_
                               _e233567234205_
                               _hd233566234208_
                               _tl233565234210_
                               _e233570234213_
                               _hd233569234216_
                               _tl233568234218_
                               _e233573234221_
                               _hd233572234224_
                               _tl233571234226_
                               _e233576234229_
                               _hd233575234232_
                               _tl233574234234_
                               _e233579234237_
                               _hd233578234240_
                               _tl233577234242_
                               _e233582234245_
                               _hd233581234248_
                               _tl233580234250_
                               _e233585234253_
                               _hd233584234256_
                               _tl233583234258_
                               _e233588234261_
                               _hd233587234264_
                               _tl233586234266_
                               _e233591234269_
                               _hd233590234272_
                               _tl233589234274_
                               _e233594234277_
                               _hd233593234280_
                               _tl233592234282_
                               _e233597234285_
                               _hd233596234288_
                               _tl233595234290_
                               _e233600234293_
                               _hd233599234296_
                               _tl233598234298_
                               ___splice243789243790_
                               _target233601234301_
                               _tl233603234303_)
                        (letrec ((_loop233604234306_
                                  (lambda (_hd233602234309_ _args233608234311_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd233602234309_))
                                        (let ((_e233605234314_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd233602234309_))))
                                          (let ((_lp-tl233607234319_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233605234314_)))
                                                (_lp-hd233606234317_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233605234314_))))
                                            (let ((__tmp244727
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd233606234317_
                                                           _args233608234311_))))
                                              (declare (not safe))
                                              (_loop233604234306_
                                               _lp-tl233607234319_
                                               __tmp244727))))
                                        (let ((_args233609234322_
                                               (reverse _args233608234311_)))
                                          (let ((_L234325_ _args233609234322_)
                                                (_L234326_ _hd233599234296_)
                                                (_L234327_ _hd233590234272_)
                                                (_L234328_ _hd233581234248_)
                                                (_L234329_ _hd233572234224_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L234329_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L234328_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L234327_
                                                        _self233496_)))
                                                (___kont243787243788_
                                                 _L234325_
                                                 _L234326_
                                                 _L234327_
                                                 _L234328_
                                                 _L234329_)
                                                (___kont243799243800_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop233604234306_ _target233601234301_ '())))))
                     (___match243954243955_
                      (lambda (_e233564234197_
                               _hd233563234200_
                               _tl233562234202_
                               _e233567234205_
                               _hd233566234208_
                               _tl233565234210_
                               _e233570234213_
                               _hd233569234216_
                               _tl233568234218_
                               _e233573234221_
                               _hd233572234224_
                               _tl233571234226_
                               _e233576234229_
                               _hd233575234232_
                               _tl233574234234_
                               _e233579234237_
                               _hd233578234240_
                               _tl233577234242_
                               _e233582234245_
                               _hd233581234248_
                               _tl233580234250_
                               _e233585234253_
                               _hd233584234256_
                               _tl233583234258_
                               _e233588234261_
                               _hd233587234264_
                               _tl233586234266_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd233587234264_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233586234266_))
                                (let ((_e233591234269_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233586234266_))))
                                  (let ((_tl233589234274_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233591234269_)))
                                        (_hd233590234272_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233591234269_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233589234274_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233583234258_))
                                            (let ((_e233594234277_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233583234258_))))
                                              (let ((_tl233592234282_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233594234277_)))
                                                    (_hd233593234280_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233594234277_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233593234280_))
                                                    (let ((_e233597234285_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233593234280_))))
                                                      (let ((_tl233595234290_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233597234285_)))
                    (_hd233596234288_
                     (let () (declare (not safe)) (##car _e233597234285_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233596234288_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd233596234288_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233595234290_))
                            (let ((_e233600234293_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233595234290_))))
                              (let ((_tl233598234298_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233600234293_)))
                                    (_hd233599234296_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233600234293_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233598234298_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl233592234282_))
                                        (let ((___splice243789243790_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl233592234282_
                                                  '0))))
                                          (let ((_tl233603234303_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice243789243790_
                                                    '1)))
                                                (_target233601234301_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice243789243790_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl233603234303_))
                                                (___match243996243997_
                                                 _e233564234197_
                                                 _hd233563234200_
                                                 _tl233562234202_
                                                 _e233567234205_
                                                 _hd233566234208_
                                                 _tl233565234210_
                                                 _e233570234213_
                                                 _hd233569234216_
                                                 _tl233568234218_
                                                 _e233573234221_
                                                 _hd233572234224_
                                                 _tl233571234226_
                                                 _e233576234229_
                                                 _hd233575234232_
                                                 _tl233574234234_
                                                 _e233579234237_
                                                 _hd233578234240_
                                                 _tl233577234242_
                                                 _e233582234245_
                                                 _hd233581234248_
                                                 _tl233580234250_
                                                 _e233585234253_
                                                 _hd233584234256_
                                                 _tl233583234258_
                                                 _e233588234261_
                                                 _hd233587234264_
                                                 _tl233586234266_
                                                 _e233591234269_
                                                 _hd233590234272_
                                                 _tl233589234274_
                                                 _e233594234277_
                                                 _hd233593234280_
                                                 _tl233592234282_
                                                 _e233597234285_
                                                 _hd233596234288_
                                                 _tl233595234290_
                                                 _e233600234293_
                                                 _hd233599234296_
                                                 _tl233598234298_
                                                 ___splice243789243790_
                                                 _target233601234301_
                                                 _tl233603234303_)
                                                (___kont243799243800_))))
                                        (___kont243799243800_))
                                    (___kont243799243800_))))
                            (___kont243799243800_))
                        (___kont243799243800_))
                    (___kont243799243800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243799243800_))))
                                            (___match244278244279_
                                             _e233564234197_
                                             _hd233563234200_
                                             _tl233562234202_
                                             _e233567234205_
                                             _hd233566234208_
                                             _tl233565234210_
                                             _e233570234213_
                                             _hd233569234216_
                                             _tl233568234218_
                                             _e233573234221_
                                             _hd233572234224_
                                             _tl233571234226_
                                             _e233576234229_
                                             _hd233575234232_
                                             _tl233574234234_
                                             _e233579234237_
                                             _hd233578234240_
                                             _tl233577234242_
                                             _e233582234245_
                                             _hd233581234248_
                                             _tl233580234250_
                                             _e233585234253_
                                             _hd233584234256_
                                             _tl233583234258_))
                                        (___match244278244279_
                                         _e233564234197_
                                         _hd233563234200_
                                         _tl233562234202_
                                         _e233567234205_
                                         _hd233566234208_
                                         _tl233565234210_
                                         _e233570234213_
                                         _hd233569234216_
                                         _tl233568234218_
                                         _e233573234221_
                                         _hd233572234224_
                                         _tl233571234226_
                                         _e233576234229_
                                         _hd233575234232_
                                         _tl233574234234_
                                         _e233579234237_
                                         _hd233578234240_
                                         _tl233577234242_
                                         _e233582234245_
                                         _hd233581234248_
                                         _tl233580234250_
                                         _e233585234253_
                                         _hd233584234256_
                                         _tl233583234258_))))
                                (___match244278244279_
                                 _e233564234197_
                                 _hd233563234200_
                                 _tl233562234202_
                                 _e233567234205_
                                 _hd233566234208_
                                 _tl233565234210_
                                 _e233570234213_
                                 _hd233569234216_
                                 _tl233568234218_
                                 _e233573234221_
                                 _hd233572234224_
                                 _tl233571234226_
                                 _e233576234229_
                                 _hd233575234232_
                                 _tl233574234234_
                                 _e233579234237_
                                 _hd233578234240_
                                 _tl233577234242_
                                 _e233582234245_
                                 _hd233581234248_
                                 _tl233580234250_
                                 _e233585234253_
                                 _hd233584234256_
                                 _tl233583234258_))
                            (___match244064244065_
                             _e233564234197_
                             _hd233563234200_
                             _tl233562234202_
                             _e233567234205_
                             _hd233566234208_
                             _tl233565234210_
                             _e233570234213_
                             _hd233569234216_
                             _tl233568234218_
                             _e233573234221_
                             _hd233572234224_
                             _tl233571234226_
                             _e233576234229_
                             _hd233575234232_
                             _tl233574234234_
                             _e233579234237_
                             _hd233578234240_
                             _tl233577234242_
                             _e233582234245_
                             _hd233581234248_
                             _tl233580234250_
                             _e233585234253_
                             _hd233584234256_
                             _tl233583234258_
                             _e233588234261_
                             _hd233587234264_
                             _tl233586234266_))))
                     (___match243886243887_
                      (lambda (_e233520234389_
                               _hd233519234392_
                               _tl233518234394_
                               _e233523234397_
                               _hd233522234400_
                               _tl233521234402_
                               _e233526234405_
                               _hd233525234408_
                               _tl233524234410_
                               _e233529234413_
                               _hd233528234416_
                               _tl233527234418_
                               _e233532234421_
                               _hd233531234424_
                               _tl233530234426_
                               _e233535234429_
                               _hd233534234432_
                               _tl233533234434_
                               _e233538234437_
                               _hd233537234440_
                               _tl233536234442_
                               _e233541234445_
                               _hd233540234448_
                               _tl233539234450_
                               _e233544234453_
                               _hd233543234456_
                               _tl233542234458_
                               _e233547234461_
                               _hd233546234464_
                               _tl233545234466_
                               ___splice243785243786_
                               _target233548234469_
                               _tl233550234471_)
                        (letrec ((_loop233551234474_
                                  (lambda (_hd233549234477_ _args233555234479_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd233549234477_))
                                        (let ((_e233552234482_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd233549234477_))))
                                          (let ((_lp-tl233554234487_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233552234482_)))
                                                (_lp-hd233553234485_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233552234482_))))
                                            (let ((__tmp244728
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd233553234485_
                                                           _args233555234479_))))
                                              (declare (not safe))
                                              (_loop233551234474_
                                               _lp-tl233554234487_
                                               __tmp244728))))
                                        (let ((_args233556234490_
                                               (reverse _args233555234479_)))
                                          (let ((_L234493_ _args233556234490_)
                                                (_L234494_ _hd233546234464_)
                                                (_L234495_ _hd233537234440_)
                                                (_L234496_ _hd233528234416_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L234496_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L234495_
                                                        _self233496_)))
                                                (___kont243783243784_
                                                 _L234493_
                                                 _L234494_
                                                 _L234495_
                                                 _L234496_)
                                                (___match244074244075_
                                                 _e233520234389_
                                                 _hd233519234392_
                                                 _tl233518234394_
                                                 _e233523234397_
                                                 _hd233522234400_
                                                 _tl233521234402_
                                                 _e233526234405_
                                                 _hd233525234408_
                                                 _tl233524234410_
                                                 _e233529234413_
                                                 _hd233528234416_
                                                 _tl233527234418_
                                                 _e233532234421_
                                                 _hd233531234424_
                                                 _tl233530234426_
                                                 _e233535234429_
                                                 _hd233534234432_
                                                 _tl233533234434_
                                                 _e233538234437_
                                                 _hd233537234440_
                                                 _tl233536234442_
                                                 _e233541234445_
                                                 _hd233540234448_
                                                 _tl233539234450_
                                                 _e233544234453_
                                                 _hd233543234456_
                                                 _tl233542234458_
                                                 _e233547234461_
                                                 _hd233546234464_
                                                 _tl233545234466_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop233551234474_ _target233548234469_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx243781243782_))
                    (let ((_e233520234389_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx243781243782_))))
                      (let ((_tl233518234394_
                             (let ()
                               (declare (not safe))
                               (##cdr _e233520234389_)))
                            (_hd233519234392_
                             (let ()
                               (declare (not safe))
                               (##car _e233520234389_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233518234394_))
                            (let ((_e233523234397_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233518234394_))))
                              (let ((_tl233521234402_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233523234397_)))
                                    (_hd233522234400_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233523234397_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233522234400_))
                                    (let ((_e233526234405_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233522234400_))))
                                      (let ((_tl233524234410_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233526234405_)))
                                            (_hd233525234408_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233526234405_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233525234408_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd233525234408_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233524234410_))
                                                    (let ((_e233529234413_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233524234410_))))
                                                      (let ((_tl233527234418_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233529234413_)))
                    (_hd233528234416_
                     (let () (declare (not safe)) (##car _e233529234413_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl233527234418_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233521234402_))
                        (let ((_e233532234421_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233521234402_))))
                          (let ((_tl233530234426_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233532234421_)))
                                (_hd233531234424_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233532234421_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233531234424_))
                                (let ((_e233535234429_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233531234424_))))
                                  (let ((_tl233533234434_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233535234429_)))
                                        (_hd233534234432_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233535234429_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233534234432_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd233534234432_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233533234434_))
                                                (let ((_e233538234437_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233533234434_))))
                                                  (let ((_tl233536234442_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233538234437_)))
                                                        (_hd233537234440_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233538234437_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233536234442_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl233530234426_))
                                                            (let ((_e233541234445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl233530234426_))))
                      (let ((_tl233539234450_
                             (let ()
                               (declare (not safe))
                               (##cdr _e233541234445_)))
                            (_hd233540234448_
                             (let ()
                               (declare (not safe))
                               (##car _e233541234445_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd233540234448_))
                            (let ((_e233544234453_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd233540234448_))))
                              (let ((_tl233542234458_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233544234453_)))
                                    (_hd233543234456_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233544234453_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd233543234456_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd233543234456_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233542234458_))
                                            (let ((_e233547234461_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233542234458_))))
                                              (let ((_tl233545234466_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233547234461_)))
                                                    (_hd233546234464_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233547234461_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl233545234466_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl233539234450_))
                                                        (let ((___splice243785243786_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl233539234450_ '0))))
                  (let ((_tl233550234471_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice243785243786_ '1)))
                        (_target233548234469_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice243785243786_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl233550234471_))
                        (___match243886243887_
                         _e233520234389_
                         _hd233519234392_
                         _tl233518234394_
                         _e233523234397_
                         _hd233522234400_
                         _tl233521234402_
                         _e233526234405_
                         _hd233525234408_
                         _tl233524234410_
                         _e233529234413_
                         _hd233528234416_
                         _tl233527234418_
                         _e233532234421_
                         _hd233531234424_
                         _tl233530234426_
                         _e233535234429_
                         _hd233534234432_
                         _tl233533234434_
                         _e233538234437_
                         _hd233537234440_
                         _tl233536234442_
                         _e233541234445_
                         _hd233540234448_
                         _tl233539234450_
                         _e233544234453_
                         _hd233543234456_
                         _tl233542234458_
                         _e233547234461_
                         _hd233546234464_
                         _tl233545234466_
                         ___splice243785243786_
                         _target233548234469_
                         _tl233550234471_)
                        (___match244074244075_
                         _e233520234389_
                         _hd233519234392_
                         _tl233518234394_
                         _e233523234397_
                         _hd233522234400_
                         _tl233521234402_
                         _e233526234405_
                         _hd233525234408_
                         _tl233524234410_
                         _e233529234413_
                         _hd233528234416_
                         _tl233527234418_
                         _e233532234421_
                         _hd233531234424_
                         _tl233530234426_
                         _e233535234429_
                         _hd233534234432_
                         _tl233533234434_
                         _e233538234437_
                         _hd233537234440_
                         _tl233536234442_
                         _e233541234445_
                         _hd233540234448_
                         _tl233539234450_
                         _e233544234453_
                         _hd233543234456_
                         _tl233542234458_
                         _e233547234461_
                         _hd233546234464_
                         _tl233545234466_))))
                (___match244074244075_
                 _e233520234389_
                 _hd233519234392_
                 _tl233518234394_
                 _e233523234397_
                 _hd233522234400_
                 _tl233521234402_
                 _e233526234405_
                 _hd233525234408_
                 _tl233524234410_
                 _e233529234413_
                 _hd233528234416_
                 _tl233527234418_
                 _e233532234421_
                 _hd233531234424_
                 _tl233530234426_
                 _e233535234429_
                 _hd233534234432_
                 _tl233533234434_
                 _e233538234437_
                 _hd233537234440_
                 _tl233536234442_
                 _e233541234445_
                 _hd233540234448_
                 _tl233539234450_
                 _e233544234453_
                 _hd233543234456_
                 _tl233542234458_
                 _e233547234461_
                 _hd233546234464_
                 _tl233545234466_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match244278244279_
                                                     _e233520234389_
                                                     _hd233519234392_
                                                     _tl233518234394_
                                                     _e233523234397_
                                                     _hd233522234400_
                                                     _tl233521234402_
                                                     _e233526234405_
                                                     _hd233525234408_
                                                     _tl233524234410_
                                                     _e233529234413_
                                                     _hd233528234416_
                                                     _tl233527234418_
                                                     _e233532234421_
                                                     _hd233531234424_
                                                     _tl233530234426_
                                                     _e233535234429_
                                                     _hd233534234432_
                                                     _tl233533234434_
                                                     _e233538234437_
                                                     _hd233537234440_
                                                     _tl233536234442_
                                                     _e233541234445_
                                                     _hd233540234448_
                                                     _tl233539234450_))))
                                            (___match244278244279_
                                             _e233520234389_
                                             _hd233519234392_
                                             _tl233518234394_
                                             _e233523234397_
                                             _hd233522234400_
                                             _tl233521234402_
                                             _e233526234405_
                                             _hd233525234408_
                                             _tl233524234410_
                                             _e233529234413_
                                             _hd233528234416_
                                             _tl233527234418_
                                             _e233532234421_
                                             _hd233531234424_
                                             _tl233530234426_
                                             _e233535234429_
                                             _hd233534234432_
                                             _tl233533234434_
                                             _e233538234437_
                                             _hd233537234440_
                                             _tl233536234442_
                                             _e233541234445_
                                             _hd233540234448_
                                             _tl233539234450_))
                                        (___match243954243955_
                                         _e233520234389_
                                         _hd233519234392_
                                         _tl233518234394_
                                         _e233523234397_
                                         _hd233522234400_
                                         _tl233521234402_
                                         _e233526234405_
                                         _hd233525234408_
                                         _tl233524234410_
                                         _e233529234413_
                                         _hd233528234416_
                                         _tl233527234418_
                                         _e233532234421_
                                         _hd233531234424_
                                         _tl233530234426_
                                         _e233535234429_
                                         _hd233534234432_
                                         _tl233533234434_
                                         _e233538234437_
                                         _hd233537234440_
                                         _tl233536234442_
                                         _e233541234445_
                                         _hd233540234448_
                                         _tl233539234450_
                                         _e233544234453_
                                         _hd233543234456_
                                         _tl233542234458_))
                                    (___match244278244279_
                                     _e233520234389_
                                     _hd233519234392_
                                     _tl233518234394_
                                     _e233523234397_
                                     _hd233522234400_
                                     _tl233521234402_
                                     _e233526234405_
                                     _hd233525234408_
                                     _tl233524234410_
                                     _e233529234413_
                                     _hd233528234416_
                                     _tl233527234418_
                                     _e233532234421_
                                     _hd233531234424_
                                     _tl233530234426_
                                     _e233535234429_
                                     _hd233534234432_
                                     _tl233533234434_
                                     _e233538234437_
                                     _hd233537234440_
                                     _tl233536234442_
                                     _e233541234445_
                                     _hd233540234448_
                                     _tl233539234450_))))
                            (___match244278244279_
                             _e233520234389_
                             _hd233519234392_
                             _tl233518234394_
                             _e233523234397_
                             _hd233522234400_
                             _tl233521234402_
                             _e233526234405_
                             _hd233525234408_
                             _tl233524234410_
                             _e233529234413_
                             _hd233528234416_
                             _tl233527234418_
                             _e233532234421_
                             _hd233531234424_
                             _tl233530234426_
                             _e233535234429_
                             _hd233534234432_
                             _tl233533234434_
                             _e233538234437_
                             _hd233537234440_
                             _tl233536234442_
                             _e233541234445_
                             _hd233540234448_
                             _tl233539234450_))))
                    (___match244216244217_
                     _e233520234389_
                     _hd233519234392_
                     _tl233518234394_
                     _e233523234397_
                     _hd233522234400_
                     _tl233521234402_
                     _e233526234405_
                     _hd233525234408_
                     _tl233524234410_
                     _e233529234413_
                     _hd233528234416_
                     _tl233527234418_
                     _e233532234421_
                     _hd233531234424_
                     _tl233530234426_
                     _e233535234429_
                     _hd233534234432_
                     _tl233533234434_
                     _e233538234437_
                     _hd233537234440_
                     _tl233536234442_))
                (___kont243799243800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont243799243800_))
                                            (___kont243799243800_))
                                        (___kont243799243800_))))
                                (___kont243799243800_))))
                        (___kont243799243800_))
                    (___kont243799243800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243799243800_))
                                                (___kont243799243800_))
                                            (___kont243799243800_))))
                                    (___kont243799243800_))))
                            (___kont243799243800_))))
                    (___kont243799243800_))))))))))
