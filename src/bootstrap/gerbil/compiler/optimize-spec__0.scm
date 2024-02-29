(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1709229972)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl134174_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp135302 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl134174_ __tmp135302))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134174_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134174_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134174_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134174_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl134174_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx134157_ . _args134159_)
        (let ((__tmp135304
               (lambda ()
                 (declare (not safe))
                 (if (null? _args134159_)
                     (gxc#compile-e__0 _stx134157_)
                     (let ((_arg1134164_ (car _args134159_))
                           (_rest134166_ (cdr _args134159_)))
                       (if (null? _rest134166_)
                           (gxc#compile-e__1 _stx134157_ _arg1134164_)
                           (let ((_arg2134169_ (car _rest134166_))
                                 (_rest134171_ (cdr _rest134166_)))
                             (if (null? _rest134171_)
                                 (gxc#compile-e__2
                                  _stx134157_
                                  _arg1134164_
                                  _arg2134169_)
                                 (apply gxc#compile-e
                                        _stx134157_
                                        _arg1134164_
                                        _arg2134169_
                                        _rest134171_))))))))
              (__tmp135303 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp135304
           gxc#current-compile-methods
           __tmp135303))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl134154_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp135305 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl134154_ __tmp135305))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134154_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134154_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134154_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134154_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134154_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134154_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134154_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134154_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134154_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134154_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134154_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134154_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134154_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134154_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134154_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134154_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl134154_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx134137_ . _args134139_)
        (let ((__tmp135307
               (lambda ()
                 (declare (not safe))
                 (if (null? _args134139_)
                     (gxc#compile-e__0 _stx134137_)
                     (let ((_arg1134144_ (car _args134139_))
                           (_rest134146_ (cdr _args134139_)))
                       (if (null? _rest134146_)
                           (gxc#compile-e__1 _stx134137_ _arg1134144_)
                           (let ((_arg2134149_ (car _rest134146_))
                                 (_rest134151_ (cdr _rest134146_)))
                             (if (null? _rest134151_)
                                 (gxc#compile-e__2
                                  _stx134137_
                                  _arg1134144_
                                  _arg2134149_)
                                 (apply gxc#compile-e
                                        _stx134137_
                                        _arg1134144_
                                        _arg2134149_
                                        _rest134151_))))))))
              (__tmp135306 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp135307
           gxc#current-compile-methods
           __tmp135306))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl134134_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp135308 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl134134_ __tmp135308))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134134_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134134_ '%#call gxc#subst-object-refs-call%))
           _tbl134134_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx134117_ . _args134119_)
        (let ((__tmp135310
               (lambda ()
                 (declare (not safe))
                 (if (null? _args134119_)
                     (gxc#compile-e__0 _stx134117_)
                     (let ((_arg1134124_ (car _args134119_))
                           (_rest134126_ (cdr _args134119_)))
                       (if (null? _rest134126_)
                           (gxc#compile-e__1 _stx134117_ _arg1134124_)
                           (let ((_arg2134129_ (car _rest134126_))
                                 (_rest134131_ (cdr _rest134126_)))
                             (if (null? _rest134131_)
                                 (gxc#compile-e__2
                                  _stx134117_
                                  _arg1134124_
                                  _arg2134129_)
                                 (apply gxc#compile-e
                                        _stx134117_
                                        _arg1134124_
                                        _arg2134129_
                                        _rest134131_))))))))
              (__tmp135309 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp135310
           gxc#current-compile-methods
           __tmp135309))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx131329_)
        (letrec ((_generate-method-bind131331_
                  (lambda (_$klass134110_
                           _$method-table134111_
                           _id134112_
                           _$id134113_)
                    (let ((_$tmp134115_
                           (let ((__tmp135311 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp135311))))
                      (let ((__tmp135359
                             (let ()
                               (declare (not safe))
                               (cons _$id134113_ '())))
                            (__tmp135312
                             (let ((__tmp135313
                                    (let ((__tmp135314
                                           (let ((__tmp135357
                                                  (let ((__tmp135358
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135358)))
                                                 (__tmp135315
                                                  (let ((__tmp135316
                                                         (let ((__tmp135317
                                                                (let ((__tmp135318
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135319
                                      (let ((__tmp135320
                                             (let ((__tmp135340
                                                    (let ((__tmp135341
                                                           (let ((__tmp135356
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp134115_ '())))
                         (__tmp135342
                          (let ((__tmp135343
                                 (let ((__tmp135344
                                        (let ((__tmp135354
                                               (let ((__tmp135355
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp135355)))
                                              (__tmp135345
                                               (let ((__tmp135352
                                                      (let ((__tmp135353
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table134111_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp135353)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp135346
                                                      (let ((__tmp135350
                                                             (let ((__tmp135351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id134112_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp135351)))
                    (__tmp135347
                     (let ((__tmp135348
                            (let ((__tmp135349
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp135349))))
                       (declare (not safe))
                       (cons __tmp135348 '()))))
                (declare (not safe))
                (cons __tmp135350 __tmp135347))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp135352
                                                       __tmp135346))))
                                          (declare (not safe))
                                          (cons __tmp135354 __tmp135345))))
                                   (declare (not safe))
                                   (cons '%#call __tmp135344))))
                            (declare (not safe))
                            (cons __tmp135343 '()))))
                     (declare (not safe))
                     (cons __tmp135356 __tmp135342))))
              (declare (not safe))
              (cons __tmp135341 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135321
                                                    (let ((__tmp135322
                                                           (let ((__tmp135323
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135338
                                 (let ((__tmp135339
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp134115_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp135339)))
                                (__tmp135324
                                 (let ((__tmp135336
                                        (let ((__tmp135337
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp134115_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp135337)))
                                       (__tmp135325
                                        (let ((__tmp135326
                                               (let ((__tmp135327
                                                      (let ((__tmp135334
                                                             (let ((__tmp135335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp135335)))
                    (__tmp135328
                     (let ((__tmp135332
                            (let ((__tmp135333
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp135333)))
                           (__tmp135329
                            (let ((__tmp135330
                                   (let ((__tmp135331
                                          (let ()
                                            (declare (not safe))
                                            (cons _id134112_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp135331))))
                              (declare (not safe))
                              (cons __tmp135330 '()))))
                       (declare (not safe))
                       (cons __tmp135332 __tmp135329))))
                (declare (not safe))
                (cons __tmp135334 __tmp135328))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp135327))))
                                          (declare (not safe))
                                          (cons __tmp135326 '()))))
                                   (declare (not safe))
                                   (cons __tmp135336 __tmp135325))))
                            (declare (not safe))
                            (cons __tmp135338 __tmp135324))))
                     (declare (not safe))
                     (cons '%#if __tmp135323))))
              (declare (not safe))
              (cons __tmp135322 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135340
                                                     __tmp135321))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp135320))))
                                 (declare (not safe))
                                 (cons __tmp135319 '()))))
                          (declare (not safe))
                          (cons '() __tmp135318))))
                   (declare (not safe))
                   (cons '%#lambda __tmp135317))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135316 '()))))
                                             (declare (not safe))
                                             (cons __tmp135357 __tmp135315))))
                                      (declare (not safe))
                                      (cons '%#call __tmp135314))))
                               (declare (not safe))
                               (cons __tmp135313 '()))))
                        (declare (not safe))
                        (cons __tmp135359 __tmp135312)))))
                 (_generate-slot-bind131332_
                  (lambda (_$klass134104_ _id134105_ _$id134106_)
                    (let ((_$tmp134108_
                           (let ((__tmp135360 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp135360))))
                      (let ((__tmp135397
                             (let ()
                               (declare (not safe))
                               (cons _$id134106_ '())))
                            (__tmp135361
                             (let ((__tmp135362
                                    (let ((__tmp135363
                                           (let ((__tmp135383
                                                  (let ((__tmp135384
                                                         (let ((__tmp135396
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp134108_ '())))
                       (__tmp135385
                        (let ((__tmp135386
                               (let ((__tmp135387
                                      (let ((__tmp135394
                                             (let ((__tmp135395
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp135395)))
                                            (__tmp135388
                                             (let ((__tmp135392
                                                    (let ((__tmp135393
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass134104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp135393)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135389
                                                    (let ((__tmp135390
                                                           (let ((__tmp135391
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id134105_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp135391))))
              (declare (not safe))
              (cons __tmp135390 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135392
                                                     __tmp135389))))
                                        (declare (not safe))
                                        (cons __tmp135394 __tmp135388))))
                                 (declare (not safe))
                                 (cons '%#call __tmp135387))))
                          (declare (not safe))
                          (cons __tmp135386 '()))))
                   (declare (not safe))
                   (cons __tmp135396 __tmp135385))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135384 '())))
                                                 (__tmp135364
                                                  (let ((__tmp135365
                                                         (let ((__tmp135366
                                                                (let ((__tmp135381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135382
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp134108_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp135382)))
                              (__tmp135367
                               (let ((__tmp135379
                                      (let ((__tmp135380
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp134108_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp135380)))
                                     (__tmp135368
                                      (let ((__tmp135369
                                             (let ((__tmp135370
                                                    (let ((__tmp135377
                                                           (let ((__tmp135378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp135378)))
                  (__tmp135371
                   (let ((__tmp135375
                          (let ((__tmp135376
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp135376)))
                         (__tmp135372
                          (let ((__tmp135373
                                 (let ((__tmp135374
                                        (let ()
                                          (declare (not safe))
                                          (cons _id134105_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp135374))))
                            (declare (not safe))
                            (cons __tmp135373 '()))))
                     (declare (not safe))
                     (cons __tmp135375 __tmp135372))))
              (declare (not safe))
              (cons __tmp135377 __tmp135371))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp135370))))
                                        (declare (not safe))
                                        (cons __tmp135369 '()))))
                                 (declare (not safe))
                                 (cons __tmp135379 __tmp135368))))
                          (declare (not safe))
                          (cons __tmp135381 __tmp135367))))
                   (declare (not safe))
                   (cons '%#if __tmp135366))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135365 '()))))
                                             (declare (not safe))
                                             (cons __tmp135383 __tmp135364))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp135363))))
                               (declare (not safe))
                               (cons __tmp135362 '()))))
                        (declare (not safe))
                        (cons __tmp135397 __tmp135361)))))
                 (_generate-specializer-impl131333_
                  (lambda (_$klass134098_
                           _$method-table134099_
                           _methods-bind134100_
                           _slots-bind134101_
                           _specializer-impl134102_)
                    (let ((__tmp135398
                           (let ((__tmp135399
                                  (let ((__tmp135405
                                         (let ((__tmp135406
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table134099_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass134098_ __tmp135406)))
                                        (__tmp135400
                                         (let ((__tmp135401
                                                (let ((__tmp135402
                                                       (let ((__tmp135404
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind134101_ _methods-bind134100_)))
                     (__tmp135403
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl134102_ '()))))
                 (declare (not safe))
                 (cons __tmp135404 __tmp135403))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp135402))))
                                           (declare (not safe))
                                           (cons __tmp135401 '()))))
                                    (declare (not safe))
                                    (cons __tmp135405 __tmp135400))))
                             (declare (not safe))
                             (cons '%#lambda __tmp135399))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135398 _stx131329_))))
                 (_generate-specializer-def131334_
                  (lambda (_id134094_
                           _specializer-id134095_
                           _specializer-impl134096_)
                    (let ((__tmp135407
                           (let ((__tmp135408
                                  (let ((__tmp135409
                                         (let ((__tmp135422
                                                (let ((__tmp135423
                                                       (let ((__tmp135424
                                                              (let ((__tmp135426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id134095_ '())))
                            (__tmp135425
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl134096_ '()))))
                        (declare (not safe))
                        (cons __tmp135426 __tmp135425))))
                 (declare (not safe))
                 (cons '%#define-values __tmp135424))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp135423
                                                   _stx131329_)))
                                               (__tmp135410
                                                (let ((__tmp135411
                                                       (let ((__tmp135412
                                                              (let ((__tmp135413
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135420
                                    (let ((__tmp135421
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp135421)))
                                   (__tmp135414
                                    (let ((__tmp135418
                                           (let ((__tmp135419
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id134094_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135419)))
                                          (__tmp135415
                                           (let ((__tmp135416
                                                  (let ((__tmp135417
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id134095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp135417))))
                                             (declare (not safe))
                                             (cons __tmp135416 '()))))
                                      (declare (not safe))
                                      (cons __tmp135418 __tmp135415))))
                               (declare (not safe))
                               (cons __tmp135420 __tmp135414))))
                        (declare (not safe))
                        (cons '%#call __tmp135413))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp135412 _stx131329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135411 '()))))
                                           (declare (not safe))
                                           (cons __tmp135422 __tmp135410))))
                                    (declare (not safe))
                                    (cons _stx131329_ __tmp135409))))
                             (declare (not safe))
                             (cons '%#begin __tmp135408))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135407 _stx131329_)))))
          (let* ((___stx134263134264_ _stx131329_)
                 (_g131337131357_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134263134264_)))))
            (let ((___kont134265134266_
                   (lambda (_L131401_ _L131402_)
                     (let ((_method-calls131421_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs131422_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty131423_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?131425_
                                 (lambda ()
                                   (if (let ((__tmp135428
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls131421_))))
                                         (declare (not safe))
                                         (fxzero? __tmp135428))
                                       (let ((__tmp135427
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs131422_))))
                                         (declare (not safe))
                                         (fxzero? __tmp135427))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L131401_))
                             (let* ((___stx134177134178_ _L131401_)
                                    (_g131812131830_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx134177134178_)))))
                               (let ((___kont134179134180_
                                      (lambda (_L131866_ _L131867_ _L131868_)
                                        (for-each
                                         (lambda (_g131883131885_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g131883131885_
                                              _L131868_
                                              _method-calls131421_
                                              _slot-refs131422_)))
                                         _L131866_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?131425_))
                                            _stx131329_
                                            (let* ((_specializer-id131894_
                                                    (let* ((_id131888_
                                                            (let ((__tmp135550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L131402_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp135550 '"::specialize")))
                   (_specializer-id131891_
                    (let ((__tmp135551
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx131329_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id131888_ __tmp135551))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id131891_))
              _specializer-id131891_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass131896_
                                                    (let ((__tmp135552
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135552)))
                                                   (_$method-table131898_
                                                    (let ((__tmp135553
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135553)))
                                                   (_methods131900_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls131421_)))
                                                   (_$methods131904_
                                                    (map (lambda (_id131902_)
                                                           (let ((__tmp135554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id131902_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135554)))
                 _methods131900_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135555_
                                                    (for-each
                                                     (lambda (_g131905131908_
                                                              _g131906131910_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls131421_
                                                          _g131905131908_
                                                          _g131906131910_)))
                                                     _methods131900_
                                                     _$methods131904_))
                                                   (_methods-bind131921_
                                                    (map (lambda (_g131913131916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131914131918_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind131331_
                      _$klass131896_
                      _$method-table131898_
                      _g131913131916_
                      _g131914131918_)))
                 _methods131900_
                 _$methods131904_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots131923_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs131422_)))
                                                   (_$slots131927_
                                                    (map (lambda (_id131925_)
                                                           (let ((__tmp135556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id131925_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135556)))
                 _slots131923_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135557_
                                                    (for-each
                                                     (lambda (_g131928131931_
                                                              _g131929131933_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs131422_
                                                          _g131928131931_
                                                          _g131929131933_)))
                                                     _slots131923_
                                                     _$slots131927_))
                                                   (_slots-bind131944_
                                                    (map (lambda (_g131936131939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131937131941_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind131332_
                      _$klass131896_
                      _g131936131939_
                      _g131937131941_)))
                 _slots131923_
                 _$slots131927_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body131950_
                                                    (map (lambda (_g131945131947_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g131945131947_
                                                              _L131868_
                                                              _$klass131896_
                                                              _method-calls131421_
                                                              _slot-refs131422_)))
                                                         _L131866_))
                                                   (_specializer-impl131952_
                                                    (let ((__tmp135558
                                                           (let ((__tmp135559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135560
                                 (let ()
                                   (declare (not safe))
                                   (cons _L131868_ _L131867_))))
                            (declare (not safe))
                            (cons __tmp135560 _specializer-body131950_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp135559))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp135558 _stx131329_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl131954_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl131333_
                                                       _$klass131896_
                                                       _$method-table131898_
                                                       _methods-bind131921_
                                                       _slots-bind131944_
                                                       _specializer-impl131952_))))
                                              (let ((__tmp135562
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L131402_)))
                                                    (__tmp135561
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id131894_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp135562
                                                 '" => "
                                                 __tmp135561))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def131334_
                                                 _L131402_
                                                 _specializer-id131894_
                                                 _specializer-impl131954_))))))
                                     (___kont134181134182_
                                      (lambda () _stx131329_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx134177134178_))
                                     (let ((_e131819131842_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx134177134178_))))
                                       (let ((_tl131817131847_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e131819131842_)))
                                             (_hd131818131845_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e131819131842_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl131817131847_))
                                             (let ((_e131822131850_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl131817131847_))))
                                               (let ((_tl131820131855_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e131822131850_)))
                                                     (_hd131821131853_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e131822131850_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd131821131853_))
                                                     (let ((_e131825131858_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd131821131853_))))
                                                       (let ((_tl131823131863_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e131825131858_)))
                     (_hd131824131861_
                      (let () (declare (not safe)) (##car _e131825131858_))))
                 (___kont134179134180_
                  _tl131820131855_
                  _tl131823131863_
                  _hd131824131861_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134181134182_))))
                                             (___kont134181134182_))))
                                     (___kont134181134182_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L131401_))
                                 (let* ((_g131960131979_
                                         (lambda (_g131961131976_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g131961131976_))))
                                        (_g131959132262_
                                         (lambda (_g131961131982_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g131961131982_))
                                               (let ((_e131965131984_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g131961131982_))))
                                                 (let ((_hd131964131987_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e131965131984_)))
                                                       (_tl131963131989_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e131965131984_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl131963131989_))
                                                       (let ((_g135533_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl131963131989_ '0))))
                 (begin
                   (let ((_g135534_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g135533_)
                                (##vector-length _g135533_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g135534_ 2)))
                         (error "Context expects 2 values" _g135534_)))
                   (let ((_target131966131992_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135533_ 0)))
                         (_tl131968131994_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135533_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl131968131994_))
                         (letrec ((_loop131969131997_
                                   (lambda (_hd131967132000_
                                            _clause131973132002_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd131967132000_))
                                         (let ((_e131970132005_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd131967132000_))))
                                           (let ((_lp-hd131971132008_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131970132005_)))
                                                 (_lp-tl131972132010_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131970132005_))))
                                             (let ((__tmp135549
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd131971132008_
                                                            _clause131973132002_))))
                                               (declare (not safe))
                                               (_loop131969131997_
                                                _lp-tl131972132010_
                                                __tmp135549))))
                                         (let ((_clause131974132013_
                                                (reverse _clause131973132002_)))
                                           ((lambda (_L132016_)
                                              (for-each
                                               (lambda (_clause132029_)
                                                 (let* ((___stx134203134204_
                                                         _clause132029_)
                                                        (_g132032132047_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx134203134204_)))))
                                                   (let ((___kont134205134206_
                                                          (lambda (_L132075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L132076_
                           _L132077_)
                    (for-each
                     (lambda (_g132092132094_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g132092132094_
                          _L132077_
                          _method-calls131421_
                          _slot-refs131422_)))
                     _L132075_)))
                 (___kont134207134208_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx134203134204_))
                                                         (let ((_e132039132059_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx134203134204_))))
                   (let ((_tl132037132064_
                          (let ()
                            (declare (not safe))
                            (##cdr _e132039132059_)))
                         (_hd132038132062_
                          (let ()
                            (declare (not safe))
                            (##car _e132039132059_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd132038132062_))
                         (let ((_e132042132067_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd132038132062_))))
                           (let ((_tl132040132072_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e132042132067_)))
                                 (_hd132041132070_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e132042132067_))))
                             (___kont134205134206_
                              _tl132037132064_
                              _tl132040132072_
                              _hd132041132070_)))
                         (___kont134207134208_))))
                 (___kont134207134208_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp135535
                                                      (lambda (_g132099132102_
                                                               _g132100132104_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g132099132102_
                                                                _g132100132104_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135535
                                                         '()
                                                         _L132016_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?131425_))
                                                  _stx131329_
                                                  (let* ((_specializer-id132113_
                                                          (let* ((_id132107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135536
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L131402_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135536 '"::specialize")))
                         (_specializer-id132110_
                          (let ((__tmp135537
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx131329_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id132107_ __tmp135537))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id132110_))
                    _specializer-id132110_))
                 (_$klass132115_
                  (let ((__tmp135538 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135538)))
                 (_$method-table132117_
                  (let ((__tmp135539 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135539)))
                 (_methods132119_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls131421_)))
                 (_$methods132123_
                  (map (lambda (_id132121_)
                         (let ((__tmp135540 (gensym _id132121_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135540)))
                       _methods132119_))
                 (_g135541_
                  (for-each
                   (lambda (_g132124132127_ _g132125132129_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls131421_
                        _g132124132127_
                        _g132125132129_)))
                   _methods132119_
                   _$methods132123_))
                 (_methods-bind132140_
                  (map (lambda (_g132132132135_ _g132133132137_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind131331_
                            _$klass132115_
                            _$method-table132117_
                            _g132132132135_
                            _g132133132137_)))
                       _methods132119_
                       _$methods132123_))
                 (_slots132142_
                  (let () (declare (not safe)) (hash-keys _slot-refs131422_)))
                 (_$slots132146_
                  (map (lambda (_id132144_)
                         (let ((__tmp135542 (gensym _id132144_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135542)))
                       _slots132142_))
                 (_g135543_
                  (for-each
                   (lambda (_g132147132150_ _g132148132152_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs131422_
                        _g132147132150_
                        _g132148132152_)))
                   _slots132142_
                   _$slots132146_))
                 (_slots-bind132163_
                  (map (lambda (_g132155132158_ _g132156132160_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind131332_
                            _$klass132115_
                            _g132155132158_
                            _g132156132160_)))
                       _slots132142_
                       _$slots132146_))
                 (_specializer-clauses132255_
                  (map (lambda (_clause132165_)
                         (let* ((___stx134223134224_ _clause132165_)
                                (_g132168132183_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx134223134224_)))))
                           (let ((___kont134225134226_
                                  (lambda (_L132211_ _L132212_ _L132213_)
                                    (let* ((_body132243_
                                            (map (lambda (_g132238132240_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g132238132240_
                                                      _L132213_
                                                      _$klass132115_
                                                      _method-calls131421_
                                                      _slot-refs131422_)))
                                                 _L132211_))
                                           (__tmp135544
                                            (let ()
                                              (declare (not safe))
                                              (cons _L132213_ _L132212_))))
                                      (declare (not safe))
                                      (cons __tmp135544 _body132243_))))
                                 (___kont134227134228_
                                  (lambda () _clause132165_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx134223134224_))
                                 (let ((_e132175132195_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx134223134224_))))
                                   (let ((_tl132173132200_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e132175132195_)))
                                         (_hd132174132198_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e132175132195_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd132174132198_))
                                         (let ((_e132178132203_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd132174132198_))))
                                           (let ((_tl132176132208_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e132178132203_)))
                                                 (_hd132177132206_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e132178132203_))))
                                             (___kont134225134226_
                                              _tl132173132200_
                                              _tl132176132208_
                                              _hd132177132206_)))
                                         (___kont134227134228_))))
                                 (___kont134227134228_)))))
                       (let ((__tmp135545
                              (lambda (_g132247132250_ _g132248132252_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g132247132250_ _g132248132252_)))))
                         (declare (not safe))
                         (foldr1 __tmp135545 '() _L132016_))))
                 (_specializer-impl132257_
                  (let ((__tmp135546
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses132255_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp135546 _stx131329_)))
                 (_specializer-impl132259_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl131333_
                     _$klass132115_
                     _$method-table132117_
                     _methods-bind132140_
                     _slots-bind132163_
                     _specializer-impl132257_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135548
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L131402_)))
                                                          (__tmp135547
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id132113_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135548
                                                       '" => "
                                                       __tmp135547))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def131334_
                                                       _L131402_
                                                       _specializer-id132113_
                                                       _specializer-impl132259_)))))
                                            _clause131974132013_))))))
                           (let ()
                             (declare (not safe))
                             (_loop131969131997_ _target131966131992_ '())))
                         (let ()
                           (declare (not safe))
                           (_g131960131979_ _g131961131982_))))))
               (let ()
                 (declare (not safe))
                 (_g131960131979_ _g131961131982_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131960131979_
                                                  _g131961131982_))))))
                                   (declare (not safe))
                                   (_g131959132262_ _L131401_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L131401_))
                                     (let* ((_g132265132295_
                                             (lambda (_g132266132292_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g132266132292_))))
                                            (_g132264132900_
                                             (lambda (_g132266132298_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g132266132298_))
                                                   (let ((_e132272132300_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g132266132298_))))
                                                     (let ((_hd132271132303_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132272132300_)))
                                                           (_tl132270132305_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132272132300_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132270132305_))
                                                           (let ((_e132275132308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132270132305_))))
                     (let ((_hd132274132311_
                            (let ()
                              (declare (not safe))
                              (##car _e132275132308_)))
                           (_tl132273132313_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132275132308_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132274132311_))
                           (let ((_e132278132316_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132274132311_))))
                             (let ((_hd132277132319_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132278132316_)))
                                   (_tl132276132321_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132278132316_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132277132319_))
                                   (let ((_e132281132324_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132277132319_))))
                                     (let ((_hd132280132327_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132281132324_)))
                                           (_tl132279132329_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132281132324_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd132280132327_))
                                           (let ((_e132284132332_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd132280132327_))))
                                             (let ((_hd132283132335_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132284132332_)))
                                                   (_tl132282132337_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132284132332_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132282132337_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl132279132329_))
                                                       (let ((_e132287132340_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl132279132329_))))
                 (let ((_hd132286132343_
                        (let () (declare (not safe)) (##car _e132287132340_)))
                       (_tl132285132345_
                        (let () (declare (not safe)) (##cdr _e132287132340_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132285132345_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl132276132321_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132273132313_))
                               (let ((_e132290132348_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132273132313_))))
                                 (let ((_hd132289132351_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132290132348_)))
                                       (_tl132288132353_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132290132348_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132288132353_))
                                       ((lambda (_L132356_ _L132357_ _L132358_)
                                          (let* ((_g132381132399_
                                                  (lambda (_g132382132396_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g132382132396_))))
                                                 (_g132380132450_
                                                  (lambda (_g132382132402_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g132382132402_))
                                                        (let ((_e132388132404_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g132382132402_))))
                  (let ((_hd132387132407_
                         (let () (declare (not safe)) (##car _e132388132404_)))
                        (_tl132386132409_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132388132404_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl132386132409_))
                        (let ((_e132391132412_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl132386132409_))))
                          (let ((_hd132390132415_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e132391132412_)))
                                (_tl132389132417_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e132391132412_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd132390132415_))
                                (let ((_e132394132420_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd132390132415_))))
                                  (let ((_hd132393132423_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132394132420_)))
                                        (_tl132392132425_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132394132420_))))
                                    ((lambda (_L132428_ _L132429_ _L132430_)
                                       (for-each
                                        (lambda (_g132445132447_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g132445132447_
                                             _L132430_
                                             _method-calls131421_
                                             _slot-refs131422_)))
                                        _L132428_))
                                     _tl132389132417_
                                     _tl132392132425_
                                     _hd132393132423_)))
                                (let ()
                                  (declare (not safe))
                                  (_g132381132399_ _g132382132402_)))))
                        (let ()
                          (declare (not safe))
                          (_g132381132399_ _g132382132402_)))))
                (let ()
                  (declare (not safe))
                  (_g132381132399_ _g132382132402_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g132380132450_ _L132357_))
                                          (let* ((_g132453132472_
                                                  (lambda (_g132454132469_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g132454132469_))))
                                                 (_g132452132591_
                                                  (lambda (_g132454132475_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g132454132475_))
                                                        (let ((_e132458132477_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g132454132475_))))
                  (let ((_hd132457132480_
                         (let () (declare (not safe)) (##car _e132458132477_)))
                        (_tl132456132482_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132458132477_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl132456132482_))
                        (let ((_g135503_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl132456132482_
                                  '0))))
                          (begin
                            (let ((_g135504_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g135503_)
                                         (##vector-length _g135503_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g135504_ 2)))
                                  (error "Context expects 2 values"
                                         _g135504_)))
                            (let ((_target132459132485_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135503_ 0)))
                                  (_tl132461132487_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135503_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132461132487_))
                                  (letrec ((_loop132462132490_
                                            (lambda (_hd132460132493_
                                                     _clause132466132495_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd132460132493_))
                                                  (let ((_e132463132498_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd132460132493_))))
                                                    (let ((_lp-hd132464132501_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132463132498_)))
                                                          (_lp-tl132465132503_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132463132498_))))
                                                      (let ((__tmp135506
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd132464132501_ _clause132466132495_))))
                (declare (not safe))
                (_loop132462132490_ _lp-tl132465132503_ __tmp135506))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause132467132506_
                                                         (reverse _clause132466132495_)))
                                                    ((lambda (_L132509_)
                                                       (for-each
                                                        (lambda (_clause132522_)
                                                          (let* ((_g132524132539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g132525132536_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g132525132536_))))
                         (_g132523132581_
                          (lambda (_g132525132542_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g132525132542_))
                                (let ((_e132531132544_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g132525132542_))))
                                  (let ((_hd132530132547_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132531132544_)))
                                        (_tl132529132549_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132531132544_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd132530132547_))
                                        (let ((_e132534132552_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd132530132547_))))
                                          (let ((_hd132533132555_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132534132552_)))
                                                (_tl132532132557_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132534132552_))))
                                            ((lambda (_L132560_
                                                      _L132561_
                                                      _L132562_)
                                               (for-each
                                                (lambda (_g132576132578_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g132576132578_
                                                     _L132562_
                                                     _method-calls131421_
                                                     _slot-refs131422_)))
                                                _L132560_))
                                             _tl132529132549_
                                             _tl132532132557_
                                             _hd132533132555_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132524132539_ _g132525132542_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132524132539_ _g132525132542_))))))
                    (declare (not safe))
                    (_g132523132581_ _clause132522_)))
                (let ((__tmp135505
                       (lambda (_g132583132586_ _g132584132588_)
                         (let ()
                           (declare (not safe))
                           (cons _g132583132586_ _g132584132588_)))))
                  (declare (not safe))
                  (foldr1 __tmp135505 '() _L132509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause132467132506_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop132462132490_
                                       _target132459132485_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g132453132472_ _g132454132475_))))))
                        (let ()
                          (declare (not safe))
                          (_g132453132472_ _g132454132475_)))))
                (let ()
                  (declare (not safe))
                  (_g132453132472_ _g132454132475_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g132452132591_ _L132356_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?131425_))
                                              _stx131329_
                                              (let* ((_specializer-id132600_
                                                      (let* ((_id132594_
                                                              (let ((__tmp135507
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L131402_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp135507 '"::specialize")))
                     (_specializer-id132597_
                      (let ((__tmp135508
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx131329_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id132594_ __tmp135508))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id132597_))
                _specializer-id132597_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass132602_
                                                      (let ((__tmp135509
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135509)))
                                                     (_$method-table132604_
                                                      (let ((__tmp135510
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135510)))
                                                     (_methods132606_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls131421_)))
                                                     (_$methods132610_
                                                      (map (lambda (_id132608_)
                                                             (let ((__tmp135511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id132608_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135511)))
                   _methods132606_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135512_
                                                      (for-each
                                                       (lambda (_g132611132614_
                                                                _g132612132616_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls131421_
                                                            _g132611132614_
                                                            _g132612132616_)))
                                                       _methods132606_
                                                       _$methods132610_))
                                                     (_methods-bind132627_
                                                      (map (lambda (_g132619132622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g132620132624_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind131331_
                        _$klass132602_
                        _$method-table132604_
                        _g132619132622_
                        _g132620132624_)))
                   _methods132606_
                   _$methods132610_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots132629_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs131422_)))
                                                     (_$slots132633_
                                                      (map (lambda (_id132631_)
                                                             (let ((__tmp135513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id132631_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135513)))
                   _slots132629_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135514_
                                                      (for-each
                                                       (lambda (_g132634132637_
                                                                _g132635132639_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs131422_
                                                            _g132634132637_
                                                            _g132635132639_)))
                                                       _slots132629_
                                                       _$slots132633_))
                                                     (_slots-bind132650_
                                                      (map (lambda (_g132642132645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g132643132647_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind131332_
                        _$klass132602_
                        _g132642132645_
                        _g132643132647_)))
                   _slots132629_
                   _$slots132633_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr132736_
                                                      (let* ((_g132652132670_
                                                              (lambda (_g132653132667_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132653132667_))))
                     (_g132651132733_
                      (lambda (_g132653132673_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132653132673_))
                            (let ((_e132659132675_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132653132673_))))
                              (let ((_hd132658132678_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132659132675_)))
                                    (_tl132657132680_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132659132675_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl132657132680_))
                                    (let ((_e132662132683_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl132657132680_))))
                                      (let ((_hd132661132686_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132662132683_)))
                                            (_tl132660132688_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132662132683_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd132661132686_))
                                            (let ((_e132665132691_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd132661132686_))))
                                              (let ((_hd132664132694_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132665132691_)))
                                                    (_tl132663132696_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132665132691_))))
                                                ((lambda (_L132699_
                                                          _L132700_
                                                          _L132701_)
                                                   (let* ((_body132731_
                                                           (map (lambda (_g132726132728_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g132726132728_
                             _L132701_
                             _$klass132602_
                             _method-calls131421_
                             _slot-refs131422_)))
                        _L132699_))
                  (__tmp135515
                   (let ((__tmp135516
                          (let ((__tmp135517
                                 (let ()
                                   (declare (not safe))
                                   (cons _L132701_ _L132700_))))
                            (declare (not safe))
                            (cons __tmp135517 _body132731_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp135516))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp135515
                                                      _L132357_)))
                                                 _tl132660132688_
                                                 _tl132663132696_
                                                 _hd132664132694_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g132652132670_
                                               _g132653132673_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132652132670_ _g132653132673_)))))
                            (let ()
                              (declare (not safe))
                              (_g132652132670_ _g132653132673_))))))
                (declare (not safe))
                (_g132651132733_ _L132357_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr132893_
                                                      (let* ((_g132738132757_
                                                              (lambda (_g132739132754_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132739132754_))))
                     (_g132737132890_
                      (lambda (_g132739132760_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132739132760_))
                            (let ((_e132743132762_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132739132760_))))
                              (let ((_hd132742132765_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132743132762_)))
                                    (_tl132741132767_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132743132762_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl132741132767_))
                                    (let ((_g135518_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl132741132767_
                                              '0))))
                                      (begin
                                        (let ((_g135519_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g135518_)
                                                     (##vector-length
                                                      _g135518_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g135519_ 2)))
                                              (error "Context expects 2 values"
                                                     _g135519_)))
                                        (let ((_target132744132770_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135518_ 0)))
                                              (_tl132746132772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135518_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132746132772_))
                                              (letrec ((_loop132747132775_
                                                        (lambda (_hd132745132778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause132751132780_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd132745132778_))
                      (let ((_e132748132783_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd132745132778_))))
                        (let ((_lp-hd132749132786_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132748132783_)))
                              (_lp-tl132750132788_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132748132783_))))
                          (let ((__tmp135523
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd132749132786_
                                         _clause132751132780_))))
                            (declare (not safe))
                            (_loop132747132775_
                             _lp-tl132750132788_
                             __tmp135523))))
                      (let ((_clause132752132791_
                             (reverse _clause132751132780_)))
                        ((lambda (_L132794_)
                           (let* ((_clauses132888_
                                   (map (lambda (_clause132808_)
                                          (let* ((___stx134243134244_
                                                  _clause132808_)
                                                 (_g132811132826_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx134243134244_)))))
                                            (let ((___kont134245134246_
                                                   (lambda (_L132854_
                                                            _L132855_
                                                            _L132856_)
                                                     (let* ((_body132876_
                                                             (map (lambda (_g132871132873_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g132871132873_
                               _L132856_
                               _$klass132602_
                               _method-calls131421_
                               _slot-refs131422_)))
                          _L132854_))
                    (__tmp135520
                     (let () (declare (not safe)) (cons _L132856_ _L132855_))))
               (declare (not safe))
               (cons __tmp135520 _body132876_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134247134248_
                                                   (lambda () _clause132808_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx134243134244_))
                                                  (let ((_e132818132838_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx134243134244_))))
                                                    (let ((_tl132816132843_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132818132838_)))
                                                          (_hd132817132841_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132818132838_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd132817132841_))
                                                          (let ((_e132821132846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd132817132841_))))
                    (let ((_tl132819132851_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132821132846_)))
                          (_hd132820132849_
                           (let ()
                             (declare (not safe))
                             (##car _e132821132846_))))
                      (___kont134245134246_
                       _tl132816132843_
                       _tl132819132851_
                       _hd132820132849_)))
                  (___kont134247134248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134247134248_)))))
                                        (let ((__tmp135521
                                               (lambda (_g132880132883_
                                                        _g132881132885_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g132880132883_
                                                         _g132881132885_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp135521 '() _L132794_))))
                                  (__tmp135522
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses132888_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135522 _L132356_)))
                         _clause132752132791_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop132747132775_
                                                   _target132744132770_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g132738132757_
                                                 _g132739132760_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132738132757_ _g132739132760_)))))
                            (let ()
                              (declare (not safe))
                              (_g132738132757_ _g132739132760_))))))
                (declare (not safe))
                (_g132737132890_ _L132356_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl132895_
                                                      (let ((__tmp135524
                                                             (let ((__tmp135525
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp135527
                                   (let ((__tmp135528
                                          (let ((__tmp135530
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L132358_ '())))
                                                (__tmp135529
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr132736_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp135530 __tmp135529))))
                                     (declare (not safe))
                                     (cons __tmp135528 '())))
                                  (__tmp135526
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr132893_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp135527 __tmp135526))))
                       (declare (not safe))
                       (cons '%#let-values __tmp135525))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp135524 _stx131329_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl132897_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl131333_
                                                         _$klass132602_
                                                         _$method-table132604_
                                                         _methods-bind132627_
                                                         _slots-bind132650_
                                                         _specializer-impl132895_))))
                                                (let ((__tmp135532
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L131402_)))
                                                      (__tmp135531
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id132600_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp135532
                                                   '" => "
                                                   __tmp135531))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def131334_
                                                   _L131402_
                                                   _specializer-id132600_
                                                   _specializer-impl132897_)))))
                                        _hd132289132351_
                                        _hd132286132343_
                                        _hd132283132335_)
                                       (let ()
                                         (declare (not safe))
                                         (_g132265132295_ _g132266132298_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132265132295_ _g132266132298_)))
                           (let ()
                             (declare (not safe))
                             (_g132265132295_ _g132266132298_)))
                       (let ()
                         (declare (not safe))
                         (_g132265132295_ _g132266132298_)))))
               (let () (declare (not safe)) (_g132265132295_ _g132266132298_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132265132295_
                                                      _g132266132298_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132265132295_
                                              _g132266132298_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132265132295_ _g132266132298_)))))
                           (let ()
                             (declare (not safe))
                             (_g132265132295_ _g132266132298_)))))
                   (let ()
                     (declare (not safe))
                     (_g132265132295_ _g132266132298_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132265132295_
                                                      _g132266132298_))))))
                                       (declare (not safe))
                                       (_g132264132900_ _L131401_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L131401_))
                                         (let* ((_g132903132956_
                                                 (lambda (_g132904132953_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g132904132953_))))
                                                (_g132902134087_
                                                 (lambda (_g132904132959_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g132904132959_))
                                                       (let ((_e132912132961_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g132904132959_))))
                 (let ((_hd132911132964_
                        (let () (declare (not safe)) (##car _e132912132961_)))
                       (_tl132910132966_
                        (let () (declare (not safe)) (##cdr _e132912132961_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd132911132964_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd132911132964_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132910132966_))
                               (let ((_e132915132969_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132910132966_))))
                                 (let ((_hd132914132972_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132915132969_)))
                                       (_tl132913132974_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132915132969_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd132914132972_))
                                       (let ((_e132918132977_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd132914132972_))))
                                         (let ((_hd132917132980_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e132918132977_)))
                                               (_tl132916132982_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e132918132977_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd132917132980_))
                                               (let ((_e132921132985_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd132917132980_))))
                                                 (let ((_hd132920132988_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132921132985_)))
                                                       (_tl132919132990_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132921132985_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd132920132988_))
                                                       (let ((_e132924132993_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd132920132988_))))
                 (let ((_hd132923132996_
                        (let () (declare (not safe)) (##car _e132924132993_)))
                       (_tl132922132998_
                        (let () (declare (not safe)) (##cdr _e132924132993_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132922132998_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl132919132990_))
                           (let ((_e132927133001_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl132919132990_))))
                             (let ((_hd132926133004_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132927133001_)))
                                   (_tl132925133006_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132927133001_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132926133004_))
                                   (let ((_e132930133009_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132926133004_))))
                                     (let ((_hd132929133012_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132930133009_)))
                                           (_tl132928133014_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132930133009_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd132929133012_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd132929133012_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl132928133014_))
                                                   (let ((_e132933133017_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl132928133014_))))
                                                     (let ((_hd132932133020_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132933133017_)))
                                                           (_tl132931133022_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132933133017_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd132932133020_))
                                                           (let ((_e132936133025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd132932133020_))))
                     (let ((_hd132935133028_
                            (let ()
                              (declare (not safe))
                              (##car _e132936133025_)))
                           (_tl132934133030_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132936133025_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132935133028_))
                           (let ((_e132939133033_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132935133028_))))
                             (let ((_hd132938133036_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132939133033_)))
                                   (_tl132937133038_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132939133033_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132938133036_))
                                   (let ((_e132942133041_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132938133036_))))
                                     (let ((_hd132941133044_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132942133041_)))
                                           (_tl132940133046_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132942133041_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl132940133046_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl132937133038_))
                                               (let ((_e132945133049_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl132937133038_))))
                                                 (let ((_hd132944133052_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132945133049_)))
                                                       (_tl132943133054_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132945133049_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl132943133054_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl132934133030_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl132931133022_))
                       (let ((_e132948133057_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl132931133022_))))
                         (let ((_hd132947133060_
                                (let ()
                                  (declare (not safe))
                                  (##car _e132948133057_)))
                               (_tl132946133062_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e132948133057_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl132946133062_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl132925133006_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132916132982_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl132913132974_))
                                           (let ((_e132951133065_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl132913132974_))))
                                             (let ((_hd132950133068_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132951133065_)))
                                                   (_tl132949133070_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132951133065_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132949133070_))
                                                   ((lambda (_L133073_
                                                             _L133074_
                                                             _L133075_
                                                             _L133076_
                                                             _L133077_)
                                                      (let* ((_g133116133178_
                                                              (lambda (_g133117133175_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g133117133175_))))
                     (_g133115134084_
                      (lambda (_g133117133181_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g133117133181_))
                            (let ((_e133125133183_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g133117133181_))))
                              (let ((_hd133124133186_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133125133183_)))
                                    (_tl133123133188_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133125133183_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd133124133186_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd133124133186_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl133123133188_))
                                            (let ((_e133128133191_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl133123133188_))))
                                              (let ((_hd133127133194_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133128133191_)))
                                                    (_tl133126133196_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133128133191_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133126133196_))
                                                    (let ((_e133131133199_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133126133196_))))
                                                      (let ((_hd133130133202_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133131133199_)))
                    (_tl133129133204_
                     (let () (declare (not safe)) (##cdr _e133131133199_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd133130133202_))
                    (let ((_e133134133207_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd133130133202_))))
                      (let ((_hd133133133210_
                             (let ()
                               (declare (not safe))
                               (##car _e133134133207_)))
                            (_tl133132133212_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133134133207_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd133133133210_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd133133133210_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl133132133212_))
                                    (let ((_e133137133215_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl133132133212_))))
                                      (let ((_hd133136133218_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133137133215_)))
                                            (_tl133135133220_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133137133215_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd133136133218_))
                                            (let ((_e133140133223_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd133136133218_))))
                                              (let ((_hd133139133226_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133140133223_)))
                                                    (_tl133138133228_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133140133223_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd133139133226_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd133139133226_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl133138133228_))
                                                            (let ((_e133143133231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl133138133228_))))
                      (let ((_hd133142133234_
                             (let ()
                               (declare (not safe))
                               (##car _e133143133231_)))
                            (_tl133141133236_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133143133231_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133141133236_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl133135133220_))
                                (let ((_e133146133239_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl133135133220_))))
                                  (let ((_hd133145133242_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133146133239_)))
                                        (_tl133144133244_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133146133239_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd133145133242_))
                                        (let ((_e133149133247_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd133145133242_))))
                                          (let ((_hd133148133250_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133149133247_)))
                                                (_tl133147133252_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133149133247_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd133148133250_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd133148133250_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl133147133252_))
                                                        (let ((_e133152133255_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl133147133252_))))
                  (let ((_hd133151133258_
                         (let () (declare (not safe)) (##car _e133152133255_)))
                        (_tl133150133260_
                         (let ()
                           (declare (not safe))
                           (##cdr _e133152133255_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl133150133260_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133144133244_))
                            (let ((_e133155133263_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133144133244_))))
                              (let ((_hd133154133266_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133155133263_)))
                                    (_tl133153133268_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133155133263_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd133154133266_))
                                    (let ((_e133158133271_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd133154133266_))))
                                      (let ((_hd133157133274_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133158133271_)))
                                            (_tl133156133276_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133158133271_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd133157133274_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd133157133274_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133156133276_))
                                                    (let ((_e133161133279_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133156133276_))))
                                                      (let ((_hd133160133282_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133161133279_)))
                    (_tl133159133284_
                     (let () (declare (not safe)) (##cdr _e133161133279_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl133159133284_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl133153133268_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl133153133268_))
                                  '1)
                            (let ((_g135429_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133153133268_
                                      '1))))
                              (begin
                                (let ((_g135430_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g135429_)
                                             (##vector-length _g135429_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g135430_ 2)))
                                      (error "Context expects 2 values"
                                             _g135430_)))
                                (let ((_target133162133287_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135429_ 0)))
                                      (_tl133164133289_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135429_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl133164133289_))
                                      (let ((_e133173133292_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl133164133289_))))
                                        (let ((_hd133172133295_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e133173133292_)))
                                              (_tl133171133297_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e133173133292_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl133171133297_))
                                              (letrec ((_loop133165133300_
                                                        (lambda (_hd133163133303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref133169133305_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd133163133303_))
                      (let ((_e133166133308_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd133163133303_))))
                        (let ((_lp-hd133167133311_
                               (let ()
                                 (declare (not safe))
                                 (##car _e133166133308_)))
                              (_lp-tl133168133313_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e133166133308_))))
                          (let ((__tmp135502
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd133167133311_
                                         _kw-ref133169133305_))))
                            (declare (not safe))
                            (_loop133165133300_
                             _lp-tl133168133313_
                             __tmp135502))))
                      (let ((_kw-ref133170133316_
                             (reverse _kw-ref133169133305_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133129133204_))
                            ((lambda (_L133319_
                                      _L133320_
                                      _L133321_
                                      _L133322_
                                      _L133323_)
                               (let* ((_kw-count133374_
                                       (length (let ((__tmp135431
                                                      (lambda (_g133366133369_
                                                               _g133367133371_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g133366133369_
                                                                _g133367133371_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135431
                                                         '()
                                                         _L133320_))))
                                      (_self-index133376_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count133374_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L133075_))
                                     (let* ((_g133379133393_
                                             (lambda (_g133380133390_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g133380133390_))))
                                            (_g133378133506_
                                             (lambda (_g133380133396_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g133380133396_))
                                                   (let ((_e133385133398_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g133380133396_))))
                                                     (let ((_hd133384133401_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e133385133398_)))
                                                           (_tl133383133403_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e133385133398_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133383133403_))
                                                           (let ((_e133388133406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133383133403_))))
                     (let ((_hd133387133409_
                            (let ()
                              (declare (not safe))
                              (##car _e133388133406_)))
                           (_tl133386133411_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133388133406_))))
                       ((lambda (_L133414_ _L133415_)
                          (let ((_self133431_
                                 (list-ref _L133415_ _self-index133376_)))
                            (for-each
                             (lambda (_g133432133434_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g133432133434_
                                  _self133431_
                                  _method-calls131421_
                                  _slot-refs131422_)))
                             _L133414_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?131425_))
                                _stx131329_
                                (let* ((_specializer-id133443_
                                        (let* ((_id133437_
                                                (let ((__tmp135475
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L131402_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp135475
                                                   '"::specialize")))
                                               (_specializer-id133440_
                                                (let ((__tmp135476
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx131329_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id133437_
                                                   __tmp135476))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id133440_))
                                          _specializer-id133440_))
                                       (_$klass133445_
                                        (let ((__tmp135477 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135477)))
                                       (_$method-table133447_
                                        (let ((__tmp135478
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135478)))
                                       (_methods133449_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls131421_)))
                                       (_$methods133453_
                                        (map (lambda (_id133451_)
                                               (let ((__tmp135479
                                                      (gensym _id133451_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135479)))
                                             _methods133449_))
                                       (_g135480_
                                        (for-each
                                         (lambda (_g133454133457_
                                                  _g133455133459_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls131421_
                                              _g133454133457_
                                              _g133455133459_)))
                                         _methods133449_
                                         _$methods133453_))
                                       (_methods-bind133470_
                                        (map (lambda (_g133462133465_
                                                      _g133463133467_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind131331_
                                                  _$klass133445_
                                                  _$method-table133447_
                                                  _g133462133465_
                                                  _g133463133467_)))
                                             _methods133449_
                                             _$methods133453_))
                                       (_slots133472_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs131422_)))
                                       (_$slots133476_
                                        (map (lambda (_id133474_)
                                               (let ((__tmp135481
                                                      (gensym _id133474_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135481)))
                                             _slots133472_))
                                       (_g135482_
                                        (for-each
                                         (lambda (_g133477133480_
                                                  _g133478133482_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs131422_
                                              _g133477133480_
                                              _g133478133482_)))
                                         _slots133472_
                                         _$slots133476_))
                                       (_slots-bind133493_
                                        (map (lambda (_g133485133488_
                                                      _g133486133490_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind131332_
                                                  _$klass133445_
                                                  _g133485133488_
                                                  _g133486133490_)))
                                             _slots133472_
                                             _$slots133476_))
                                       (_specializer-impl133501_
                                        (let* ((_specializer-body133499_
                                                (map (lambda (_g133494133496_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g133494133496_
                                                          _self133431_
                                                          _$klass133445_
                                                          _method-calls131421_
                                                          _slot-refs131422_)))
                                                     _L133414_))
                                               (__tmp135483
                                                (let ((__tmp135484
                                                       (let ((__tmp135486
                                                              (let ((__tmp135487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135499
                                    (let ()
                                      (declare (not safe))
                                      (cons _L133077_ '())))
                                   (__tmp135488
                                    (let ((__tmp135489
                                           (let ((__tmp135490
                                                  (let ((__tmp135492
                                                         (let ((__tmp135493
                                                                (let ((__tmp135498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L133076_ '())))
                              (__tmp135494
                               (let ((__tmp135495
                                      (let ((__tmp135496
                                             (let ((__tmp135497
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L133415_
                                                            _specializer-body133499_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp135497))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp135496
                                         _L133075_))))
                                 (declare (not safe))
                                 (cons __tmp135495 '()))))
                          (declare (not safe))
                          (cons __tmp135498 __tmp135494))))
                   (declare (not safe))
                   (cons __tmp135493 '())))
                (__tmp135491
                 (let () (declare (not safe)) (cons _L133074_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135492
                                                          __tmp135491))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp135490))))
                                      (declare (not safe))
                                      (cons __tmp135489 '()))))
                               (declare (not safe))
                               (cons __tmp135499 __tmp135488))))
                        (declare (not safe))
                        (cons __tmp135487 '())))
                     (__tmp135485
                      (let () (declare (not safe)) (cons _L133073_ '()))))
                 (declare (not safe))
                 (cons __tmp135486 __tmp135485))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp135484))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp135483
                                           _stx131329_)))
                                       (_specializer-impl133503_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl131333_
                                           _$klass133445_
                                           _$method-table133447_
                                           _methods-bind133470_
                                           _slots-bind133493_
                                           _specializer-impl133501_))))
                                  (let ((__tmp135501
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L131402_)))
                                        (__tmp135500
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id133443_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp135501
                                     '" => "
                                     __tmp135500))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def131334_
                                     _L131402_
                                     _specializer-id133443_
                                     _specializer-impl133503_))))))
                        _tl133386133411_
                        _hd133387133409_)))
                   (let ()
                     (declare (not safe))
                     (_g133379133393_ _g133380133396_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133379133393_
                                                      _g133380133396_))))))
                                       (declare (not safe))
                                       (_g133378133506_ _L133075_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L133075_))
                                         (let* ((_g133509133539_
                                                 (lambda (_g133510133536_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g133510133536_))))
                                                (_g133508134081_
                                                 (lambda (_g133510133542_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g133510133542_))
                                                       (let ((_e133516133544_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g133510133542_))))
                 (let ((_hd133515133547_
                        (let () (declare (not safe)) (##car _e133516133544_)))
                       (_tl133514133549_
                        (let () (declare (not safe)) (##cdr _e133516133544_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl133514133549_))
                       (let ((_e133519133552_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl133514133549_))))
                         (let ((_hd133518133555_
                                (let ()
                                  (declare (not safe))
                                  (##car _e133519133552_)))
                               (_tl133517133557_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e133519133552_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd133518133555_))
                               (let ((_e133522133560_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd133518133555_))))
                                 (let ((_hd133521133563_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e133522133560_)))
                                       (_tl133520133565_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e133522133560_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd133521133563_))
                                       (let ((_e133525133568_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd133521133563_))))
                                         (let ((_hd133524133571_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e133525133568_)))
                                               (_tl133523133573_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e133525133568_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd133524133571_))
                                               (let ((_e133528133576_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd133524133571_))))
                                                 (let ((_hd133527133579_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133528133576_)))
                                                       (_tl133526133581_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133528133576_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl133526133581_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133523133573_))
                                                           (let ((_e133531133584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133523133573_))))
                     (let ((_hd133530133587_
                            (let ()
                              (declare (not safe))
                              (##car _e133531133584_)))
                           (_tl133529133589_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133531133584_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl133529133589_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl133520133565_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl133517133557_))
                                   (let ((_e133534133592_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl133517133557_))))
                                     (let ((_hd133533133595_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133534133592_)))
                                           (_tl133532133597_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133534133592_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl133532133597_))
                                           ((lambda (_L133600_
                                                     _L133601_
                                                     _L133602_)
                                              (let* ((_g133625133639_
                                                      (lambda (_g133626133636_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133626133636_))))
                                                     (_g133624133680_
                                                      (lambda (_g133626133642_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133626133642_))
                                                            (let ((_e133631133644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133626133642_))))
                      (let ((_hd133630133647_
                             (let ()
                               (declare (not safe))
                               (##car _e133631133644_)))
                            (_tl133629133649_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133631133644_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133629133649_))
                            (let ((_e133634133652_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133629133649_))))
                              (let ((_hd133633133655_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133634133652_)))
                                    (_tl133632133657_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133634133652_))))
                                ((lambda (_L133660_ _L133661_)
                                   (let ((_self133674_
                                          (list-ref
                                           _L133661_
                                           _self-index133376_)))
                                     (for-each
                                      (lambda (_g133675133677_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g133675133677_
                                           _self133674_
                                           _method-calls131421_
                                           _slot-refs131422_)))
                                      _L133660_)))
                                 _tl133632133657_
                                 _hd133633133655_)))
                            (let ()
                              (declare (not safe))
                              (_g133625133639_ _g133626133642_)))))
                    (let ()
                      (declare (not safe))
                      (_g133625133639_ _g133626133642_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133624133680_ _L133601_))
                                              (let* ((_g133683133702_
                                                      (lambda (_g133684133699_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133684133699_))))
                                                     (_g133682133807_
                                                      (lambda (_g133684133705_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133684133705_))
                                                            (let ((_e133688133707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133684133705_))))
                      (let ((_hd133687133710_
                             (let ()
                               (declare (not safe))
                               (##car _e133688133707_)))
                            (_tl133686133712_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133688133707_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl133686133712_))
                            (let ((_g135432_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133686133712_
                                      '0))))
                              (begin
                                (let ((_g135433_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g135432_)
                                             (##vector-length _g135432_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g135433_ 2)))
                                      (error "Context expects 2 values"
                                             _g135433_)))
                                (let ((_target133689133715_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135432_ 0)))
                                      (_tl133691133717_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135432_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl133691133717_))
                                      (letrec ((_loop133692133720_
                                                (lambda (_hd133690133723_
                                                         _clause133696133725_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd133690133723_))
                                                      (let ((_e133693133728_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd133690133723_))))
                (let ((_lp-hd133694133731_
                       (let () (declare (not safe)) (##car _e133693133728_)))
                      (_lp-tl133695133733_
                       (let () (declare (not safe)) (##cdr _e133693133728_))))
                  (let ((__tmp135435
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd133694133731_ _clause133696133725_))))
                    (declare (not safe))
                    (_loop133692133720_ _lp-tl133695133733_ __tmp135435))))
              (let ((_clause133697133736_ (reverse _clause133696133725_)))
                ((lambda (_L133739_)
                   (for-each
                    (lambda (_clause133752_)
                      (let* ((_g133754133765_
                              (lambda (_g133755133762_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g133755133762_))))
                             (_g133753133797_
                              (lambda (_g133755133768_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g133755133768_))
                                    (let ((_e133760133770_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g133755133768_))))
                                      (let ((_hd133759133773_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133760133770_)))
                                            (_tl133758133775_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133760133770_))))
                                        ((lambda (_L133778_ _L133779_)
                                           (let ((_self133791_
                                                  (list-ref
                                                   _L133779_
                                                   _self-index133376_)))
                                             (for-each
                                              (lambda (_g133792133794_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g133792133794_
                                                   _self133791_
                                                   _method-calls131421_
                                                   _slot-refs131422_)))
                                              _L133778_)))
                                         _tl133758133775_
                                         _hd133759133773_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133754133765_ _g133755133768_))))))
                        (declare (not safe))
                        (_g133753133797_ _clause133752_)))
                    (let ((__tmp135434
                           (lambda (_g133799133802_ _g133800133804_)
                             (let ()
                               (declare (not safe))
                               (cons _g133799133802_ _g133800133804_)))))
                      (declare (not safe))
                      (foldr1 __tmp135434 '() _L133739_))))
                 _clause133697133736_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop133692133720_
                                           _target133689133715_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g133683133702_ _g133684133705_))))))
                            (let ()
                              (declare (not safe))
                              (_g133683133702_ _g133684133705_)))))
                    (let ()
                      (declare (not safe))
                      (_g133683133702_ _g133684133705_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133682133807_ _L133600_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?131425_))
                                                  _stx131329_
                                                  (let* ((_specializer-id133816_
                                                          (let* ((_id133810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135436
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L131402_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135436 '"::specialize")))
                         (_specializer-id133813_
                          (let ((__tmp135437
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx131329_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133810_ __tmp135437))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133813_))
                    _specializer-id133813_))
                 (_$klass133818_
                  (let ((__tmp135438 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135438)))
                 (_$method-table133820_
                  (let ((__tmp135439 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135439)))
                 (_methods133822_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls131421_)))
                 (_$methods133826_
                  (map (lambda (_id133824_)
                         (let ((__tmp135440 (gensym _id133824_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135440)))
                       _methods133822_))
                 (_g135441_
                  (for-each
                   (lambda (_g133827133830_ _g133828133832_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls131421_
                        _g133827133830_
                        _g133828133832_)))
                   _methods133822_
                   _$methods133826_))
                 (_methods-bind133843_
                  (map (lambda (_g133835133838_ _g133836133840_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind131331_
                            _$klass133818_
                            _$method-table133820_
                            _g133835133838_
                            _g133836133840_)))
                       _methods133822_
                       _$methods133826_))
                 (_slots133845_
                  (let () (declare (not safe)) (hash-keys _slot-refs131422_)))
                 (_$slots133849_
                  (map (lambda (_id133847_)
                         (let ((__tmp135442 (gensym _id133847_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135442)))
                       _slots133845_))
                 (_g135443_
                  (for-each
                   (lambda (_g133850133853_ _g133851133855_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs131422_
                        _g133850133853_
                        _g133851133855_)))
                   _slots133845_
                   _$slots133849_))
                 (_slots-bind133866_
                  (map (lambda (_g133858133861_ _g133859133863_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind131332_
                            _$klass133818_
                            _g133858133861_
                            _g133859133863_)))
                       _slots133845_
                       _$slots133849_))
                 (_specializer-lambda-expr133939_
                  (let* ((_g133868133882_
                          (lambda (_g133869133879_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133869133879_))))
                         (_g133867133936_
                          (lambda (_g133869133885_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133869133885_))
                                (let ((_e133874133887_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133869133885_))))
                                  (let ((_hd133873133890_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133874133887_)))
                                        (_tl133872133892_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133874133887_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl133872133892_))
                                        (let ((_e133877133895_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl133872133892_))))
                                          (let ((_hd133876133898_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133877133895_)))
                                                (_tl133875133900_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133877133895_))))
                                            ((lambda (_L133903_ _L133904_)
                                               (let* ((_self133927_
                                                       (list-ref
                                                        _L133904_
                                                        _self-index133376_))
                                                      (_body133933_
                                                       (map (lambda (_g133928133930_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g133928133930_
                         _self133927_
                         _$klass133818_
                         _method-calls131421_
                         _slot-refs131422_)))
                    _L133903_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp135444
                                                        (let ((__tmp135445
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L133904_ _body133933_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp135445))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp135444
                                                    _L133601_))))
                                             _tl133875133900_
                                             _hd133876133898_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133868133882_ _g133869133885_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133868133882_ _g133869133885_))))))
                    (declare (not safe))
                    (_g133867133936_ _L133601_)))
                 (_specializer-case-lambda-expr134074_
                  (let* ((_g133941133960_
                          (lambda (_g133942133957_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133942133957_))))
                         (_g133940134071_
                          (lambda (_g133942133963_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133942133963_))
                                (let ((_e133946133965_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133942133963_))))
                                  (let ((_hd133945133968_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133946133965_)))
                                        (_tl133944133970_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133946133965_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl133944133970_))
                                        (let ((_g135446_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl133944133970_
                                                  '0))))
                                          (begin
                                            (let ((_g135447_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g135446_)
                                                         (##vector-length
                                                          _g135446_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g135447_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g135447_)))
                                            (let ((_target133947133973_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g135446_
                                                      0)))
                                                  (_tl133949133975_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g135446_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl133949133975_))
                                                  (letrec ((_loop133950133978_
                                                            (lambda (_hd133948133981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause133954133983_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd133948133981_))
                          (let ((_e133951133986_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd133948133981_))))
                            (let ((_lp-hd133952133989_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e133951133986_)))
                                  (_lp-tl133953133991_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e133951133986_))))
                              (let ((__tmp135450
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd133952133989_
                                             _clause133954133983_))))
                                (declare (not safe))
                                (_loop133950133978_
                                 _lp-tl133953133991_
                                 __tmp135450))))
                          (let ((_clause133955133994_
                                 (reverse _clause133954133983_)))
                            ((lambda (_L133997_)
                               (let* ((_clauses134069_
                                       (map (lambda (_clause134011_)
                                              (let* ((_g134013134024_
                                                      (lambda (_g134014134021_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g134014134021_))))
                                                     (_g134012134059_
                                                      (lambda (_g134014134027_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g134014134027_))
                                                            (let ((_e134019134029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g134014134027_))))
                      (let ((_hd134018134032_
                             (let ()
                               (declare (not safe))
                               (##car _e134019134029_)))
                            (_tl134017134034_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134019134029_))))
                        ((lambda (_L134037_ _L134038_)
                           (let* ((_self134050_
                                   (list-ref _L134038_ _self-index133376_))
                                  (_body134056_
                                   (map (lambda (_g134051134053_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g134051134053_
                                             _self134050_
                                             _$klass133818_
                                             _method-calls131421_
                                             _slot-refs131422_)))
                                        _L134037_)))
                             (let ()
                               (declare (not safe))
                               (cons _L134038_ _body134056_))))
                         _tl134017134034_
                         _hd134018134032_)))
                    (let ()
                      (declare (not safe))
                      (_g134013134024_ _g134014134027_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g134012134059_
                                                 _clause134011_)))
                                            (let ((__tmp135448
                                                   (lambda (_g134061134064_
                                                            _g134062134066_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g134061134064_
                                                             _g134062134066_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp135448
                                                      '()
                                                      _L133997_))))
                                      (__tmp135449
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses134069_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp135449
                                  _L133600_)))
                             _clause133955133994_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop133950133978_
                                                       _target133947133973_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g133941133960_
                                                     _g133942133963_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g133941133960_ _g133942133963_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133941133960_ _g133942133963_))))))
                    (declare (not safe))
                    (_g133940134071_ _L133600_)))
                 (_specializer-impl134076_
                  (let ((__tmp135451
                         (let ((__tmp135452
                                (let ((__tmp135454
                                       (let ((__tmp135455
                                              (let ((__tmp135472
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L133077_ '())))
                                                    (__tmp135456
                                                     (let ((__tmp135457
                                                            (let ((__tmp135458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135460
                                  (let ((__tmp135461
                                         (let ((__tmp135471
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L133076_ '())))
                                               (__tmp135462
                                                (let ((__tmp135463
                                                       (let ((__tmp135464
                                                              (let ((__tmp135465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135467
                                    (let ((__tmp135468
                                           (let ((__tmp135470
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L133602_ '())))
                                                 (__tmp135469
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr133939_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp135470 __tmp135469))))
                                      (declare (not safe))
                                      (cons __tmp135468 '())))
                                   (__tmp135466
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr134074_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp135467 __tmp135466))))
                        (declare (not safe))
                        (cons '%#let-values __tmp135465))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp135464 _stx131329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135463 '()))))
                                           (declare (not safe))
                                           (cons __tmp135471 __tmp135462))))
                                    (declare (not safe))
                                    (cons __tmp135461 '())))
                                 (__tmp135459
                                  (let ()
                                    (declare (not safe))
                                    (cons _L133074_ '()))))
                             (declare (not safe))
                             (cons __tmp135460 __tmp135459))))
                      (declare (not safe))
                      (cons '%#let-values __tmp135458))))
               (declare (not safe))
               (cons __tmp135457 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135472
                                                      __tmp135456))))
                                         (declare (not safe))
                                         (cons __tmp135455 '())))
                                      (__tmp135453
                                       (let ()
                                         (declare (not safe))
                                         (cons _L133073_ '()))))
                                  (declare (not safe))
                                  (cons __tmp135454 __tmp135453))))
                           (declare (not safe))
                           (cons '%#let-values __tmp135452))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp135451 _stx131329_)))
                 (_specializer-impl134078_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl131333_
                     _$klass133818_
                     _$method-table133820_
                     _methods-bind133843_
                     _slots-bind133866_
                     _specializer-impl134076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135474
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L131402_)))
                                                          (__tmp135473
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133816_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135474
                                                       '" => "
                                                       __tmp135473))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def131334_
                                                       _L131402_
                                                       _specializer-id133816_
                                                       _specializer-impl134078_)))))
                                            _hd133533133595_
                                            _hd133530133587_
                                            _hd133527133579_)
                                           (let ()
                                             (declare (not safe))
                                             (_g133509133539_
                                              _g133510133542_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133509133539_ _g133510133542_)))
                               (let ()
                                 (declare (not safe))
                                 (_g133509133539_ _g133510133542_)))
                           (let ()
                             (declare (not safe))
                             (_g133509133539_ _g133510133542_)))))
                   (let ()
                     (declare (not safe))
                     (_g133509133539_ _g133510133542_)))
               (let ()
                 (declare (not safe))
                 (_g133509133539_ _g133510133542_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133509133539_
                                                  _g133510133542_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g133509133539_ _g133510133542_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g133509133539_ _g133510133542_)))))
                       (let ()
                         (declare (not safe))
                         (_g133509133539_ _g133510133542_)))))
               (let ()
                 (declare (not safe))
                 (_g133509133539_ _g133510133542_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g133508134081_ _L133075_))
                                         _stx131329_))))
                             _hd133172133295_
                             _kw-ref133170133316_
                             _hd133160133282_
                             _hd133151133258_
                             _hd133142133234_)
                            (let ()
                              (declare (not safe))
                              (_g133116133178_ _g133117133181_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop133165133300_
                                                   _target133162133287_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g133116133178_
                                                 _g133117133181_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g133116133178_ _g133117133181_))))))
                            (let ()
                              (declare (not safe))
                              (_g133116133178_ _g133117133181_)))
                        (let ()
                          (declare (not safe))
                          (_g133116133178_ _g133117133181_)))
                    (let ()
                      (declare (not safe))
                      (_g133116133178_ _g133117133181_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133116133178_
                                                       _g133117133181_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133116133178_
                                                   _g133117133181_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g133116133178_
                                               _g133117133181_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133116133178_ _g133117133181_)))))
                            (let ()
                              (declare (not safe))
                              (_g133116133178_ _g133117133181_)))
                        (let ()
                          (declare (not safe))
                          (_g133116133178_ _g133117133181_)))))
                (let ()
                  (declare (not safe))
                  (_g133116133178_ _g133117133181_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133116133178_
                                                       _g133117133181_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133116133178_
                                                   _g133117133181_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g133116133178_ _g133117133181_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133116133178_ _g133117133181_)))
                            (let ()
                              (declare (not safe))
                              (_g133116133178_ _g133117133181_)))))
                    (let ()
                      (declare (not safe))
                      (_g133116133178_ _g133117133181_)))
                (let ()
                  (declare (not safe))
                  (_g133116133178_ _g133117133181_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133116133178_
                                                       _g133117133181_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133116133178_
                                               _g133117133181_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133116133178_ _g133117133181_)))
                                (let ()
                                  (declare (not safe))
                                  (_g133116133178_ _g133117133181_)))
                            (let ()
                              (declare (not safe))
                              (_g133116133178_ _g133117133181_)))))
                    (let ()
                      (declare (not safe))
                      (_g133116133178_ _g133117133181_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133116133178_
                                                       _g133117133181_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133116133178_
                                               _g133117133181_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133116133178_ _g133117133181_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133116133178_ _g133117133181_)))))
                            (let ()
                              (declare (not safe))
                              (_g133116133178_ _g133117133181_))))))
                (declare (not safe))
                (_g133115134084_ _L133074_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd132950133068_
                                                    _hd132947133060_
                                                    _hd132944133052_
                                                    _hd132941133044_
                                                    _hd132923132996_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132903132956_
                                                      _g132904132959_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132903132956_
                                              _g132904132959_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g132903132956_ _g132904132959_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g132903132956_ _g132904132959_)))
                               (let ()
                                 (declare (not safe))
                                 (_g132903132956_ _g132904132959_)))))
                       (let ()
                         (declare (not safe))
                         (_g132903132956_ _g132904132959_)))
                   (let ()
                     (declare (not safe))
                     (_g132903132956_ _g132904132959_)))
               (let ()
                 (declare (not safe))
                 (_g132903132956_ _g132904132959_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132903132956_
                                                  _g132904132959_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132903132956_
                                              _g132904132959_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132903132956_ _g132904132959_)))))
                           (let ()
                             (declare (not safe))
                             (_g132903132956_ _g132904132959_)))))
                   (let ()
                     (declare (not safe))
                     (_g132903132956_ _g132904132959_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132903132956_
                                                      _g132904132959_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132903132956_
                                                  _g132904132959_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132903132956_
                                              _g132904132959_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132903132956_ _g132904132959_)))))
                           (let ()
                             (declare (not safe))
                             (_g132903132956_ _g132904132959_)))
                       (let ()
                         (declare (not safe))
                         (_g132903132956_ _g132904132959_)))))
               (let ()
                 (declare (not safe))
                 (_g132903132956_ _g132904132959_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132903132956_
                                                  _g132904132959_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g132903132956_ _g132904132959_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132903132956_ _g132904132959_)))
                           (let ()
                             (declare (not safe))
                             (_g132903132956_ _g132904132959_)))
                       (let ()
                         (declare (not safe))
                         (_g132903132956_ _g132904132959_)))))
               (let ()
                 (declare (not safe))
                 (_g132903132956_ _g132904132959_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g132902134087_ _L131401_))
                                         _stx131329_))))))))
                  (___kont134267134268_ (lambda () _stx131329_)))
              (let ((___match134296134297_
                     (lambda (_e131343131369_
                              _hd131342131372_
                              _tl131341131374_
                              _e131346131377_
                              _hd131345131380_
                              _tl131344131382_
                              _e131349131385_
                              _hd131348131388_
                              _tl131347131390_
                              _e131352131393_
                              _hd131351131396_
                              _tl131350131398_)
                       (let ((_L131401_ _hd131351131396_)
                             (_L131402_ _hd131348131388_))
                         (if (let ((__tmp135563
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131402_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp135563))
                             (___kont134265134266_ _L131401_ _L131402_)
                             (___kont134267134268_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134263134264_))
                    (let ((_e131343131369_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134263134264_))))
                      (let ((_tl131341131374_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131343131369_)))
                            (_hd131342131372_
                             (let ()
                               (declare (not safe))
                               (##car _e131343131369_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131341131374_))
                            (let ((_e131346131377_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131341131374_))))
                              (let ((_tl131344131382_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131346131377_)))
                                    (_hd131345131380_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131346131377_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd131345131380_))
                                    (let ((_e131349131385_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd131345131380_))))
                                      (let ((_tl131347131390_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e131349131385_)))
                                            (_hd131348131388_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e131349131385_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl131347131390_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl131344131382_))
                                                (let ((_e131352131393_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl131344131382_))))
                                                  (let ((_tl131350131398_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e131352131393_)))
                                                        (_hd131351131396_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e131352131393_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl131350131398_))
                                                        (___match134296134297_
                                                         _e131343131369_
                                                         _hd131342131372_
                                                         _tl131341131374_
                                                         _e131346131377_
                                                         _hd131345131380_
                                                         _tl131344131382_
                                                         _e131349131385_
                                                         _hd131348131388_
                                                         _tl131347131390_
                                                         _e131352131393_
                                                         _hd131351131396_
                                                         _tl131350131398_)
                                                        (___kont134267134268_))))
                                                (___kont134267134268_))
                                            (___kont134267134268_))))
                                    (___kont134267134268_))))
                            (___kont134267134268_))))
                    (___kont134267134268_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx130288_ _self130289_ _methods130290_ _slots130291_)
        (let* ((___stx134299134300_ _stx130288_)
               (_g130299130521_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx134299134300_)))))
          (let ((___kont134301134302_
                 (lambda (_L131278_ _L131279_ _L131280_ _L131281_)
                   (let ((__tmp135564
                          (let () (declare (not safe)) (gx#stx-e _L131279_))))
                     (declare (not safe))
                     (hash-put! _methods130290_ __tmp135564 '#t))
                   (for-each
                    (lambda (_g131314131316_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g131314131316_
                         _self130289_
                         _methods130290_
                         _slots130291_)))
                    (let ((__tmp135565
                           (lambda (_g131318131321_ _g131319131323_)
                             (let ()
                               (declare (not safe))
                               (cons _g131318131321_ _g131319131323_)))))
                      (declare (not safe))
                      (foldr1 __tmp135565 '() _L131278_)))))
                (___kont134305134306_
                 (lambda (_L131113_ _L131114_ _L131115_ _L131116_ _L131117_)
                   (let ((__tmp135566
                          (let () (declare (not safe)) (gx#stx-e _L131114_))))
                     (declare (not safe))
                     (hash-put! _methods130290_ __tmp135566 '#t))
                   (for-each
                    (lambda (_g131157131159_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g131157131159_
                         _self130289_
                         _methods130290_
                         _slots130291_)))
                    (let ((__tmp135567
                           (lambda (_g131161131164_ _g131162131166_)
                             (let ()
                               (declare (not safe))
                               (cons _g131161131164_ _g131162131166_)))))
                      (declare (not safe))
                      (foldr1 __tmp135567 '() _L131113_)))))
                (___kont134309134310_
                 (lambda (_L130946_ _L130947_ _L130948_)
                   (let ((__tmp135568
                          (let () (declare (not safe)) (gx#stx-e _L130946_))))
                     (declare (not safe))
                     (hash-put! _slots130291_ __tmp135568 '#t))))
                (___kont134311134312_
                 (lambda (_L130823_ _L130824_ _L130825_ _L130826_)
                   (let ((__tmp135569
                          (let () (declare (not safe)) (gx#stx-e _L130824_))))
                     (declare (not safe))
                     (hash-put! _slots130291_ __tmp135569 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L130823_
                      _self130289_
                      _methods130290_
                      _slots130291_))))
                (___kont134313134314_
                 (lambda (_L130697_ _L130698_)
                   (let* ((_accessor130720_
                           (let ((__tmp135570
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130698_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135570)))
                          (_klass130722_
                           (let ((__tmp135571
                                  (##structure-ref
                                   _accessor130720_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx130288_
                              __tmp135571)))
                          (_slot130724_
                           (##structure-ref
                            _accessor130720_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp135573
                                     (##structure-ref
                                      _accessor130720_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp135573))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130722_
                                     _slot130724_))
                                  (##structure-ref
                                   _klass130722_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp135572
                                (##structure-ref
                                 _accessor130720_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! _slots130291_ __tmp135572 '#t))))))
                (___kont134315134316_
                 (lambda (_L130597_ _L130598_ _L130599_)
                   (let* ((_mutator130626_
                           (let ((__tmp135574
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130599_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135574)))
                          (_klass130628_
                           (let ((__tmp135575
                                  (##structure-ref
                                   _mutator130626_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx130288_
                              __tmp135575)))
                          (_slot130630_
                           (##structure-ref
                            _mutator130626_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp135576
                                     (##structure-ref
                                      _mutator130626_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp135576))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130628_
                                     _slot130630_))
                                  (##structure-ref
                                   _klass130628_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ()
                           (declare (not safe))
                           (hash-put! _slots130291_ _slot130630_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__3
                        _L130597_
                        _self130289_
                        _methods130290_
                        _slots130291_)))))
                (___kont134317134318_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx130288_
                      _self130289_
                      _methods130290_
                      _slots130291_)))))
            (let* ((___match134798134799_
                    (lambda (_e130495130533_
                             _hd130494130536_
                             _tl130493130538_
                             _e130498130541_
                             _hd130497130544_
                             _tl130496130546_
                             _e130501130549_
                             _hd130500130552_
                             _tl130499130554_
                             _e130504130557_
                             _hd130503130560_
                             _tl130502130562_
                             _e130507130565_
                             _hd130506130568_
                             _tl130505130570_
                             _e130510130573_
                             _hd130509130576_
                             _tl130508130578_
                             _e130513130581_
                             _hd130512130584_
                             _tl130511130586_
                             _e130516130589_
                             _hd130515130592_
                             _tl130514130594_)
                      (let ((_L130597_ _hd130515130592_)
                            (_L130598_ _hd130512130584_)
                            (_L130599_ _hd130503130560_))
                        (if (and (let ((__tmp135577
                                        (let ((__tmp135578
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130599_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135578))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135577
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130598_
                                    _self130289_)))
                            (___kont134315134316_
                             _L130597_
                             _L130598_
                             _L130599_)
                            (___kont134317134318_)))))
                   (___match134796134797_
                    (lambda (_e130495130533_
                             _hd130494130536_
                             _tl130493130538_
                             _e130498130541_
                             _hd130497130544_
                             _tl130496130546_
                             _e130501130549_
                             _hd130500130552_
                             _tl130499130554_
                             _e130504130557_
                             _hd130503130560_
                             _tl130502130562_
                             _e130507130565_
                             _hd130506130568_
                             _tl130505130570_
                             _e130510130573_
                             _hd130509130576_
                             _tl130508130578_
                             _e130513130581_
                             _hd130512130584_
                             _tl130511130586_
                             _e130516130589_
                             _hd130515130592_
                             _tl130514130594_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130514130594_))
                          (___match134798134799_
                           _e130495130533_
                           _hd130494130536_
                           _tl130493130538_
                           _e130498130541_
                           _hd130497130544_
                           _tl130496130546_
                           _e130501130549_
                           _hd130500130552_
                           _tl130499130554_
                           _e130504130557_
                           _hd130503130560_
                           _tl130502130562_
                           _e130507130565_
                           _hd130506130568_
                           _tl130505130570_
                           _e130510130573_
                           _hd130509130576_
                           _tl130508130578_
                           _e130513130581_
                           _hd130512130584_
                           _tl130511130586_
                           _e130516130589_
                           _hd130515130592_
                           _tl130514130594_)
                          (___kont134317134318_))))
                   (___match134790134791_
                    (lambda (_e130495130533_
                             _hd130494130536_
                             _tl130493130538_
                             _e130498130541_
                             _hd130497130544_
                             _tl130496130546_
                             _e130501130549_
                             _hd130500130552_
                             _tl130499130554_
                             _e130504130557_
                             _hd130503130560_
                             _tl130502130562_
                             _e130507130565_
                             _hd130506130568_
                             _tl130505130570_
                             _e130510130573_
                             _hd130509130576_
                             _tl130508130578_
                             _e130513130581_
                             _hd130512130584_
                             _tl130511130586_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130505130570_))
                          (let ((_e130516130589_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130505130570_))))
                            (let ((_tl130514130594_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130516130589_)))
                                  (_hd130515130592_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130516130589_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130514130594_))
                                  (___match134798134799_
                                   _e130495130533_
                                   _hd130494130536_
                                   _tl130493130538_
                                   _e130498130541_
                                   _hd130497130544_
                                   _tl130496130546_
                                   _e130501130549_
                                   _hd130500130552_
                                   _tl130499130554_
                                   _e130504130557_
                                   _hd130503130560_
                                   _tl130502130562_
                                   _e130507130565_
                                   _hd130506130568_
                                   _tl130505130570_
                                   _e130510130573_
                                   _hd130509130576_
                                   _tl130508130578_
                                   _e130513130581_
                                   _hd130512130584_
                                   _tl130511130586_
                                   _e130516130589_
                                   _hd130515130592_
                                   _tl130514130594_)
                                  (___kont134317134318_))))
                          (___kont134317134318_))))
                   (___match134736134737_
                    (lambda (_e130471130641_
                             _hd130470130644_
                             _tl130469130646_
                             _e130474130649_
                             _hd130473130652_
                             _tl130472130654_
                             _e130477130657_
                             _hd130476130660_
                             _tl130475130662_
                             _e130480130665_
                             _hd130479130668_
                             _tl130478130670_
                             _e130483130673_
                             _hd130482130676_
                             _tl130481130678_
                             _e130486130681_
                             _hd130485130684_
                             _tl130484130686_
                             _e130489130689_
                             _hd130488130692_
                             _tl130487130694_)
                      (let ((_L130697_ _hd130488130692_)
                            (_L130698_ _hd130479130668_))
                        (if (and (let ((__tmp135579
                                        (let ((__tmp135580
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130698_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135580))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135579
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130697_
                                    _self130289_)))
                            (___kont134313134314_ _L130697_ _L130698_)
                            (___kont134317134318_)))))
                   (___match134734134735_
                    (lambda (_e130471130641_
                             _hd130470130644_
                             _tl130469130646_
                             _e130474130649_
                             _hd130473130652_
                             _tl130472130654_
                             _e130477130657_
                             _hd130476130660_
                             _tl130475130662_
                             _e130480130665_
                             _hd130479130668_
                             _tl130478130670_
                             _e130483130673_
                             _hd130482130676_
                             _tl130481130678_
                             _e130486130681_
                             _hd130485130684_
                             _tl130484130686_
                             _e130489130689_
                             _hd130488130692_
                             _tl130487130694_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130481130678_))
                          (___match134736134737_
                           _e130471130641_
                           _hd130470130644_
                           _tl130469130646_
                           _e130474130649_
                           _hd130473130652_
                           _tl130472130654_
                           _e130477130657_
                           _hd130476130660_
                           _tl130475130662_
                           _e130480130665_
                           _hd130479130668_
                           _tl130478130670_
                           _e130483130673_
                           _hd130482130676_
                           _tl130481130678_
                           _e130486130681_
                           _hd130485130684_
                           _tl130484130686_
                           _e130489130689_
                           _hd130488130692_
                           _tl130487130694_)
                          (___match134790134791_
                           _e130471130641_
                           _hd130470130644_
                           _tl130469130646_
                           _e130474130649_
                           _hd130473130652_
                           _tl130472130654_
                           _e130477130657_
                           _hd130476130660_
                           _tl130475130662_
                           _e130480130665_
                           _hd130479130668_
                           _tl130478130670_
                           _e130483130673_
                           _hd130482130676_
                           _tl130481130678_
                           _e130486130681_
                           _hd130485130684_
                           _tl130484130686_
                           _e130489130689_
                           _hd130488130692_
                           _tl130487130694_))))
                   (___match134680134681_
                    (lambda (_e130436130735_
                             _hd130435130738_
                             _tl130434130740_
                             _e130439130743_
                             _hd130438130746_
                             _tl130437130748_
                             _e130442130751_
                             _hd130441130754_
                             _tl130440130756_
                             _e130445130759_
                             _hd130444130762_
                             _tl130443130764_
                             _e130448130767_
                             _hd130447130770_
                             _tl130446130772_
                             _e130451130775_
                             _hd130450130778_
                             _tl130449130780_
                             _e130454130783_
                             _hd130453130786_
                             _tl130452130788_
                             _e130457130791_
                             _hd130456130794_
                             _tl130455130796_
                             _e130460130799_
                             _hd130459130802_
                             _tl130458130804_
                             _e130463130807_
                             _hd130462130810_
                             _tl130461130812_
                             _e130466130815_
                             _hd130465130818_
                             _tl130464130820_)
                      (let ((_L130823_ _hd130465130818_)
                            (_L130824_ _hd130462130810_)
                            (_L130825_ _hd130453130786_)
                            (_L130826_ _hd130444130762_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130826_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130826_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130825_
                                    _self130289_)))
                            (___kont134311134312_
                             _L130823_
                             _L130824_
                             _L130825_
                             _L130826_)
                            (___kont134317134318_)))))
                   (___match134672134673_
                    (lambda (_e130436130735_
                             _hd130435130738_
                             _tl130434130740_
                             _e130439130743_
                             _hd130438130746_
                             _tl130437130748_
                             _e130442130751_
                             _hd130441130754_
                             _tl130440130756_
                             _e130445130759_
                             _hd130444130762_
                             _tl130443130764_
                             _e130448130767_
                             _hd130447130770_
                             _tl130446130772_
                             _e130451130775_
                             _hd130450130778_
                             _tl130449130780_
                             _e130454130783_
                             _hd130453130786_
                             _tl130452130788_
                             _e130457130791_
                             _hd130456130794_
                             _tl130455130796_
                             _e130460130799_
                             _hd130459130802_
                             _tl130458130804_
                             _e130463130807_
                             _hd130462130810_
                             _tl130461130812_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130455130796_))
                          (let ((_e130466130815_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130455130796_))))
                            (let ((_tl130464130820_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130466130815_)))
                                  (_hd130465130818_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130466130815_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130464130820_))
                                  (___match134680134681_
                                   _e130436130735_
                                   _hd130435130738_
                                   _tl130434130740_
                                   _e130439130743_
                                   _hd130438130746_
                                   _tl130437130748_
                                   _e130442130751_
                                   _hd130441130754_
                                   _tl130440130756_
                                   _e130445130759_
                                   _hd130444130762_
                                   _tl130443130764_
                                   _e130448130767_
                                   _hd130447130770_
                                   _tl130446130772_
                                   _e130451130775_
                                   _hd130450130778_
                                   _tl130449130780_
                                   _e130454130783_
                                   _hd130453130786_
                                   _tl130452130788_
                                   _e130457130791_
                                   _hd130456130794_
                                   _tl130455130796_
                                   _e130460130799_
                                   _hd130459130802_
                                   _tl130458130804_
                                   _e130463130807_
                                   _hd130462130810_
                                   _tl130461130812_
                                   _e130466130815_
                                   _hd130465130818_
                                   _tl130464130820_)
                                  (___kont134317134318_))))
                          (___match134796134797_
                           _e130436130735_
                           _hd130435130738_
                           _tl130434130740_
                           _e130439130743_
                           _hd130438130746_
                           _tl130437130748_
                           _e130442130751_
                           _hd130441130754_
                           _tl130440130756_
                           _e130445130759_
                           _hd130444130762_
                           _tl130443130764_
                           _e130448130767_
                           _hd130447130770_
                           _tl130446130772_
                           _e130451130775_
                           _hd130450130778_
                           _tl130449130780_
                           _e130454130783_
                           _hd130453130786_
                           _tl130452130788_
                           _e130457130791_
                           _hd130456130794_
                           _tl130455130796_))))
                   (___match134594134595_
                    (lambda (_e130402130866_
                             _hd130401130869_
                             _tl130400130871_
                             _e130405130874_
                             _hd130404130877_
                             _tl130403130879_
                             _e130408130882_
                             _hd130407130885_
                             _tl130406130887_
                             _e130411130890_
                             _hd130410130893_
                             _tl130409130895_
                             _e130414130898_
                             _hd130413130901_
                             _tl130412130903_
                             _e130417130906_
                             _hd130416130909_
                             _tl130415130911_
                             _e130420130914_
                             _hd130419130917_
                             _tl130418130919_
                             _e130423130922_
                             _hd130422130925_
                             _tl130421130927_
                             _e130426130930_
                             _hd130425130933_
                             _tl130424130935_
                             _e130429130938_
                             _hd130428130941_
                             _tl130427130943_)
                      (let ((_L130946_ _hd130428130941_)
                            (_L130947_ _hd130419130917_)
                            (_L130948_ _hd130410130893_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130948_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130948_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130947_
                                    _self130289_)))
                            (___kont134309134310_
                             _L130946_
                             _L130947_
                             _L130948_)
                            (___match134798134799_
                             _e130402130866_
                             _hd130401130869_
                             _tl130400130871_
                             _e130405130874_
                             _hd130404130877_
                             _tl130403130879_
                             _e130408130882_
                             _hd130407130885_
                             _tl130406130887_
                             _e130411130890_
                             _hd130410130893_
                             _tl130409130895_
                             _e130414130898_
                             _hd130413130901_
                             _tl130412130903_
                             _e130417130906_
                             _hd130416130909_
                             _tl130415130911_
                             _e130420130914_
                             _hd130419130917_
                             _tl130418130919_
                             _e130423130922_
                             _hd130422130925_
                             _tl130421130927_)))))
                   (___match134592134593_
                    (lambda (_e130402130866_
                             _hd130401130869_
                             _tl130400130871_
                             _e130405130874_
                             _hd130404130877_
                             _tl130403130879_
                             _e130408130882_
                             _hd130407130885_
                             _tl130406130887_
                             _e130411130890_
                             _hd130410130893_
                             _tl130409130895_
                             _e130414130898_
                             _hd130413130901_
                             _tl130412130903_
                             _e130417130906_
                             _hd130416130909_
                             _tl130415130911_
                             _e130420130914_
                             _hd130419130917_
                             _tl130418130919_
                             _e130423130922_
                             _hd130422130925_
                             _tl130421130927_
                             _e130426130930_
                             _hd130425130933_
                             _tl130424130935_
                             _e130429130938_
                             _hd130428130941_
                             _tl130427130943_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130421130927_))
                          (___match134594134595_
                           _e130402130866_
                           _hd130401130869_
                           _tl130400130871_
                           _e130405130874_
                           _hd130404130877_
                           _tl130403130879_
                           _e130408130882_
                           _hd130407130885_
                           _tl130406130887_
                           _e130411130890_
                           _hd130410130893_
                           _tl130409130895_
                           _e130414130898_
                           _hd130413130901_
                           _tl130412130903_
                           _e130417130906_
                           _hd130416130909_
                           _tl130415130911_
                           _e130420130914_
                           _hd130419130917_
                           _tl130418130919_
                           _e130423130922_
                           _hd130422130925_
                           _tl130421130927_
                           _e130426130930_
                           _hd130425130933_
                           _tl130424130935_
                           _e130429130938_
                           _hd130428130941_
                           _tl130427130943_)
                          (___match134672134673_
                           _e130402130866_
                           _hd130401130869_
                           _tl130400130871_
                           _e130405130874_
                           _hd130404130877_
                           _tl130403130879_
                           _e130408130882_
                           _hd130407130885_
                           _tl130406130887_
                           _e130411130890_
                           _hd130410130893_
                           _tl130409130895_
                           _e130414130898_
                           _hd130413130901_
                           _tl130412130903_
                           _e130417130906_
                           _hd130416130909_
                           _tl130415130911_
                           _e130420130914_
                           _hd130419130917_
                           _tl130418130919_
                           _e130423130922_
                           _hd130422130925_
                           _tl130421130927_
                           _e130426130930_
                           _hd130425130933_
                           _tl130424130935_
                           _e130429130938_
                           _hd130428130941_
                           _tl130427130943_))))
                   (___match134582134583_
                    (lambda (_e130402130866_
                             _hd130401130869_
                             _tl130400130871_
                             _e130405130874_
                             _hd130404130877_
                             _tl130403130879_
                             _e130408130882_
                             _hd130407130885_
                             _tl130406130887_
                             _e130411130890_
                             _hd130410130893_
                             _tl130409130895_
                             _e130414130898_
                             _hd130413130901_
                             _tl130412130903_
                             _e130417130906_
                             _hd130416130909_
                             _tl130415130911_
                             _e130420130914_
                             _hd130419130917_
                             _tl130418130919_
                             _e130423130922_
                             _hd130422130925_
                             _tl130421130927_
                             _e130426130930_
                             _hd130425130933_
                             _tl130424130935_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd130425130933_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl130424130935_))
                              (let ((_e130429130938_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl130424130935_))))
                                (let ((_tl130427130943_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130429130938_)))
                                      (_hd130428130941_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130429130938_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl130427130943_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl130421130927_))
                                          (___match134594134595_
                                           _e130402130866_
                                           _hd130401130869_
                                           _tl130400130871_
                                           _e130405130874_
                                           _hd130404130877_
                                           _tl130403130879_
                                           _e130408130882_
                                           _hd130407130885_
                                           _tl130406130887_
                                           _e130411130890_
                                           _hd130410130893_
                                           _tl130409130895_
                                           _e130414130898_
                                           _hd130413130901_
                                           _tl130412130903_
                                           _e130417130906_
                                           _hd130416130909_
                                           _tl130415130911_
                                           _e130420130914_
                                           _hd130419130917_
                                           _tl130418130919_
                                           _e130423130922_
                                           _hd130422130925_
                                           _tl130421130927_
                                           _e130426130930_
                                           _hd130425130933_
                                           _tl130424130935_
                                           _e130429130938_
                                           _hd130428130941_
                                           _tl130427130943_)
                                          (___match134672134673_
                                           _e130402130866_
                                           _hd130401130869_
                                           _tl130400130871_
                                           _e130405130874_
                                           _hd130404130877_
                                           _tl130403130879_
                                           _e130408130882_
                                           _hd130407130885_
                                           _tl130406130887_
                                           _e130411130890_
                                           _hd130410130893_
                                           _tl130409130895_
                                           _e130414130898_
                                           _hd130413130901_
                                           _tl130412130903_
                                           _e130417130906_
                                           _hd130416130909_
                                           _tl130415130911_
                                           _e130420130914_
                                           _hd130419130917_
                                           _tl130418130919_
                                           _e130423130922_
                                           _hd130422130925_
                                           _tl130421130927_
                                           _e130426130930_
                                           _hd130425130933_
                                           _tl130424130935_
                                           _e130429130938_
                                           _hd130428130941_
                                           _tl130427130943_))
                                      (___match134796134797_
                                       _e130402130866_
                                       _hd130401130869_
                                       _tl130400130871_
                                       _e130405130874_
                                       _hd130404130877_
                                       _tl130403130879_
                                       _e130408130882_
                                       _hd130407130885_
                                       _tl130406130887_
                                       _e130411130890_
                                       _hd130410130893_
                                       _tl130409130895_
                                       _e130414130898_
                                       _hd130413130901_
                                       _tl130412130903_
                                       _e130417130906_
                                       _hd130416130909_
                                       _tl130415130911_
                                       _e130420130914_
                                       _hd130419130917_
                                       _tl130418130919_
                                       _e130423130922_
                                       _hd130422130925_
                                       _tl130421130927_))))
                              (___match134796134797_
                               _e130402130866_
                               _hd130401130869_
                               _tl130400130871_
                               _e130405130874_
                               _hd130404130877_
                               _tl130403130879_
                               _e130408130882_
                               _hd130407130885_
                               _tl130406130887_
                               _e130411130890_
                               _hd130410130893_
                               _tl130409130895_
                               _e130414130898_
                               _hd130413130901_
                               _tl130412130903_
                               _e130417130906_
                               _hd130416130909_
                               _tl130415130911_
                               _e130420130914_
                               _hd130419130917_
                               _tl130418130919_
                               _e130423130922_
                               _hd130422130925_
                               _tl130421130927_))
                          (___match134796134797_
                           _e130402130866_
                           _hd130401130869_
                           _tl130400130871_
                           _e130405130874_
                           _hd130404130877_
                           _tl130403130879_
                           _e130408130882_
                           _hd130407130885_
                           _tl130406130887_
                           _e130411130890_
                           _hd130410130893_
                           _tl130409130895_
                           _e130414130898_
                           _hd130413130901_
                           _tl130412130903_
                           _e130417130906_
                           _hd130416130909_
                           _tl130415130911_
                           _e130420130914_
                           _hd130419130917_
                           _tl130418130919_
                           _e130423130922_
                           _hd130422130925_
                           _tl130421130927_))))
                   (___match134514134515_
                    (lambda (_e130351130985_
                             _hd130350130988_
                             _tl130349130990_
                             _e130354130993_
                             _hd130353130996_
                             _tl130352130998_
                             _e130357131001_
                             _hd130356131004_
                             _tl130355131006_
                             _e130360131009_
                             _hd130359131012_
                             _tl130358131014_
                             _e130363131017_
                             _hd130362131020_
                             _tl130361131022_
                             _e130366131025_
                             _hd130365131028_
                             _tl130364131030_
                             _e130369131033_
                             _hd130368131036_
                             _tl130367131038_
                             _e130372131041_
                             _hd130371131044_
                             _tl130370131046_
                             _e130375131049_
                             _hd130374131052_
                             _tl130373131054_
                             _e130378131057_
                             _hd130377131060_
                             _tl130376131062_
                             _e130381131065_
                             _hd130380131068_
                             _tl130379131070_
                             _e130384131073_
                             _hd130383131076_
                             _tl130382131078_
                             _e130387131081_
                             _hd130386131084_
                             _tl130385131086_
                             ___splice134307134308_
                             _target130388131089_
                             _tl130390131091_)
                      (letrec ((_loop130391131094_
                                (lambda (_hd130389131097_ _args130395131099_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd130389131097_))
                                      (let ((_e130392131102_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd130389131097_))))
                                        (let ((_lp-tl130394131107_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e130392131102_)))
                                              (_lp-hd130393131105_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e130392131102_))))
                                          (let ((__tmp135581
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd130393131105_
                                                         _args130395131099_))))
                                            (declare (not safe))
                                            (_loop130391131094_
                                             _lp-tl130394131107_
                                             __tmp135581))))
                                      (let ((_args130396131110_
                                             (reverse _args130395131099_)))
                                        (let ((_L131113_ _args130396131110_)
                                              (_L131114_ _hd130386131084_)
                                              (_L131115_ _hd130377131060_)
                                              (_L131116_ _hd130368131036_)
                                              (_L131117_ _hd130359131012_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131117_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131116_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131115_
                                                      _self130289_)))
                                              (___kont134305134306_
                                               _L131113_
                                               _L131114_
                                               _L131115_
                                               _L131116_
                                               _L131117_)
                                              (___kont134317134318_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop130391131094_ _target130388131089_ '())))))
                   (___match134472134473_
                    (lambda (_e130351130985_
                             _hd130350130988_
                             _tl130349130990_
                             _e130354130993_
                             _hd130353130996_
                             _tl130352130998_
                             _e130357131001_
                             _hd130356131004_
                             _tl130355131006_
                             _e130360131009_
                             _hd130359131012_
                             _tl130358131014_
                             _e130363131017_
                             _hd130362131020_
                             _tl130361131022_
                             _e130366131025_
                             _hd130365131028_
                             _tl130364131030_
                             _e130369131033_
                             _hd130368131036_
                             _tl130367131038_
                             _e130372131041_
                             _hd130371131044_
                             _tl130370131046_
                             _e130375131049_
                             _hd130374131052_
                             _tl130373131054_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd130374131052_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl130373131054_))
                              (let ((_e130378131057_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl130373131054_))))
                                (let ((_tl130376131062_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130378131057_)))
                                      (_hd130377131060_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130378131057_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl130376131062_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl130370131046_))
                                          (let ((_e130381131065_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl130370131046_))))
                                            (let ((_tl130379131070_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130381131065_)))
                                                  (_hd130380131068_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130381131065_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd130380131068_))
                                                  (let ((_e130384131073_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd130380131068_))))
                                                    (let ((_tl130382131078_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e130384131073_)))
                                                          (_hd130383131076_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e130384131073_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd130383131076_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd130383131076_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130382131078_))
                          (let ((_e130387131081_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130382131078_))))
                            (let ((_tl130385131086_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130387131081_)))
                                  (_hd130386131084_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130387131081_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130385131086_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl130379131070_))
                                      (let ((___splice134307134308_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl130379131070_
                                                '0))))
                                        (let ((_tl130390131091_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice134307134308_
                                                  '1)))
                                              (_target130388131089_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice134307134308_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl130390131091_))
                                              (___match134514134515_
                                               _e130351130985_
                                               _hd130350130988_
                                               _tl130349130990_
                                               _e130354130993_
                                               _hd130353130996_
                                               _tl130352130998_
                                               _e130357131001_
                                               _hd130356131004_
                                               _tl130355131006_
                                               _e130360131009_
                                               _hd130359131012_
                                               _tl130358131014_
                                               _e130363131017_
                                               _hd130362131020_
                                               _tl130361131022_
                                               _e130366131025_
                                               _hd130365131028_
                                               _tl130364131030_
                                               _e130369131033_
                                               _hd130368131036_
                                               _tl130367131038_
                                               _e130372131041_
                                               _hd130371131044_
                                               _tl130370131046_
                                               _e130375131049_
                                               _hd130374131052_
                                               _tl130373131054_
                                               _e130378131057_
                                               _hd130377131060_
                                               _tl130376131062_
                                               _e130381131065_
                                               _hd130380131068_
                                               _tl130379131070_
                                               _e130384131073_
                                               _hd130383131076_
                                               _tl130382131078_
                                               _e130387131081_
                                               _hd130386131084_
                                               _tl130385131086_
                                               ___splice134307134308_
                                               _target130388131089_
                                               _tl130390131091_)
                                              (___kont134317134318_))))
                                      (___kont134317134318_))
                                  (___kont134317134318_))))
                          (___kont134317134318_))
                      (___kont134317134318_))
                  (___kont134317134318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134317134318_))))
                                          (___match134796134797_
                                           _e130351130985_
                                           _hd130350130988_
                                           _tl130349130990_
                                           _e130354130993_
                                           _hd130353130996_
                                           _tl130352130998_
                                           _e130357131001_
                                           _hd130356131004_
                                           _tl130355131006_
                                           _e130360131009_
                                           _hd130359131012_
                                           _tl130358131014_
                                           _e130363131017_
                                           _hd130362131020_
                                           _tl130361131022_
                                           _e130366131025_
                                           _hd130365131028_
                                           _tl130364131030_
                                           _e130369131033_
                                           _hd130368131036_
                                           _tl130367131038_
                                           _e130372131041_
                                           _hd130371131044_
                                           _tl130370131046_))
                                      (___match134796134797_
                                       _e130351130985_
                                       _hd130350130988_
                                       _tl130349130990_
                                       _e130354130993_
                                       _hd130353130996_
                                       _tl130352130998_
                                       _e130357131001_
                                       _hd130356131004_
                                       _tl130355131006_
                                       _e130360131009_
                                       _hd130359131012_
                                       _tl130358131014_
                                       _e130363131017_
                                       _hd130362131020_
                                       _tl130361131022_
                                       _e130366131025_
                                       _hd130365131028_
                                       _tl130364131030_
                                       _e130369131033_
                                       _hd130368131036_
                                       _tl130367131038_
                                       _e130372131041_
                                       _hd130371131044_
                                       _tl130370131046_))))
                              (___match134796134797_
                               _e130351130985_
                               _hd130350130988_
                               _tl130349130990_
                               _e130354130993_
                               _hd130353130996_
                               _tl130352130998_
                               _e130357131001_
                               _hd130356131004_
                               _tl130355131006_
                               _e130360131009_
                               _hd130359131012_
                               _tl130358131014_
                               _e130363131017_
                               _hd130362131020_
                               _tl130361131022_
                               _e130366131025_
                               _hd130365131028_
                               _tl130364131030_
                               _e130369131033_
                               _hd130368131036_
                               _tl130367131038_
                               _e130372131041_
                               _hd130371131044_
                               _tl130370131046_))
                          (___match134582134583_
                           _e130351130985_
                           _hd130350130988_
                           _tl130349130990_
                           _e130354130993_
                           _hd130353130996_
                           _tl130352130998_
                           _e130357131001_
                           _hd130356131004_
                           _tl130355131006_
                           _e130360131009_
                           _hd130359131012_
                           _tl130358131014_
                           _e130363131017_
                           _hd130362131020_
                           _tl130361131022_
                           _e130366131025_
                           _hd130365131028_
                           _tl130364131030_
                           _e130369131033_
                           _hd130368131036_
                           _tl130367131038_
                           _e130372131041_
                           _hd130371131044_
                           _tl130370131046_
                           _e130375131049_
                           _hd130374131052_
                           _tl130373131054_))))
                   (___match134404134405_
                    (lambda (_e130307131174_
                             _hd130306131177_
                             _tl130305131179_
                             _e130310131182_
                             _hd130309131185_
                             _tl130308131187_
                             _e130313131190_
                             _hd130312131193_
                             _tl130311131195_
                             _e130316131198_
                             _hd130315131201_
                             _tl130314131203_
                             _e130319131206_
                             _hd130318131209_
                             _tl130317131211_
                             _e130322131214_
                             _hd130321131217_
                             _tl130320131219_
                             _e130325131222_
                             _hd130324131225_
                             _tl130323131227_
                             _e130328131230_
                             _hd130327131233_
                             _tl130326131235_
                             _e130331131238_
                             _hd130330131241_
                             _tl130329131243_
                             _e130334131246_
                             _hd130333131249_
                             _tl130332131251_
                             ___splice134303134304_
                             _target130335131254_
                             _tl130337131256_)
                      (letrec ((_loop130338131259_
                                (lambda (_hd130336131262_ _args130342131264_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd130336131262_))
                                      (let ((_e130339131267_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd130336131262_))))
                                        (let ((_lp-tl130341131272_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e130339131267_)))
                                              (_lp-hd130340131270_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e130339131267_))))
                                          (let ((__tmp135582
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd130340131270_
                                                         _args130342131264_))))
                                            (declare (not safe))
                                            (_loop130338131259_
                                             _lp-tl130341131272_
                                             __tmp135582))))
                                      (let ((_args130343131275_
                                             (reverse _args130342131264_)))
                                        (let ((_L131278_ _args130343131275_)
                                              (_L131279_ _hd130333131249_)
                                              (_L131280_ _hd130324131225_)
                                              (_L131281_ _hd130315131201_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131281_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131280_
                                                      _self130289_)))
                                              (___kont134301134302_
                                               _L131278_
                                               _L131279_
                                               _L131280_
                                               _L131281_)
                                              (___match134592134593_
                                               _e130307131174_
                                               _hd130306131177_
                                               _tl130305131179_
                                               _e130310131182_
                                               _hd130309131185_
                                               _tl130308131187_
                                               _e130313131190_
                                               _hd130312131193_
                                               _tl130311131195_
                                               _e130316131198_
                                               _hd130315131201_
                                               _tl130314131203_
                                               _e130319131206_
                                               _hd130318131209_
                                               _tl130317131211_
                                               _e130322131214_
                                               _hd130321131217_
                                               _tl130320131219_
                                               _e130325131222_
                                               _hd130324131225_
                                               _tl130323131227_
                                               _e130328131230_
                                               _hd130327131233_
                                               _tl130326131235_
                                               _e130331131238_
                                               _hd130330131241_
                                               _tl130329131243_
                                               _e130334131246_
                                               _hd130333131249_
                                               _tl130332131251_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop130338131259_ _target130335131254_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx134299134300_))
                  (let ((_e130307131174_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx134299134300_))))
                    (let ((_tl130305131179_
                           (let ()
                             (declare (not safe))
                             (##cdr _e130307131174_)))
                          (_hd130306131177_
                           (let ()
                             (declare (not safe))
                             (##car _e130307131174_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130305131179_))
                          (let ((_e130310131182_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130305131179_))))
                            (let ((_tl130308131187_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130310131182_)))
                                  (_hd130309131185_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130310131182_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd130309131185_))
                                  (let ((_e130313131190_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd130309131185_))))
                                    (let ((_tl130311131195_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e130313131190_)))
                                          (_hd130312131193_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e130313131190_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd130312131193_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd130312131193_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl130311131195_))
                                                  (let ((_e130316131198_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl130311131195_))))
                                                    (let ((_tl130314131203_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e130316131198_)))
                                                          (_hd130315131201_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e130316131198_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl130314131203_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl130308131187_))
                      (let ((_e130319131206_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl130308131187_))))
                        (let ((_tl130317131211_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e130319131206_)))
                              (_hd130318131209_
                               (let ()
                                 (declare (not safe))
                                 (##car _e130319131206_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd130318131209_))
                              (let ((_e130322131214_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd130318131209_))))
                                (let ((_tl130320131219_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130322131214_)))
                                      (_hd130321131217_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130322131214_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd130321131217_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd130321131217_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl130320131219_))
                                              (let ((_e130325131222_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl130320131219_))))
                                                (let ((_tl130323131227_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e130325131222_)))
                                                      (_hd130324131225_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e130325131222_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl130323131227_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl130317131211_))
                                                          (let ((_e130328131230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl130317131211_))))
                    (let ((_tl130326131235_
                           (let ()
                             (declare (not safe))
                             (##cdr _e130328131230_)))
                          (_hd130327131233_
                           (let ()
                             (declare (not safe))
                             (##car _e130328131230_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd130327131233_))
                          (let ((_e130331131238_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd130327131233_))))
                            (let ((_tl130329131243_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130331131238_)))
                                  (_hd130330131241_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130331131238_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd130330131241_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd130330131241_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl130329131243_))
                                          (let ((_e130334131246_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl130329131243_))))
                                            (let ((_tl130332131251_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130334131246_)))
                                                  (_hd130333131249_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130334131246_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl130332131251_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl130326131235_))
                                                      (let ((___splice134303134304_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl130326131235_ '0))))
                (let ((_tl130337131256_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice134303134304_ '1)))
                      (_target130335131254_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice134303134304_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl130337131256_))
                      (___match134404134405_
                       _e130307131174_
                       _hd130306131177_
                       _tl130305131179_
                       _e130310131182_
                       _hd130309131185_
                       _tl130308131187_
                       _e130313131190_
                       _hd130312131193_
                       _tl130311131195_
                       _e130316131198_
                       _hd130315131201_
                       _tl130314131203_
                       _e130319131206_
                       _hd130318131209_
                       _tl130317131211_
                       _e130322131214_
                       _hd130321131217_
                       _tl130320131219_
                       _e130325131222_
                       _hd130324131225_
                       _tl130323131227_
                       _e130328131230_
                       _hd130327131233_
                       _tl130326131235_
                       _e130331131238_
                       _hd130330131241_
                       _tl130329131243_
                       _e130334131246_
                       _hd130333131249_
                       _tl130332131251_
                       ___splice134303134304_
                       _target130335131254_
                       _tl130337131256_)
                      (___match134592134593_
                       _e130307131174_
                       _hd130306131177_
                       _tl130305131179_
                       _e130310131182_
                       _hd130309131185_
                       _tl130308131187_
                       _e130313131190_
                       _hd130312131193_
                       _tl130311131195_
                       _e130316131198_
                       _hd130315131201_
                       _tl130314131203_
                       _e130319131206_
                       _hd130318131209_
                       _tl130317131211_
                       _e130322131214_
                       _hd130321131217_
                       _tl130320131219_
                       _e130325131222_
                       _hd130324131225_
                       _tl130323131227_
                       _e130328131230_
                       _hd130327131233_
                       _tl130326131235_
                       _e130331131238_
                       _hd130330131241_
                       _tl130329131243_
                       _e130334131246_
                       _hd130333131249_
                       _tl130332131251_))))
              (___match134592134593_
               _e130307131174_
               _hd130306131177_
               _tl130305131179_
               _e130310131182_
               _hd130309131185_
               _tl130308131187_
               _e130313131190_
               _hd130312131193_
               _tl130311131195_
               _e130316131198_
               _hd130315131201_
               _tl130314131203_
               _e130319131206_
               _hd130318131209_
               _tl130317131211_
               _e130322131214_
               _hd130321131217_
               _tl130320131219_
               _e130325131222_
               _hd130324131225_
               _tl130323131227_
               _e130328131230_
               _hd130327131233_
               _tl130326131235_
               _e130331131238_
               _hd130330131241_
               _tl130329131243_
               _e130334131246_
               _hd130333131249_
               _tl130332131251_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match134796134797_
                                                   _e130307131174_
                                                   _hd130306131177_
                                                   _tl130305131179_
                                                   _e130310131182_
                                                   _hd130309131185_
                                                   _tl130308131187_
                                                   _e130313131190_
                                                   _hd130312131193_
                                                   _tl130311131195_
                                                   _e130316131198_
                                                   _hd130315131201_
                                                   _tl130314131203_
                                                   _e130319131206_
                                                   _hd130318131209_
                                                   _tl130317131211_
                                                   _e130322131214_
                                                   _hd130321131217_
                                                   _tl130320131219_
                                                   _e130325131222_
                                                   _hd130324131225_
                                                   _tl130323131227_
                                                   _e130328131230_
                                                   _hd130327131233_
                                                   _tl130326131235_))))
                                          (___match134796134797_
                                           _e130307131174_
                                           _hd130306131177_
                                           _tl130305131179_
                                           _e130310131182_
                                           _hd130309131185_
                                           _tl130308131187_
                                           _e130313131190_
                                           _hd130312131193_
                                           _tl130311131195_
                                           _e130316131198_
                                           _hd130315131201_
                                           _tl130314131203_
                                           _e130319131206_
                                           _hd130318131209_
                                           _tl130317131211_
                                           _e130322131214_
                                           _hd130321131217_
                                           _tl130320131219_
                                           _e130325131222_
                                           _hd130324131225_
                                           _tl130323131227_
                                           _e130328131230_
                                           _hd130327131233_
                                           _tl130326131235_))
                                      (___match134472134473_
                                       _e130307131174_
                                       _hd130306131177_
                                       _tl130305131179_
                                       _e130310131182_
                                       _hd130309131185_
                                       _tl130308131187_
                                       _e130313131190_
                                       _hd130312131193_
                                       _tl130311131195_
                                       _e130316131198_
                                       _hd130315131201_
                                       _tl130314131203_
                                       _e130319131206_
                                       _hd130318131209_
                                       _tl130317131211_
                                       _e130322131214_
                                       _hd130321131217_
                                       _tl130320131219_
                                       _e130325131222_
                                       _hd130324131225_
                                       _tl130323131227_
                                       _e130328131230_
                                       _hd130327131233_
                                       _tl130326131235_
                                       _e130331131238_
                                       _hd130330131241_
                                       _tl130329131243_))
                                  (___match134796134797_
                                   _e130307131174_
                                   _hd130306131177_
                                   _tl130305131179_
                                   _e130310131182_
                                   _hd130309131185_
                                   _tl130308131187_
                                   _e130313131190_
                                   _hd130312131193_
                                   _tl130311131195_
                                   _e130316131198_
                                   _hd130315131201_
                                   _tl130314131203_
                                   _e130319131206_
                                   _hd130318131209_
                                   _tl130317131211_
                                   _e130322131214_
                                   _hd130321131217_
                                   _tl130320131219_
                                   _e130325131222_
                                   _hd130324131225_
                                   _tl130323131227_
                                   _e130328131230_
                                   _hd130327131233_
                                   _tl130326131235_))))
                          (___match134796134797_
                           _e130307131174_
                           _hd130306131177_
                           _tl130305131179_
                           _e130310131182_
                           _hd130309131185_
                           _tl130308131187_
                           _e130313131190_
                           _hd130312131193_
                           _tl130311131195_
                           _e130316131198_
                           _hd130315131201_
                           _tl130314131203_
                           _e130319131206_
                           _hd130318131209_
                           _tl130317131211_
                           _e130322131214_
                           _hd130321131217_
                           _tl130320131219_
                           _e130325131222_
                           _hd130324131225_
                           _tl130323131227_
                           _e130328131230_
                           _hd130327131233_
                           _tl130326131235_))))
                  (___match134734134735_
                   _e130307131174_
                   _hd130306131177_
                   _tl130305131179_
                   _e130310131182_
                   _hd130309131185_
                   _tl130308131187_
                   _e130313131190_
                   _hd130312131193_
                   _tl130311131195_
                   _e130316131198_
                   _hd130315131201_
                   _tl130314131203_
                   _e130319131206_
                   _hd130318131209_
                   _tl130317131211_
                   _e130322131214_
                   _hd130321131217_
                   _tl130320131219_
                   _e130325131222_
                   _hd130324131225_
                   _tl130323131227_))
              (___kont134317134318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont134317134318_))
                                          (___kont134317134318_))
                                      (___kont134317134318_))))
                              (___kont134317134318_))))
                      (___kont134317134318_))
                  (___kont134317134318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134317134318_))
                                              (___kont134317134318_))
                                          (___kont134317134318_))))
                                  (___kont134317134318_))))
                          (___kont134317134318_))))
                  (___kont134317134318_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx129223_
               _self129224_
               _$klass129225_
               _methods129226_
               _slots129227_)
        (letrec ((_force-e129229_
                  (lambda (_target130286_)
                    (let ((__tmp135583
                           (let ((__tmp135587
                                  (let ((__tmp135588
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp135588)))
                                 (__tmp135584
                                  (let ((__tmp135585
                                         (let ((__tmp135586
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target130286_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp135586))))
                                    (declare (not safe))
                                    (cons __tmp135585 '()))))
                             (declare (not safe))
                             (cons __tmp135587 __tmp135584))))
                      (declare (not safe))
                      (cons '%#call __tmp135583)))))
          (let* ((___stx134801134802_ _stx129223_)
                 (_g129237129459_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134801134802_)))))
            (let ((___kont134803134804_
                   (lambda (_L130232_ _L130233_ _L130234_ _L130235_)
                     (let ((_$method130280_
                            (let ((__tmp135589
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130233_))))
                              (declare (not safe))
                              (hash-ref__0 _methods129226_ __tmp135589)))
                           (_args130281_
                            (map (lambda (_g130268130270_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g130268130270_
                                      _self129224_
                                      _$klass129225_
                                      _methods129226_
                                      _slots129227_)))
                                 (let ((__tmp135590
                                        (lambda (_g130272130275_
                                                 _g130273130277_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130272130275_
                                                  _g130273130277_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135590 '() _L130232_)))))
                       (let ((__tmp135591
                              (let ((__tmp135592
                                     (let ((__tmp135596
                                            (let ()
                                              (declare (not safe))
                                              (_force-e129229_
                                               _$method130280_)))
                                           (__tmp135593
                                            (let ((__tmp135594
                                                   (let ((__tmp135595
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self129224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135595))))
                                              (declare (not safe))
                                              (cons __tmp135594
                                                    _args130281_))))
                                       (declare (not safe))
                                       (cons __tmp135596 __tmp135593))))
                                (declare (not safe))
                                (cons '%#call __tmp135592))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135591 _stx129223_)))))
                  (___kont134807134808_
                   (lambda (_L130064_ _L130065_ _L130066_ _L130067_ _L130068_)
                     (let ((_$method130120_
                            (let ((__tmp135597
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130065_))))
                              (declare (not safe))
                              (hash-ref__0 _methods129226_ __tmp135597)))
                           (_args130121_
                            (map (lambda (_g130108130110_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g130108130110_
                                      _self129224_
                                      _$klass129225_
                                      _methods129226_
                                      _slots129227_)))
                                 (let ((__tmp135598
                                        (lambda (_g130112130115_
                                                 _g130113130117_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130112130115_
                                                  _g130113130117_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135598 '() _L130064_)))))
                       (let ((__tmp135599
                              (let ((__tmp135600
                                     (let ((__tmp135606
                                            (let ((__tmp135607
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135607)))
                                           (__tmp135601
                                            (let ((__tmp135605
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e129229_
                                                      _$method130120_)))
                                                  (__tmp135602
                                                   (let ((__tmp135603
                                                          (let ((__tmp135604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self129224_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135604))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135603
                                                           _args130121_))))
                                              (declare (not safe))
                                              (cons __tmp135605 __tmp135602))))
                                       (declare (not safe))
                                       (cons __tmp135606 __tmp135601))))
                                (declare (not safe))
                                (cons '%#call __tmp135600))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135599 _stx129223_)))))
                  (___kont134811134812_
                   (lambda (_L129895_ _L129896_ _L129897_)
                     (let* ((_$field129929_
                             (let ((__tmp135608
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L129895_))))
                               (declare (not safe))
                               (hash-ref__0 _slots129227_ __tmp135608)))
                            (__tmp135609
                             (let ((__tmp135610
                                    (let ((__tmp135617
                                           (let ((__tmp135618
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$klass129225_
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135618)))
                                          (__tmp135611
                                           (let ((__tmp135615
                                                  (let ((__tmp135616
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field129929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135616)))
                                                 (__tmp135612
                                                  (let ((__tmp135613
                                                         (let ((__tmp135614
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self129224_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp135614))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135613 '()))))
                                             (declare (not safe))
                                             (cons __tmp135615 __tmp135612))))
                                      (declare (not safe))
                                      (cons __tmp135617 __tmp135611))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp135610))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp135609 _stx129223_))))
                  (___kont134813134814_
                   (lambda (_L129769_ _L129770_ _L129771_ _L129772_)
                     (let ((_$field129807_
                            (let ((__tmp135619
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129770_))))
                              (declare (not safe))
                              (hash-ref__0 _slots129227_ __tmp135619)))
                           (_expr129808_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L129769_
                               _self129224_
                               _$klass129225_
                               _methods129226_
                               _slots129227_))))
                       (let ((__tmp135620
                              (let ((__tmp135621
                                     (let ((__tmp135629
                                            (let ((__tmp135630
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$klass129225_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135630)))
                                           (__tmp135622
                                            (let ((__tmp135627
                                                   (let ((__tmp135628
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field129807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135628)))
                                                  (__tmp135623
                                                   (let ((__tmp135625
                                                          (let ((__tmp135626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self129224_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135626)))
                 (__tmp135624
                  (let () (declare (not safe)) (cons _expr129808_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135625
                                                           __tmp135624))))
                                              (declare (not safe))
                                              (cons __tmp135627 __tmp135623))))
                                       (declare (not safe))
                                       (cons __tmp135629 __tmp135622))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp135621))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135620 _stx129223_)))))
                  (___kont134815134816_
                   (lambda (_L129641_ _L129642_)
                     (let* ((_accessor129664_
                             (let ((__tmp135631
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L129642_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp135631)))
                            (_klass129666_
                             (let ((__tmp135632
                                    (##structure-ref
                                     _accessor129664_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129223_
                                __tmp135632)))
                            (_slot129668_
                             (##structure-ref
                              _accessor129664_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp135643
                                       (##structure-ref
                                        _accessor129664_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135643))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129666_
                                       _slot129668_))
                                    (##structure-ref
                                     _klass129666_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx129223_
                           (let* ((_$field129674_
                                   (let ()
                                     (declare (not safe))
                                     (hash-ref__0 _slots129227_ _slot129668_)))
                                  (__tmp135633
                                   (let ((__tmp135634
                                          (let ((__tmp135641
                                                 (let ((__tmp135642
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$klass129225_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp135642)))
                                                (__tmp135635
                                                 (let ((__tmp135639
                                                        (let ((__tmp135640
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129674_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp135640)))
               (__tmp135636
                (let ((__tmp135637
                       (let ((__tmp135638
                              (let ()
                                (declare (not safe))
                                (cons _self129224_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp135638))))
                  (declare (not safe))
                  (cons __tmp135637 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp135639
                                                         __tmp135636))))
                                            (declare (not safe))
                                            (cons __tmp135641 __tmp135635))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp135634))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp135633
                              _stx129223_))))))
                  (___kont134817134818_
                   (lambda (_L129535_ _L129536_ _L129537_)
                     (let* ((_mutator129566_
                             (let ((__tmp135644
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L129537_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp135644)))
                            (_klass129568_
                             (let ((__tmp135645
                                    (##structure-ref
                                     _mutator129566_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129223_
                                __tmp135645)))
                            (_slot129570_
                             (##structure-ref
                              _mutator129566_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr129572_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L129535_
                                _self129224_
                                _$klass129225_
                                _methods129226_
                                _slots129227_))))
                       (if (and (let ((__tmp135667
                                       (##structure-ref
                                        _mutator129566_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135667))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129568_
                                       _slot129570_))
                                    (##structure-ref
                                     _klass129568_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp135657
                                  (let ((__tmp135658
                                         (let ((__tmp135664
                                                (let ((__tmp135666
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp135665
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L129537_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp135666
                                                        __tmp135665)))
                                               (__tmp135659
                                                (let ((__tmp135661
                                                       (let ((__tmp135663
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp135662
                      (let () (declare (not safe)) (cons _L129536_ '()))))
                 (declare (not safe))
                 (cons __tmp135663 __tmp135662)))
              (__tmp135660
               (let () (declare (not safe)) (cons _expr129572_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135661
                                                        __tmp135660))))
                                           (declare (not safe))
                                           (cons __tmp135664 __tmp135659))))
                                    (declare (not safe))
                                    (cons '%#call __tmp135658))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135657 _stx129223_))
                           (let* ((_$field129578_
                                   (let ()
                                     (declare (not safe))
                                     (hash-ref__0 _slots129227_ _slot129570_)))
                                  (__tmp135646
                                   (let ((__tmp135647
                                          (let ((__tmp135655
                                                 (let ((__tmp135656
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$klass129225_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp135656)))
                                                (__tmp135648
                                                 (let ((__tmp135653
                                                        (let ((__tmp135654
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129578_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp135654)))
               (__tmp135649
                (let ((__tmp135651
                       (let ((__tmp135652
                              (let ()
                                (declare (not safe))
                                (cons _self129224_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp135652)))
                      (__tmp135650
                       (let () (declare (not safe)) (cons _expr129572_ '()))))
                  (declare (not safe))
                  (cons __tmp135651 __tmp135650))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp135653
                                                         __tmp135649))))
                                            (declare (not safe))
                                            (cons __tmp135655 __tmp135648))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp135647))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp135646
                              _stx129223_))))))
                  (___kont134819134820_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx129223_
                        _self129224_
                        _$klass129225_
                        _methods129226_
                        _slots129227_)))))
              (let* ((___match135300135301_
                      (lambda (_e129433129471_
                               _hd129432129474_
                               _tl129431129476_
                               _e129436129479_
                               _hd129435129482_
                               _tl129434129484_
                               _e129439129487_
                               _hd129438129490_
                               _tl129437129492_
                               _e129442129495_
                               _hd129441129498_
                               _tl129440129500_
                               _e129445129503_
                               _hd129444129506_
                               _tl129443129508_
                               _e129448129511_
                               _hd129447129514_
                               _tl129446129516_
                               _e129451129519_
                               _hd129450129522_
                               _tl129449129524_
                               _e129454129527_
                               _hd129453129530_
                               _tl129452129532_)
                        (let ((_L129535_ _hd129453129530_)
                              (_L129536_ _hd129450129522_)
                              (_L129537_ _hd129441129498_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129536_
                                      _self129224_))
                                   (let ((__tmp135668
                                          (let ((__tmp135669
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L129537_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135669))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135668
                                      'gxc#!mutator::t)))
                              (___kont134817134818_
                               _L129535_
                               _L129536_
                               _L129537_)
                              (___kont134819134820_)))))
                     (___match135298135299_
                      (lambda (_e129433129471_
                               _hd129432129474_
                               _tl129431129476_
                               _e129436129479_
                               _hd129435129482_
                               _tl129434129484_
                               _e129439129487_
                               _hd129438129490_
                               _tl129437129492_
                               _e129442129495_
                               _hd129441129498_
                               _tl129440129500_
                               _e129445129503_
                               _hd129444129506_
                               _tl129443129508_
                               _e129448129511_
                               _hd129447129514_
                               _tl129446129516_
                               _e129451129519_
                               _hd129450129522_
                               _tl129449129524_
                               _e129454129527_
                               _hd129453129530_
                               _tl129452129532_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129452129532_))
                            (___match135300135301_
                             _e129433129471_
                             _hd129432129474_
                             _tl129431129476_
                             _e129436129479_
                             _hd129435129482_
                             _tl129434129484_
                             _e129439129487_
                             _hd129438129490_
                             _tl129437129492_
                             _e129442129495_
                             _hd129441129498_
                             _tl129440129500_
                             _e129445129503_
                             _hd129444129506_
                             _tl129443129508_
                             _e129448129511_
                             _hd129447129514_
                             _tl129446129516_
                             _e129451129519_
                             _hd129450129522_
                             _tl129449129524_
                             _e129454129527_
                             _hd129453129530_
                             _tl129452129532_)
                            (___kont134819134820_))))
                     (___match135292135293_
                      (lambda (_e129433129471_
                               _hd129432129474_
                               _tl129431129476_
                               _e129436129479_
                               _hd129435129482_
                               _tl129434129484_
                               _e129439129487_
                               _hd129438129490_
                               _tl129437129492_
                               _e129442129495_
                               _hd129441129498_
                               _tl129440129500_
                               _e129445129503_
                               _hd129444129506_
                               _tl129443129508_
                               _e129448129511_
                               _hd129447129514_
                               _tl129446129516_
                               _e129451129519_
                               _hd129450129522_
                               _tl129449129524_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129443129508_))
                            (let ((_e129454129527_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129443129508_))))
                              (let ((_tl129452129532_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129454129527_)))
                                    (_hd129453129530_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129454129527_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129452129532_))
                                    (___match135300135301_
                                     _e129433129471_
                                     _hd129432129474_
                                     _tl129431129476_
                                     _e129436129479_
                                     _hd129435129482_
                                     _tl129434129484_
                                     _e129439129487_
                                     _hd129438129490_
                                     _tl129437129492_
                                     _e129442129495_
                                     _hd129441129498_
                                     _tl129440129500_
                                     _e129445129503_
                                     _hd129444129506_
                                     _tl129443129508_
                                     _e129448129511_
                                     _hd129447129514_
                                     _tl129446129516_
                                     _e129451129519_
                                     _hd129450129522_
                                     _tl129449129524_
                                     _e129454129527_
                                     _hd129453129530_
                                     _tl129452129532_)
                                    (___kont134819134820_))))
                            (___kont134819134820_))))
                     (___match135238135239_
                      (lambda (_e129409129585_
                               _hd129408129588_
                               _tl129407129590_
                               _e129412129593_
                               _hd129411129596_
                               _tl129410129598_
                               _e129415129601_
                               _hd129414129604_
                               _tl129413129606_
                               _e129418129609_
                               _hd129417129612_
                               _tl129416129614_
                               _e129421129617_
                               _hd129420129620_
                               _tl129419129622_
                               _e129424129625_
                               _hd129423129628_
                               _tl129422129630_
                               _e129427129633_
                               _hd129426129636_
                               _tl129425129638_)
                        (let ((_L129641_ _hd129426129636_)
                              (_L129642_ _hd129417129612_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129641_
                                      _self129224_))
                                   (let ((__tmp135670
                                          (let ((__tmp135671
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L129642_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135671))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135670
                                      'gxc#!accessor::t)))
                              (___kont134815134816_ _L129641_ _L129642_)
                              (___kont134819134820_)))))
                     (___match135236135237_
                      (lambda (_e129409129585_
                               _hd129408129588_
                               _tl129407129590_
                               _e129412129593_
                               _hd129411129596_
                               _tl129410129598_
                               _e129415129601_
                               _hd129414129604_
                               _tl129413129606_
                               _e129418129609_
                               _hd129417129612_
                               _tl129416129614_
                               _e129421129617_
                               _hd129420129620_
                               _tl129419129622_
                               _e129424129625_
                               _hd129423129628_
                               _tl129422129630_
                               _e129427129633_
                               _hd129426129636_
                               _tl129425129638_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129419129622_))
                            (___match135238135239_
                             _e129409129585_
                             _hd129408129588_
                             _tl129407129590_
                             _e129412129593_
                             _hd129411129596_
                             _tl129410129598_
                             _e129415129601_
                             _hd129414129604_
                             _tl129413129606_
                             _e129418129609_
                             _hd129417129612_
                             _tl129416129614_
                             _e129421129617_
                             _hd129420129620_
                             _tl129419129622_
                             _e129424129625_
                             _hd129423129628_
                             _tl129422129630_
                             _e129427129633_
                             _hd129426129636_
                             _tl129425129638_)
                            (___match135292135293_
                             _e129409129585_
                             _hd129408129588_
                             _tl129407129590_
                             _e129412129593_
                             _hd129411129596_
                             _tl129410129598_
                             _e129415129601_
                             _hd129414129604_
                             _tl129413129606_
                             _e129418129609_
                             _hd129417129612_
                             _tl129416129614_
                             _e129421129617_
                             _hd129420129620_
                             _tl129419129622_
                             _e129424129625_
                             _hd129423129628_
                             _tl129422129630_
                             _e129427129633_
                             _hd129426129636_
                             _tl129425129638_))))
                     (___match135182135183_
                      (lambda (_e129374129681_
                               _hd129373129684_
                               _tl129372129686_
                               _e129377129689_
                               _hd129376129692_
                               _tl129375129694_
                               _e129380129697_
                               _hd129379129700_
                               _tl129378129702_
                               _e129383129705_
                               _hd129382129708_
                               _tl129381129710_
                               _e129386129713_
                               _hd129385129716_
                               _tl129384129718_
                               _e129389129721_
                               _hd129388129724_
                               _tl129387129726_
                               _e129392129729_
                               _hd129391129732_
                               _tl129390129734_
                               _e129395129737_
                               _hd129394129740_
                               _tl129393129742_
                               _e129398129745_
                               _hd129397129748_
                               _tl129396129750_
                               _e129401129753_
                               _hd129400129756_
                               _tl129399129758_
                               _e129404129761_
                               _hd129403129764_
                               _tl129402129766_)
                        (let ((_L129769_ _hd129403129764_)
                              (_L129770_ _hd129400129756_)
                              (_L129771_ _hd129391129732_)
                              (_L129772_ _hd129382129708_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129772_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129772_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129771_
                                      _self129224_)))
                              (___kont134813134814_
                               _L129769_
                               _L129770_
                               _L129771_
                               _L129772_)
                              (___kont134819134820_)))))
                     (___match135174135175_
                      (lambda (_e129374129681_
                               _hd129373129684_
                               _tl129372129686_
                               _e129377129689_
                               _hd129376129692_
                               _tl129375129694_
                               _e129380129697_
                               _hd129379129700_
                               _tl129378129702_
                               _e129383129705_
                               _hd129382129708_
                               _tl129381129710_
                               _e129386129713_
                               _hd129385129716_
                               _tl129384129718_
                               _e129389129721_
                               _hd129388129724_
                               _tl129387129726_
                               _e129392129729_
                               _hd129391129732_
                               _tl129390129734_
                               _e129395129737_
                               _hd129394129740_
                               _tl129393129742_
                               _e129398129745_
                               _hd129397129748_
                               _tl129396129750_
                               _e129401129753_
                               _hd129400129756_
                               _tl129399129758_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129393129742_))
                            (let ((_e129404129761_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129393129742_))))
                              (let ((_tl129402129766_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129404129761_)))
                                    (_hd129403129764_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129404129761_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129402129766_))
                                    (___match135182135183_
                                     _e129374129681_
                                     _hd129373129684_
                                     _tl129372129686_
                                     _e129377129689_
                                     _hd129376129692_
                                     _tl129375129694_
                                     _e129380129697_
                                     _hd129379129700_
                                     _tl129378129702_
                                     _e129383129705_
                                     _hd129382129708_
                                     _tl129381129710_
                                     _e129386129713_
                                     _hd129385129716_
                                     _tl129384129718_
                                     _e129389129721_
                                     _hd129388129724_
                                     _tl129387129726_
                                     _e129392129729_
                                     _hd129391129732_
                                     _tl129390129734_
                                     _e129395129737_
                                     _hd129394129740_
                                     _tl129393129742_
                                     _e129398129745_
                                     _hd129397129748_
                                     _tl129396129750_
                                     _e129401129753_
                                     _hd129400129756_
                                     _tl129399129758_
                                     _e129404129761_
                                     _hd129403129764_
                                     _tl129402129766_)
                                    (___kont134819134820_))))
                            (___match135298135299_
                             _e129374129681_
                             _hd129373129684_
                             _tl129372129686_
                             _e129377129689_
                             _hd129376129692_
                             _tl129375129694_
                             _e129380129697_
                             _hd129379129700_
                             _tl129378129702_
                             _e129383129705_
                             _hd129382129708_
                             _tl129381129710_
                             _e129386129713_
                             _hd129385129716_
                             _tl129384129718_
                             _e129389129721_
                             _hd129388129724_
                             _tl129387129726_
                             _e129392129729_
                             _hd129391129732_
                             _tl129390129734_
                             _e129395129737_
                             _hd129394129740_
                             _tl129393129742_))))
                     (___match135096135097_
                      (lambda (_e129340129815_
                               _hd129339129818_
                               _tl129338129820_
                               _e129343129823_
                               _hd129342129826_
                               _tl129341129828_
                               _e129346129831_
                               _hd129345129834_
                               _tl129344129836_
                               _e129349129839_
                               _hd129348129842_
                               _tl129347129844_
                               _e129352129847_
                               _hd129351129850_
                               _tl129350129852_
                               _e129355129855_
                               _hd129354129858_
                               _tl129353129860_
                               _e129358129863_
                               _hd129357129866_
                               _tl129356129868_
                               _e129361129871_
                               _hd129360129874_
                               _tl129359129876_
                               _e129364129879_
                               _hd129363129882_
                               _tl129362129884_
                               _e129367129887_
                               _hd129366129890_
                               _tl129365129892_)
                        (let ((_L129895_ _hd129366129890_)
                              (_L129896_ _hd129357129866_)
                              (_L129897_ _hd129348129842_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129897_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129897_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129896_
                                      _self129224_)))
                              (___kont134811134812_
                               _L129895_
                               _L129896_
                               _L129897_)
                              (___match135300135301_
                               _e129340129815_
                               _hd129339129818_
                               _tl129338129820_
                               _e129343129823_
                               _hd129342129826_
                               _tl129341129828_
                               _e129346129831_
                               _hd129345129834_
                               _tl129344129836_
                               _e129349129839_
                               _hd129348129842_
                               _tl129347129844_
                               _e129352129847_
                               _hd129351129850_
                               _tl129350129852_
                               _e129355129855_
                               _hd129354129858_
                               _tl129353129860_
                               _e129358129863_
                               _hd129357129866_
                               _tl129356129868_
                               _e129361129871_
                               _hd129360129874_
                               _tl129359129876_)))))
                     (___match135094135095_
                      (lambda (_e129340129815_
                               _hd129339129818_
                               _tl129338129820_
                               _e129343129823_
                               _hd129342129826_
                               _tl129341129828_
                               _e129346129831_
                               _hd129345129834_
                               _tl129344129836_
                               _e129349129839_
                               _hd129348129842_
                               _tl129347129844_
                               _e129352129847_
                               _hd129351129850_
                               _tl129350129852_
                               _e129355129855_
                               _hd129354129858_
                               _tl129353129860_
                               _e129358129863_
                               _hd129357129866_
                               _tl129356129868_
                               _e129361129871_
                               _hd129360129874_
                               _tl129359129876_
                               _e129364129879_
                               _hd129363129882_
                               _tl129362129884_
                               _e129367129887_
                               _hd129366129890_
                               _tl129365129892_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129359129876_))
                            (___match135096135097_
                             _e129340129815_
                             _hd129339129818_
                             _tl129338129820_
                             _e129343129823_
                             _hd129342129826_
                             _tl129341129828_
                             _e129346129831_
                             _hd129345129834_
                             _tl129344129836_
                             _e129349129839_
                             _hd129348129842_
                             _tl129347129844_
                             _e129352129847_
                             _hd129351129850_
                             _tl129350129852_
                             _e129355129855_
                             _hd129354129858_
                             _tl129353129860_
                             _e129358129863_
                             _hd129357129866_
                             _tl129356129868_
                             _e129361129871_
                             _hd129360129874_
                             _tl129359129876_
                             _e129364129879_
                             _hd129363129882_
                             _tl129362129884_
                             _e129367129887_
                             _hd129366129890_
                             _tl129365129892_)
                            (___match135174135175_
                             _e129340129815_
                             _hd129339129818_
                             _tl129338129820_
                             _e129343129823_
                             _hd129342129826_
                             _tl129341129828_
                             _e129346129831_
                             _hd129345129834_
                             _tl129344129836_
                             _e129349129839_
                             _hd129348129842_
                             _tl129347129844_
                             _e129352129847_
                             _hd129351129850_
                             _tl129350129852_
                             _e129355129855_
                             _hd129354129858_
                             _tl129353129860_
                             _e129358129863_
                             _hd129357129866_
                             _tl129356129868_
                             _e129361129871_
                             _hd129360129874_
                             _tl129359129876_
                             _e129364129879_
                             _hd129363129882_
                             _tl129362129884_
                             _e129367129887_
                             _hd129366129890_
                             _tl129365129892_))))
                     (___match135084135085_
                      (lambda (_e129340129815_
                               _hd129339129818_
                               _tl129338129820_
                               _e129343129823_
                               _hd129342129826_
                               _tl129341129828_
                               _e129346129831_
                               _hd129345129834_
                               _tl129344129836_
                               _e129349129839_
                               _hd129348129842_
                               _tl129347129844_
                               _e129352129847_
                               _hd129351129850_
                               _tl129350129852_
                               _e129355129855_
                               _hd129354129858_
                               _tl129353129860_
                               _e129358129863_
                               _hd129357129866_
                               _tl129356129868_
                               _e129361129871_
                               _hd129360129874_
                               _tl129359129876_
                               _e129364129879_
                               _hd129363129882_
                               _tl129362129884_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd129363129882_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl129362129884_))
                                (let ((_e129367129887_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl129362129884_))))
                                  (let ((_tl129365129892_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129367129887_)))
                                        (_hd129366129890_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129367129887_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl129365129892_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl129359129876_))
                                            (___match135096135097_
                                             _e129340129815_
                                             _hd129339129818_
                                             _tl129338129820_
                                             _e129343129823_
                                             _hd129342129826_
                                             _tl129341129828_
                                             _e129346129831_
                                             _hd129345129834_
                                             _tl129344129836_
                                             _e129349129839_
                                             _hd129348129842_
                                             _tl129347129844_
                                             _e129352129847_
                                             _hd129351129850_
                                             _tl129350129852_
                                             _e129355129855_
                                             _hd129354129858_
                                             _tl129353129860_
                                             _e129358129863_
                                             _hd129357129866_
                                             _tl129356129868_
                                             _e129361129871_
                                             _hd129360129874_
                                             _tl129359129876_
                                             _e129364129879_
                                             _hd129363129882_
                                             _tl129362129884_
                                             _e129367129887_
                                             _hd129366129890_
                                             _tl129365129892_)
                                            (___match135174135175_
                                             _e129340129815_
                                             _hd129339129818_
                                             _tl129338129820_
                                             _e129343129823_
                                             _hd129342129826_
                                             _tl129341129828_
                                             _e129346129831_
                                             _hd129345129834_
                                             _tl129344129836_
                                             _e129349129839_
                                             _hd129348129842_
                                             _tl129347129844_
                                             _e129352129847_
                                             _hd129351129850_
                                             _tl129350129852_
                                             _e129355129855_
                                             _hd129354129858_
                                             _tl129353129860_
                                             _e129358129863_
                                             _hd129357129866_
                                             _tl129356129868_
                                             _e129361129871_
                                             _hd129360129874_
                                             _tl129359129876_
                                             _e129364129879_
                                             _hd129363129882_
                                             _tl129362129884_
                                             _e129367129887_
                                             _hd129366129890_
                                             _tl129365129892_))
                                        (___match135298135299_
                                         _e129340129815_
                                         _hd129339129818_
                                         _tl129338129820_
                                         _e129343129823_
                                         _hd129342129826_
                                         _tl129341129828_
                                         _e129346129831_
                                         _hd129345129834_
                                         _tl129344129836_
                                         _e129349129839_
                                         _hd129348129842_
                                         _tl129347129844_
                                         _e129352129847_
                                         _hd129351129850_
                                         _tl129350129852_
                                         _e129355129855_
                                         _hd129354129858_
                                         _tl129353129860_
                                         _e129358129863_
                                         _hd129357129866_
                                         _tl129356129868_
                                         _e129361129871_
                                         _hd129360129874_
                                         _tl129359129876_))))
                                (___match135298135299_
                                 _e129340129815_
                                 _hd129339129818_
                                 _tl129338129820_
                                 _e129343129823_
                                 _hd129342129826_
                                 _tl129341129828_
                                 _e129346129831_
                                 _hd129345129834_
                                 _tl129344129836_
                                 _e129349129839_
                                 _hd129348129842_
                                 _tl129347129844_
                                 _e129352129847_
                                 _hd129351129850_
                                 _tl129350129852_
                                 _e129355129855_
                                 _hd129354129858_
                                 _tl129353129860_
                                 _e129358129863_
                                 _hd129357129866_
                                 _tl129356129868_
                                 _e129361129871_
                                 _hd129360129874_
                                 _tl129359129876_))
                            (___match135298135299_
                             _e129340129815_
                             _hd129339129818_
                             _tl129338129820_
                             _e129343129823_
                             _hd129342129826_
                             _tl129341129828_
                             _e129346129831_
                             _hd129345129834_
                             _tl129344129836_
                             _e129349129839_
                             _hd129348129842_
                             _tl129347129844_
                             _e129352129847_
                             _hd129351129850_
                             _tl129350129852_
                             _e129355129855_
                             _hd129354129858_
                             _tl129353129860_
                             _e129358129863_
                             _hd129357129866_
                             _tl129356129868_
                             _e129361129871_
                             _hd129360129874_
                             _tl129359129876_))))
                     (___match135016135017_
                      (lambda (_e129289129936_
                               _hd129288129939_
                               _tl129287129941_
                               _e129292129944_
                               _hd129291129947_
                               _tl129290129949_
                               _e129295129952_
                               _hd129294129955_
                               _tl129293129957_
                               _e129298129960_
                               _hd129297129963_
                               _tl129296129965_
                               _e129301129968_
                               _hd129300129971_
                               _tl129299129973_
                               _e129304129976_
                               _hd129303129979_
                               _tl129302129981_
                               _e129307129984_
                               _hd129306129987_
                               _tl129305129989_
                               _e129310129992_
                               _hd129309129995_
                               _tl129308129997_
                               _e129313130000_
                               _hd129312130003_
                               _tl129311130005_
                               _e129316130008_
                               _hd129315130011_
                               _tl129314130013_
                               _e129319130016_
                               _hd129318130019_
                               _tl129317130021_
                               _e129322130024_
                               _hd129321130027_
                               _tl129320130029_
                               _e129325130032_
                               _hd129324130035_
                               _tl129323130037_
                               ___splice134809134810_
                               _target129326130040_
                               _tl129328130042_)
                        (letrec ((_loop129329130045_
                                  (lambda (_hd129327130048_ _args129333130050_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129327130048_))
                                        (let ((_e129330130053_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129327130048_))))
                                          (let ((_lp-tl129332130058_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129330130053_)))
                                                (_lp-hd129331130056_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129330130053_))))
                                            (let ((__tmp135672
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd129331130056_
                                                           _args129333130050_))))
                                              (declare (not safe))
                                              (_loop129329130045_
                                               _lp-tl129332130058_
                                               __tmp135672))))
                                        (let ((_args129334130061_
                                               (reverse _args129333130050_)))
                                          (let ((_L130064_ _args129334130061_)
                                                (_L130065_ _hd129324130035_)
                                                (_L130066_ _hd129315130011_)
                                                (_L130067_ _hd129306129987_)
                                                (_L130068_ _hd129297129963_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130068_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130067_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130066_
                                                        _self129224_)))
                                                (___kont134807134808_
                                                 _L130064_
                                                 _L130065_
                                                 _L130066_
                                                 _L130067_
                                                 _L130068_)
                                                (___kont134819134820_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop129329130045_ _target129326130040_ '())))))
                     (___match134974134975_
                      (lambda (_e129289129936_
                               _hd129288129939_
                               _tl129287129941_
                               _e129292129944_
                               _hd129291129947_
                               _tl129290129949_
                               _e129295129952_
                               _hd129294129955_
                               _tl129293129957_
                               _e129298129960_
                               _hd129297129963_
                               _tl129296129965_
                               _e129301129968_
                               _hd129300129971_
                               _tl129299129973_
                               _e129304129976_
                               _hd129303129979_
                               _tl129302129981_
                               _e129307129984_
                               _hd129306129987_
                               _tl129305129989_
                               _e129310129992_
                               _hd129309129995_
                               _tl129308129997_
                               _e129313130000_
                               _hd129312130003_
                               _tl129311130005_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd129312130003_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl129311130005_))
                                (let ((_e129316130008_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl129311130005_))))
                                  (let ((_tl129314130013_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129316130008_)))
                                        (_hd129315130011_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129316130008_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl129314130013_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129308129997_))
                                            (let ((_e129319130016_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129308129997_))))
                                              (let ((_tl129317130021_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129319130016_)))
                                                    (_hd129318130019_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129319130016_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd129318130019_))
                                                    (let ((_e129322130024_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd129318130019_))))
                                                      (let ((_tl129320130029_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129322130024_)))
                    (_hd129321130027_
                     (let () (declare (not safe)) (##car _e129322130024_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd129321130027_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd129321130027_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129320130029_))
                            (let ((_e129325130032_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129320130029_))))
                              (let ((_tl129323130037_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129325130032_)))
                                    (_hd129324130035_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129325130032_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129323130037_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl129317130021_))
                                        (let ((___splice134809134810_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl129317130021_
                                                  '0))))
                                          (let ((_tl129328130042_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134809134810_
                                                    '1)))
                                                (_target129326130040_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134809134810_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl129328130042_))
                                                (___match135016135017_
                                                 _e129289129936_
                                                 _hd129288129939_
                                                 _tl129287129941_
                                                 _e129292129944_
                                                 _hd129291129947_
                                                 _tl129290129949_
                                                 _e129295129952_
                                                 _hd129294129955_
                                                 _tl129293129957_
                                                 _e129298129960_
                                                 _hd129297129963_
                                                 _tl129296129965_
                                                 _e129301129968_
                                                 _hd129300129971_
                                                 _tl129299129973_
                                                 _e129304129976_
                                                 _hd129303129979_
                                                 _tl129302129981_
                                                 _e129307129984_
                                                 _hd129306129987_
                                                 _tl129305129989_
                                                 _e129310129992_
                                                 _hd129309129995_
                                                 _tl129308129997_
                                                 _e129313130000_
                                                 _hd129312130003_
                                                 _tl129311130005_
                                                 _e129316130008_
                                                 _hd129315130011_
                                                 _tl129314130013_
                                                 _e129319130016_
                                                 _hd129318130019_
                                                 _tl129317130021_
                                                 _e129322130024_
                                                 _hd129321130027_
                                                 _tl129320130029_
                                                 _e129325130032_
                                                 _hd129324130035_
                                                 _tl129323130037_
                                                 ___splice134809134810_
                                                 _target129326130040_
                                                 _tl129328130042_)
                                                (___kont134819134820_))))
                                        (___kont134819134820_))
                                    (___kont134819134820_))))
                            (___kont134819134820_))
                        (___kont134819134820_))
                    (___kont134819134820_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134819134820_))))
                                            (___match135298135299_
                                             _e129289129936_
                                             _hd129288129939_
                                             _tl129287129941_
                                             _e129292129944_
                                             _hd129291129947_
                                             _tl129290129949_
                                             _e129295129952_
                                             _hd129294129955_
                                             _tl129293129957_
                                             _e129298129960_
                                             _hd129297129963_
                                             _tl129296129965_
                                             _e129301129968_
                                             _hd129300129971_
                                             _tl129299129973_
                                             _e129304129976_
                                             _hd129303129979_
                                             _tl129302129981_
                                             _e129307129984_
                                             _hd129306129987_
                                             _tl129305129989_
                                             _e129310129992_
                                             _hd129309129995_
                                             _tl129308129997_))
                                        (___match135298135299_
                                         _e129289129936_
                                         _hd129288129939_
                                         _tl129287129941_
                                         _e129292129944_
                                         _hd129291129947_
                                         _tl129290129949_
                                         _e129295129952_
                                         _hd129294129955_
                                         _tl129293129957_
                                         _e129298129960_
                                         _hd129297129963_
                                         _tl129296129965_
                                         _e129301129968_
                                         _hd129300129971_
                                         _tl129299129973_
                                         _e129304129976_
                                         _hd129303129979_
                                         _tl129302129981_
                                         _e129307129984_
                                         _hd129306129987_
                                         _tl129305129989_
                                         _e129310129992_
                                         _hd129309129995_
                                         _tl129308129997_))))
                                (___match135298135299_
                                 _e129289129936_
                                 _hd129288129939_
                                 _tl129287129941_
                                 _e129292129944_
                                 _hd129291129947_
                                 _tl129290129949_
                                 _e129295129952_
                                 _hd129294129955_
                                 _tl129293129957_
                                 _e129298129960_
                                 _hd129297129963_
                                 _tl129296129965_
                                 _e129301129968_
                                 _hd129300129971_
                                 _tl129299129973_
                                 _e129304129976_
                                 _hd129303129979_
                                 _tl129302129981_
                                 _e129307129984_
                                 _hd129306129987_
                                 _tl129305129989_
                                 _e129310129992_
                                 _hd129309129995_
                                 _tl129308129997_))
                            (___match135084135085_
                             _e129289129936_
                             _hd129288129939_
                             _tl129287129941_
                             _e129292129944_
                             _hd129291129947_
                             _tl129290129949_
                             _e129295129952_
                             _hd129294129955_
                             _tl129293129957_
                             _e129298129960_
                             _hd129297129963_
                             _tl129296129965_
                             _e129301129968_
                             _hd129300129971_
                             _tl129299129973_
                             _e129304129976_
                             _hd129303129979_
                             _tl129302129981_
                             _e129307129984_
                             _hd129306129987_
                             _tl129305129989_
                             _e129310129992_
                             _hd129309129995_
                             _tl129308129997_
                             _e129313130000_
                             _hd129312130003_
                             _tl129311130005_))))
                     (___match134906134907_
                      (lambda (_e129245130128_
                               _hd129244130131_
                               _tl129243130133_
                               _e129248130136_
                               _hd129247130139_
                               _tl129246130141_
                               _e129251130144_
                               _hd129250130147_
                               _tl129249130149_
                               _e129254130152_
                               _hd129253130155_
                               _tl129252130157_
                               _e129257130160_
                               _hd129256130163_
                               _tl129255130165_
                               _e129260130168_
                               _hd129259130171_
                               _tl129258130173_
                               _e129263130176_
                               _hd129262130179_
                               _tl129261130181_
                               _e129266130184_
                               _hd129265130187_
                               _tl129264130189_
                               _e129269130192_
                               _hd129268130195_
                               _tl129267130197_
                               _e129272130200_
                               _hd129271130203_
                               _tl129270130205_
                               ___splice134805134806_
                               _target129273130208_
                               _tl129275130210_)
                        (letrec ((_loop129276130213_
                                  (lambda (_hd129274130216_ _args129280130218_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129274130216_))
                                        (let ((_e129277130221_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129274130216_))))
                                          (let ((_lp-tl129279130226_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129277130221_)))
                                                (_lp-hd129278130224_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129277130221_))))
                                            (let ((__tmp135673
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd129278130224_
                                                           _args129280130218_))))
                                              (declare (not safe))
                                              (_loop129276130213_
                                               _lp-tl129279130226_
                                               __tmp135673))))
                                        (let ((_args129281130229_
                                               (reverse _args129280130218_)))
                                          (let ((_L130232_ _args129281130229_)
                                                (_L130233_ _hd129271130203_)
                                                (_L130234_ _hd129262130179_)
                                                (_L130235_ _hd129253130155_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130235_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130234_
                                                        _self129224_)))
                                                (___kont134803134804_
                                                 _L130232_
                                                 _L130233_
                                                 _L130234_
                                                 _L130235_)
                                                (___match135094135095_
                                                 _e129245130128_
                                                 _hd129244130131_
                                                 _tl129243130133_
                                                 _e129248130136_
                                                 _hd129247130139_
                                                 _tl129246130141_
                                                 _e129251130144_
                                                 _hd129250130147_
                                                 _tl129249130149_
                                                 _e129254130152_
                                                 _hd129253130155_
                                                 _tl129252130157_
                                                 _e129257130160_
                                                 _hd129256130163_
                                                 _tl129255130165_
                                                 _e129260130168_
                                                 _hd129259130171_
                                                 _tl129258130173_
                                                 _e129263130176_
                                                 _hd129262130179_
                                                 _tl129261130181_
                                                 _e129266130184_
                                                 _hd129265130187_
                                                 _tl129264130189_
                                                 _e129269130192_
                                                 _hd129268130195_
                                                 _tl129267130197_
                                                 _e129272130200_
                                                 _hd129271130203_
                                                 _tl129270130205_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop129276130213_ _target129273130208_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134801134802_))
                    (let ((_e129245130128_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134801134802_))))
                      (let ((_tl129243130133_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129245130128_)))
                            (_hd129244130131_
                             (let ()
                               (declare (not safe))
                               (##car _e129245130128_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129243130133_))
                            (let ((_e129248130136_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129243130133_))))
                              (let ((_tl129246130141_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129248130136_)))
                                    (_hd129247130139_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129248130136_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd129247130139_))
                                    (let ((_e129251130144_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd129247130139_))))
                                      (let ((_tl129249130149_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e129251130144_)))
                                            (_hd129250130147_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e129251130144_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd129250130147_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd129250130147_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl129249130149_))
                                                    (let ((_e129254130152_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl129249130149_))))
                                                      (let ((_tl129252130157_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129254130152_)))
                    (_hd129253130155_
                     (let () (declare (not safe)) (##car _e129254130152_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl129252130157_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl129246130141_))
                        (let ((_e129257130160_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl129246130141_))))
                          (let ((_tl129255130165_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e129257130160_)))
                                (_hd129256130163_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e129257130160_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd129256130163_))
                                (let ((_e129260130168_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd129256130163_))))
                                  (let ((_tl129258130173_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129260130168_)))
                                        (_hd129259130171_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129260130168_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd129259130171_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd129259130171_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl129258130173_))
                                                (let ((_e129263130176_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl129258130173_))))
                                                  (let ((_tl129261130181_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e129263130176_)))
                                                        (_hd129262130179_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e129263130176_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl129261130181_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl129255130165_))
                                                            (let ((_e129266130184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl129255130165_))))
                      (let ((_tl129264130189_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129266130184_)))
                            (_hd129265130187_
                             (let ()
                               (declare (not safe))
                               (##car _e129266130184_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd129265130187_))
                            (let ((_e129269130192_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd129265130187_))))
                              (let ((_tl129267130197_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129269130192_)))
                                    (_hd129268130195_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129269130192_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd129268130195_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd129268130195_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129267130197_))
                                            (let ((_e129272130200_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129267130197_))))
                                              (let ((_tl129270130205_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129272130200_)))
                                                    (_hd129271130203_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129272130200_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl129270130205_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl129264130189_))
                                                        (let ((___splice134805134806_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl129264130189_ '0))))
                  (let ((_tl129275130210_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134805134806_ '1)))
                        (_target129273130208_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134805134806_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl129275130210_))
                        (___match134906134907_
                         _e129245130128_
                         _hd129244130131_
                         _tl129243130133_
                         _e129248130136_
                         _hd129247130139_
                         _tl129246130141_
                         _e129251130144_
                         _hd129250130147_
                         _tl129249130149_
                         _e129254130152_
                         _hd129253130155_
                         _tl129252130157_
                         _e129257130160_
                         _hd129256130163_
                         _tl129255130165_
                         _e129260130168_
                         _hd129259130171_
                         _tl129258130173_
                         _e129263130176_
                         _hd129262130179_
                         _tl129261130181_
                         _e129266130184_
                         _hd129265130187_
                         _tl129264130189_
                         _e129269130192_
                         _hd129268130195_
                         _tl129267130197_
                         _e129272130200_
                         _hd129271130203_
                         _tl129270130205_
                         ___splice134805134806_
                         _target129273130208_
                         _tl129275130210_)
                        (___match135094135095_
                         _e129245130128_
                         _hd129244130131_
                         _tl129243130133_
                         _e129248130136_
                         _hd129247130139_
                         _tl129246130141_
                         _e129251130144_
                         _hd129250130147_
                         _tl129249130149_
                         _e129254130152_
                         _hd129253130155_
                         _tl129252130157_
                         _e129257130160_
                         _hd129256130163_
                         _tl129255130165_
                         _e129260130168_
                         _hd129259130171_
                         _tl129258130173_
                         _e129263130176_
                         _hd129262130179_
                         _tl129261130181_
                         _e129266130184_
                         _hd129265130187_
                         _tl129264130189_
                         _e129269130192_
                         _hd129268130195_
                         _tl129267130197_
                         _e129272130200_
                         _hd129271130203_
                         _tl129270130205_))))
                (___match135094135095_
                 _e129245130128_
                 _hd129244130131_
                 _tl129243130133_
                 _e129248130136_
                 _hd129247130139_
                 _tl129246130141_
                 _e129251130144_
                 _hd129250130147_
                 _tl129249130149_
                 _e129254130152_
                 _hd129253130155_
                 _tl129252130157_
                 _e129257130160_
                 _hd129256130163_
                 _tl129255130165_
                 _e129260130168_
                 _hd129259130171_
                 _tl129258130173_
                 _e129263130176_
                 _hd129262130179_
                 _tl129261130181_
                 _e129266130184_
                 _hd129265130187_
                 _tl129264130189_
                 _e129269130192_
                 _hd129268130195_
                 _tl129267130197_
                 _e129272130200_
                 _hd129271130203_
                 _tl129270130205_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match135298135299_
                                                     _e129245130128_
                                                     _hd129244130131_
                                                     _tl129243130133_
                                                     _e129248130136_
                                                     _hd129247130139_
                                                     _tl129246130141_
                                                     _e129251130144_
                                                     _hd129250130147_
                                                     _tl129249130149_
                                                     _e129254130152_
                                                     _hd129253130155_
                                                     _tl129252130157_
                                                     _e129257130160_
                                                     _hd129256130163_
                                                     _tl129255130165_
                                                     _e129260130168_
                                                     _hd129259130171_
                                                     _tl129258130173_
                                                     _e129263130176_
                                                     _hd129262130179_
                                                     _tl129261130181_
                                                     _e129266130184_
                                                     _hd129265130187_
                                                     _tl129264130189_))))
                                            (___match135298135299_
                                             _e129245130128_
                                             _hd129244130131_
                                             _tl129243130133_
                                             _e129248130136_
                                             _hd129247130139_
                                             _tl129246130141_
                                             _e129251130144_
                                             _hd129250130147_
                                             _tl129249130149_
                                             _e129254130152_
                                             _hd129253130155_
                                             _tl129252130157_
                                             _e129257130160_
                                             _hd129256130163_
                                             _tl129255130165_
                                             _e129260130168_
                                             _hd129259130171_
                                             _tl129258130173_
                                             _e129263130176_
                                             _hd129262130179_
                                             _tl129261130181_
                                             _e129266130184_
                                             _hd129265130187_
                                             _tl129264130189_))
                                        (___match134974134975_
                                         _e129245130128_
                                         _hd129244130131_
                                         _tl129243130133_
                                         _e129248130136_
                                         _hd129247130139_
                                         _tl129246130141_
                                         _e129251130144_
                                         _hd129250130147_
                                         _tl129249130149_
                                         _e129254130152_
                                         _hd129253130155_
                                         _tl129252130157_
                                         _e129257130160_
                                         _hd129256130163_
                                         _tl129255130165_
                                         _e129260130168_
                                         _hd129259130171_
                                         _tl129258130173_
                                         _e129263130176_
                                         _hd129262130179_
                                         _tl129261130181_
                                         _e129266130184_
                                         _hd129265130187_
                                         _tl129264130189_
                                         _e129269130192_
                                         _hd129268130195_
                                         _tl129267130197_))
                                    (___match135298135299_
                                     _e129245130128_
                                     _hd129244130131_
                                     _tl129243130133_
                                     _e129248130136_
                                     _hd129247130139_
                                     _tl129246130141_
                                     _e129251130144_
                                     _hd129250130147_
                                     _tl129249130149_
                                     _e129254130152_
                                     _hd129253130155_
                                     _tl129252130157_
                                     _e129257130160_
                                     _hd129256130163_
                                     _tl129255130165_
                                     _e129260130168_
                                     _hd129259130171_
                                     _tl129258130173_
                                     _e129263130176_
                                     _hd129262130179_
                                     _tl129261130181_
                                     _e129266130184_
                                     _hd129265130187_
                                     _tl129264130189_))))
                            (___match135298135299_
                             _e129245130128_
                             _hd129244130131_
                             _tl129243130133_
                             _e129248130136_
                             _hd129247130139_
                             _tl129246130141_
                             _e129251130144_
                             _hd129250130147_
                             _tl129249130149_
                             _e129254130152_
                             _hd129253130155_
                             _tl129252130157_
                             _e129257130160_
                             _hd129256130163_
                             _tl129255130165_
                             _e129260130168_
                             _hd129259130171_
                             _tl129258130173_
                             _e129263130176_
                             _hd129262130179_
                             _tl129261130181_
                             _e129266130184_
                             _hd129265130187_
                             _tl129264130189_))))
                    (___match135236135237_
                     _e129245130128_
                     _hd129244130131_
                     _tl129243130133_
                     _e129248130136_
                     _hd129247130139_
                     _tl129246130141_
                     _e129251130144_
                     _hd129250130147_
                     _tl129249130149_
                     _e129254130152_
                     _hd129253130155_
                     _tl129252130157_
                     _e129257130160_
                     _hd129256130163_
                     _tl129255130165_
                     _e129260130168_
                     _hd129259130171_
                     _tl129258130173_
                     _e129263130176_
                     _hd129262130179_
                     _tl129261130181_))
                (___kont134819134820_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134819134820_))
                                            (___kont134819134820_))
                                        (___kont134819134820_))))
                                (___kont134819134820_))))
                        (___kont134819134820_))
                    (___kont134819134820_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134819134820_))
                                                (___kont134819134820_))
                                            (___kont134819134820_))))
                                    (___kont134819134820_))))
                            (___kont134819134820_))))
                    (___kont134819134820_))))))))))
